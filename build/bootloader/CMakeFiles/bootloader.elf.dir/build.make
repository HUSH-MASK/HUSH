# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/lallo/esp/esp-idf/components/bootloader/subproject

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf/build/bootloader

# Include any dependencies generated for this target.
include CMakeFiles/bootloader.elf.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/bootloader.elf.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/bootloader.elf.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/bootloader.elf.dir/flags.make

project_elf_src_esp32.c:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf/build/bootloader/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating project_elf_src_esp32.c"
	/usr/bin/cmake -E touch /home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf/build/bootloader/project_elf_src_esp32.c

CMakeFiles/bootloader.elf.dir/project_elf_src_esp32.c.obj: CMakeFiles/bootloader.elf.dir/flags.make
CMakeFiles/bootloader.elf.dir/project_elf_src_esp32.c.obj: project_elf_src_esp32.c
CMakeFiles/bootloader.elf.dir/project_elf_src_esp32.c.obj: CMakeFiles/bootloader.elf.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf/build/bootloader/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/bootloader.elf.dir/project_elf_src_esp32.c.obj"
	/home/lallo/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20230928/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/bootloader.elf.dir/project_elf_src_esp32.c.obj -MF CMakeFiles/bootloader.elf.dir/project_elf_src_esp32.c.obj.d -o CMakeFiles/bootloader.elf.dir/project_elf_src_esp32.c.obj -c /home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf/build/bootloader/project_elf_src_esp32.c

CMakeFiles/bootloader.elf.dir/project_elf_src_esp32.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/bootloader.elf.dir/project_elf_src_esp32.c.i"
	/home/lallo/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20230928/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf/build/bootloader/project_elf_src_esp32.c > CMakeFiles/bootloader.elf.dir/project_elf_src_esp32.c.i

CMakeFiles/bootloader.elf.dir/project_elf_src_esp32.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/bootloader.elf.dir/project_elf_src_esp32.c.s"
	/home/lallo/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20230928/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf/build/bootloader/project_elf_src_esp32.c -o CMakeFiles/bootloader.elf.dir/project_elf_src_esp32.c.s

# Object files for target bootloader.elf
bootloader_elf_OBJECTS = \
"CMakeFiles/bootloader.elf.dir/project_elf_src_esp32.c.obj"

# External object files for target bootloader.elf
bootloader_elf_EXTERNAL_OBJECTS =

