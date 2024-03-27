# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/lallo/esp/esp-idf/components/bootloader/subproject"
  "/home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf/build/bootloader"
  "/home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf/build/bootloader-prefix"
  "/home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf/build/bootloader-prefix/tmp"
  "/home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf/build/bootloader-prefix/src/bootloader-stamp"
  "/home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf/build/bootloader-prefix/src"
  "/home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf/build/bootloader-prefix/src/bootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf/build/bootloader-prefix/src/bootloader-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf/build/bootloader-prefix/src/bootloader-stamp${cfgdir}") # cfgdir has leading slash
endif()
