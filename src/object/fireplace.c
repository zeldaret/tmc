/**
 * @file fireplace.c
 * @ingroup Objects
 *
 * @brief Fireplace object
 */
#include "functions.h"
#include "object.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[30];
    /*0x86*/ u16 unk_86;
} FireplaceEntity;

void Fireplace_Action1(FireplaceEntity* this);
void sub_0809B7DC(FireplaceEntity* this);
void sub_0809B7C0(FireplaceEntity* this);
void Fireplace_Init(FireplaceEntity* this);

void Fireplace(FireplaceEntity* this) {
    static void (*const Fireplace_Actions[])(FireplaceEntity*) = {
        Fireplace_Init,
        Fireplace_Action1,
    };
    Fireplace_Actions[super->action](this);
}

void Fireplace_Init(FireplaceEntity* this) {
    super->action = 1;
    super->spriteSettings.draw = 1;
    super->speed = 0x80;
    if (CheckFlags(this->unk_86)) {
        sub_0809B7DC(this);
        DeleteThisEntity();
    } else {
        sub_0807B7D8(0x30b, TILE(super->x.HALF.HI, super->y.HALF.HI), 2);
        SetTile(SPECIAL_TILE_97, TILE(super->x.HALF.HI, super->y.HALF.HI), super->collisionLayer);
    }
    Fireplace_Action1(this);
}

void Fireplace_Action1(FireplaceEntity* this) {
    sub_0809B7C0(this);
    if (super->timer) {
        SetFlag(this->unk_86);
        DeleteThisEntity();
    }
}

void sub_0809B7C0(FireplaceEntity* this) {
    u32 tileType = GetTileTypeAtEntity(super);
    if (tileType != SPECIAL_TILE_97 && tileType != SPECIAL_TILE_98) {
        sub_0809B7DC(this);
    }
}

void sub_0809B7DC(FireplaceEntity* this) {
    sub_0807B7D8(0xc3 << 2, TILE(super->x.HALF.HI, super->y.HALF.HI), 2);
    SetTile(SPECIAL_TILE_98, TILE(super->x.HALF.HI, super->y.HALF.HI), super->collisionLayer);
    super->timer = 1;
}
