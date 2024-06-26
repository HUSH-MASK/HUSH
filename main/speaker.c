/*
 * Copyright (C) 2018 BlueKitchen GmbH
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. Neither the name of the copyright holders nor the names of
 *    contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 * 4. Any redistribution, use, or modification is done solely for
 *    personal benefit and not for any commercial purpose or for
 *    monetary gain.
 *
 * THIS SOFTWARE IS PROVIDED BY BLUEKITCHEN GMBH AND CONTRIBUTORS
 * ``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL MATTHIAS
 * RINGWALD OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
 * OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
 * AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF
 * THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 * Please inquire about commercial licensing options at 
 * contact@bluekitchen-gmbh.com
 *
 */

/*
 *  btstack_audio_esp32.c
 *
 *  Implementation of btstack_audio.h using polling ESP32 I2S driver
 *
 */

#include "btstack_config.h"
#include "btstack_debug.h"
#include "btstack_audio.h"
#include "btstack_run_loop.h"
//#include "hal_audio.h"

#include "freertos/FreeRTOS.h"
#include "freertos/queue.h"
//#include "driver/i2s.h"
#include "driver/i2s_std.h"

#include "config.h"

// client
static void (*playback_callback)(int16_t *buffer, uint16_t num_samples) = NULL;

// timer to fill output ring buffer
static btstack_timer_source_t driver_timer;

static i2s_chan_handle_t tx_handle;

static bool is_sink_streaming;

static int sink_gain = 1;
#define SINK_CHANNELS 1
static int sink_channels = SINK_CHANNELS;

// provide enough space for 2 channels - the way channels is done in this example is a bit odd
static int16_t buffer[DMA_BUFFER_SAMPLES * SINK_CHANNELS];
static void fill_buffer(void)
{
  size_t bytes_written;
  if (playback_callback)
  {
    (*playback_callback)(buffer, DMA_BUFFER_SAMPLES);
    for (int i = 0; i < DMA_BUFFER_SAMPLES * SINK_CHANNELS; i++)
    {
      // gain doesn't seem to be wired up
      // buffer[i] = buffer[i] * sink_gain;
      // seems to be exceptionally loud so we scale it down
      buffer[i] = buffer[i] * 0.5;
    }
    if(tx_handle != NULL)
      i2s_channel_write(tx_handle, buffer, DMA_BUFFER_SAMPLES * SINK_CHANNELS * sizeof(int16_t), &bytes_written, 0);
    //i2s_channel_write(tx_handle, buffer, sizeof(int16_t) * DMA_BUFFER_SAMPLES * 2, &bytes_written, 0);
  }
}

static void driver_timer_handler(btstack_timer_source_t *ts)
{

  // playback buffer ready to fill
  if (playback_callback)
  {
    fill_buffer();
  }

  // re-set timer
  btstack_run_loop_set_timer(ts, DRIVER_POLL_INTERVAL_MS);
  btstack_run_loop_add_timer(ts);
}

