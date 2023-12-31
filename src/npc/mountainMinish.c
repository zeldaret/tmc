/**
 * @file mountainMinish.c
 * @ingroup NPCs
 *
 * @brief Mountain Minish NPC
 */
#include "entity.h"
#include "flags.h"
#include "functions.h"
#include "item.h"
#include "message.h"
#include "npc.h"
#include "script.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 fusionOffer;
    /*0x69*/ u8 animIndex;
} MountainMinishEntity;

const u8 gUnk_08111284[][0x20] = {
    { 0x8, 0x1,  0x9, 0x1,  0xa, 0x1,  0xb, 0x83, 0xc, 0x83, 0xd, 0x83, 0xe, 0x83, 0xf, 0x80,
      0,   0x80, 0x1, 0x80, 0x2, 0x82, 0x3, 0x82, 0x4, 0x82, 0x5, 0x82, 0x6, 0x1,  0x7, 0x1 },
    { 0x8, 0x81, 0x9, 0x81, 0xa, 0x3,  0xb, 0x3,  0xc, 0x3,  0xd, 0x3,  0xe, 0x3,  0xf, 0x80,
      0,   0x80, 0x1, 0x80, 0x2, 0x80, 0x3, 0x82, 0x4, 0x82, 0x5, 0x82, 0x6, 0x81, 0x7, 0x81 },
    { 0x8, 0x81, 0x9, 0x81, 0xa, 0x83, 0xb, 0x83, 0xc, 0x83, 0xd, 0x83, 0xe, 0x0,  0xf, 0x0,
      0,   0x0,  0x1, 0x0,  0x2, 0x0,  0x3, 0x82, 0x4, 0x82, 0x5, 0x82, 0x6, 0x82, 0x7, 0x81 },
    { 0x8, 0x81, 0x9, 0x81, 0xa, 0x81, 0xb, 0x83, 0xc, 0x83, 0xd, 0x83, 0xe, 0x80, 0xf, 0x80,
      0,   0x80, 0x1, 0x80, 0x2, 0x2,  0x3, 0x2,  0x4, 0x2,  0x5, 0x2,  0x6, 0x2,  0x7, 0x81 },
};

const u8 gUnk_08111304[] = {
    10, 10, 3, 1, 0, 0, 0, 0, 0, 0,
};

const u16 gUnk_0811130E[][4] = {
    { 0x120b, 0x120b, 0x120b, 0x120b }, { 0x120c, 0x120c, 0x120c, 0x120c }, { 0x120d, 0x120e, 0x120e, 0x121f },
    { 0x120f, 0x120f, 0x120f, 0x120f }, { 0x1210, 0x1211, 0x1216, 0x1225 }, { 0x1212, 0x1212, 0x1217, 0x1217 },
    { 0x1213, 0x1213, 0x1217, 0x1217 }, { 0x122b, 0x122b, 0x122b, 0x122b }, { 0x1231, 0x1231, 0x1231, 0x1231 },
};

const SpriteLoadData gUnk_08111358[] = {
    { 0xb4, 0x1b, 0x4 },
    { 0x30b4, 0x1b, 0x4 },
    { 0x60b4, 0x1c, 0x4 },
    { 0x0, 0x0, 0x0 },
};

void sub_08067EF0(MountainMinishEntity*);
void sub_08068190(Entity*);
void sub_08067E60(Entity*);
void sub_08067E88(Entity*);
void sub_08067EE8(Entity*);

void MountainMinish(MountainMinishEntity* this) {
    static void (*const MountainMinish_Actions[])(Entity*) = {
        sub_08067E60,
        sub_08067E88,
        sub_08067EE8,
    };
    if ((super->flags & ENT_SCRIPTED) == 0) {
        MountainMinish_Actions[super->action](super);
        sub_0806ED78(super);
    } else {
        sub_08067EF0(this);
    }
}

void sub_08067E60(Entity* this) {
    if (LoadExtraSpriteData(this, gUnk_08111358)) {
        this->action = 1;
        AddInteractableWhenBigObject(this);
        InitializeAnimation(this, 2);
    }
}

void sub_08067E88(Entity* this) {
    s32 tmp;

    tmp = GetAnimationStateInRectRadius(this, 0x28, 0x28);
    if (tmp < 0) {
        tmp = 2;
    } else {
        if (this->subtimer == 0) {
            this->subtimer = 16;
        } else {
            this->subtimer = this->subtimer - 1;
            tmp = this->animIndex;
        }
    }
    if (sub_0806F078(this, tmp) == 0) {
        GetNextFrame(this);
    }
    if (this->interactType != INTERACTION_NONE) {
        this->interactType = INTERACTION_NONE;
        this->action = 2;
        MessageFromTarget(this->timer + TEXT_INDEX(TEXT_MINISH2, 0x0));
    }
}

void sub_08067EE8(Entity* this) {
    this->action = 1;
}

