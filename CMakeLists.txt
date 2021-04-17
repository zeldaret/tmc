cmake_minimum_required(VERSION 3.17)

add_subdirectory(tools)

if (EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/baserom.gba)
    file(SHA1 ${CMAKE_CURRENT_SOURCE_DIR}/baserom.gba baserom_sha1)
    if (NOT ${baserom_sha1} STREQUAL b4bd50e4131b027c334547b4524e2dbbd4227130)
        message(FATAL_ERROR "bad baserom.gba: hash does not match")
    endif ()
else ()
    message(FATAL_ERROR "baserom.gba is required")
endif ()

#================
# Compiler Setup
#================

set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR arm)

find_package(Python3 COMPONENTS Interpreter)
if (NOT Python3_FOUND)
    message(FATAL_ERROR python 3.7 is required for compiling via cmake)
elseif (${Python3_VERSION_MINOR} LESS 7)
    message(FATAL_ERROR python 3.7 is required for compiling via cmake)
endif ()

set(tools ${CMAKE_CURRENT_LIST_DIR}/tools)

configure_file(${CMAKE_CURRENT_LIST_DIR}/cmake/cc.py ${CMAKE_CURRENT_BINARY_DIR}/cc.py)

set(devkitarm $ENV{DEVKITARM})
set(objcopy ${devkitarm}/bin/arm-none-eabi-objcopy)
set(CMAKE_C_COMPILER ${CMAKE_CURRENT_BINARY_DIR}/cc.py)
set(CMAKE_ASM_COMPILER ${CMAKE_CURRENT_BINARY_DIR}/cc.py)
set(fix ${tools}/gbafix/gbafix)
set(scaninc ${tools}/scaninc/scaninc)
set(gbagfx ${tools}/gbagfx/gbagfx)
set(tmc_strings ${tools}/tmc_strings/tmc_strings)

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

# graphics
# the way we handle graphics will change entirely in the future, this works until then
add_custom_command(OUTPUT graphics/font.4bpp COMMAND ${gbagfx} ${CMAKE_CURRENT_SOURCE_DIR}/graphics/font.png graphics/font.4bpp)
add_custom_command(OUTPUT graphics/pot_portal.4bpp COMMAND ${gbagfx} ${CMAKE_CURRENT_SOURCE_DIR}/graphics/pot_portal.png graphics/pot_portal.4bpp)
add_custom_command(OUTPUT graphics/npc/postman.4bpp COMMAND ${gbagfx} ${CMAKE_CURRENT_SOURCE_DIR}/graphics/npc/postman.png graphics/npc/postman.4bpp)
add_custom_command(OUTPUT graphics/npc/malon.4bpp COMMAND ${gbagfx} ${CMAKE_CURRENT_SOURCE_DIR}/graphics/npc/malon.png graphics/npc/malon.4bpp)
add_custom_command(OUTPUT graphics/intro/nintendo_capcom.4bpp COMMAND ${gbagfx} ${CMAKE_CURRENT_SOURCE_DIR}/graphics/intro/nintendo_capcom.png graphics/intro/nintendo_capcom.4bpp -num_tiles 123)
add_custom_command(OUTPUT data/tilesets/minish_woods/tiles_bottom.4bpp COMMAND ${gbagfx} ${CMAKE_CURRENT_SOURCE_DIR}/data/tilesets/minish_woods/tiles_bottom.png data/tilesets/minish_woods/tiles_bottom.4bpp)
add_custom_command(OUTPUT data/tilesets/minish_woods/tiles_bottom.4bpp.lz COMMAND ${gbagfx} data/tilesets/minish_woods/tiles_bottom.4bpp data/tilesets/minish_woods/tiles_bottom.4bpp.lz DEPENDS data/tilesets/minish_woods/tiles_bottom.4bpp)
add_custom_command(OUTPUT graphics/intro/capcom.gbapal COMMAND ${gbagfx} ${CMAKE_CURRENT_SOURCE_DIR}/graphics/intro/capcom.pal graphics/intro/capcom.gbapal)
add_custom_command(OUTPUT graphics/intro/nintendo.gbapal COMMAND ${gbagfx} ${CMAKE_CURRENT_SOURCE_DIR}/graphics/intro/nintendo.pal graphics/intro/nintendo.gbapal)
add_custom_target(graphics DEPENDS graphics/font.4bpp graphics/pot_portal.4bpp graphics/npc/postman.4bpp graphics/npc/malon.4bpp graphics/intro/nintendo_capcom.4bpp data/tilesets/minish_woods/tiles_bottom.4bpp.lz graphics/intro/capcom.gbapal graphics/intro/nintendo.gbapal)

add_custom_command(OUTPUT translations/USA.bin COMMAND ${tmc_strings} -p --source ${CMAKE_CURRENT_SOURCE_DIR}/translations/USA.json --dest translations/USA.bin --size 0x499E0)
add_custom_target(translations DEPENDS translations/USA.bin)

# files should maybe be specified individually
file(GLOB_RECURSE source_files CONFIGURE_DEPENDS "src/*.c")
file(GLOB_RECURSE include_files CONFIGURE_DEPENDS "include/*.h")
file(GLOB_RECURSE asm_files CONFIGURE_DEPENDS "asm/*.s")
file(GLOB_RECURSE data_files CONFIGURE_DEPENDS "data/*.s")

# tmc.elf
add_executable(tmc.elf ${source_files} ${include_files} ${asm_files} ${data_files})
add_dependencies(tmc.elf graphics translations)
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
