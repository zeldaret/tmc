/**
 * @file hiddenLadderDown.c
 * @ingroup Objects
 *
 * @brief Hidden Ladder Down object
 */
#include "asm.h"
#include "entity.h"
#include "flags.h"
#include "functions.h"
#include "global.h"

void HiddenLadderDown_Init(Entity*);
void HiddenLadderDown_Action1(Entity*);

void HiddenLadderDown(Entity* this) {
    static void (*const HiddenLadderDown_Actions[])(Entity*) = {
        HiddenLadderDown_Init,
        HiddenLadderDown_Action1,
    };
    if (this->action < 2) {
        HiddenLadderDown_Actions[this->action](this);
    }
}

void HiddenLadderDown_Init(Entity* this) {
    u16* puVar3;

    this->action = 1;
    this->spritePriority.b0 = 7;
    this->animIndex = 0;
    this->field_0x70.HALF.LO = COORD_TO_TILE(this);
    puVar3 = &this->field_0x70.HALF.LO;
    if (CheckFlags(this->field_0x86.HWORD) != 0) {
        this->action = 2;
        this->spriteSettings.draw = TRUE;
        SetMetaTileType(0x1a2, *puVar3 - 0x41, this->collisionLayer);
        SetMetaTileType(0x1a3, *puVar3 - 0x40, this->collisionLayer);
        SetMetaTileType(0x1a4, *puVar3 - 0x3f, this->collisionLayer);
        SetMetaTileType(0x1a5, *puVar3 - 1, this->collisionLayer);
        SetMetaTileType(0x1a6, *puVar3, this->collisionLayer);
        SetMetaTileType(0x1a7, *puVar3 + 1, this->collisionLayer);
        SetMetaTileType(0x1a8, *puVar3 + 0x3f, this->collisionLayer);
        SetMetaTileType(0x1a9, *puVar3 + 0x40, this->collisionLayer);
        SetMetaTileType(0x1aa, *puVar3 + 0x41, this->collisionLayer);
    }
}

void HiddenLadderDown_Action1(Entity* this) {
    if (GetMetaTileType(*(u16*)&this->field_0x70.HALF.LO, this->collisionLayer) == 0x1a6) {
        this->action = 2;
        this->spriteSettings.draw = TRUE;
        SetFlag(this->field_0x86.HWORD);
    }
}
