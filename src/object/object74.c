/**
 * @file object74.c
 * @ingroup Objects
 *
 * @brief Object74 object
 */

#define NENT_DEPRECATED
#include "global.h"
#include "object.h"
#include "functions.h"
#include "screen.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[0x1e];
    /*0x86*/ u16 unk_86;
} Object74Entity;

void sub_08097B84(Object74Entity*);
void sub_08097BDC(Object74Entity*);
void sub_08097C18(Object74Entity*);
void sub_08097C20(Object74Entity*);
void sub_08097C1C(Object74Entity*);
void sub_08097CFC(Object74Entity*);
bool32 sub_08097CB0(Object74Entity*);
void sub_08097CB4(Object74Entity*);

const Hitbox gUnk_08123328 = { 0, 0, { 4, 0, 0, 4 }, 18, 18 };

void Object74(Object74Entity* this) {
    static void (*const gUnk_08123330[])(Object74Entity*) = {
        sub_08097B84, sub_08097BDC, sub_08097C18, sub_08097C20, sub_08097C1C,
    };
    gUnk_08123330[super->action](this);
}

void sub_08097B84(Object74Entity* this) {
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

void sub_08097BDC(Object74Entity* this) {
    if (CheckFlags(this->unk_86)) {
        SetPlayerControl(CONTROL_1);
        gUnk_02034490.unk0 = 1;
        RequestPriorityDuration(super, 0x1e);
        if (sub_08097CB0(this) == FALSE) {
            sub_08097CB4(this);
        }
    }
}

void sub_08097C18(Object74Entity* this) {
}

void sub_08097C1C(Object74Entity* this) {
}

void sub_08097C20(Object74Entity* this) {
    u32 tmp;
    SetPriorityTimer(0x1e);
    sub_0800445C(super);
    CreateMagicSparkles(super->x.HALF.HI, super->y.HALF.HI, super->collisionLayer);
    if (--super->actionDelay == 0) {
        super->actionDelay = 8;
        tmp = ++super->field_0xf;
        gScreen.controls.alphaBlend = (((0x10 - tmp) * 0x100)) | tmp;
        if (gScreen.controls.alphaBlend == 0x10) {
            SetPlayerControl(CONTROL_ENABLED);
            gUnk_02034490.unk0 = 0;
            gScreen.controls.layerFXControl = 0;
            sub_08097CFC(this);
            super->action = 4;
            super->spriteRendering.alphaBlend = 0;
            SoundReq(SFX_SECRET);
            SetGlobalFlag(TINY_ENTRANCE);
        }
    }
}

bool32 sub_08097CB0(Object74Entity* this) {
    return FALSE;
}

void sub_08097CB4(Object74Entity* this) {
    super->action = 3;
    super->spriteSettings.draw = 1;
    super->spriteRendering.alphaBlend = 1;
    super->actionDelay = 0x1e;
    super->field_0xf = 0;
    gScreen.controls.layerFXControl = 0xf40;
    gScreen.controls.alphaBlend = 0x1000;
    SoundReq(SFX_14A);
}

void sub_08097CFC(Object74Entity* this) {
    static const u16 gUnk_08123344[] = { 16448, 65471, 16449, 65472, 16450, 65473, 16451, 65535, 16452, 0,
                                         16453, 1,     16454, 63,    16455, 64,    16456, 65,    65535 };
    static const u16 gUnk_0812336A[] = {
        16449, 65471, 16449, 65472, 16452, 65535, 16452, 0, 16455, 63, 16455, 64, 65535
    };
    if ((super->x.HALF.HI & 0xf) == 0) {
        SetMultipleTiles((u16*)gUnk_0812336A, COORD_TO_TILE(super), super->collisionLayer);
    } else {
        SetMultipleTiles((u16*)gUnk_08123344, COORD_TO_TILE(super), super->collisionLayer);
    }
}
