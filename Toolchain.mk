# ========
# compiler
# ========

ifneq (,$(shell which arm-none-eabi-gcc))
PREFIX :=
else ifdef DEVKITARM
PREFIX := $(DEVKITARM)/bin/
else
$(error arm-none-eabi-gcc not found, please install (devkitPro supported))
endif


CC := $(PREFIX)arm-none-eabi-gcc
CPP := $(CC) -E
CXX := $(PREFIX)arm-none-eabi-g++
AS := $(PREFIX)arm-none-eabi-as
LD := $(PREFIX)arm-none-eabi-ld
OBJCOPY := $(PREFIX)arm-none-eabi-objcopy

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
