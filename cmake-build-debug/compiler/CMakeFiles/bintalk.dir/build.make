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
include compiler/CMakeFiles/bintalk.dir/depend.make

# Include the progress variables for this target.
include compiler/CMakeFiles/bintalk.dir/progress.make

# Include the compile flags for this target's objects.
include compiler/CMakeFiles/bintalk.dir/flags.make

compiler/bintalk.tab.cpp: ../compiler/bintalk.y
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "[BISON][BINTALK_PARSER] Building parser with bison 2.3"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/compiler && /usr/bin/bison -d -o /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler/bintalk.tab.cpp bintalk.y

compiler/bintalk.tab.hpp: compiler/bintalk.tab.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate compiler/bintalk.tab.hpp

compiler/lex.yy.cpp: ../compiler/bintalk.l
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "[FLEX][BINTALK_SCANNER] Building scanner with flex 2.6.4"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/compiler && /usr/bin/flex -o/Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler/lex.yy.cpp bintalk.l

compiler/CMakeFiles/bintalk.dir/bintalk.tab.cpp.o: compiler/CMakeFiles/bintalk.dir/flags.make
compiler/CMakeFiles/bintalk.dir/bintalk.tab.cpp.o: compiler/bintalk.tab.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object compiler/CMakeFiles/bintalk.dir/bintalk.tab.cpp.o"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bintalk.dir/bintalk.tab.cpp.o -c /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler/bintalk.tab.cpp

compiler/CMakeFiles/bintalk.dir/bintalk.tab.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bintalk.dir/bintalk.tab.cpp.i"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler/bintalk.tab.cpp > CMakeFiles/bintalk.dir/bintalk.tab.cpp.i

compiler/CMakeFiles/bintalk.dir/bintalk.tab.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bintalk.dir/bintalk.tab.cpp.s"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler/bintalk.tab.cpp -o CMakeFiles/bintalk.dir/bintalk.tab.cpp.s

compiler/CMakeFiles/bintalk.dir/lex.yy.cpp.o: compiler/CMakeFiles/bintalk.dir/flags.make
compiler/CMakeFiles/bintalk.dir/lex.yy.cpp.o: compiler/lex.yy.cpp
compiler/CMakeFiles/bintalk.dir/lex.yy.cpp.o: compiler/bintalk.tab.hpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object compiler/CMakeFiles/bintalk.dir/lex.yy.cpp.o"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bintalk.dir/lex.yy.cpp.o -c /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler/lex.yy.cpp

compiler/CMakeFiles/bintalk.dir/lex.yy.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bintalk.dir/lex.yy.cpp.i"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler/lex.yy.cpp > CMakeFiles/bintalk.dir/lex.yy.cpp.i

compiler/CMakeFiles/bintalk.dir/lex.yy.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bintalk.dir/lex.yy.cpp.s"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler/lex.yy.cpp -o CMakeFiles/bintalk.dir/lex.yy.cpp.s

compiler/CMakeFiles/bintalk.dir/CppGenerator.cpp.o: compiler/CMakeFiles/bintalk.dir/flags.make
compiler/CMakeFiles/bintalk.dir/CppGenerator.cpp.o: ../compiler/CppGenerator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object compiler/CMakeFiles/bintalk.dir/CppGenerator.cpp.o"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bintalk.dir/CppGenerator.cpp.o -c /Users/zhouzhiwei/workspace/Git/bintalk-developent/compiler/CppGenerator.cpp

compiler/CMakeFiles/bintalk.dir/CppGenerator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bintalk.dir/CppGenerator.cpp.i"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zhouzhiwei/workspace/Git/bintalk-developent/compiler/CppGenerator.cpp > CMakeFiles/bintalk.dir/CppGenerator.cpp.i

compiler/CMakeFiles/bintalk.dir/CppGenerator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bintalk.dir/CppGenerator.cpp.s"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zhouzhiwei/workspace/Git/bintalk-developent/compiler/CppGenerator.cpp -o CMakeFiles/bintalk.dir/CppGenerator.cpp.s

compiler/CMakeFiles/bintalk.dir/PYGenerator.cpp.o: compiler/CMakeFiles/bintalk.dir/flags.make
compiler/CMakeFiles/bintalk.dir/PYGenerator.cpp.o: ../compiler/PYGenerator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object compiler/CMakeFiles/bintalk.dir/PYGenerator.cpp.o"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bintalk.dir/PYGenerator.cpp.o -c /Users/zhouzhiwei/workspace/Git/bintalk-developent/compiler/PYGenerator.cpp

