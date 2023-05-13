.PHONY: default
default:
	@echo do not use this directly

include Toolchain.mk

GAME_VERSION ?= USA
BUILD_DIR = build/$(GAME_VERSION)

TITLE       := GBAZELDA MC
MAKER_CODE  := 01
REVISION    := 0

ifeq ($(GAME_VERSION), EU)
GAME_CODE     := BZMP
BUILD_NAME    := tmc_eu
GAME_LANGUAGE := ENGLISH
TRANSLATIONS  := translations/English.bin translations/French.bin translations/German.bin translations/Spanish.bin translations/Italian.bin
else ifeq ($(GAME_VERSION), JP)
GAME_CODE     := BZMJ
BUILD_NAME    := tmc_jp
GAME_LANGUAGE := JAPANESE
TRANSLATIONS  :=
else ifeq ($(GAME_VERSION), USA)
GAME_CODE     := BZME
BUILD_NAME    := tmc
GAME_LANGUAGE := ENGLISH
TRANSLATIONS  := translations/USA.bin
else ifeq ($(GAME_VERSION), DEMO_USA)
GAME_CODE     := BZHE
BUILD_NAME    := tmc_demo_usa
GAME_LANGUAGE := ENGLISH
TRANSLATIONS  := translations/USA.bin
else ifeq ($(GAME_VERSION), DEMO_JP)
GAME_CODE     := BZMJ
BUILD_NAME    := tmc_demo_jp
GAME_LANGUAGE := JAPANESE
TRANSLATIONS  :=
else
$(error unknown version $(GAME_VERSION))
endif

ROM = $(BUILD_NAME).gba
ELF = $(BUILD_NAME).elf

# Clear the default suffixes
.SUFFIXES:
# Don't delete intermediate files
.SECONDARY:
# Delete files that weren't built properly
.DELETE_ON_ERROR:
# Secondary expansion is required for dependency variables in object rules.
.SECONDEXPANSION:

# ==================
# entrypoint targets
# ==================
CUSTOM ?=
COMPARE ?= $(if $(CUSTOM),0,1)

.PHONY: build extract_assets build_assets
build: $(if $(CUSTOM), build_assets, $(BUILD_DIR)/extracted_assets_$(GAME_VERSION))
	@$(MAKE) -f GBA.mk $(ROM)
ifeq ($(COMPARE), 1)
	@$(SHA1) $(BUILD_NAME).sha1
endif
extract_assets: $(BUILD_DIR)/converted_assets_$(GAME_VERSION)
# TODO this is slow, especially on builds with minor/no changes
build_assets: $(BUILD_DIR)/converted_assets_$(GAME_VERSION)
	$(ASSET_PROCESSOR) build $(GAME_VERSION) $(BUILD_DIR)/assets

.PHONY: clean
clean:
	rm -rf build
	rm -f t*.gba
	rm -f t*.elf

# ===============
# build ASM files
# ===============

ASINCLUDE := -I $(BUILD_DIR)/assets -I $(BUILD_DIR)/enum_include
ASFLAGS := -mcpu=arm7tdmi --defsym $(GAME_VERSION)=1 --defsym REVISION=$(REVISION) --defsym $(GAME_LANGUAGE)=1 $(ASINCLUDE)

