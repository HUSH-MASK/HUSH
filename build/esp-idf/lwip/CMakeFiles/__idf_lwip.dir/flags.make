# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

# compile C with /home/lallo/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20230928/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc
C_DEFINES = -DESP_LWIP_COMPONENT_BUILD -DESP_PLATFORM -DIDF_VER=\"v5.2.1\" -DSOC_MMU_PAGE_SIZE=CONFIG_MMU_PAGE_SIZE -DSOC_XTAL_FREQ_MHZ=CONFIG_XTAL_FREQ -D_GLIBCXX_HAVE_POSIX_SEMAPHORE -D_GLIBCXX_USE_POSIX_SEMAPHORE -D_GNU_SOURCE -D_POSIX_READER_WRITER_LOCKS

C_INCLUDES = -I/home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf/build/config -I/home/lallo/esp/esp-idf/components/lwip/include -I/home/lallo/esp/esp-idf/components/lwip/include/apps -I/home/lallo/esp/esp-idf/components/lwip/include/apps/sntp -I/home/lallo/esp/esp-idf/components/lwip/lwip/src/include -I/home/lallo/esp/esp-idf/components/lwip/port/include -I/home/lallo/esp/esp-idf/components/lwip/port/freertos/include -I/home/lallo/esp/esp-idf/components/lwip/port/esp32xx/include -I/home/lallo/esp/esp-idf/components/lwip/port/esp32xx/include/arch -I/home/lallo/esp/esp-idf/components/lwip/port/esp32xx/include/sys -I/home/lallo/esp/esp-idf/components/newlib/platform_include -I/home/lallo/esp/esp-idf/components/freertos/config/include -I/home/lallo/esp/esp-idf/components/freertos/config/include/freertos -I/home/lallo/esp/esp-idf/components/freertos/config/xtensa/include -I/home/lallo/esp/esp-idf/components/freertos/FreeRTOS-Kernel/include -I/home/lallo/esp/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include -I/home/lallo/esp/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include/freertos -I/home/lallo/esp/esp-idf/components/freertos/esp_additions/include -I/home/lallo/esp/esp-idf/components/esp_hw_support/include -I/home/lallo/esp/esp-idf/components/esp_hw_support/include/soc -I/home/lallo/esp/esp-idf/components/esp_hw_support/include/soc/esp32 -I/home/lallo/esp/esp-idf/components/esp_hw_support/port/esp32/. -I/home/lallo/esp/esp-idf/components/heap/include -I/home/lallo/esp/esp-idf/components/log/include -I/home/lallo/esp/esp-idf/components/soc/include -I/home/lallo/esp/esp-idf/components/soc/esp32 -I/home/lallo/esp/esp-idf/components/soc/esp32/include -I/home/lallo/esp/esp-idf/components/hal/platform_port/include -I/home/lallo/esp/esp-idf/components/hal/esp32/include -I/home/lallo/esp/esp-idf/components/hal/include -I/home/lallo/esp/esp-idf/components/esp_rom/include -I/home/lallo/esp/esp-idf/components/esp_rom/include/esp32 -I/home/lallo/esp/esp-idf/components/esp_rom/esp32 -I/home/lallo/esp/esp-idf/components/esp_common/include -I/home/lallo/esp/esp-idf/components/esp_system/include -I/home/lallo/esp/esp-idf/components/esp_system/port/soc -I/home/lallo/esp/esp-idf/components/esp_system/port/include/private -I/home/lallo/esp/esp-idf/components/xtensa/esp32/include -I/home/lallo/esp/esp-idf/components/xtensa/include -I/home/lallo/esp/esp-idf/components/xtensa/deprecated_include -I/home/lallo/esp/esp-idf/components/vfs/include -I/home/lallo/esp/esp-idf/components/esp_eth/include -I/home/lallo/esp/esp-idf/components/esp_event/include -I/home/lallo/esp/esp-idf/components/driver/include -I/home/lallo/esp/esp-idf/components/driver/deprecated -I/home/lallo/esp/esp-idf/components/driver/analog_comparator/include -I/home/lallo/esp/esp-idf/components/driver/dac/include -I/home/lallo/esp/esp-idf/components/driver/gpio/include -I/home/lallo/esp/esp-idf/components/driver/gptimer/include -I/home/lallo/esp/esp-idf/components/driver/i2c/include -I/home/lallo/esp/esp-idf/components/driver/i2s/include -I/home/lallo/esp/esp-idf/components/driver/ledc/include -I/home/lallo/esp/esp-idf/components/driver/mcpwm/include -I/home/lallo/esp/esp-idf/components/driver/parlio/include -I/home/lallo/esp/esp-idf/components/driver/pcnt/include -I/home/lallo/esp/esp-idf/components/driver/rmt/include -I/home/lallo/esp/esp-idf/components/driver/sdio_slave/include -I/home/lallo/esp/esp-idf/components/driver/sdmmc/include -I/home/lallo/esp/esp-idf/components/driver/sigma_delta/include -I/home/lallo/esp/esp-idf/components/driver/spi/include -I/home/lallo/esp/esp-idf/components/driver/temperature_sensor/include -I/home/lallo/esp/esp-idf/components/driver/touch_sensor/include -I/home/lallo/esp/esp-idf/components/driver/twai/include -I/home/lallo/esp/esp-idf/components/driver/uart/include -I/home/lallo/esp/esp-idf/components/driver/usb_serial_jtag/include -I/home/lallo/esp/esp-idf/components/driver/touch_sensor/esp32/include -I/home/lallo/esp/esp-idf/components/esp_pm/include -I/home/lallo/esp/esp-idf/components/esp_ringbuf/include

C_FLAGS = -mlongcalls -Wno-frame-address  -fdiagnostics-color=always -ffunction-sections -fdata-sections -Wall -Werror=all -Wno-error=unused-function -Wno-error=unused-variable -Wno-error=unused-but-set-variable -Wno-error=deprecated-declarations -Wextra -Wno-unused-parameter -Wno-sign-compare -Wno-enum-conversion -gdwarf-4 -ggdb -Og -fno-shrink-wrap -fmacro-prefix-map=/home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf=. -fmacro-prefix-map=/home/lallo/esp/esp-idf=/IDF -fstrict-volatile-bitfields -fno-jump-tables -fno-tree-switch-conversion -std=gnu17 -Wno-old-style-declaration -Wno-address

# Custom flags: esp-idf/lwip/CMakeFiles/__idf_lwip.dir/lwip/src/core/tcp.c.obj_FLAGS = -Wno-type-limits

# Custom flags: esp-idf/lwip/CMakeFiles/__idf_lwip.dir/lwip/src/netif/ppp/chap_ms.c.obj_FLAGS = -Wno-array-parameter

# Custom flags: esp-idf/lwip/CMakeFiles/__idf_lwip.dir/lwip/src/netif/ppp/pppos.c.obj_FLAGS = -Wno-type-limits