compiler/CMakeFiles/bintalk.dir/PYGenerator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bintalk.dir/PYGenerator.cpp.i"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zhouzhiwei/workspace/Git/bintalk-developent/compiler/PYGenerator.cpp > CMakeFiles/bintalk.dir/PYGenerator.cpp.i

compiler/CMakeFiles/bintalk.dir/PYGenerator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bintalk.dir/PYGenerator.cpp.s"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zhouzhiwei/workspace/Git/bintalk-developent/compiler/PYGenerator.cpp -o CMakeFiles/bintalk.dir/PYGenerator.cpp.s

compiler/CMakeFiles/bintalk.dir/ERLGenerator.cpp.o: compiler/CMakeFiles/bintalk.dir/flags.make
compiler/CMakeFiles/bintalk.dir/ERLGenerator.cpp.o: ../compiler/ERLGenerator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object compiler/CMakeFiles/bintalk.dir/ERLGenerator.cpp.o"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bintalk.dir/ERLGenerator.cpp.o -c /Users/zhouzhiwei/workspace/Git/bintalk-developent/compiler/ERLGenerator.cpp

compiler/CMakeFiles/bintalk.dir/ERLGenerator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bintalk.dir/ERLGenerator.cpp.i"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zhouzhiwei/workspace/Git/bintalk-developent/compiler/ERLGenerator.cpp > CMakeFiles/bintalk.dir/ERLGenerator.cpp.i

compiler/CMakeFiles/bintalk.dir/ERLGenerator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bintalk.dir/ERLGenerator.cpp.s"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zhouzhiwei/workspace/Git/bintalk-developent/compiler/ERLGenerator.cpp -o CMakeFiles/bintalk.dir/ERLGenerator.cpp.s

compiler/CMakeFiles/bintalk.dir/CSGenerator.cpp.o: compiler/CMakeFiles/bintalk.dir/flags.make
compiler/CMakeFiles/bintalk.dir/CSGenerator.cpp.o: ../compiler/CSGenerator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object compiler/CMakeFiles/bintalk.dir/CSGenerator.cpp.o"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bintalk.dir/CSGenerator.cpp.o -c /Users/zhouzhiwei/workspace/Git/bintalk-developent/compiler/CSGenerator.cpp

compiler/CMakeFiles/bintalk.dir/CSGenerator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bintalk.dir/CSGenerator.cpp.i"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zhouzhiwei/workspace/Git/bintalk-developent/compiler/CSGenerator.cpp > CMakeFiles/bintalk.dir/CSGenerator.cpp.i

compiler/CMakeFiles/bintalk.dir/CSGenerator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bintalk.dir/CSGenerator.cpp.s"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zhouzhiwei/workspace/Git/bintalk-developent/compiler/CSGenerator.cpp -o CMakeFiles/bintalk.dir/CSGenerator.cpp.s

compiler/CMakeFiles/bintalk.dir/LUAGenerator.cpp.o: compiler/CMakeFiles/bintalk.dir/flags.make
compiler/CMakeFiles/bintalk.dir/LUAGenerator.cpp.o: ../compiler/LUAGenerator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object compiler/CMakeFiles/bintalk.dir/LUAGenerator.cpp.o"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bintalk.dir/LUAGenerator.cpp.o -c /Users/zhouzhiwei/workspace/Git/bintalk-developent/compiler/LUAGenerator.cpp

compiler/CMakeFiles/bintalk.dir/LUAGenerator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bintalk.dir/LUAGenerator.cpp.i"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zhouzhiwei/workspace/Git/bintalk-developent/compiler/LUAGenerator.cpp > CMakeFiles/bintalk.dir/LUAGenerator.cpp.i

compiler/CMakeFiles/bintalk.dir/LUAGenerator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bintalk.dir/LUAGenerator.cpp.s"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zhouzhiwei/workspace/Git/bintalk-developent/compiler/LUAGenerator.cpp -o CMakeFiles/bintalk.dir/LUAGenerator.cpp.s

compiler/CMakeFiles/bintalk.dir/UE4Generator.cpp.o: compiler/CMakeFiles/bintalk.dir/flags.make
compiler/CMakeFiles/bintalk.dir/UE4Generator.cpp.o: ../compiler/UE4Generator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object compiler/CMakeFiles/bintalk.dir/UE4Generator.cpp.o"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bintalk.dir/UE4Generator.cpp.o -c /Users/zhouzhiwei/workspace/Git/bintalk-developent/compiler/UE4Generator.cpp