# TODO try solve this without the glob
ENUM_ASM_SRCS := $(wildcard include/*.h)
ENUM_ASM_HEADERS := $(patsubst include/%.h,$(BUILD_DIR)/enum_include/%.inc,$(ENUM_ASM_SRCS))

# if this is too broad dependency scanning will clash with C file
$(BUILD_DIR)/asm/%.o: deps = $(shell $(SCANINC) -I . $(ASINCLUDE) $*.s)
$(BUILD_DIR)/data/%.o: deps = $(shell $(SCANINC) -I . $(ASINCLUDE) $*.s)
$(BUILD_DIR)/%.o: %.s $$(deps) $(ENUM_ASM_HEADERS)
	@mkdir -p $(dir $@)
	$(PREPROC) $(BUILD_NAME) $< -- $(ASINCLUDE) | $(AS) $(ASFLAGS) -o $@

$(BUILD_DIR)/enum_include/%.inc: include/%.h
	@mkdir -p $(dir $@)
	$(ENUM_PROCESSOR) $< $(CC) "-D__attribute__(x)=" "-D$(GAME_VERSION)" "-E" "-nostdinc" "-Itools/agbcc" "-Itools/agbcc/include" "-iquote include" > $@

# =============
# build C files
# =============

# agbcc includes are separate because we don't want dependency scanning on them
CINCLUDE := -I include -I $(BUILD_DIR)
CPPFLAGS := -I tools/agbcc -I tools/agbcc/include $(CINCLUDE) -nostdinc -undef -D$(GAME_VERSION) -DREVISION=$(REVISION) -D$(GAME_LANGUAGE)
CFLAGS := -O2 -Wimplicit -Wparentheses -Werror -Wno-multichar -g3

interwork := $(BUILD_DIR)/src/interrupts.o \
$(BUILD_DIR)/src/collision.o \
$(BUILD_DIR)/src/playerItem.o \
$(BUILD_DIR)/src/object.o \
$(BUILD_DIR)/src/manager.o \
$(BUILD_DIR)/src/npc.o \
$(BUILD_DIR)/src/gba/m4a.o

$(interwork): CFLAGS += -mthumb-interwork
$(BUILD_DIR)/src/eeprom.o: CFLAGS += -O1 -mthumb-interwork

# if this is too broad dependency scanning will clash with ASM file
$(BUILD_DIR)/src/%.o: deps = $(shell $(SCANINC) $(CINCLUDE) $*.c)
$(BUILD_DIR)/%.o : %.c $$(deps)
	@mkdir -p $(dir $@)
	$(CPP) $(CPPFLAGS) $< -o $(BUILD_DIR)/$*.i
	$(CC1) $(CFLAGS) -o $(BUILD_DIR)/$*.s $(BUILD_DIR)/$*.i
	@printf "\t.text\n\t.align\t2, 0 @ Don't pad with nop\n" >> $(BUILD_DIR)/$*.s
	$(AS) $(ASFLAGS) -o $@ $(BUILD_DIR)/$*.s

# ==============
# build binaries
# ==============

LDFLAGS = -Map ../../$(BUILD_DIR)/$(BUILD_NAME).map
LIB := -L ../../tools/agbcc/lib -lc

$(ROM): $(ELF)
	$(OBJCOPY) -O binary --gap-fill 0xFF --pad-to 0x9000000 $< $@

$(ELF): objs = $(shell grep -vE "\*\w+\.a" linker.ld | grep -oE "(\w|/)+\.o")
$(ELF): $(BUILD_DIR)/linker.ld $$(addprefix $(BUILD_DIR)/, $$(objs))
	cd $(BUILD_DIR) && $(LD) $(LDFLAGS) -n -T linker.ld -o ../../$@ $(LIB)
	$(FIX) $@ -t"$(TITLE)" -c$(GAME_CODE) -m$(MAKER_CODE) -r$(REVISION) --silent

$(BUILD_DIR)/linker.ld: linker.ld
	@mkdir -p $(BUILD_DIR)
	$(CPP) $(CPPFLAGS) -x c linker.ld | grep -v '^#' >$(BUILD_DIR)/linker.ld

# ======
# assets
# ======

$(BUILD_DIR)/extracted_assets_%: assets/assets.json assets/gfx.json assets/map.json assets/samples.json assets/sounds.json $(TRANSLATIONS)
	@mkdir -p $(dir $@)
	$(ASSET_PROCESSOR) extract $(GAME_VERSION) $(BUILD_DIR)/assets
	touch $@

$(BUILD_DIR)/converted_assets_%: $(BUILD_DIR)/extracted_assets_%
	@mkdir -p $(dir $@)
	$(ASSET_PROCESSOR) convert $(GAME_VERSION) $(BUILD_DIR)/assets
	touch $@

translations/%.bin: translations/%.json
	tools/bin/tmc_strings -p --source $< --dest $@
