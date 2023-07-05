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
#include "tiles.h"

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
        SetMetaTileType(META_TILE_TYPE_418, *puVar3 + TILE_POS(-1, -1), this->collisionLayer);
        SetMetaTileType(META_TILE_TYPE_419, *puVar3 + TILE_POS(0, -1), this->collisionLayer);
        SetMetaTileType(META_TILE_TYPE_420, *puVar3 + TILE_POS(1, -1), this->collisionLayer);
        SetMetaTileType(META_TILE_TYPE_421, *puVar3 + TILE_POS(-1, 0), this->collisionLayer);
        SetMetaTileType(META_TILE_TYPE_422, *puVar3 + TILE_POS(0, 0), this->collisionLayer);
        SetMetaTileType(META_TILE_TYPE_423, *puVar3 + TILE_POS(1, 0), this->collisionLayer);
        SetMetaTileType(META_TILE_TYPE_424, *puVar3 + TILE_POS(-1, 1), this->collisionLayer);
        SetMetaTileType(META_TILE_TYPE_425, *puVar3 + TILE_POS(0, 1), this->collisionLayer);
        SetMetaTileType(META_TILE_TYPE_426, *puVar3 + TILE_POS(1, 1), this->collisionLayer);
    }
}

void HiddenLadderDown_Action1(Entity* this) {
    if (GetMetaTileType(*(u16*)&this->field_0x70.HALF.LO, this->collisionLayer) == 0x1a6) {
        this->action = 2;
        this->spriteSettings.draw = TRUE;
        SetFlag(this->field_0x86.HWORD);
    }
}
