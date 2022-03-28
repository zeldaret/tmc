#include "entity.h"
#include "definitions.h"

#define MULTI_FORM(index, unk) \
    { 0xff, index, unk, 0, 0, 0 }

const SpriteDataC gPlayerItemDefinitions[] = {
    { 0, 0, 16384, 1, SPRITE_0, 0 },              // DeleteEntity
    MULTI_FORM(0, 1),                             // PlayerItemSword
    { 1, 12, 5644, 169, SPRITE_166, 192 },        // PlayerItemBomb
    { 0, 3, 5130, 118, SPRITE_22, 0 },            // PlayerItemBoomerang
    { 1, 3, 5391, 171, SPRITE_21, 203 },          // PlayerItemBow
    MULTI_FORM(2, 13),                            // PlayerItemShield
    { 0, 0, 1792, 1, SPRITE_18, 0 },              // PlayerItemLantern
    MULTI_FORM(0, 1),                             // PlayerItemNulled
    { 1, 0, 16384, 1, SPRITE_ITEMGUSTJAR, 0 },    // PlayerItemGustJar
    { 4, 0, 16384, 1, SPRITE_20, 0 },             // PlayerItemPacciCane
    { 0, 0, 16384, 1, SPRITE_0, 0 },              // DeleteEntity
    { 0, 0, 16384, 1, SPRITE_0, 0 },              // DeleteEntity
    MULTI_FORM(1, 1),                             // PlayerItemDashSword
    MULTI_FORM(0, 1),                             // PlayerItemCellOverwriteSet
    { 0, 0, 7936, 1, SPRITE_19, 0 },              // PlayerItemSwordSpin
    { 0, 4, 8204, 152, SPRITE_166, 0x8000 },      // PlayerItemSwordBeam
    { 0, 0, 4864, 109, SPRITE_0, 0 },             // PlayerItemGust
    { 3, 0, 7183, 150, SPRITE_166, 0 },           // PlayerItemGustBig
    { 4, 0, 7424, 1, SPRITE_166, 57 },            // PlayerItemPacciCaneProjectile
    { 0, 3, 5900, 1, SPRITE_POT, 0 },             // PlayerItemHeldObject
    { 1, 4, 8460, 152, SPRITE_OBJECT43, 0x8000 }, // PlayerItemSpiralBeam
    { 1, 4, 8204, 152, SPRITE_166, 0x8000 },      // PlayerItemFireRodProjectile
    { 1, 4, 1036, 151, SPRITE_14, 0 },            // PlayerItemSwordBeam
    { 1, 4, 1036, 151, SPRITE_14, 0 }             // PlayerItemNulled2
};

const SpriteDataC gPlayerItemDefinition_0[] = {
    { 1, 4, 1036, 151, SPRITE_14, 0 }, { 2, 4, 1292, 151, SPRITE_15, 0 }, { 0, 4, 1292, 151, SPRITE_15, 0 },
    { 1, 4, 1292, 151, SPRITE_15, 0 }, { 4, 4, 1292, 151, SPRITE_15, 0 }, { 4, 4, 1548, 151, SPRITE_16, 0 },
};
const SpriteDataC gPlayerItemDefinition_1[] = {
    { 1, 4, 4108, 151, SPRITE_14, 0 }, { 2, 4, 4364, 151, SPRITE_15, 0 }, { 0, 4, 4364, 151, SPRITE_15, 0 },
    { 1, 4, 4364, 151, SPRITE_15, 0 }, { 4, 4, 4364, 151, SPRITE_15, 0 }, { 4, 4, 4620, 151, SPRITE_16, 0 },
};
const SpriteDataC gPlayerItemDefinition_2[] = {
    { 1, 0, 524, 153, SPRITE_17, 0 },
    { 1, 0, 780, 153, SPRITE_17, 0 },
};

const SpriteDataC* const gAdditionalPlayerItemDefinitions[] = {
    gPlayerItemDefinition_0,
    gPlayerItemDefinition_1,
    gPlayerItemDefinition_2,
};
