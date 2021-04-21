include $(DEVKITARM)/base_tools

COMPARE ?= 0

CPP := $(CC) -E
LD := $(DEVKITARM)/bin/arm-none-eabi-ld

GAME_VERSION := THEMINISHCAP
REVISION := 0
GAME_LANGUAGE := ENGLISH

TITLE       := GBAZELDA MC
GAME_CODE   := BZME
MAKER_CODE  := 01

SHELL := /bin/bash -o pipefail

BUILD_NAME  := tmc
ROM := $(BUILD_NAME).gba
OBJ_DIR := build/$(BUILD_NAME)

ELF = $(ROM:.gba=.elf)
MAP = $(ROM:.gba=.map)

C_SUBDIR = src
DATA_C_SUBDIR = src/data
ASM_SUBDIR = asm
DATA_ASM_SUBDIR = data
SONG_SUBDIR = sound/songs
MID_SUBDIR = sound/songs/midi

C_BUILDDIR = $(OBJ_DIR)/$(C_SUBDIR)
ASM_BUILDDIR = $(OBJ_DIR)/$(ASM_SUBDIR)
DATA_ASM_BUILDDIR = $(OBJ_DIR)/$(DATA_ASM_SUBDIR)
SONG_BUILDDIR = $(OBJ_DIR)/$(SONG_SUBDIR)
MID_BUILDDIR = $(OBJ_DIR)/$(MID_SUBDIR)

ASFLAGS := -mcpu=arm7tdmi --defsym $(GAME_VERSION)=1 --defsym REVISION=$(REVISION) --defsym $(GAME_LANGUAGE)=1

CC1             := tools/agbcc/bin/agbcc
override CFLAGS += -O2 -Wimplicit -Wparentheses -Werror -Wno-multichar
# -fhex-asm

ifeq ($(DINFO),1)
override CFLAGS += -g
endif

CPPFLAGS := -I tools/agbcc -I tools/agbcc/include -iquote include -nostdinc -undef -D$(GAME_VERSION) -DREVISION=$(REVISION) -D$(GAME_LANGUAGE)

LDFLAGS = -Map ../../$(MAP)

LIB := -L ../../tools/agbcc/lib -lc

SHA1 := $(shell { command -v sha1sum || command -v shasum; } 2>/dev/null) -c
GFX := tools/gbagfx/gbagfx
AIF := tools/aif2pcm/aif2pcm
MID := tools/mid2agb/mid2agb
SCANINC := tools/scaninc/scaninc
# TODO: use charmap? 
PREPROC := tools/preproc/preproc
FIX := tools/gbafix/gbafix

# Clear the default suffixes
.SUFFIXES:
# Don't delete intermediate files
.SECONDARY:
# Delete files that weren't built properly
.DELETE_ON_ERROR:
# Secondary expansion is required for dependency variables in object rules.
.SECONDEXPANSION:


$(shell mkdir -p $(C_BUILDDIR) $(ASM_BUILDDIR) $(DATA_ASM_BUILDDIR) $(SONG_BUILDDIR) $(MID_BUILDDIR))

infoshell = $(foreach line, $(shell $1 | sed "s/ /__SPACE__/g"), $(info $(subst __SPACE__, ,$(line))))

# Build tools when building the rom
# Disable dependency scanning for clean/tidy/tools
ifeq (,$(filter-out all compare,$(MAKECMDGOALS)))
$(call infoshell, $(MAKE) tools)
else
NODEP := 1
endif

#$(C_BUILDDIR)/need_interworking_file_name.o: CFLAGS += -mthumb-interwork
$(C_BUILDDIR)/arm_proxy.o: CFLAGS += -mthumb-interwork
$(C_BUILDDIR)/gba/m4a.o: CFLAGS = -O2 -mthumb-interwork -Wimplicit -Wparentheses -Werror -Wno-multichar
$(C_BUILDDIR)/eeprom.o: CFLAGS = -O1 -mthumb-interwork -Wimplicit -Wparentheses -Werror -Wno-multichar

C_SRCS := $(wildcard $(C_SUBDIR)/*.c $(C_SUBDIR)/*/*.c)
C_OBJS := $(patsubst $(C_SUBDIR)/%.c,$(C_BUILDDIR)/%.o,$(C_SRCS))

ASM_SRCS := $(wildcard $(ASM_SUBDIR)/*.s $(ASM_SUBDIR)/*/*.s)
ASM_OBJS := $(patsubst $(ASM_SUBDIR)/%.s,$(ASM_BUILDDIR)/%.o,$(ASM_SRCS))

