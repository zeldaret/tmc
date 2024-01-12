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
#include "room.h"
#include "sound.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[8];
    /*0x70*/ u16* unk_70;
    /*0x74*/ u16 unk_74;
    /*0x76*/ u16 unk_76;
    /*0x78*/ u16 unk_78;
    /*0x7a*/ u16 unk_7a;
    /*0x7c*/ union SplitHWord unk_7c;
    /*0x7e*/ u8 unused2[8];
    /*0x86*/ u16 unk_86;
} RailtrackEntity;

void sub_08085394(RailtrackEntity* this);
void sub_0808543C(RailtrackEntity* this);
void Railtrack_Init(RailtrackEntity* this);
void Railtrack_Action1(RailtrackEntity* this);
void Railtrack_Action2(RailtrackEntity* this);
void Railtrack_Action3(RailtrackEntity* this);
u32 sub_080854A8(RailtrackEntity* this);

extern s8 gUnk_080B4488[][2];

void Railtrack(RailtrackEntity* this) {
    static void (*const Railtrack_Actions[])(RailtrackEntity*) = {
        Railtrack_Init,
        Railtrack_Action1,
        Railtrack_Action2,
        Railtrack_Action3,
    };
    Railtrack_Actions[super->action](this);
}

void Railtrack_Init(RailtrackEntity* this) {
    u32 uVar1;

    super->action = 1;
    super->spriteSettings.draw = 1;
    super->spritePriority.b0 = 7;
    if ((super->type2 & 1) != 0) {
        this->unk_7c.HWORD = -1;
    } else {
        this->unk_7c.HWORD = 1;
    }
    super->animationState = super->type2 & 2;
    if (super->type == 3) {
        uVar1 = CheckFlags(this->unk_86);
        this->unk_7a = uVar1;
        if ((u16)(uVar1 & -1) != 0) {
            super->animationState = (super->animationState + 2) & 3;
            super->action = 3;
        }
    }
    InitializeAnimation(super, super->animationState);
    this->unk_70 = &GetLayerByIndex(super->collisionLayer)->mapData[COORD_TO_TILE(super)];
    sub_08085394(this);
}

void Railtrack_Action1(RailtrackEntity* this) {
    if (CheckFlags(this->unk_86)) {
        super->action = 2;
        super->subtimer = 8;
        if (super->type == 1) {
            ClearFlag(this->unk_86);
        }
        super->animationState = (super->animationState + this->unk_7c.HALF.LO) & 3;
        InitializeAnimation(super, super->animationState);
        sub_0808543C(this);
        EnqueueSFX(SFX_151);
    }
}

void Railtrack_Action2(RailtrackEntity* this) {
    if (--super->subtimer == 0) {
        super->action = 3;
        super->subtimer = super->timer;
        this->unk_7a = CheckFlags(this->unk_86);
        super->animationState = (super->animationState + this->unk_7c.HALF.LO) & 3;
        InitializeAnimation(super, super->animationState);
        sub_08085394(this);
        EnqueueSFX(SFX_151);
    }
}

void Railtrack_Action3(RailtrackEntity* this) {
    if (sub_080854A8(this) == 0) {
        switch (super->type) {
            case 0:
            case 1:
                break;
            case 2:
                if (CheckFlags(this->unk_86) == 0) {
                    super->action = 1;
                    return;
                }
                break;
            case 3:
                if (CheckFlags(this->unk_86) == this->unk_7a) {
                    super->subtimer = 255;
                } else {
                    super->subtimer = 1;
                }
        }

        if (--super->subtimer == 0) {
            super->action = 2;
            super->subtimer = 8;
            super->animationState = (super->animationState + this->unk_7c.HALF.LO) & 3;
            InitializeAnimation(super, super->animationState);
            sub_0808543C(this);
            EnqueueSFX(SFX_151);
        }
    }
}

static const u16 gUnk_081205E0[] = { SPECIAL_TILE_24, SPECIAL_TILE_25 };

void sub_08085394(RailtrackEntity* this) {
    u32 specialTile;
    u16* layerData;
    u32 tilePos;
    s8 offsetset;

    specialTile = gUnk_081205E0[super->animationState / 2];
    offsetset = gUnk_080B4488[super->animationState / 2][0];
    layerData = this->unk_70;
    tilePos = COORD_TO_TILE(super);

    this->unk_74 = *(layerData - offsetset);
    SetTile(specialTile, tilePos - offsetset, super->collisionLayer);

    this->unk_76 = layerData[0x0];
    SetTile(specialTile, tilePos, super->collisionLayer);

    this->unk_78 = layerData[offsetset];
    SetTile(specialTile, tilePos + offsetset, super->collisionLayer);
}

void sub_0808543C(RailtrackEntity* this) {
    s8* cVar1;
    u32 tilePos;
    s8 offset;

    offset = gUnk_080B4488[super->animationState / 2][0];
    tilePos = COORD_TO_TILE(super);
    SetTile(this->unk_74, tilePos - offset, super->collisionLayer);
    SetTile(this->unk_76, tilePos, super->collisionLayer);
    SetTile(this->unk_78, tilePos + offset, super->collisionLayer);
}

u32 sub_080854A8(RailtrackEntity* this) {
    u16 var0;
    u16* var1;
    s8* var2;

    var0 = gUnk_081205E0[super->animationState / 2];
    var2 = gUnk_080B4488[super->animationState / 2];
    var1 = this->unk_70;
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
