/**
 * @file macroShoe.c
 * @ingroup Objects
 *
 * @brief Macro Shoe object
 */
#include "asm.h"
#include "entity.h"
#include "tiles.h"
#include "map.h"

void MacroShoe_Init(Entity*);
void MacroShoe_Idle(Entity*);

static const Hitbox MacroShoe_Type0Hitbox;
static const Hitbox MacroShoe_Type1Hitbox;

static const Hitbox* const MacroShoe_TypeHitboxes[] = {
    &MacroShoe_Type0Hitbox,
    &MacroShoe_Type1Hitbox,
};

static const Hitbox MacroShoe_Type0Hitbox = {
    0, 0, { 4, 0, 0, 0 }, 0x34, 0x20,
};

static const Hitbox MacroShoe_Type1Hitbox = {
    0, 0, { 4, 0, 0, 0 }, 0x30, 0x10,
};

void MacroShoe(Entity* this) {
    static void (*const MacroShoe_Actions[])(Entity*) = {
        MacroShoe_Init,
        MacroShoe_Idle,
    };
    MacroShoe_Actions[this->action](this);
    sub_0800445C(this);
}

void MacroShoe_Init(Entity* this) {
    this->action = 1;
    this->hitbox = (Hitbox*)MacroShoe_TypeHitboxes[this->type];
    if (this->type2 == 1) {
        SetTile(SPECIAL_TILE_36, TILE_POS(16, 16), LAYER_BOTTOM);
        SetTile(SPECIAL_TILE_38, TILE_POS(17, 16), LAYER_BOTTOM);
        SetTile(SPECIAL_TILE_37, TILE_POS(18, 16), LAYER_BOTTOM);
    }
}

void MacroShoe_Idle(Entity* this) {
}
