# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/zhouzhiwei/workspace/Git/bintalk-developent

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug

# Include any dependencies generated for this target.
include runtime/CMakeFiles/bintalk_cpp.dir/depend.make

# Include the progress variables for this target.
include runtime/CMakeFiles/bintalk_cpp.dir/progress.make

# Include the compile flags for this target's objects.
include runtime/CMakeFiles/bintalk_cpp.dir/flags.make

runtime/CMakeFiles/bintalk_cpp.dir/cpp/bintalk/ProtocolReader.cpp.o: runtime/CMakeFiles/bintalk_cpp.dir/flags.make
runtime/CMakeFiles/bintalk_cpp.dir/cpp/bintalk/ProtocolReader.cpp.o: ../runtime/cpp/bintalk/ProtocolReader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object runtime/CMakeFiles/bintalk_cpp.dir/cpp/bintalk/ProtocolReader.cpp.o"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/runtime && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bintalk_cpp.dir/cpp/bintalk/ProtocolReader.cpp.o -c /Users/zhouzhiwei/workspace/Git/bintalk-developent/runtime/cpp/bintalk/ProtocolReader.cpp

runtime/CMakeFiles/bintalk_cpp.dir/cpp/bintalk/ProtocolReader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bintalk_cpp.dir/cpp/bintalk/ProtocolReader.cpp.i"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/runtime && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zhouzhiwei/workspace/Git/bintalk-developent/runtime/cpp/bintalk/ProtocolReader.cpp > CMakeFiles/bintalk_cpp.dir/cpp/bintalk/ProtocolReader.cpp.i

runtime/CMakeFiles/bintalk_cpp.dir/cpp/bintalk/ProtocolReader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bintalk_cpp.dir/cpp/bintalk/ProtocolReader.cpp.s"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/runtime && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zhouzhiwei/workspace/Git/bintalk-developent/runtime/cpp/bintalk/ProtocolReader.cpp -o CMakeFiles/bintalk_cpp.dir/cpp/bintalk/ProtocolReader.cpp.s

runtime/CMakeFiles/bintalk_cpp.dir/cpp/bintalk/ProtocolWriter.cpp.o: runtime/CMakeFiles/bintalk_cpp.dir/flags.make
runtime/CMakeFiles/bintalk_cpp.dir/cpp/bintalk/ProtocolWriter.cpp.o: ../runtime/cpp/bintalk/ProtocolWriter.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object runtime/CMakeFiles/bintalk_cpp.dir/cpp/bintalk/ProtocolWriter.cpp.o"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/runtime && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bintalk_cpp.dir/cpp/bintalk/ProtocolWriter.cpp.o -c /Users/zhouzhiwei/workspace/Git/bintalk-developent/runtime/cpp/bintalk/ProtocolWriter.cpp

runtime/CMakeFiles/bintalk_cpp.dir/cpp/bintalk/ProtocolWriter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bintalk_cpp.dir/cpp/bintalk/ProtocolWriter.cpp.i"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/runtime && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zhouzhiwei/workspace/Git/bintalk-developent/runtime/cpp/bintalk/ProtocolWriter.cpp > CMakeFiles/bintalk_cpp.dir/cpp/bintalk/ProtocolWriter.cpp.i

runtime/CMakeFiles/bintalk_cpp.dir/cpp/bintalk/ProtocolWriter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bintalk_cpp.dir/cpp/bintalk/ProtocolWriter.cpp.s"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/runtime && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zhouzhiwei/workspace/Git/bintalk-developent/runtime/cpp/bintalk/ProtocolWriter.cpp -o CMakeFiles/bintalk_cpp.dir/cpp/bintalk/ProtocolWriter.cpp.s

runtime/CMakeFiles/bintalk_cpp.dir/cpp/bintalk/FileReader.cpp.o: runtime/CMakeFiles/bintalk_cpp.dir/flags.make
runtime/CMakeFiles/bintalk_cpp.dir/cpp/bintalk/FileReader.cpp.o: ../runtime/cpp/bintalk/FileReader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object runtime/CMakeFiles/bintalk_cpp.dir/cpp/bintalk/FileReader.cpp.o"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/runtime && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bintalk_cpp.dir/cpp/bintalk/FileReader.cpp.o -c /Users/zhouzhiwei/workspace/Git/bintalk-developent/runtime/cpp/bintalk/FileReader.cpp