bootloader.elf: CMakeFiles/bootloader.elf.dir/project_elf_src_esp32.c.obj
bootloader.elf: CMakeFiles/bootloader.elf.dir/build.make
bootloader.elf: esp-idf/xtensa/libxtensa.a
bootloader.elf: esp-idf/soc/libsoc.a
bootloader.elf: esp-idf/micro-ecc/libmicro-ecc.a
bootloader.elf: esp-idf/hal/libhal.a
bootloader.elf: esp-idf/spi_flash/libspi_flash.a
bootloader.elf: esp-idf/esp_bootloader_format/libesp_bootloader_format.a
bootloader.elf: esp-idf/bootloader_support/libbootloader_support.a
bootloader.elf: esp-idf/efuse/libefuse.a
bootloader.elf: esp-idf/esp_system/libesp_system.a
bootloader.elf: esp-idf/esp_hw_support/libesp_hw_support.a
bootloader.elf: esp-idf/esp_common/libesp_common.a
bootloader.elf: esp-idf/esp_rom/libesp_rom.a
bootloader.elf: esp-idf/log/liblog.a
bootloader.elf: esp-idf/main/libmain.a
bootloader.elf: esp-idf/xtensa/libxtensa.a
bootloader.elf: esp-idf/soc/libsoc.a
bootloader.elf: esp-idf/micro-ecc/libmicro-ecc.a
bootloader.elf: esp-idf/hal/libhal.a
bootloader.elf: esp-idf/spi_flash/libspi_flash.a
bootloader.elf: esp-idf/esp_bootloader_format/libesp_bootloader_format.a
bootloader.elf: esp-idf/bootloader_support/libbootloader_support.a
bootloader.elf: esp-idf/efuse/libefuse.a
bootloader.elf: esp-idf/esp_system/libesp_system.a
bootloader.elf: esp-idf/esp_hw_support/libesp_hw_support.a
bootloader.elf: esp-idf/esp_common/libesp_common.a
bootloader.elf: esp-idf/esp_rom/libesp_rom.a
bootloader.elf: esp-idf/log/liblog.a
bootloader.elf: esp-idf/xtensa/libxtensa.a
bootloader.elf: esp-idf/soc/libsoc.a
bootloader.elf: esp-idf/micro-ecc/libmicro-ecc.a
bootloader.elf: esp-idf/hal/libhal.a
bootloader.elf: esp-idf/spi_flash/libspi_flash.a
bootloader.elf: esp-idf/esp_bootloader_format/libesp_bootloader_format.a
bootloader.elf: esp-idf/bootloader_support/libbootloader_support.a
bootloader.elf: esp-idf/efuse/libefuse.a
bootloader.elf: esp-idf/esp_system/libesp_system.a
bootloader.elf: esp-idf/esp_hw_support/libesp_hw_support.a
bootloader.elf: esp-idf/esp_common/libesp_common.a
bootloader.elf: esp-idf/esp_rom/libesp_rom.a
bootloader.elf: esp-idf/log/liblog.a
bootloader.elf: esp-idf/xtensa/libxtensa.a
bootloader.elf: esp-idf/soc/libsoc.a
bootloader.elf: esp-idf/micro-ecc/libmicro-ecc.a
bootloader.elf: esp-idf/hal/libhal.a
bootloader.elf: esp-idf/spi_flash/libspi_flash.a
bootloader.elf: esp-idf/esp_bootloader_format/libesp_bootloader_format.a
bootloader.elf: esp-idf/bootloader_support/libbootloader_support.a
bootloader.elf: esp-idf/efuse/libefuse.a
bootloader.elf: esp-idf/esp_system/libesp_system.a
bootloader.elf: esp-idf/esp_hw_support/libesp_hw_support.a
bootloader.elf: esp-idf/esp_common/libesp_common.a
bootloader.elf: esp-idf/esp_rom/libesp_rom.a
bootloader.elf: esp-idf/log/liblog.a
bootloader.elf: esp-idf/xtensa/libxtensa.a
bootloader.elf: esp-idf/soc/libsoc.a
bootloader.elf: esp-idf/micro-ecc/libmicro-ecc.a
bootloader.elf: esp-idf/hal/libhal.a
bootloader.elf: esp-idf/spi_flash/libspi_flash.a
bootloader.elf: esp-idf/esp_bootloader_format/libesp_bootloader_format.a
bootloader.elf: esp-idf/bootloader_support/libbootloader_support.a
bootloader.elf: esp-idf/efuse/libefuse.a
bootloader.elf: esp-idf/esp_system/libesp_system.a
bootloader.elf: esp-idf/esp_hw_support/libesp_hw_support.a
bootloader.elf: esp-idf/esp_common/libesp_common.a
bootloader.elf: esp-idf/esp_rom/libesp_rom.a
bootloader.elf: esp-idf/log/liblog.a
bootloader.elf: /home/lallo/esp/esp-idf/components/xtensa/esp32/libxt_hal.a
bootloader.elf: /home/lallo/esp/esp-idf/components/soc/esp32/ld/esp32.peripherals.ld
bootloader.elf: /home/lallo/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.ld
bootloader.elf: /home/lallo/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.api.ld
bootloader.elf: /home/lallo/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.libgcc.ld
bootloader.elf: /home/lallo/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.newlib-funcs.ld
bootloader.elf: /home/lallo/esp/esp-idf/components/bootloader/subproject/main/ld/esp32/bootloader.ld
bootloader.elf: /home/lallo/esp/esp-idf/components/bootloader/subproject/main/ld/esp32/bootloader.rom.ld
bootloader.elf: CMakeFiles/bootloader.elf.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf/build/bootloader/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable bootloader.elf"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bootloader.elf.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/bootloader.elf.dir/build: bootloader.elf
.PHONY : CMakeFiles/bootloader.elf.dir/build

CMakeFiles/bootloader.elf.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/bootloader.elf.dir/cmake_clean.cmake
.PHONY : CMakeFiles/bootloader.elf.dir/clean

CMakeFiles/bootloader.elf.dir/depend: project_elf_src_esp32.c
	cd /home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf/build/bootloader && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lallo/esp/esp-idf/components/bootloader/subproject /home/lallo/esp/esp-idf/components/bootloader/subproject /home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf/build/bootloader /home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf/build/bootloader /home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf/build/bootloader/CMakeFiles/bootloader.elf.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/bootloader.elf.dir/depend

