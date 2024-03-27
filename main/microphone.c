#define BTSTACK_FILE__ "btstack_audio_esp32.c"

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
static void (*recording_callback)(const int16_t *buffer, uint16_t num_samples);

// timer to fill output ring buffer
static btstack_timer_source_t driver_timer_source;

// i2s rx handle
static i2s_chan_handle_t rx_handle;

// current gain
static int source_gain = 1;
// are we currently streaming from the microphone
static bool is_source_streaming;
// samples that are read from the microphone
static int32_t buffer_in[DMA_BUFFER_SAMPLES];
// samples that have been converted to PCM 16 bit
static int16_t samples_in[DMA_BUFFER_SAMPLES];

// read samples from the microphone and send them off to bluetooth
static void copy_samples(void)
{
    // read from I2S - we pass portMAX_DELAY so we don't delay
    size_t bytes_read = 0;

    // i2s_read(I2S_MIC_DEVICE, buffer_in, DMA_BUFFER_SAMPLES * sizeof(int32_t), &bytes_read, portMAX_DELAY);
    if(rx_handle != NULL)
        i2s_channel_read(rx_handle, buffer_in, DMA_BUFFER_SAMPLES * sizeof(int32_t), &bytes_read, 0);

    // how many samples have we read
    int samples_read = bytes_read / sizeof(int32_t);
    if (samples_read > 0)
    {
        // convert the samples to 16 bit
        for (int i = 0; i < samples_read; i++)
        {
            // in theory we should shift to the right by 16 bits, but MEMS microphones have a very
            // high dynamic range, so if we shift all the way we lose a lot of signal
            samples_in[i] = source_gain * (buffer_in[i] >> 11);
        }
        // send the samples off to be processed
        (*recording_callback)((int16_t *)samples_in, samples_read);
    }
}

// callback from the timer
static void driver_timer_handler_source(btstack_timer_source_t *ts)
{
    // if we're streaming from the microphone then copy the samples from the I2S device
    if (recording_callback)
    {
        copy_samples();
    }
    // re-set timer
    btstack_run_loop_set_timer(ts, DRIVER_POLL_INTERVAL_MS);
    btstack_run_loop_add_timer(ts);
}

// setup the I2S driver
static int btstack_audio_esp32_source_init(
    uint8_t channels,
    uint32_t samplerate,
    void (*recording)(const int16_t *buffer, uint16_t num_samples))
{
    recording_callback = recording;
    /*
        i2s_std_config_t config = {
            .mode = I2S_MODE_MASTER | I2S_MODE_RX,
            .sample_rate = samplerate,
            .bits_per_sample = I2S_BITS_PER_SAMPLE_32BIT,
            .channel_format = channels == 2 ? I2S_CHANNEL_FMT_RIGHT_LEFT : I2S_MIC_CHANNEL,
            .communication_format = I2S_COMM_FORMAT_STAND_I2S,
            .dma_buf_count = DMA_BUFFER_COUNT, // Number of DMA buffers. Max 128.
            .dma_buf_len = DMA_BUFFER_SAMPLES, // Size of each DMA buffer in samples. Max 1024.
            .intr_alloc_flags = ESP_INTR_FLAG_LEVEL1};


        i2s_pin_config_t pins = {
            .bck_io_num = I2S_MIC_SERIAL_CLOCK,
            .ws_io_num = I2S_MIC_LEFT_RIGHT_CLOCK,
            .data_out_num = -1,
            .data_in_num = I2S_MIC_SERIAL_DATA};
    */

    /*
        i2s_driver_install(I2S_MIC_DEVICE, &config, 0, NULL);
        i2s_set_pin(I2S_MIC_DEVICE, &pins);
        i2s_zero_dma_buffer(I2S_MIC_DEVICE);
    */

    /* Get the default channel configuration by helper macro.
     * This helper macro is defined in 'i2s_common.h' and shared by all the I2S communication modes.
     * It can help to specify the I2S role and port ID */
    i2s_chan_config_t chan_cfg = {
        .id = I2S_MIC_DEVICE,
        .role = I2S_ROLE_MASTER,
        .dma_frame_num = DMA_BUFFER_SAMPLES,
        .dma_desc_num = DMA_BUFFER_COUNT

    };
    /* Allocate a new RX channel and get the handle of this channel */
    i2s_new_channel(&chan_cfg, NULL, &rx_handle);

    /* Setting the configurations, the slot configuration and clock configuration can be generated by the macros
     * These two helper macros are defined in 'i2s_std.h' which can only be used in STD mode.
     * They can help to specify the slot and clock configurations for initialization or updating */
    i2s_std_config_t std_cfg = {
        .clk_cfg = I2S_STD_CLK_DEFAULT_CONFIG(samplerate),
        .slot_cfg = I2S_STD_PHILIPS_SLOT_DEFAULT_CONFIG(I2S_DATA_BIT_WIDTH_32BIT, I2S_SLOT_MODE_MONO),
        .gpio_cfg = {
            .mclk = I2S_GPIO_UNUSED,
            .bclk = I2S_MIC_SERIAL_CLOCK,
            .ws = I2S_MIC_LEFT_RIGHT_CLOCK,
            .dout = -1,
            .din = I2S_MIC_SERIAL_DATA,
            .invert_flags = {
                .mclk_inv = false,
                .bclk_inv = false,
                .ws_inv = false,
            },
        },
    };
    
    /* Initialize the channel */
    i2s_channel_init_std_mode(rx_handle, &std_cfg);

    return 0;
}

