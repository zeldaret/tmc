/**
 * @file townsperson.c
 * @ingroup NPCs
 *
 * @brief Townsperson NPC
 */
#include "functions.h"
#include "item.h"
#include "npc.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 fusionOffer;
    /*0x69*/ u8 unk_69;
    /*0x6a*/ s16 unk_6a;
    /*0x6c*/ s16 unk_6c;
} TownspersonEntity;

typedef struct {
    u8 frame1;
    u8 frame2;
    u8 unk2;
    u8 unk3;
} struct_0810B680;

extern void sub_08061CB4(Entity*, u32);
extern void sub_08061D64(TownspersonEntity*);
extern void sub_08062048(Entity*);

extern struct_0810B680 gUnk_0810B680[];
extern SpriteLoadData* gUnk_0810B6EC[];
extern u32 gUnk_0810B740[]; // TODO fourth parameter of SetInteractableObjectCollision
extern u8 gUnk_0810B748[];  // TODO third parameter of SetInteractableObjectCollision
extern u16 gUnk_0810B74A[];
extern void (*const gUnk_0810B774[])(Entity*);
extern void (*const gUnk_0810B77C[])(Entity*);
extern u8 gUnk_0810B78C[];
extern u16 gUnk_0810B790[];
extern u16 gUnk_0810B7BA[];
extern Dialog gUnk_0810B7C0[];

void Townsperson(Entity* this) {
    if ((this->flags & ENT_SCRIPTED) != 0) {
        gUnk_0810B77C[this->action](this);
    } else {
        gUnk_0810B774[this->action](this);
    }
}

void sub_08061BC8(Entity* this) {
    if (LoadExtraSpriteData(this, gUnk_0810B6EC[this->type])) {
        this->animationState = 2;
        this->subtimer = this->type + 1;
        this->action++;
        sub_08061CB4(this, 2);
    }
}

void sub_08061C00(Entity* this) {
    s32 uVar1;

    uVar1 = GetAnimationStateInRectRadius(this, 0x20, 0x20);
    if (uVar1 < 0) {
        uVar1 = this->animationState + 4;
    } else {
        if (this->subtimer == 0) {
            this->subtimer = 16;
        } else {
            this->subtimer--;
            uVar1 = this->animIndex & 3;
        }
    }
    sub_08061CB4(this, uVar1);
    sub_0806ED78(this);
    if (this->interactType != INTERACTION_NONE) {
        this->interactType = INTERACTION_NONE;
        MessageFromTarget(this->type2 + TEXT_INDEX(TEXT_EMPTY, 0x01));
    }
}

void Townsperson_Head(Entity* this) {
    u32 tmp = this->animIndex & 3;
    u32 tmp2 = gUnk_0810B78C[tmp];
    u32 tmp3;
    tmp3 = tmp2 + (tmp3 = gUnk_0810B680[this->type].frame1);
    SetExtraSpriteFrame(this, 0, tmp3);
    tmp3 = this->frameIndex;
    tmp3 += gUnk_0810B680[this->type].frame2;
    SetExtraSpriteFrame(this, 1, tmp3);
    SetSpriteSubEntryOffsetData1(this, 1, 0);
    sub_0807000C(this);
}

void sub_08061CB4(Entity* this, u32 arg1) {
    if (this->animIndex != arg1) {
        InitializeAnimation(this, arg1);
    } else {
        GetNextFrame(this);
    }
    if (this->frameDuration == 0xff) {
        this->frameDuration = gUnk_0810B680[this->type].unk2;
    }
}

void sub_08061CEC(TownspersonEntity* this) {
    u32 uVar2;

    if (LoadExtraSpriteData(super, gUnk_0810B6EC[super->type])) {
        super->action = 1;
        super->spriteSettings.draw = TRUE;
        super->animationState = super->timer;
        this->unk_69 = 0xff;
        uVar2 = sub_0805ACC0(super);
        if (uVar2 == 0) {
            this->unk_6a = super->x.HALF.HI;
            uVar2 = (u16)super->y.HALF.HI;
        } else {
            this->unk_6a = (uVar2 >> 0x10);
        }
        this->unk_6c = uVar2;
        this->fusionOffer = GetFusionToOffer(super);
        sub_0807DD64(super);
        sub_08061D64(this);
    }
}

void sub_08061D64(TownspersonEntity* this) {
    if (super->interactType == INTERACTION_FUSE) {
        super->action = 3;
        super->interactType = INTERACTION_NONE;
        InitializeNPCFusion(super);
        this->unk_69 = super->animIndex;
        InitializeAnimation(super, (super->animIndex & -4) +
                                       GetAnimationStateForDirection4(GetFacingDirection(super, &gPlayerEntity.base)));
    } else {
        ExecuteScriptForEntity(super, NULL);
        HandleEntity0x82Actions(super);
        if (super->frameDuration == 0xff) {
            super->frameDuration = gUnk_0810B680[super->type].unk2;
        }
        GetNextFrame(super);
        if (super->interactType != INTERACTION_NONE) {
            super->action = 2;
            super->interactType = INTERACTION_NONE;
            sub_08062048(super);
            this->unk_69 = super->animIndex;
            InitializeAnimation(super, (super->animIndex & -4) + GetAnimationStateForDirection4(
                                                                     GetFacingDirection(super, &gPlayerEntity.base)));
        }
    }
}

