/**
 * @file minishPortalStone.c
 * @ingroup Objects
 *
 * @brief Minish Portal Stone object
 */
#include "functions.h"
#include "object.h"
#include "screen.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[0x1e];
    /*0x86*/ u16 unk_86;
} MinishPortalStoneEntity;

void MinishPortalStone_Init(MinishPortalStoneEntity* this);
void MinishPortalStone_Action1(MinishPortalStoneEntity* this);
void MinishPortalStone_Action2(MinishPortalStoneEntity* this);
void MinishPortalStone_Action3(MinishPortalStoneEntity* this);
void MinishPortalStone_Action4(MinishPortalStoneEntity* this);
void sub_08097CFC(MinishPortalStoneEntity* this);
bool32 sub_08097CB0(MinishPortalStoneEntity* this);
void sub_08097CB4(MinishPortalStoneEntity* this);

const Hitbox gUnk_08123328 = { 0, 0, { 4, 0, 0, 4 }, 18, 18 };

void MinishPortalStone(MinishPortalStoneEntity* this) {
    static void (*const MinishPortalStone_Actions[])(MinishPortalStoneEntity*) = {
        MinishPortalStone_Init,    MinishPortalStone_Action1, MinishPortalStone_Action2,
        MinishPortalStone_Action3, MinishPortalStone_Action4,
    };
    MinishPortalStone_Actions[super->action](this);
}

void MinishPortalStone_Init(MinishPortalStoneEntity* this) {
    super->action = 1;
    super->spritePriority.b0 = 7;
    super->hitbox = (Hitbox*)&gUnk_08123328;
    if ((this->unk_86 == 0xffff) || (CheckFlags(this->unk_86))) {
        super->spriteSettings.draw = 1;
        super->action = 4;
        sub_08097CFC(this);
    } else {
        sub_0805BC4C();
    }
}

void MinishPortalStone_Action1(MinishPortalStoneEntity* this) {
    if (CheckFlags(this->unk_86)) {
        SetPlayerControl(CONTROL_1);
        gPauseMenuOptions.disabled = 1;
        RequestPriorityDuration(super, 30);
        if (sub_08097CB0(this) == FALSE) {
            sub_08097CB4(this);
        }
    }
}

void MinishPortalStone_Action2(MinishPortalStoneEntity* this) {
}

void MinishPortalStone_Action4(MinishPortalStoneEntity* this) {
}

void MinishPortalStone_Action3(MinishPortalStoneEntity* this) {
    u32 tmp;
    SetPriorityTimer(30);
    sub_0800445C(super);
    CreateMagicSparkles(super->x.HALF.HI, super->y.HALF.HI, super->collisionLayer);
    if (--super->timer == 0) {
        super->timer = 8;
        tmp = ++super->subtimer;
        gScreen.controls.alphaBlend = (((0x10 - tmp) * 0x100)) | tmp;
        if (gScreen.controls.alphaBlend == 0x10) {
            SetPlayerControl(CONTROL_ENABLED);
            gPauseMenuOptions.disabled = 0;
            gScreen.controls.layerFXControl = 0;
            sub_08097CFC(this);
            super->action = 4;
            super->spriteRendering.alphaBlend = 0;
            SoundReq(SFX_SECRET);
            SetGlobalFlag(TINY_ENTRANCE);
        }
    }
}

bool32 sub_08097CB0(MinishPortalStoneEntity* this) {
    return FALSE;
}

void sub_08097CB4(MinishPortalStoneEntity* this) {
    super->action = 3;
    super->spriteSettings.draw = 1;
    super->spriteRendering.alphaBlend = 1;
    super->timer = 30;
    super->subtimer = 0;
    gScreen.controls.layerFXControl = 0xf40;
    gScreen.controls.alphaBlend = 0x1000;
    SoundReq(SFX_14A);
}

void sub_08097CFC(MinishPortalStoneEntity* this) {
    // TODO recreate as TileData[]
    static const u16 gUnk_08123344[] = { 16448, 65471, 16449, 65472, 16450, 65473, 16451, 65535, 16452, 0,
                                         16453, 1,     16454, 63,    16455, 64,    16456, 65,    65535 };
    static const u16 gUnk_0812336A[] = {
        16449, 65471, 16449, 65472, 16452, 65535, 16452, 0, 16455, 63, 16455, 64, 65535
    };
    if ((super->x.HALF.HI & 0xf) == 0) {
        SetMultipleTiles((TileData*)gUnk_0812336A, COORD_TO_TILE(super), super->collisionLayer);
    } else {
        SetMultipleTiles((TileData*)gUnk_08123344, COORD_TO_TILE(super), super->collisionLayer);
    }
}