compiler/CMakeFiles/bintalk.dir/UE4Generator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bintalk.dir/UE4Generator.cpp.i"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zhouzhiwei/workspace/Git/bintalk-developent/compiler/UE4Generator.cpp > CMakeFiles/bintalk.dir/UE4Generator.cpp.i

compiler/CMakeFiles/bintalk.dir/UE4Generator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bintalk.dir/UE4Generator.cpp.s"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zhouzhiwei/workspace/Git/bintalk-developent/compiler/UE4Generator.cpp -o CMakeFiles/bintalk.dir/UE4Generator.cpp.s

compiler/CMakeFiles/bintalk.dir/JAVAGenerator.cpp.o: compiler/CMakeFiles/bintalk.dir/flags.make
compiler/CMakeFiles/bintalk.dir/JAVAGenerator.cpp.o: ../compiler/JAVAGenerator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object compiler/CMakeFiles/bintalk.dir/JAVAGenerator.cpp.o"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bintalk.dir/JAVAGenerator.cpp.o -c /Users/zhouzhiwei/workspace/Git/bintalk-developent/compiler/JAVAGenerator.cpp

compiler/CMakeFiles/bintalk.dir/JAVAGenerator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bintalk.dir/JAVAGenerator.cpp.i"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zhouzhiwei/workspace/Git/bintalk-developent/compiler/JAVAGenerator.cpp > CMakeFiles/bintalk.dir/JAVAGenerator.cpp.i

compiler/CMakeFiles/bintalk.dir/JAVAGenerator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bintalk.dir/JAVAGenerator.cpp.s"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zhouzhiwei/workspace/Git/bintalk-developent/compiler/JAVAGenerator.cpp -o CMakeFiles/bintalk.dir/JAVAGenerator.cpp.s

compiler/CMakeFiles/bintalk.dir/GOGenerator.cpp.o: compiler/CMakeFiles/bintalk.dir/flags.make
compiler/CMakeFiles/bintalk.dir/GOGenerator.cpp.o: ../compiler/GOGenerator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object compiler/CMakeFiles/bintalk.dir/GOGenerator.cpp.o"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bintalk.dir/GOGenerator.cpp.o -c /Users/zhouzhiwei/workspace/Git/bintalk-developent/compiler/GOGenerator.cpp

compiler/CMakeFiles/bintalk.dir/GOGenerator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bintalk.dir/GOGenerator.cpp.i"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zhouzhiwei/workspace/Git/bintalk-developent/compiler/GOGenerator.cpp > CMakeFiles/bintalk.dir/GOGenerator.cpp.i

compiler/CMakeFiles/bintalk.dir/GOGenerator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bintalk.dir/GOGenerator.cpp.s"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zhouzhiwei/workspace/Git/bintalk-developent/compiler/GOGenerator.cpp -o CMakeFiles/bintalk.dir/GOGenerator.cpp.s

compiler/CMakeFiles/bintalk.dir/bintalk.cpp.o: compiler/CMakeFiles/bintalk.dir/flags.make
compiler/CMakeFiles/bintalk.dir/bintalk.cpp.o: ../compiler/bintalk.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object compiler/CMakeFiles/bintalk.dir/bintalk.cpp.o"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bintalk.dir/bintalk.cpp.o -c /Users/zhouzhiwei/workspace/Git/bintalk-developent/compiler/bintalk.cpp

compiler/CMakeFiles/bintalk.dir/bintalk.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bintalk.dir/bintalk.cpp.i"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zhouzhiwei/workspace/Git/bintalk-developent/compiler/bintalk.cpp > CMakeFiles/bintalk.dir/bintalk.cpp.i

compiler/CMakeFiles/bintalk.dir/bintalk.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bintalk.dir/bintalk.cpp.s"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zhouzhiwei/workspace/Git/bintalk-developent/compiler/bintalk.cpp -o CMakeFiles/bintalk.dir/bintalk.cpp.s

compiler/CMakeFiles/bintalk.dir/CodeFile.cpp.o: compiler/CMakeFiles/bintalk.dir/flags.make
compiler/CMakeFiles/bintalk.dir/CodeFile.cpp.o: ../compiler/CodeFile.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object compiler/CMakeFiles/bintalk.dir/CodeFile.cpp.o"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bintalk.dir/CodeFile.cpp.o -c /Users/zhouzhiwei/workspace/Git/bintalk-developent/compiler/CodeFile.cpp

