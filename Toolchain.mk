# ========
# compiler
# ========

ifndef TOOLCHAIN_PATH
ifneq (,$(shell which arm-none-eabi-gcc))
TOOLCHAIN_PATH :=
else ifdef DEVKITARM
TOOLCHAIN_PATH := $(DEVKITARM)/bin/
else
$(error arm-none-eabi-gcc not found, please install (devkitPro supported))
endif
endif

# ensure trailing slash
ifneq ($(TOOLCHAIN_PATH),)
override TOOLCHAIN_PATH:=$(TOOLCHAIN_PATH)/
endif

CC := $(TOOLCHAIN_PATH)arm-none-eabi-gcc
CPP := $(CC) -E
CXX := $(TOOLCHAIN_PATH)arm-none-eabi-g++
AS := $(TOOLCHAIN_PATH)arm-none-eabi-as
LD := $(TOOLCHAIN_PATH)arm-none-eabi-ld
OBJCOPY := $(TOOLCHAIN_PATH)arm-none-eabi-objcopy

# ============
# custom tools
# ============

CC1 := tools/agbcc/bin/agbcc
SHA1 := $(shell { command -v sha1sum || command -v shasum; } 2>/dev/null) -c

SCANINC := tools/bin/scaninc
PREPROC := tools/bin/preproc
ASSET_PROCESSOR := tools/bin/asset_processor
ENUM_PROCESSOR := tools/extract_include_enum.py
FIX := tools/bin/gbafix