DATA_ASM_SRCS := $(wildcard $(DATA_ASM_SUBDIR)/*.s $(DATA_ASM_SUBDIR)/**/*.s $(DATA_ASM_SUBDIR)/**/**/*.s)
DATA_ASM_OBJS := $(patsubst $(DATA_ASM_SUBDIR)/%.s,$(DATA_ASM_BUILDDIR)/%.o,$(DATA_ASM_SRCS))

SONG_SRCS := $(wildcard $(SONG_SUBDIR)/*.s)
SONG_OBJS := $(patsubst $(SONG_SUBDIR)/%.s,$(SONG_BUILDDIR)/%.o,$(SONG_SRCS))

MID_SRCS := $(wildcard $(MID_SUBDIR)/*.mid)
MID_OBJS := $(patsubst $(MID_SUBDIR)/%.mid,$(MID_BUILDDIR)/%.o,$(MID_SRCS))

OBJS := $(C_OBJS) $(ASM_OBJS) $(DATA_ASM_OBJS) $(SONG_OBJS) $(MID_OBJS)
OBJS_REL := $(patsubst $(OBJ_DIR)/%,%,$(OBJS))

SUBDIRS  := $(sort $(dir $(OBJS)))

$(shell mkdir -p $(SUBDIRS))

TOOLDIRS := $(filter-out tools/agbcc tools/binutils,$(wildcard tools/*))
TOOLBASE = $(TOOLDIRS:tools/%=%)
TOOLS = $(foreach tool,$(TOOLBASE),tools/$(tool)/$(tool)$(EXE))

.PHONY: all setup clean-tools mostlyclean clean tidy $(TOOLDIRS)

MAKEFLAGS += --no-print-directory

AUTO_GEN_TARGETS :=

all: $(ROM)
	@$(SHA1) tmc.sha1

# kept for backwards compat
compare: $(ROM)
	@$(SHA1) tmc.sha1

setup: $(TOOLDIRS)

$(TOOLDIRS):
	@$(MAKE) -C $@

mostlyclean: tidy
	rm -f sound/direct_sound_samples/*.bin
	rm -f $(SONG_OBJS) $(MID_SUBDIR)/*.s
	find . \( -iname '*.1bpp' -o -iname '*.4bpp' -o -iname '*.8bpp' -o -iname '*.gbapal' -o -iname '*.lz' -o -iname '*.latfont' -o -iname '*.hwjpnfont' -o -iname '*.fwjpnfont' \) -exec rm {} +
	rm -f $(AUTO_GEN_TARGETS)

clean-tools:
	@$(foreach tooldir,$(TOOLDIRS),$(MAKE) clean -C $(tooldir);)

clean: mostlyclean clean-tools

tidy:
	rm -f $(ROM) $(ELF) $(MAP)
	rm -r build/*

include graphics_file_rules.mk
include songs.mk

%.s: ;
%.png: ;
%.pal: ;
%.aif: ;

%.1bpp: %.png  ; $(GFX) $< $@
%.4bpp: %.png  ; $(GFX) $< $@
%.8bpp: %.png  ; $(GFX) $< $@
%.gbapal: %.pal ; $(GFX) $< $@
%.gbapal: %.png ; $(GFX) $< $@
%.lz: % ; $(GFX) $< $@
%.rl: % ; $(GFX) $< $@
sound/%.bin: sound/%.aif ; $(AIF) $< $@
sound/songs/%.s: sound/songs/%.mid
	cd $(@D) && ../../$(MID) $(<F)
translations/USA.bin: translations/USA.json ; tools/tmc_strings/tmc_strings -p --source $< --dest $@ --size 0x499E0

ifeq ($(NODEP),1)
$(C_BUILDDIR)/%.o: c_dep :=
else
$(C_BUILDDIR)/%.o: c_dep = $(shell $(SCANINC) -I include $(C_SUBDIR)/$*.c)
endif

$(C_BUILDDIR)/%.o : $(C_SUBDIR)/%.c $$(c_dep)
	@$(CPP) $(CPPFLAGS) $< -o $(C_BUILDDIR)/$*.i
	$(PREPROC) $(C_BUILDDIR)/$*.i charmap.txt | $(CC1) $(CFLAGS) -o $(C_BUILDDIR)/$*.s
	@echo -e "\t.text\n\t.align\t2, 0 @ Don't pad with nop\n" >> $(C_BUILDDIR)/$*.s
	$(AS) $(ASFLAGS) -o $@ $(C_BUILDDIR)/$*.s

ifeq ($(NODEP),1)
$(ASM_BUILDDIR)/%.o: asm_dep :=
else
$(ASM_BUILDDIR)/%.o: asm_dep = $(shell $(SCANINC) -I . $(ASM_SUBDIR)/$*.s)
endif

$(ASM_BUILDDIR)/%.o: $(ASM_SUBDIR)/%.s $$(asm_dep)
	$(PREPROC) $< | $(AS) $(ASFLAGS) -o $@

ifeq ($(NODEP),1)
$(DATA_ASM_BUILDDIR)/%.o: data_dep :=
else
$(DATA_ASM_BUILDDIR)/%.o: data_dep = $(shell $(SCANINC) -I . $(DATA_ASM_SUBDIR)/$*.s)
endif

$(DATA_ASM_BUILDDIR)/%.o: $(DATA_ASM_SUBDIR)/%.s $$(data_dep)
	$(PREPROC) $< charmap.txt | $(CPP) -I include -nostdinc -undef -Wno-unicode - | $(AS) $(ASFLAGS) -o $@

$(SONG_BUILDDIR)/%.o: $(SONG_SUBDIR)/%.s
	$(AS) $(ASFLAGS) -I sound -o $@ $<

$(ELF): $(OBJS) linker.ld
	cd $(OBJ_DIR) && $(LD) $(LDFLAGS) -n -T ../../linker.ld -o ../../$@ $(LIB)
	$(FIX) $@ -t"$(TITLE)" -c$(GAME_CODE) -m$(MAKER_CODE) -r$(REVISION) --silent

$(ROM): $(ELF)
	$(OBJCOPY) -O binary --gap-fill 0xFF --pad-to 0x9000000 $< $@
