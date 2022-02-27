#include "entity.h"
#include "asm.h"

void sub_0800445C(Entity*);
void MacroShoes_Init(Entity*);
void MacroShoes_Idle(Entity*);

static const Hitbox MacroShoes_Type0Hitbox;
static const Hitbox MacroShoes_Type1Hitbox;

static const Hitbox* const MacroShoes_TypeHitboxes[] = {
    &MacroShoes_Type0Hitbox,
    &MacroShoes_Type1Hitbox,
};

static const Hitbox MacroShoes_Type0Hitbox = {
    0, 0, { 4, 0, 0, 0 }, 0x34, 0x20,
};

static const Hitbox MacroShoes_Type1Hitbox = {
    0, 0, { 4, 0, 0, 0 }, 0x30, 0x10,
};

void MacroShoes(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        MacroShoes_Init,
        MacroShoes_Idle,
    };
    actionFuncs[this->action](this);
    sub_0800445C(this);
}

void MacroShoes_Init(Entity* this) {
    this->action = 1;
    this->hitbox = (Hitbox*)MacroShoes_TypeHitboxes[this->type];
    if (this->type2 == 1) {
        SetTile(0x4024, 0x410, 1);
        SetTile(0x4026, 0x411, 1);
        SetTile(0x4025, 0x412, 1);
    }
}

void MacroShoes_Idle(Entity* this) {
}