compiler/CMakeFiles/bintalk.dir/CodeFile.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bintalk.dir/CodeFile.cpp.i"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zhouzhiwei/workspace/Git/bintalk-developent/compiler/CodeFile.cpp > CMakeFiles/bintalk.dir/CodeFile.cpp.i

compiler/CMakeFiles/bintalk.dir/CodeFile.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bintalk.dir/CodeFile.cpp.s"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zhouzhiwei/workspace/Git/bintalk-developent/compiler/CodeFile.cpp -o CMakeFiles/bintalk.dir/CodeFile.cpp.s

compiler/CMakeFiles/bintalk.dir/CodeGenerator.cpp.o: compiler/CMakeFiles/bintalk.dir/flags.make
compiler/CMakeFiles/bintalk.dir/CodeGenerator.cpp.o: ../compiler/CodeGenerator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object compiler/CMakeFiles/bintalk.dir/CodeGenerator.cpp.o"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bintalk.dir/CodeGenerator.cpp.o -c /Users/zhouzhiwei/workspace/Git/bintalk-developent/compiler/CodeGenerator.cpp

compiler/CMakeFiles/bintalk.dir/CodeGenerator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bintalk.dir/CodeGenerator.cpp.i"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zhouzhiwei/workspace/Git/bintalk-developent/compiler/CodeGenerator.cpp > CMakeFiles/bintalk.dir/CodeGenerator.cpp.i

compiler/CMakeFiles/bintalk.dir/CodeGenerator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bintalk.dir/CodeGenerator.cpp.s"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zhouzhiwei/workspace/Git/bintalk-developent/compiler/CodeGenerator.cpp -o CMakeFiles/bintalk.dir/CodeGenerator.cpp.s

compiler/CMakeFiles/bintalk.dir/Options.cpp.o: compiler/CMakeFiles/bintalk.dir/flags.make
compiler/CMakeFiles/bintalk.dir/Options.cpp.o: ../compiler/Options.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object compiler/CMakeFiles/bintalk.dir/Options.cpp.o"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bintalk.dir/Options.cpp.o -c /Users/zhouzhiwei/workspace/Git/bintalk-developent/compiler/Options.cpp

compiler/CMakeFiles/bintalk.dir/Options.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bintalk.dir/Options.cpp.i"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zhouzhiwei/workspace/Git/bintalk-developent/compiler/Options.cpp > CMakeFiles/bintalk.dir/Options.cpp.i

compiler/CMakeFiles/bintalk.dir/Options.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bintalk.dir/Options.cpp.s"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zhouzhiwei/workspace/Git/bintalk-developent/compiler/Options.cpp -o CMakeFiles/bintalk.dir/Options.cpp.s

compiler/CMakeFiles/bintalk.dir/Context.cpp.o: compiler/CMakeFiles/bintalk.dir/flags.make
compiler/CMakeFiles/bintalk.dir/Context.cpp.o: ../compiler/Context.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building CXX object compiler/CMakeFiles/bintalk.dir/Context.cpp.o"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bintalk.dir/Context.cpp.o -c /Users/zhouzhiwei/workspace/Git/bintalk-developent/compiler/Context.cpp

compiler/CMakeFiles/bintalk.dir/Context.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bintalk.dir/Context.cpp.i"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zhouzhiwei/workspace/Git/bintalk-developent/compiler/Context.cpp > CMakeFiles/bintalk.dir/Context.cpp.i

compiler/CMakeFiles/bintalk.dir/Context.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bintalk.dir/Context.cpp.s"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zhouzhiwei/workspace/Git/bintalk-developent/compiler/Context.cpp -o CMakeFiles/bintalk.dir/Context.cpp.s

compiler/CMakeFiles/bintalk.dir/DartGenerator.cpp.o: compiler/CMakeFiles/bintalk.dir/flags.make
compiler/CMakeFiles/bintalk.dir/DartGenerator.cpp.o: ../compiler/DartGenerator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Building CXX object compiler/CMakeFiles/bintalk.dir/DartGenerator.cpp.o"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bintalk.dir/DartGenerator.cpp.o -c /Users/zhouzhiwei/workspace/Git/bintalk-developent/compiler/DartGenerator.cpp

compiler/CMakeFiles/bintalk.dir/DartGenerator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bintalk.dir/DartGenerator.cpp.i"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zhouzhiwei/workspace/Git/bintalk-developent/compiler/DartGenerator.cpp > CMakeFiles/bintalk.dir/DartGenerator.cpp.i

