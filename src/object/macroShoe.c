/**
 * @file macroShoe.c
 * @ingroup Objects
 *
 * @brief Macro Shoe object
 */
#define NENT_DEPRECATED
#include "asm.h"
#include "entity.h"

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
        SetTile(0x4024, 0x410, 1);
        SetTile(0x4026, 0x411, 1);
        SetTile(0x4025, 0x412, 1);
    }
}

void MacroShoe_Idle(Entity* this) {
}