// update the gain
static void btstack_audio_esp32_source_gain(uint8_t gain)
{
    source_gain = gain;
}

// start streaming from the microphone
static void btstack_audio_esp32_source_start_stream()
{
    // start i2s
    //i2s_start(I2S_MIC_DEVICE);
    if(rx_handle != NULL){
        // Enable the i2s port
        i2s_channel_enable(rx_handle);
    }

    // start timer
    btstack_run_loop_set_timer_handler(&driver_timer_source, &driver_timer_handler_source);
    btstack_run_loop_set_timer(&driver_timer_source, DRIVER_POLL_INTERVAL_MS);
    btstack_run_loop_add_timer(&driver_timer_source);

    // state
    is_source_streaming = true;
}

// stop streaming from the microphone
static void btstack_audio_esp32_source_stop_stream(void)
{
    if (!is_source_streaming)
        return;

    // stop timer
    btstack_run_loop_remove_timer(&driver_timer_source);

    // stop i2s
    //i2s_stop(I2S_MIC_DEVICE);

    if(rx_handle != NULL){
        /* Have to stop the channel before deleting it */
        i2s_channel_disable(rx_handle);
    }

    // state
    is_source_streaming = false;
}

// shutdown the driver
static void btstack_audio_esp32_source_close(void)
{
    if (is_source_streaming)
    {
        btstack_audio_esp32_source_stop_stream();
    }
    // uninstall driver
    // i2s_driver_uninstall(I2S_MIC_DEVICE);

    if(rx_handle != NULL){

        /* If the handle is not needed any more, delete it to release the channel resources */
        i2s_del_channel(rx_handle);
    }
}

static const btstack_audio_source_t btstack_audio_source_esp32 = {
    /* int (*init)(..);*/ .init=&btstack_audio_esp32_source_init,
    /* void (*set_gain)(uint8_t gain); */ .set_gain=&btstack_audio_esp32_source_gain,
    /* void (*start_stream(void));*/ .start_stream=&btstack_audio_esp32_source_start_stream,
    /* void (*stop_stream)(void)  */ .stop_stream=&btstack_audio_esp32_source_stop_stream,
    /* void (*close)(void); */ .close=&btstack_audio_esp32_source_close};

const btstack_audio_source_t *btstack_audio_esp32_source_get_instance(void)
{
    return &btstack_audio_source_esp32;
}
