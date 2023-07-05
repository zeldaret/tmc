/**
 * @file jailBars.c
 * @ingroup Objects
 *
 * @brief Jail Bars object
 */
#include "entity.h"
#include "flags.h"
#include "functions.h"
#include "room.h"
#include "sound.h"
#include "tiles.h"

static void SetJailBarTiles(Entity*, u32);
void JailBars_Init(Entity*);
void JailBars_Action1(Entity*);
void JailBars_Action2(Entity*);
void JailBars_Action3(Entity*);

void JailBars(Entity* this) {
    static void (*const JailBars_Actions[])(Entity*) = {
        JailBars_Init,
        JailBars_Action1,
        JailBars_Action2,
        JailBars_Action3,
    };
    JailBars_Actions[this->action](this);
}

void JailBars_Init(Entity* this) {
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

void JailBars_Action1(Entity* this) {
    if (CheckFlags(this->field_0x86.HWORD) != 0) {
        this->action = 2;
        SetJailBarTiles(this, 1);
        SoundReq(SFX_10B);
    }
}

void JailBars_Action2(Entity* this) {
    GetNextFrame(this);
    if (this->frame & ANIM_DONE) {
        this->action = 3;
        InitializeAnimation(this, 1);
    }
}

void JailBars_Action3(Entity* this) {
}

static void SetJailBarTiles(Entity* this, u32 arg1) {
    static const s16 gUnk_08124960[] = {
        SPECIAL_META_TILE_35,
        -0x3,
        SPECIAL_META_TILE_35,
        -0x2,
        SPECIAL_META_TILE_35,
        -0x1,
        SPECIAL_META_TILE_35,
        0x0,
        SPECIAL_META_TILE_35,
        0x1,
        SPECIAL_META_TILE_35,
        0x2,
        -0x1,
    };
    static const s16 gUnk_0812497A[] = {
        SPECIAL_META_TILE_35,
        -0x3,
        SPECIAL_META_TILE_35,
        -0x2,
        SPECIAL_META_TILE_136,
        -0x1,
        SPECIAL_META_TILE_135,
        0x0,
        SPECIAL_META_TILE_35,
        0x1,
        SPECIAL_META_TILE_35,
        0x2,
        -0x1,
    };
    const s16* puVar1;

    puVar1 = gUnk_08124960;
    if (arg1 == 1) {
        puVar1 = gUnk_0812497A;
    }
    SetMultipleTiles((const TileData*)puVar1, COORD_TO_TILE(this), 1);
}
