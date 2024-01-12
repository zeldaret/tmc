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

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[8];
    /*0x70*/ u16 unk_70;
    /*0x72*/ u8 unused2[20];
    /*0x86*/ u16 unk_86;
} HiddenLadderDownEntity;

void HiddenLadderDown_Init(HiddenLadderDownEntity* this);
void HiddenLadderDown_Action1(HiddenLadderDownEntity* this);

void HiddenLadderDown(HiddenLadderDownEntity* this) {
    static void (*const HiddenLadderDown_Actions[])(HiddenLadderDownEntity*) = {
        HiddenLadderDown_Init,
        HiddenLadderDown_Action1,
    };
    if (super->action < 2) {
        HiddenLadderDown_Actions[super->action](this);
    }
}

void HiddenLadderDown_Init(HiddenLadderDownEntity* this) {
    u16* puVar3;

    super->action = 1;
    super->spritePriority.b0 = 7;
    super->animIndex = 0;
    this->unk_70 = COORD_TO_TILE(super);
    puVar3 = &this->unk_70;
    if (CheckFlags(this->unk_86) != 0) {
        super->action = 2;
        super->spriteSettings.draw = TRUE;
        SetTileType(TILE_TYPE_418, *puVar3 + TILE_POS(-1, -1), super->collisionLayer);
        SetTileType(TILE_TYPE_419, *puVar3 + TILE_POS(0, -1), super->collisionLayer);
        SetTileType(TILE_TYPE_420, *puVar3 + TILE_POS(1, -1), super->collisionLayer);
        SetTileType(TILE_TYPE_421, *puVar3 + TILE_POS(-1, 0), super->collisionLayer);
        SetTileType(TILE_TYPE_422, *puVar3 + TILE_POS(0, 0), super->collisionLayer);
        SetTileType(TILE_TYPE_423, *puVar3 + TILE_POS(1, 0), super->collisionLayer);
        SetTileType(TILE_TYPE_424, *puVar3 + TILE_POS(-1, 1), super->collisionLayer);
        SetTileType(TILE_TYPE_425, *puVar3 + TILE_POS(0, 1), super->collisionLayer);
        SetTileType(TILE_TYPE_426, *puVar3 + TILE_POS(1, 1), super->collisionLayer);
    }
}

void HiddenLadderDown_Action1(HiddenLadderDownEntity* this) {
    if (GetTileTypeAtTilePos(this->unk_70, super->collisionLayer) == 0x1a6) {
        super->action = 2;
        super->spriteSettings.draw = TRUE;
        SetFlag(this->unk_86);
    }
}