static int btstack_audio_esp32_sink_init(
    uint8_t channels,
    uint32_t samplerate,
    void (*playback)(int16_t *buffer, uint16_t num_samples))
{
  playback_callback = playback;
  sink_channels = channels;

  /*i2s_config_t config =
      {
          .mode = I2S_MODE_MASTER | I2S_MODE_TX, // Playback only
          .sample_rate = samplerate,
          .bits_per_sample = I2S_BITS_PER_SAMPLE_16BIT,
          .channel_format = channels == 2 ? I2S_CHANNEL_FMT_RIGHT_LEFT : I2S_CHANNEL_FMT_ONLY_LEFT,
          .communication_format = I2S_COMM_FORMAT_STAND_I2S,
          .dma_buf_count = DMA_BUFFER_COUNT, // Number of DMA buffers. Max 128.
          .dma_buf_len = DMA_BUFFER_SAMPLES, // Size of each DMA buffer in samples. Max 1024.
          .intr_alloc_flags = ESP_INTR_FLAG_LEVEL1};

  i2s_pin_config_t pins = {
      .bck_io_num = I2S_SPEAKER_SERIAL_CLOCK,
      .ws_io_num = I2S_SPEAKER_LEFT_RIGHT_CLOCK,
      .data_out_num = I2S_SPEAKER_SERIAL_DATA,
      .data_in_num = I2S_PIN_NO_CHANGE};

  i2s_driver_install(I2S_SPEAKER_DEVICE, &config, 0, NULL);
  i2s_set_pin(I2S_SPEAKER_DEVICE, &pins);
  i2s_zero_dma_buffer(I2S_SPEAKER_DEVICE);
  */

  /* Get the default channel configuration by helper macro.
     * This helper macro is defined in 'i2s_common.h' and shared by all the I2S communication modes.
     * It can help to specify the I2S role and port ID */
  i2s_chan_config_t chan_cfg = {
      .id = I2S_SPEAKER_DEVICE,
      .role = I2S_ROLE_MASTER,
      .dma_frame_num = DMA_BUFFER_SAMPLES,
      .dma_desc_num = DMA_BUFFER_COUNT

  };
  /* Allocate a new RX channel and get the handle of this channel */
  i2s_new_channel(&chan_cfg, &tx_handle, NULL);

  /* Setting the configurations, the slot configuration and clock configuration can be generated by the macros
    * These two helper macros are defined in 'i2s_std.h' which can only be used in STD mode.
    * They can help to specify the slot and clock configurations for initialization or updating */
  
  i2s_std_config_t std_cfg = {
      .clk_cfg = I2S_STD_CLK_DEFAULT_CONFIG(samplerate),
      .slot_cfg = I2S_STD_MSB_SLOT_DEFAULT_CONFIG(I2S_DATA_BIT_WIDTH_16BIT, I2S_SLOT_MODE_MONO),
      .gpio_cfg = {
          .mclk = I2S_GPIO_UNUSED,
          .bclk = I2S_SPEAKER_SERIAL_CLOCK,
          .ws = I2S_SPEAKER_LEFT_RIGHT_CLOCK,
          .dout = I2S_SPEAKER_SERIAL_DATA,
          .din = -1,
          .invert_flags = {
              .mclk_inv = false,
              .bclk_inv = false,
              .ws_inv = false,
          },
      },
  };
  i2s_channel_init_std_mode(tx_handle, &std_cfg);
  
  return 0;
}

static void btstack_audio_esp32_sink_gain(uint8_t gain)
{
  sink_gain = gain;
}

static void btstack_audio_esp32_sink_start_stream(void)
{
  // start i2s
  //i2s_start(I2S_SPEAKER_DEVICE);

  if(tx_handle != NULL){
    // Enable the i2s port
    i2s_channel_enable(tx_handle);
  }

  // start timer
  btstack_run_loop_set_timer_handler(&driver_timer, &driver_timer_handler);
  btstack_run_loop_set_timer(&driver_timer, DRIVER_POLL_INTERVAL_MS);
  btstack_run_loop_add_timer(&driver_timer);

  // state
  is_sink_streaming = true;
}

static void btstack_audio_esp32_sink_stop_stream(void)
{
  if (!is_sink_streaming)
    return;

  // stop timer
  btstack_run_loop_remove_timer(&driver_timer);

  // stop i2s
  //i2s_stop(I2S_SPEAKER_DEVICE);

  if(tx_handle != NULL){
    /* Have to stop the channel before deleting it */
    i2s_channel_disable(tx_handle);
  }

  // state
  is_sink_streaming = false;
}

static void btstack_audio_esp32_sink_close(void)
{

  if (is_sink_streaming)
  {
    btstack_audio_esp32_sink_stop_stream();
  }

  // uninstall driver
  // i2s_driver_uninstall(I2S_SPEAKER_DEVICE);

  /* If the handle is not needed any more, delete it to release the channel resources */
  if(tx_handle != NULL)
    i2s_del_channel(tx_handle);
}

static const btstack_audio_sink_t btstack_audio_sink_esp32 = {
    /* int (*init)(..);*/ .init=&btstack_audio_esp32_sink_init,
    // /* void (*set_gain)(uint8_t gain); */ .set_gain=&btstack_audio_esp32_sink_gain,
    /* void (*start_stream(void));*/ .start_stream=&btstack_audio_esp32_sink_start_stream,
    /* void (*stop_stream)(void)  */ .stop_stream=&btstack_audio_esp32_sink_stop_stream,
    /* void (*close)(void); */ .close=&btstack_audio_esp32_sink_close};

const btstack_audio_sink_t *btstack_audio_esp32_sink_get_instance(void)
{
  return &btstack_audio_sink_esp32;
}
