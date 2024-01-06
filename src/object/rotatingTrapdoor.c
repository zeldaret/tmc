/**
 * @file rotatingTrapdoor.c
 * @ingroup Objects
 *
 * @brief Rotating Trapdoor object
 */
#include "asm.h"
#include "entity.h"
#include "functions.h"
#include "room.h"
#include "sound.h"

void RotatingTrapdoor_Init(Entity*);
void RotatingTrapdoor_Action1(Entity*);
void sub_0808E354(Entity*, u32);

void RotatingTrapdoor(Entity* this) {
    static void (*const RotatingTrapdoor_Actions[])(Entity*) = {
        RotatingTrapdoor_Init,
        RotatingTrapdoor_Action1,
    };

    RotatingTrapdoor_Actions[this->action]((Entity*)this);
}

void RotatingTrapdoor_Init(Entity* this) {
    int x;
    int y;

    this->collisionLayer = 2;
    this->action = 1;
    x = 0;
    y = 0;
    switch (GetTileTypeAtEntity(this)) {
        case 0x343:
            x = 0x10;
        case 0x344:
            y = 0x10;
            break;
        case 0x345:
            x = 0x10;
            break;
        case 0x346:
            break;
        default:
            DeleteThisEntity();
            break;
    }

    this->x.HALF.HI = (this->x.HALF.HI + x) & 0xfff0;
    this->y.HALF.HI = (this->y.HALF.HI + y) & 0xfff0;
    InitializeAnimation(this, 0);
    sub_0808E354(this, 0x347);
    RotatingTrapdoor_Action1(this);
}

void RotatingTrapdoor_Action1(Entity* this) {
    GetNextFrame(this);
    if (this->frame & ANIM_DONE) {
        sub_0808E354(this, 0x343);
        DeleteThisEntity();
    } else {
        if (this->frame & 1) {
            EnqueueSFX(SFX_18B);
        }
    }
}

void sub_0808E354(Entity* this, u32 param_2) {
    u16 uVar1 = param_2;
    sub_0807B7D8(uVar1, COORD_TO_TILE_OFFSET(this, 0x10, 0x10), 2);
    sub_0807B7D8(uVar1 + 1, COORD_TO_TILE_OFFSET(this, 0, 0x10), 2);
    sub_0807B7D8(uVar1 + 2, COORD_TO_TILE_OFFSET(this, 0x10, 0), 2);
    sub_0807B7D8(uVar1 + 3, COORD_TO_TILE_OFFSET(this, 0, 0), 2);
}
