
# Consider dependencies only in project.
set(CMAKE_DEPENDS_IN_PROJECT_ONLY OFF)

# The set of languages for which implicit dependencies are needed:
set(CMAKE_DEPENDS_LANGUAGES
  "ASM"
  )
# The set of files for implicit dependencies of each language:
set(CMAKE_DEPENDS_CHECK_ASM
  "/home/lallo/esp/esp-idf/components/esp_gdbstub/src/port/xtensa/gdbstub-entry.S" "/home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf/build/esp-idf/esp_gdbstub/CMakeFiles/__idf_esp_gdbstub.dir/src/port/xtensa/gdbstub-entry.S.obj"
  "/home/lallo/esp/esp-idf/components/esp_gdbstub/src/port/xtensa/xt_debugexception.S" "/home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf/build/esp-idf/esp_gdbstub/CMakeFiles/__idf_esp_gdbstub.dir/src/port/xtensa/xt_debugexception.S.obj"
  )
set(CMAKE_ASM_COMPILER_ID "GNU")

# Preprocessor definitions for this target.
set(CMAKE_TARGET_DEFINITIONS_ASM
  "ESP_PLATFORM"
  "IDF_VER=\"v5.2.1\""
  "SOC_MMU_PAGE_SIZE=CONFIG_MMU_PAGE_SIZE"
  "SOC_XTAL_FREQ_MHZ=CONFIG_XTAL_FREQ"
  "_GLIBCXX_HAVE_POSIX_SEMAPHORE"
  "_GLIBCXX_USE_POSIX_SEMAPHORE"
  "_GNU_SOURCE"
  "_POSIX_READER_WRITER_LOCKS"
  )

# The include file search paths:
set(CMAKE_ASM_TARGET_INCLUDE_PATH
  "config"
  "/home/lallo/esp/esp-idf/components/esp_gdbstub/include"
  "/home/lallo/esp/esp-idf/components/esp_gdbstub/private_include"
  "/home/lallo/esp/esp-idf/components/esp_gdbstub/src/port/xtensa/include"
  "/home/lallo/esp/esp-idf/components/newlib/platform_include"
  "/home/lallo/esp/esp-idf/components/freertos/config/include"
  "/home/lallo/esp/esp-idf/components/freertos/config/include/freertos"
  "/home/lallo/esp/esp-idf/components/freertos/config/xtensa/include"
  "/home/lallo/esp/esp-idf/components/freertos/FreeRTOS-Kernel/include"
  "/home/lallo/esp/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include"
  "/home/lallo/esp/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include/freertos"
  "/home/lallo/esp/esp-idf/components/freertos/esp_additions/include"
  "/home/lallo/esp/esp-idf/components/esp_hw_support/include"
  "/home/lallo/esp/esp-idf/components/esp_hw_support/include/soc"
  "/home/lallo/esp/esp-idf/components/esp_hw_support/include/soc/esp32"
  "/home/lallo/esp/esp-idf/components/esp_hw_support/port/esp32/."
  "/home/lallo/esp/esp-idf/components/heap/include"
  "/home/lallo/esp/esp-idf/components/log/include"
  "/home/lallo/esp/esp-idf/components/soc/include"
  "/home/lallo/esp/esp-idf/components/soc/esp32"
  "/home/lallo/esp/esp-idf/components/soc/esp32/include"
  "/home/lallo/esp/esp-idf/components/hal/platform_port/include"
  "/home/lallo/esp/esp-idf/components/hal/esp32/include"
  "/home/lallo/esp/esp-idf/components/hal/include"
  "/home/lallo/esp/esp-idf/components/esp_rom/include"
  "/home/lallo/esp/esp-idf/components/esp_rom/include/esp32"
  "/home/lallo/esp/esp-idf/components/esp_rom/esp32"
  "/home/lallo/esp/esp-idf/components/esp_common/include"
  "/home/lallo/esp/esp-idf/components/esp_system/include"
  "/home/lallo/esp/esp-idf/components/esp_system/port/soc"
  "/home/lallo/esp/esp-idf/components/esp_system/port/include/private"
  "/home/lallo/esp/esp-idf/components/xtensa/esp32/include"
  "/home/lallo/esp/esp-idf/components/xtensa/include"
  "/home/lallo/esp/esp-idf/components/xtensa/deprecated_include"
  "/home/lallo/esp/esp-idf/components/lwip/include"
  "/home/lallo/esp/esp-idf/components/lwip/include/apps"
  "/home/lallo/esp/esp-idf/components/lwip/include/apps/sntp"
  "/home/lallo/esp/esp-idf/components/lwip/lwip/src/include"
  "/home/lallo/esp/esp-idf/components/lwip/port/include"
  "/home/lallo/esp/esp-idf/components/lwip/port/freertos/include"
  "/home/lallo/esp/esp-idf/components/lwip/port/esp32xx/include"
  "/home/lallo/esp/esp-idf/components/lwip/port/esp32xx/include/arch"
  "/home/lallo/esp/esp-idf/components/lwip/port/esp32xx/include/sys"
  )

# The set of dependency files which are needed:
set(CMAKE_DEPENDS_DEPENDENCY_FILES
  "/home/lallo/esp/esp-idf/components/esp_gdbstub/src/gdbstub.c" "esp-idf/esp_gdbstub/CMakeFiles/__idf_esp_gdbstub.dir/src/gdbstub.c.obj" "gcc" "esp-idf/esp_gdbstub/CMakeFiles/__idf_esp_gdbstub.dir/src/gdbstub.c.obj.d"
  "/home/lallo/esp/esp-idf/components/esp_gdbstub/src/gdbstub_transport.c" "esp-idf/esp_gdbstub/CMakeFiles/__idf_esp_gdbstub.dir/src/gdbstub_transport.c.obj" "gcc" "esp-idf/esp_gdbstub/CMakeFiles/__idf_esp_gdbstub.dir/src/gdbstub_transport.c.obj.d"
  "/home/lallo/esp/esp-idf/components/esp_gdbstub/src/packet.c" "esp-idf/esp_gdbstub/CMakeFiles/__idf_esp_gdbstub.dir/src/packet.c.obj" "gcc" "esp-idf/esp_gdbstub/CMakeFiles/__idf_esp_gdbstub.dir/src/packet.c.obj.d"
  "/home/lallo/esp/esp-idf/components/esp_gdbstub/src/port/xtensa/gdbstub_xtensa.c" "esp-idf/esp_gdbstub/CMakeFiles/__idf_esp_gdbstub.dir/src/port/xtensa/gdbstub_xtensa.c.obj" "gcc" "esp-idf/esp_gdbstub/CMakeFiles/__idf_esp_gdbstub.dir/src/port/xtensa/gdbstub_xtensa.c.obj.d"
  )

# Targets to which this target links which contain Fortran sources.
set(CMAKE_Fortran_TARGET_LINKED_INFO_FILES
  )

# Targets to which this target links which contain Fortran sources.
set(CMAKE_Fortran_TARGET_FORWARD_LINKED_INFO_FILES
  )

# Fortran module output directory.
set(CMAKE_Fortran_TARGET_MODULE_DIR "")
