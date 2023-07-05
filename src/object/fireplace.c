/**
 * @file fireplace.c
 * @ingroup Objects
 *
 * @brief Fireplace object
 */
#include "functions.h"
#include "object.h"
#include "tiles.h"

void Fireplace_Action1(Entity* this);
void sub_0809B7DC(Entity* this);
void sub_0809B7C0(Entity* this);
void Fireplace_Init(Entity* this);

void Fireplace(Entity* e) {
    static void (*const Fireplace_Actions[])(Entity*) = {
        Fireplace_Init,
        Fireplace_Action1,
    };
    Fireplace_Actions[e->action](e);
}

void Fireplace_Init(Entity* this) {
    this->action = 1;
    this->spriteSettings.draw = 1;
    this->speed = 0x80;
    if (CheckFlags(this->field_0x86.HWORD)) {
        sub_0809B7DC(this);
        DeleteThisEntity();
    } else {
        sub_0807B7D8(0x30b, TILE(this->x.HALF.HI, this->y.HALF.HI), 2);
        SetMetaTile(SPECIAL_META_TILE_97, TILE(this->x.HALF.HI, this->y.HALF.HI), this->collisionLayer);
    }
    Fireplace_Action1(this);
}

void Fireplace_Action1(Entity* this) {
    sub_0809B7C0(this);
    if (this->timer) {
        SetFlag(this->field_0x86.HWORD);
        DeleteThisEntity();
    }
}

void sub_0809B7C0(Entity* this) {
    u32 tileType = GetMetaTileTypeByEntity(this);
    if (tileType != SPECIAL_META_TILE_97 && tileType != SPECIAL_META_TILE_98) {
        sub_0809B7DC(this);
    }
}

void sub_0809B7DC(Entity* this) {
    sub_0807B7D8(0xc3 << 2, TILE(this->x.HALF.HI, this->y.HALF.HI), 2);
    SetMetaTile(SPECIAL_META_TILE_98, TILE(this->x.HALF.HI, this->y.HALF.HI), this->collisionLayer);
    this->timer = 1;
}