void sub_08061E24(TownspersonEntity* this) {
    GetNextFrame(super);
    if ((gMessage.state & MESSAGE_ACTIVE) == 0) {
        super->action = 1;
        InitializeAnimation(super, this->unk_69);
    }
}

void sub_08061E50(TownspersonEntity* this) {

    if (UpdateFuseInteraction(super) != 0) {
        super->action = 1;
        InitializeAnimation(super, this->unk_69);
    }
}

void Townsperson_MakeInteractable(TownspersonEntity* this) {
    if (super->id == 6) {
        AddInteractableWhenBigFuser(super, this->fusionOffer);
    } else {
        AddInteractableWhenBigObject(super);
    }
}

void sub_08061E90(TownspersonEntity* this, ScriptExecutionContext* context) {
    u32 animIndex;
    s32 iVar4;

    if (context->unk_18 == 0) {
        context->unk_18++;
        context->unk_12 = (Random() & 0x3f) + 0x20;
        animIndex = DirectionRound(Random());
        switch (super->direction) {
            case 0x0:
                if (animIndex == 0x10) {
                    animIndex = 0x8;
                }
                break;
            case 0x8:
                if (animIndex == 0x18) {
                    animIndex = 0x10;
                }
                break;
            case 0x10:
                if (animIndex == 0x0) {
                    animIndex = 0x18;
                }
                break;
            case 0x18:
                if (animIndex == 0x8) {
                    animIndex = 0;
                }
        }
        super->direction = (u8)animIndex;
        super->animationState = GetAnimationStateForDirection8(animIndex);
        super->speed = gUnk_0810B74A[super->type];
    }
    animIndex = (super->animationState >> 1) + 4;
    if (animIndex != super->animIndex) {
        InitializeAnimation(super, animIndex);
    }
    ProcessMovement0(super);
    iVar4 = super->x.HALF.HI - this->unk_6a;
    if (0x10 < iVar4) {
        super->x.HALF.HI = this->unk_6a + 0x10;
        context->unk_12 = 1;
    }
    if (iVar4 < -0x10) {
        super->x.HALF.HI = this->unk_6a - 0x10;
        context->unk_12 = 1;
    }

    iVar4 = super->y.HALF.HI - this->unk_6c;
    if (0x10 < iVar4) {
        super->y.HALF.HI = this->unk_6c + 0x10;
        context->unk_12 = 1;
    }
    if (iVar4 < -0x10) {
        super->y.HALF.HI = this->unk_6c - 0x10;
        context->unk_12 = 1;
    }
    if (--context->unk_12 != 0) {
        gActiveScriptInfo.commandSize = 0;
    }
}

void sub_08061F94(Entity* this) {
    Entity* ent;

    ent = CreateFx(this, FX_BIG_EXPLOSION, 0);
    if (ent != NULL) {
        SortEntityAbove(this, ent);
    }
}

void sub_08061FB0(Entity* this) {
    this->hitbox = NULL;
}

void sub_08061FB8(Entity* this, ScriptExecutionContext* context) {
    u8* temp = gUnk_0810B748;

    SetInteractableObjectCollision(this, 1, temp[context->intVariable], &gUnk_0810B740[context->intVariable]);
}

void sub_08061FD8(Entity* this) {
    InitializeAnimation(this, this->animationState >> 1);
}

void sub_08061FE4(Entity* this) {
    InitializeAnimation(this, (this->animationState >> 1) + 4);
}

void sub_08061FF4(Entity* this) {
    MessageNoOverlap(gUnk_0810B790[this->type], this);
}

void sub_0806200C(Entity* this) {
    u32 index;

    index = 0;
    if ((CheckGlobalFlag(MIZUKAKI_START) != 0) && (CheckLocalFlag(0x6b))) {

        // hyrule bestiary
        if (GetInventoryValue(ITEM_QST_BOOK1) == 2) {
            index = 2;
        } else {
            index = 1;
        }
    }
    MessageNoOverlap(gUnk_0810B7BA[index], this);
}

void sub_08062048(Entity* this) {
    int iVar1;

    if (this->id == 6) {
        iVar1 = gSave.global_progress - 2;
        if (iVar1 < 0) {
            iVar1 = 0;
        }
        ShowNPCDialogue(this, gUnk_0810B7C0 + this->type * 0x8 + iVar1);
    } else {
        MessageNoOverlap(0, this);
    }
}

void Townsperson_Fusion(Entity* this) {
    if (this->action == 0) {
        if (!LoadExtraSpriteData(this, gUnk_0810B6EC[this->type])) {
            return;
        }
        this->action++;
        this->spriteSettings.draw = TRUE;
    }
    sub_08061CB4(this, 6);
}
