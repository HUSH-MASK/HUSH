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
CMAKE_SOURCE_DIR = /home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf/build

# Include any dependencies generated for this target.
include esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/compiler_depend.make

# Include the progress variables for this target.
include esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/progress.make

# Include the compile flags for this target's objects.
include esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/flags.make

esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/transport.c.obj: esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/flags.make
esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/transport.c.obj: /home/lallo/esp/esp-idf/components/tcp_transport/transport.c
esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/transport.c.obj: esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/transport.c.obj"
	cd /home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf/build/esp-idf/tcp_transport && /home/lallo/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20230928/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/transport.c.obj -MF CMakeFiles/__idf_tcp_transport.dir/transport.c.obj.d -o CMakeFiles/__idf_tcp_transport.dir/transport.c.obj -c /home/lallo/esp/esp-idf/components/tcp_transport/transport.c

esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/transport.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/__idf_tcp_transport.dir/transport.c.i"
	cd /home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf/build/esp-idf/tcp_transport && /home/lallo/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20230928/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/lallo/esp/esp-idf/components/tcp_transport/transport.c > CMakeFiles/__idf_tcp_transport.dir/transport.c.i

esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/transport.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/__idf_tcp_transport.dir/transport.c.s"
	cd /home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf/build/esp-idf/tcp_transport && /home/lallo/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20230928/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/lallo/esp/esp-idf/components/tcp_transport/transport.c -o CMakeFiles/__idf_tcp_transport.dir/transport.c.s

esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/transport_ssl.c.obj: esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/flags.make
esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/transport_ssl.c.obj: /home/lallo/esp/esp-idf/components/tcp_transport/transport_ssl.c
esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/transport_ssl.c.obj: esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/transport_ssl.c.obj"
	cd /home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf/build/esp-idf/tcp_transport && /home/lallo/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20230928/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/transport_ssl.c.obj -MF CMakeFiles/__idf_tcp_transport.dir/transport_ssl.c.obj.d -o CMakeFiles/__idf_tcp_transport.dir/transport_ssl.c.obj -c /home/lallo/esp/esp-idf/components/tcp_transport/transport_ssl.c

esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/transport_ssl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/__idf_tcp_transport.dir/transport_ssl.c.i"
	cd /home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf/build/esp-idf/tcp_transport && /home/lallo/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20230928/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/lallo/esp/esp-idf/components/tcp_transport/transport_ssl.c > CMakeFiles/__idf_tcp_transport.dir/transport_ssl.c.i

esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/transport_ssl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/__idf_tcp_transport.dir/transport_ssl.c.s"
	cd /home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf/build/esp-idf/tcp_transport && /home/lallo/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20230928/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/lallo/esp/esp-idf/components/tcp_transport/transport_ssl.c -o CMakeFiles/__idf_tcp_transport.dir/transport_ssl.c.s

esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/transport_internal.c.obj: esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/flags.make
esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/transport_internal.c.obj: /home/lallo/esp/esp-idf/components/tcp_transport/transport_internal.c
esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/transport_internal.c.obj: esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/transport_internal.c.obj"
	cd /home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf/build/esp-idf/tcp_transport && /home/lallo/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20230928/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/transport_internal.c.obj -MF CMakeFiles/__idf_tcp_transport.dir/transport_internal.c.obj.d -o CMakeFiles/__idf_tcp_transport.dir/transport_internal.c.obj -c /home/lallo/esp/esp-idf/components/tcp_transport/transport_internal.c

esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/transport_internal.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/__idf_tcp_transport.dir/transport_internal.c.i"
	cd /home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf/build/esp-idf/tcp_transport && /home/lallo/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20230928/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/lallo/esp/esp-idf/components/tcp_transport/transport_internal.c > CMakeFiles/__idf_tcp_transport.dir/transport_internal.c.i

esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/transport_internal.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/__idf_tcp_transport.dir/transport_internal.c.s"
	cd /home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf/build/esp-idf/tcp_transport && /home/lallo/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20230928/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/lallo/esp/esp-idf/components/tcp_transport/transport_internal.c -o CMakeFiles/__idf_tcp_transport.dir/transport_internal.c.s

esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/transport_socks_proxy.c.obj: esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/flags.make
esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/transport_socks_proxy.c.obj: /home/lallo/esp/esp-idf/components/tcp_transport/transport_socks_proxy.c
esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/transport_socks_proxy.c.obj: esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/transport_socks_proxy.c.obj"
	cd /home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf/build/esp-idf/tcp_transport && /home/lallo/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20230928/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/transport_socks_proxy.c.obj -MF CMakeFiles/__idf_tcp_transport.dir/transport_socks_proxy.c.obj.d -o CMakeFiles/__idf_tcp_transport.dir/transport_socks_proxy.c.obj -c /home/lallo/esp/esp-idf/components/tcp_transport/transport_socks_proxy.c

esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/transport_socks_proxy.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/__idf_tcp_transport.dir/transport_socks_proxy.c.i"
	cd /home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf/build/esp-idf/tcp_transport && /home/lallo/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20230928/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/lallo/esp/esp-idf/components/tcp_transport/transport_socks_proxy.c > CMakeFiles/__idf_tcp_transport.dir/transport_socks_proxy.c.i

esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/transport_socks_proxy.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/__idf_tcp_transport.dir/transport_socks_proxy.c.s"
	cd /home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf/build/esp-idf/tcp_transport && /home/lallo/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20230928/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/lallo/esp/esp-idf/components/tcp_transport/transport_socks_proxy.c -o CMakeFiles/__idf_tcp_transport.dir/transport_socks_proxy.c.s

esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/transport_ws.c.obj: esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/flags.make
esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/transport_ws.c.obj: /home/lallo/esp/esp-idf/components/tcp_transport/transport_ws.c
esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/transport_ws.c.obj: esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/transport_ws.c.obj"
	cd /home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf/build/esp-idf/tcp_transport && /home/lallo/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20230928/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/transport_ws.c.obj -MF CMakeFiles/__idf_tcp_transport.dir/transport_ws.c.obj.d -o CMakeFiles/__idf_tcp_transport.dir/transport_ws.c.obj -c /home/lallo/esp/esp-idf/components/tcp_transport/transport_ws.c

esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/transport_ws.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/__idf_tcp_transport.dir/transport_ws.c.i"
	cd /home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf/build/esp-idf/tcp_transport && /home/lallo/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20230928/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/lallo/esp/esp-idf/components/tcp_transport/transport_ws.c > CMakeFiles/__idf_tcp_transport.dir/transport_ws.c.i

esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/transport_ws.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/__idf_tcp_transport.dir/transport_ws.c.s"
	cd /home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf/build/esp-idf/tcp_transport && /home/lallo/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20230928/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/lallo/esp/esp-idf/components/tcp_transport/transport_ws.c -o CMakeFiles/__idf_tcp_transport.dir/transport_ws.c.s

# Object files for target __idf_tcp_transport
__idf_tcp_transport_OBJECTS = \
"CMakeFiles/__idf_tcp_transport.dir/transport.c.obj" \
"CMakeFiles/__idf_tcp_transport.dir/transport_ssl.c.obj" \
"CMakeFiles/__idf_tcp_transport.dir/transport_internal.c.obj" \
"CMakeFiles/__idf_tcp_transport.dir/transport_socks_proxy.c.obj" \
"CMakeFiles/__idf_tcp_transport.dir/transport_ws.c.obj"

# External object files for target __idf_tcp_transport
__idf_tcp_transport_EXTERNAL_OBJECTS =

esp-idf/tcp_transport/libtcp_transport.a: esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/transport.c.obj
esp-idf/tcp_transport/libtcp_transport.a: esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/transport_ssl.c.obj
esp-idf/tcp_transport/libtcp_transport.a: esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/transport_internal.c.obj
esp-idf/tcp_transport/libtcp_transport.a: esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/transport_socks_proxy.c.obj
esp-idf/tcp_transport/libtcp_transport.a: esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/transport_ws.c.obj
esp-idf/tcp_transport/libtcp_transport.a: esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/build.make
esp-idf/tcp_transport/libtcp_transport.a: esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking C static library libtcp_transport.a"
	cd /home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf/build/esp-idf/tcp_transport && $(CMAKE_COMMAND) -P CMakeFiles/__idf_tcp_transport.dir/cmake_clean_target.cmake
	cd /home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf/build/esp-idf/tcp_transport && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/__idf_tcp_transport.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/build: esp-idf/tcp_transport/libtcp_transport.a
.PHONY : esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/build

esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/clean:
	cd /home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf/build/esp-idf/tcp_transport && $(CMAKE_COMMAND) -P CMakeFiles/__idf_tcp_transport.dir/cmake_clean.cmake
.PHONY : esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/clean

esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/depend:
	cd /home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf /home/lallo/esp/esp-idf/components/tcp_transport /home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf/build /home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf/build/esp-idf/tcp_transport /home/lallo/uni/ICT/esp32_hsp_bluetooth/esp32-hsp-hf/build/esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : esp-idf/tcp_transport/CMakeFiles/__idf_tcp_transport.dir/depend

