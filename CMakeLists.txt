cmake_minimum_required(VERSION 3.19)

#======================
# Cross compiling stuff
#======================

set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR arm)

set(tools ${CMAKE_CURRENT_LIST_DIR}/tools)
set(devkitarm $ENV{DEVKITARM})
set(objcopy ${devkitarm}/bin/arm-none-eabi-objcopy)
set(CMAKE_C_COMPILER ${tools}/cc.py)
set(CMAKE_ASM_COMPILER ${tools}/cc.py)
set(fix ${tools}/gbafix/gbafix)

set(CMAKE_TRY_COMPILE_TARGET_TYPE "STATIC_LIBRARY")
#set(CMAKE_C_COMPILER_WORKS TRUE)

#===========
# Game stuff
#===========

project(tmc C ASM)

# files should maybe be specified individually
file(GLOB_RECURSE source_files CONFIGURE_DEPENDS "src/*.c")
file(GLOB_RECURSE include_files CONFIGURE_DEPENDS "include/*.h")
file(GLOB_RECURSE asm_files CONFIGURE_DEPENDS "asm/*.s")
file(GLOB_RECURSE data_files CONFIGURE_DEPENDS "data/*.s")

add_executable(tmc.elf ${source_files} ${include_files} ${asm_files} ${data_files})
target_include_directories(tmc.elf PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/tools/agbcc)
target_include_directories(tmc.elf PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/tools/agbcc/include)
target_include_directories(tmc.elf PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)
add_custom_command(TARGET tmc.elf POST_BUILD COMMAND ${fix} "$<TARGET_FILE:tmc.elf>" -t"GBAZELDA MC" -cBZME -m01 -r0 --silent)

add_custom_target(tmc.gba ALL COMMAND ${objcopy} -O binary --gap-fill 0xFF --pad-to 0x9000000 "$<TARGET_FILE:tmc.elf>" "tmc.gba")
add_custom_command(TARGET tmc.gba POST_BUILD COMMAND sha1sum -c ${CMAKE_CURRENT_SOURCE_DIR}/tmc.sha1)

