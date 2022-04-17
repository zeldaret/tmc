#include "global.h"
#include "asm.h"
#include "entity.h"
#include "functions.h"
#include "flags.h"

void sub_08091F14(Entity*);
void sub_08092000(Entity*);

void HiddenLadderDown(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_08091F14,
        sub_08092000,
    };
    if (this->action < 2) {
        actionFuncs[this->action](this);
    }
}

void sub_08091F14(Entity* this) {
    u16* puVar3;

    this->action = 1;
    this->spritePriority.b0 = 7;
    this->animIndex = 0;
    this->field_0x70.HALF.LO = COORD_TO_TILE(this);
    puVar3 = &this->field_0x70.HALF.LO;
    if (CheckFlags(this->field_0x86.HWORD) != 0) {
        this->action = 2;
        this->spriteSettings.draw = TRUE;
        SetTileType(0x1a2, *puVar3 - 0x41, this->collisionLayer);
        SetTileType(0x1a3, *puVar3 - 0x40, this->collisionLayer);
        SetTileType(0x1a4, *puVar3 - 0x3f, this->collisionLayer);
        SetTileType(0x1a5, *puVar3 - 1, this->collisionLayer);
        SetTileType(0x1a6, *puVar3, this->collisionLayer);
        SetTileType(0x1a7, *puVar3 + 1, this->collisionLayer);
        SetTileType(0x1a8, *puVar3 + 0x3f, this->collisionLayer);
        SetTileType(0x1a9, *puVar3 + 0x40, this->collisionLayer);
        SetTileType(0x1aa, *puVar3 + 0x41, this->collisionLayer);
    }
}

void sub_08092000(Entity* this) {
    if (GetTileType(*(u16*)&this->field_0x70.HALF.LO, this->collisionLayer) == 0x1a6) {
        this->action = 2;
        this->spriteSettings.draw = TRUE;
        SetFlag(this->field_0x86.HWORD);
    }
}