compiler/CMakeFiles/bintalk.dir/DartGenerator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bintalk.dir/DartGenerator.cpp.s"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zhouzhiwei/workspace/Git/bintalk-developent/compiler/DartGenerator.cpp -o CMakeFiles/bintalk.dir/DartGenerator.cpp.s

# Object files for target bintalk
bintalk_OBJECTS = \
"CMakeFiles/bintalk.dir/bintalk.tab.cpp.o" \
"CMakeFiles/bintalk.dir/lex.yy.cpp.o" \
"CMakeFiles/bintalk.dir/CppGenerator.cpp.o" \
"CMakeFiles/bintalk.dir/PYGenerator.cpp.o" \
"CMakeFiles/bintalk.dir/ERLGenerator.cpp.o" \
"CMakeFiles/bintalk.dir/CSGenerator.cpp.o" \
"CMakeFiles/bintalk.dir/LUAGenerator.cpp.o" \
"CMakeFiles/bintalk.dir/UE4Generator.cpp.o" \
"CMakeFiles/bintalk.dir/JAVAGenerator.cpp.o" \
"CMakeFiles/bintalk.dir/GOGenerator.cpp.o" \
"CMakeFiles/bintalk.dir/bintalk.cpp.o" \
"CMakeFiles/bintalk.dir/CodeFile.cpp.o" \
"CMakeFiles/bintalk.dir/CodeGenerator.cpp.o" \
"CMakeFiles/bintalk.dir/Options.cpp.o" \
"CMakeFiles/bintalk.dir/Context.cpp.o" \
"CMakeFiles/bintalk.dir/DartGenerator.cpp.o"

# External object files for target bintalk
bintalk_EXTERNAL_OBJECTS =

compiler/bintalk: compiler/CMakeFiles/bintalk.dir/bintalk.tab.cpp.o
compiler/bintalk: compiler/CMakeFiles/bintalk.dir/lex.yy.cpp.o
compiler/bintalk: compiler/CMakeFiles/bintalk.dir/CppGenerator.cpp.o
compiler/bintalk: compiler/CMakeFiles/bintalk.dir/PYGenerator.cpp.o
compiler/bintalk: compiler/CMakeFiles/bintalk.dir/ERLGenerator.cpp.o
compiler/bintalk: compiler/CMakeFiles/bintalk.dir/CSGenerator.cpp.o
compiler/bintalk: compiler/CMakeFiles/bintalk.dir/LUAGenerator.cpp.o
compiler/bintalk: compiler/CMakeFiles/bintalk.dir/UE4Generator.cpp.o
compiler/bintalk: compiler/CMakeFiles/bintalk.dir/JAVAGenerator.cpp.o
compiler/bintalk: compiler/CMakeFiles/bintalk.dir/GOGenerator.cpp.o
compiler/bintalk: compiler/CMakeFiles/bintalk.dir/bintalk.cpp.o
compiler/bintalk: compiler/CMakeFiles/bintalk.dir/CodeFile.cpp.o
compiler/bintalk: compiler/CMakeFiles/bintalk.dir/CodeGenerator.cpp.o
compiler/bintalk: compiler/CMakeFiles/bintalk.dir/Options.cpp.o
compiler/bintalk: compiler/CMakeFiles/bintalk.dir/Context.cpp.o
compiler/bintalk: compiler/CMakeFiles/bintalk.dir/DartGenerator.cpp.o
compiler/bintalk: compiler/CMakeFiles/bintalk.dir/build.make
compiler/bintalk: compiler/CMakeFiles/bintalk.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "Linking CXX executable bintalk"
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bintalk.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
compiler/CMakeFiles/bintalk.dir/build: compiler/bintalk

.PHONY : compiler/CMakeFiles/bintalk.dir/build

compiler/CMakeFiles/bintalk.dir/clean:
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler && $(CMAKE_COMMAND) -P CMakeFiles/bintalk.dir/cmake_clean.cmake
.PHONY : compiler/CMakeFiles/bintalk.dir/clean

compiler/CMakeFiles/bintalk.dir/depend: compiler/bintalk.tab.cpp
compiler/CMakeFiles/bintalk.dir/depend: compiler/bintalk.tab.hpp
compiler/CMakeFiles/bintalk.dir/depend: compiler/lex.yy.cpp
	cd /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/zhouzhiwei/workspace/Git/bintalk-developent /Users/zhouzhiwei/workspace/Git/bintalk-developent/compiler /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler /Users/zhouzhiwei/workspace/Git/bintalk-developent/cmake-build-debug/compiler/CMakeFiles/bintalk.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : compiler/CMakeFiles/bintalk.dir/depend
