/**
 * @file hiddenLadderDown.c
 * @ingroup Objects
 *
 * @brief Hidden Ladder Down object
 */
#define NENT_DEPRECATED
#include "asm.h"
#include "entity.h"
#include "flags.h"
#include "functions.h"

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
        SetTileType(0x1a2, *puVar3 - 0x41, super->collisionLayer);
        SetTileType(0x1a3, *puVar3 - 0x40, super->collisionLayer);
        SetTileType(0x1a4, *puVar3 - 0x3f, super->collisionLayer);
        SetTileType(0x1a5, *puVar3 - 1, super->collisionLayer);
        SetTileType(0x1a6, *puVar3, super->collisionLayer);
        SetTileType(0x1a7, *puVar3 + 1, super->collisionLayer);
        SetTileType(0x1a8, *puVar3 + 0x3f, super->collisionLayer);
        SetTileType(0x1a9, *puVar3 + 0x40, super->collisionLayer);
        SetTileType(0x1aa, *puVar3 + 0x41, super->collisionLayer);
    }
}

void HiddenLadderDown_Action1(HiddenLadderDownEntity* this) {
    if (GetTileType(this->unk_70, super->collisionLayer) == 0x1a6) {
        super->action = 2;
        super->spriteSettings.draw = TRUE;
        SetFlag(this->unk_86);
    }
}