void sub_08067EF0(MountainMinishEntity* this) {
    static const u16 gUnk_08111374[] = {
        SFX_HAMMER1,
        SFX_HAMMER2,
        SFX_HAMMER3,
    };

    static const u16 gUnk_0811137A[] = {
        SFX_HAMMER4,
        SFX_HAMMER5,
        SFX_HAMMER6,
    };
    Entity* fxEnt;

    switch (super->action) {
        case 0:
            if (!LoadExtraSpriteData(super, gUnk_08111358)) {
                return;
            }
            super->action = 1;
            super->spriteSettings.draw = 1;
            super->animationState = super->type;
            this->animIndex = 0;
            SetEntityPriority(super, 2);
            InitScriptForNPC(super);
            InitializeAnimation(super, gUnk_08111304[super->type2]);
            break;
        case 1:
            if (super->interactType == INTERACTION_FUSE) {
                super->action = 3;
                super->interactType = INTERACTION_NONE;
                this->animIndex = super->animIndex;
                InitializeAnimation(super,
                                    GetAnimationStateForDirection4(GetFacingDirection(super, &gPlayerEntity.base)));
                InitializeNPCFusion(super);
            } else {
                ExecuteScriptForEntity(super, 0);
                HandleEntity0x82Actions(super);
                if ((super->type2 == 3) && (super->interactType != INTERACTION_NONE)) {
                    super->action = 2;
                    super->interactType = INTERACTION_NONE;
                    InitializeAnimation(super,
                                        GetAnimationStateForDirection4(GetFacingDirection(super, &gPlayerEntity.base)));
                    sub_08068190(super);
                }
            }
            break;
        case 2:
            if ((gMessage.state & MESSAGE_ACTIVE) != 0)
                break;
            super->action = 1;
            InitializeAnimation(super, (super->animationState >> 1) + 4);
            break;
        case 3:
            if (UpdateFuseInteraction(super) != 0) {
                super->action = 1;
                InitializeAnimation(super, this->animIndex);
            }
    }

    if (super->frameDuration != 0xff) {
        GetNextFrame(super);
    }
    if ((super->frameSpriteSettings & 1) != 0) {
        super->frameSpriteSettings &= 0xfe;
        if (CheckOnScreen(super) == 0) {
            SoundReq(gUnk_0811137A[((s32)Random()) % 3]);
        } else {
            EnqueueSFX(gUnk_08111374[((s32)Random()) % 3]);
        }
    }
    if ((super->frameSpriteSettings & 2) != 0) {
        super->frameSpriteSettings &= ~2;
        fxEnt = CreateFx(super, FX_ROCK, 0);
        if (fxEnt != NULL) {
            PositionRelative(super, fxEnt, 0, Q_16_16(-24));
        }
    }
    if ((super->frameSpriteSettings & 4) != 0) {
        super->frameSpriteSettings &= 0xfb;
        fxEnt = CreateFx(super, FX_STARS2, 0x20);
        if (fxEnt != NULL) {
            PositionRelative(super, fxEnt, Q_16_16(-20), Q_16_16(-10));
        }
    }
    if ((super->frameSpriteSettings & 8) != 0) {
        super->frameSpriteSettings &= 0xf7;
        super->frameDuration += Random() & 0x1f;
    }
}

void MountainMinish_MakeInteractable(MountainMinishEntity* this) {
    this->fusionOffer = GetFusionToOffer(super);
    AddInteractableWhenBigFuser(super, this->fusionOffer);
}

void sub_0806811C(Entity* this) {
    u32 bVar1;
    u32 bVar2;
    int type;
    int iVar4;
    const u8* ptr;

    if (this->timer) {
        this->timer--;
    } else {
        this->timer = 2;
        iVar4 = GetFacingDirectionInRectRadius(this, 0x20, 0x20);
        if (iVar4 < 0) {
            type = this->type;
            this->animationState = type;
            iVar4 = type << 2;
        }
        ptr = &gUnk_08111284[(this->animationState >> 1)][(iVar4 >> 1) * 2];
        bVar1 = ptr[0];
        bVar2 = ptr[1];
        if ((bVar2 & 0x80) != 0) {
            this->animationState = GetAnimationStateForDirection8(iVar4);
        }
        this->frame = bVar1 | 0x40;
        this->frameIndex = bVar2 & 0x7f;
        this->animIndex = 0;
        this->frameDuration = 0xff;
    }
}

void sub_08068190(Entity* this) {
    u32 uVar2;
    u32 uVar3;

    uVar3 = this->type2;
    if (uVar3 > 8) {
        uVar3 = 8;
    }

    uVar2 = 0;
    if (CheckLocalFlag(OYAKATA_DEMO)) {
        uVar2 = 1;
    }
    if (GetInventoryValue(ITEM_FIRE_ELEMENT) != 0) {
        uVar2 = 2;
    }
    if (GetInventoryValue(ITEM_GREEN_SWORD) != 0) {
        uVar2 = 3;
    }

    MessageNoOverlap(gUnk_0811130E[uVar3][uVar2], this);
}

void sub_080681D8(Entity* this, ScriptExecutionContext* context) {
    this->type = context->intVariable;
}

void MountainMinish_Head(Entity* this) {
    u32 bVar1;

    bVar1 = this->frame & -0x81;
    SetExtraSpriteFrame(this, 1, this->frameIndex);
    if ((bVar1 & 0x40)) {
        SetExtraSpriteFrame(this, 0, (bVar1 & -0xe1) + 4);
        SetExtraSpriteFrame(this, 2, 0xff);
        SetSpriteSubEntryOffsetData1(this, 1, 0);
    } else {
        if ((bVar1 & 0x20)) {
            SetExtraSpriteFrame(this, 0, 0xff);
            SetExtraSpriteFrame(this, 2, bVar1 & -0xe1);
            SetSpriteSubEntryOffsetData1(this, 1, 2);
        } else {
            SetExtraSpriteFrame(this, 0, 0xff);
            SetExtraSpriteFrame(this, 2, 0xff);
        }
    }
    sub_0807000C(this);
}

void MountainMinish_Fusion(Entity* this) {
    if (this->action == 0) {
        if (LoadExtraSpriteData(this, gUnk_08111358)) {
            this->action++;
            this->spriteSettings.draw = 1;
            InitializeAnimation(this, 6);
        }
    } else {
        GetNextFrame(this);
    }
}