runtime/CMakeFiles/bintalk_cpp.dir/cpp/bintalk/FileReader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bintalk_cpp.dir/cpp/bintalk/FileReader.cpp.i"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/runtime && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zhouzhiwei/workspace/Git/bintalk-developent/runtime/cpp/bintalk/FileReader.cpp > CMakeFiles/bintalk_cpp.dir/cpp/bintalk/FileReader.cpp.i

runtime/CMakeFiles/bintalk_cpp.dir/cpp/bintalk/FileReader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bintalk_cpp.dir/cpp/bintalk/FileReader.cpp.s"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/runtime && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zhouzhiwei/workspace/Git/bintalk-developent/runtime/cpp/bintalk/FileReader.cpp -o CMakeFiles/bintalk_cpp.dir/cpp/bintalk/FileReader.cpp.s

runtime/CMakeFiles/bintalk_cpp.dir/cpp/bintalk/FileWriter.cpp.o: runtime/CMakeFiles/bintalk_cpp.dir/flags.make
runtime/CMakeFiles/bintalk_cpp.dir/cpp/bintalk/FileWriter.cpp.o: ../runtime/cpp/bintalk/FileWriter.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object runtime/CMakeFiles/bintalk_cpp.dir/cpp/bintalk/FileWriter.cpp.o"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/runtime && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bintalk_cpp.dir/cpp/bintalk/FileWriter.cpp.o -c /Users/zhouzhiwei/workspace/Git/bintalk-developent/runtime/cpp/bintalk/FileWriter.cpp

runtime/CMakeFiles/bintalk_cpp.dir/cpp/bintalk/FileWriter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bintalk_cpp.dir/cpp/bintalk/FileWriter.cpp.i"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/runtime && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zhouzhiwei/workspace/Git/bintalk-developent/runtime/cpp/bintalk/FileWriter.cpp > CMakeFiles/bintalk_cpp.dir/cpp/bintalk/FileWriter.cpp.i

runtime/CMakeFiles/bintalk_cpp.dir/cpp/bintalk/FileWriter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bintalk_cpp.dir/cpp/bintalk/FileWriter.cpp.s"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/runtime && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zhouzhiwei/workspace/Git/bintalk-developent/runtime/cpp/bintalk/FileWriter.cpp -o CMakeFiles/bintalk_cpp.dir/cpp/bintalk/FileWriter.cpp.s

runtime/CMakeFiles/bintalk_cpp.dir/cpp/bintalk/MemoryReader.cpp.o: runtime/CMakeFiles/bintalk_cpp.dir/flags.make
runtime/CMakeFiles/bintalk_cpp.dir/cpp/bintalk/MemoryReader.cpp.o: ../runtime/cpp/bintalk/MemoryReader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object runtime/CMakeFiles/bintalk_cpp.dir/cpp/bintalk/MemoryReader.cpp.o"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/runtime && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bintalk_cpp.dir/cpp/bintalk/MemoryReader.cpp.o -c /Users/zhouzhiwei/workspace/Git/bintalk-developent/runtime/cpp/bintalk/MemoryReader.cpp

runtime/CMakeFiles/bintalk_cpp.dir/cpp/bintalk/MemoryReader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bintalk_cpp.dir/cpp/bintalk/MemoryReader.cpp.i"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/runtime && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zhouzhiwei/workspace/Git/bintalk-developent/runtime/cpp/bintalk/MemoryReader.cpp > CMakeFiles/bintalk_cpp.dir/cpp/bintalk/MemoryReader.cpp.i

runtime/CMakeFiles/bintalk_cpp.dir/cpp/bintalk/MemoryReader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bintalk_cpp.dir/cpp/bintalk/MemoryReader.cpp.s"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/runtime && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zhouzhiwei/workspace/Git/bintalk-developent/runtime/cpp/bintalk/MemoryReader.cpp -o CMakeFiles/bintalk_cpp.dir/cpp/bintalk/MemoryReader.cpp.s

