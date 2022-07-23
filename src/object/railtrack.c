/**
 * @file railtrack.c
 * @ingroup Objects
 *
 * @brief Railtrack object
 */
#include "asm.h"
#include "entity.h"
#include "flags.h"
#include "functions.h"
#include "global.h"
#include "room.h"
#include "sound.h"

void sub_08085394(Entity*);
void sub_0808543C(Entity*);
void Railtrack_Init(Entity*);
void Railtrack_Action1(Entity*);
void Railtrack_Action2(Entity*);
void Railtrack_Action3(Entity*);
u32 sub_080854A8(Entity*);

extern s8 gUnk_080B4488[][2];

void Railtrack(Entity* this) {
    static void (*const Railtrack_Actions[])(Entity*) = {
        Railtrack_Init,
        Railtrack_Action1,
        Railtrack_Action2,
        Railtrack_Action3,
    };
    Railtrack_Actions[this->action](this);
}

void Railtrack_Init(Entity* this) {
    u32 uVar1;

    this->action = 1;
    this->spriteSettings.draw = 1;
    this->spritePriority.b0 = 7;
    if ((this->type2 & 1) != 0) {
        this->field_0x7c.HALF.LO = -1;
    } else {
        this->field_0x7c.HALF.LO = 1;
    }
    this->animationState = this->type2 & 2;
    if (this->type == 3) {
        uVar1 = CheckFlags(this->field_0x86.HWORD);
        this->field_0x7a.HWORD = uVar1;
        if ((u16)(uVar1 & -1) != 0) {
            this->animationState = (this->animationState + 2) & 3;
            this->action = 3;
        }
    }
    InitializeAnimation(this, this->animationState);
    this->field_0x70.WORD = (u32)&GetLayerByIndex(this->collisionLayer)->mapData[COORD_TO_TILE(this)];
    sub_08085394(this);
}

void Railtrack_Action1(Entity* this) {
    if (CheckFlags(this->field_0x86.HWORD)) {
        this->action = 2;
        this->subtimer = 8;
        if (this->type == 1) {
            ClearFlag(this->field_0x86.HWORD);
        }
        this->animationState = (this->animationState + *(u8*)&this->field_0x7c) & 3;
        InitializeAnimation(this, this->animationState);
        sub_0808543C(this);
        EnqueueSFX(SFX_151);
    }
}

void Railtrack_Action2(Entity* this) {
    if (--this->subtimer == 0) {
        this->action = 3;
        this->subtimer = this->timer;
        this->field_0x7a.HWORD = CheckFlags(this->field_0x86.HWORD);
        this->animationState = (this->animationState + *(u8*)&this->field_0x7c) & 3;
        InitializeAnimation(this, this->animationState);
        sub_08085394(this);
        EnqueueSFX(SFX_151);
    }
}

void Railtrack_Action3(Entity* this) {
    if (sub_080854A8(this) == 0) {
        switch (this->type) {
            case 0:
            case 1:
                break;
            case 2:
                if (CheckFlags(this->field_0x86.HWORD) == 0) {
                    this->action = 1;
                    return;
                }
                break;
            case 3:
                if (CheckFlags(this->field_0x86.HWORD) == *(u16*)&this->field_0x7a) {
                    this->subtimer = 255;
                } else {
                    this->subtimer = 1;
                }
        }

        if (--this->subtimer == 0) {
            this->action = 2;
            this->subtimer = 8;
            this->animationState = (this->animationState + *(u8*)&this->field_0x7c) & 3;
            InitializeAnimation(this, this->animationState);
            sub_0808543C(this);
            EnqueueSFX(SFX_151);
        }
    }
}

static const u16 gUnk_081205E0[] = { 0x4018, 0x4019 };

void sub_08085394(Entity* this) {
    u32 uVar1;
    u16* layerData;
    u32 tile;
    s8 off;

    uVar1 = gUnk_081205E0[this->animationState / 2];
    off = gUnk_080B4488[this->animationState / 2][0];
    layerData = (u16*)this->field_0x70.WORD;
    tile = COORD_TO_TILE(this);

    this->field_0x74.HWORD = *(layerData - off);
    SetTile(uVar1, tile - off, this->collisionLayer);

    this->field_0x76.HWORD = layerData[0x0];
    SetTile(uVar1, tile - 0x0, this->collisionLayer);

    this->field_0x78.HWORD = layerData[off];
    SetTile(uVar1, tile + off, this->collisionLayer);
}

void sub_0808543C(Entity* this) {
    s8* cVar1;
    u32 uVar2;
    s8 temp;

    temp = gUnk_080B4488[this->animationState / 2][0];
    uVar2 = COORD_TO_TILE(this);
    SetTile(this->field_0x74.HWORD, uVar2 - temp, this->collisionLayer);
    SetTile(this->field_0x76.HWORD, uVar2, this->collisionLayer);
    SetTile(this->field_0x78.HWORD, uVar2 + temp, this->collisionLayer);
}

u32 sub_080854A8(Entity* this) {
    u16 var0;
    u16* var1;
    s8* var2;

    var0 = gUnk_081205E0[this->animationState / 2];
    var2 = gUnk_080B4488[this->animationState / 2];
    var1 = (u16*)this->field_0x70.WORD;
    if (var0 != *(var1 - var2[0])) {
        return TRUE;
    }
    if (var0 != *var1) {
        return TRUE;
    }
    if (var0 != *(var1 + var2[0])) {
        return TRUE;
    }

    return FALSE;
}
