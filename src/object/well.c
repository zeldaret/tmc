/**
 * @file well.c
 * @ingroup Objects
 *
 * @brief Well object
 */
#include "asm.h"
#include "entity.h"
#include "functions.h"
#include "player.h"
#include "room.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[24];
    /*0x80*/ u16 unk_80;
} WellEntity;

void Well_Init(WellEntity* this);
void Well_Action1(WellEntity* this);

void Well(WellEntity* this) {
    static void (*const Well_Actions[])(WellEntity*) = {
        Well_Init,
        Well_Action1,
    };
    Well_Actions[super->action](this);
}

void Well_Init(WellEntity* this) {
    u32 tilePos;

    super->action = 1;
    tilePos = COORD_TO_TILE(super);
    this->unk_80 = tilePos;
    SetTile(SPECIAL_TILE_125, this->unk_80, LAYER_BOTTOM);
}

void Well_Action1(WellEntity* this) {
    u32 tileIndex = GetTileTypeAtTilePos(this->unk_80, LAYER_BOTTOM);
    if (tileIndex != SPECIAL_TILE_125) {
        PausePlayer();
        gPlayerEntity.base.x.WORD = super->x.WORD;
        gPlayerEntity.base.y.HALF.HI = super->y.HALF.HI + 4;
        DeleteThisEntity();
    }
}
