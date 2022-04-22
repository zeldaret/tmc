#include "global.h"
#include "entity.h"
#include "flags.h"
#include "room.h"
#include "sound.h"
#include "functions.h"

static void SetJailBarTiles(Entity*, u32);
void sub_080A08C4(Entity*);
void sub_080A0910(Entity*);
void sub_080A0938(Entity*);
void nullsub_127(Entity*);

void JailBars(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_080A08C4,
        sub_080A0910,
        sub_080A0938,
        nullsub_127,
    };
    actionFuncs[this->action](this);
}

void sub_080A08C4(Entity* this) {
    if (CheckFlags(this->field_0x86.HWORD) == 0) {
        this->action = 1;
        SetJailBarTiles(this, 0);
    } else {
        this->action = 3;
        InitializeAnimation(this, 1);
        SetJailBarTiles(this, 1);
    }
    this->spriteSettings.draw = 3; // ???
    this->collisionLayer = 1;
    UpdateSpriteForCollisionLayer(this);
}

void sub_080A0910(Entity* this) {
    if (CheckFlags(this->field_0x86.HWORD) != 0) {
        this->action = 2;
        SetJailBarTiles(this, 1);
        SoundReq(SFX_10B);
    }
}

void sub_080A0938(Entity* this) {
    GetNextFrame(this);
    if (this->frame & ANIM_DONE) {
        this->action = 3;
        InitializeAnimation(this, 1);
    }
}

void nullsub_127(Entity* this) {
}

static void SetJailBarTiles(Entity* this, u32 arg1) {
    static const s16 gUnk_08124960[] = { 0x4023, -0x3,   0x4023, -0x2,   0x4023, -0x1, 0x4023,
                                         0x0,    0x4023, 0x1,    0x4023, 0x2,    -0x1 };
    static const s16 gUnk_0812497A[] = { 0x4023, -0x3,   0x4023, -0x2,   0x4088, -0x1, 0x4087,
                                         0x0,    0x4023, 0x1,    0x4023, 0x2,    -0x1 };
    const s16* puVar1;

    puVar1 = gUnk_08124960;
    if (arg1 == 1) {
        puVar1 = gUnk_0812497A;
    }
    SetMultipleTiles((const TileData*)puVar1, COORD_TO_TILE(this), 1);
}