runtime/CMakeFiles/bintalk_cpp.dir/cpp/bintalk/MemoryWriter.cpp.o: runtime/CMakeFiles/bintalk_cpp.dir/flags.make
runtime/CMakeFiles/bintalk_cpp.dir/cpp/bintalk/MemoryWriter.cpp.o: ../runtime/cpp/bintalk/MemoryWriter.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object runtime/CMakeFiles/bintalk_cpp.dir/cpp/bintalk/MemoryWriter.cpp.o"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/runtime && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bintalk_cpp.dir/cpp/bintalk/MemoryWriter.cpp.o -c /Users/zhouzhiwei/workspace/Git/bintalk-developent/runtime/cpp/bintalk/MemoryWriter.cpp

runtime/CMakeFiles/bintalk_cpp.dir/cpp/bintalk/MemoryWriter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bintalk_cpp.dir/cpp/bintalk/MemoryWriter.cpp.i"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/runtime && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zhouzhiwei/workspace/Git/bintalk-developent/runtime/cpp/bintalk/MemoryWriter.cpp > CMakeFiles/bintalk_cpp.dir/cpp/bintalk/MemoryWriter.cpp.i

runtime/CMakeFiles/bintalk_cpp.dir/cpp/bintalk/MemoryWriter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bintalk_cpp.dir/cpp/bintalk/MemoryWriter.cpp.s"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/runtime && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zhouzhiwei/workspace/Git/bintalk-developent/runtime/cpp/bintalk/MemoryWriter.cpp -o CMakeFiles/bintalk_cpp.dir/cpp/bintalk/MemoryWriter.cpp.s

# Object files for target bintalk_cpp
bintalk_cpp_OBJECTS = \
"CMakeFiles/bintalk_cpp.dir/cpp/bintalk/ProtocolReader.cpp.o" \
"CMakeFiles/bintalk_cpp.dir/cpp/bintalk/ProtocolWriter.cpp.o" \
"CMakeFiles/bintalk_cpp.dir/cpp/bintalk/FileReader.cpp.o" \
"CMakeFiles/bintalk_cpp.dir/cpp/bintalk/FileWriter.cpp.o" \
"CMakeFiles/bintalk_cpp.dir/cpp/bintalk/MemoryReader.cpp.o" \
"CMakeFiles/bintalk_cpp.dir/cpp/bintalk/MemoryWriter.cpp.o"

# External object files for target bintalk_cpp
bintalk_cpp_EXTERNAL_OBJECTS =

runtime/libbintalk_cppd.a: runtime/CMakeFiles/bintalk_cpp.dir/cpp/bintalk/ProtocolReader.cpp.o
runtime/libbintalk_cppd.a: runtime/CMakeFiles/bintalk_cpp.dir/cpp/bintalk/ProtocolWriter.cpp.o
runtime/libbintalk_cppd.a: runtime/CMakeFiles/bintalk_cpp.dir/cpp/bintalk/FileReader.cpp.o
runtime/libbintalk_cppd.a: runtime/CMakeFiles/bintalk_cpp.dir/cpp/bintalk/FileWriter.cpp.o
runtime/libbintalk_cppd.a: runtime/CMakeFiles/bintalk_cpp.dir/cpp/bintalk/MemoryReader.cpp.o
runtime/libbintalk_cppd.a: runtime/CMakeFiles/bintalk_cpp.dir/cpp/bintalk/MemoryWriter.cpp.o
runtime/libbintalk_cppd.a: runtime/CMakeFiles/bintalk_cpp.dir/build.make
runtime/libbintalk_cppd.a: runtime/CMakeFiles/bintalk_cpp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX static library libbintalk_cppd.a"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/runtime && $(CMAKE_COMMAND) -P CMakeFiles/bintalk_cpp.dir/cmake_clean_target.cmake
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/runtime && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bintalk_cpp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
runtime/CMakeFiles/bintalk_cpp.dir/build: runtime/libbintalk_cppd.a

.PHONY : runtime/CMakeFiles/bintalk_cpp.dir/build

runtime/CMakeFiles/bintalk_cpp.dir/clean:
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/runtime && $(CMAKE_COMMAND) -P CMakeFiles/bintalk_cpp.dir/cmake_clean.cmake
.PHONY : runtime/CMakeFiles/bintalk_cpp.dir/clean

runtime/CMakeFiles/bintalk_cpp.dir/depend:
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/zhouzhiwei/workspace/Git/bintalk-developent /Users/zhouzhiwei/workspace/Git/bintalk-developent/runtime /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/runtime /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/runtime/CMakeFiles/bintalk_cpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : runtime/CMakeFiles/bintalk_cpp.dir/depend

