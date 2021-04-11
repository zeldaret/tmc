cmake_minimum_required(VERSION 3.17)

#================
# Compiler Setup
#================

set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR arm)

set(tools ${CMAKE_CURRENT_LIST_DIR}/tools)
set(devkitarm $ENV{DEVKITARM})
set(objcopy ${devkitarm}/bin/arm-none-eabi-objcopy)
set(CMAKE_C_COMPILER ${tools}/cc.py)
set(CMAKE_ASM_COMPILER ${tools}/cc.py)
set(fix ${tools}/gbafix/gbafix)

# cmake tests the compiler during configuration
# the test target won't link, so static lib option is used instead
set(CMAKE_TRY_COMPILE_TARGET_TYPE "STATIC_LIBRARY")

# per configuration flags
set(CMAKE_C_FLAGS_DEBUG -g)
set(CMAKE_C_FLAGS_RELEASE -O2)
set(CMAKE_C_FLAGS_RELWITHDEBINFO "-O2 -g")

# make Release the default build type if none is specified
set(CMAKE_BUILD_TYPE Release CACHE STRING "build type")

#============
# Game Setup
#============

project(tmc C ASM)

# files should maybe be specified individually
file(GLOB_RECURSE source_files CONFIGURE_DEPENDS "src/*.c")
file(GLOB_RECURSE include_files CONFIGURE_DEPENDS "include/*.h")
file(GLOB_RECURSE asm_files CONFIGURE_DEPENDS "asm/*.s")
file(GLOB_RECURSE data_files CONFIGURE_DEPENDS "data/*.s")

# tmc.elf
add_executable(tmc.elf ${source_files} ${include_files} ${asm_files} ${data_files})

# general compiler settings
target_include_directories(tmc.elf PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/tools/agbcc)
target_include_directories(tmc.elf PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/tools/agbcc/include)
target_include_directories(tmc.elf PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/include)
target_compile_options(tmc.elf PRIVATE -nostdinc -undef)
target_compile_options(tmc.elf PRIVATE -Wimplicit -Wparentheses -Wno-multichar -Werror)
target_compile_options(tmc.elf PRIVATE -mcpu=arm7tdmi)
target_compile_definitions(tmc.elf PRIVATE THEMINISHCAP REVISION=0 ENGLISH)

# per sourcefile configuration override options
set_source_files_properties(src/eeprom.c PROPERTIES COMPILE_OPTIONS "-O1;-mthumb-interwork;-no-g")
set_source_files_properties(src/arm_proxy.c PROPERTIES COMPILE_OPTIONS -mthumb-interwork)
set_source_files_properties(src/gba/m4a.c PROPERTIES COMPILE_OPTIONS "-mthumb-interwork;-no-g")

# linker settings
target_link_options(tmc.elf PRIVATE -Map ${CMAKE_CURRENT_SOURCE_DIR}/tmc.map -n -T ${CMAKE_CURRENT_SOURCE_DIR}/cmake.ld)
target_link_options(tmc.elf PRIVATE -L ${tools}/agbcc/lib -lc)
add_custom_command(TARGET tmc.elf POST_BUILD COMMAND ${fix} "$<TARGET_FILE:tmc.elf>" "-tGBAZELDA MC" -cBZME -m01 -r0 --silent)

# tmc.gba
add_custom_target(tmc.gba ALL COMMAND ${objcopy} -O binary --gap-fill 0xFF --pad-to 0x9000000 "$<TARGET_FILE:tmc.elf>" "tmc.gba")
add_custom_command(TARGET tmc.gba POST_BUILD COMMAND sha1sum -c ${CMAKE_CURRENT_SOURCE_DIR}/tmc.sha1)
