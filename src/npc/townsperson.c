#include "npc.h"
#include "functions.h"
#include "item.h"

typedef struct {
    u8 frame1;
    u8 frame2;
    u8 unk2;
    u8 unk3;
} struct_0810B680;

extern void sub_08061CB4(Entity*, u32);
extern void sub_08061D64(Entity*);
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
    if (this->interactType != 0) {
        this->interactType = 0;
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

void sub_08061CEC(Entity* this) {
    u32 uVar2;

    if (LoadExtraSpriteData(this, gUnk_0810B6EC[this->type])) {
        this->action = 1;
        this->spriteSettings.draw = TRUE;
        this->animationState = this->timer;
        this->field_0x68.HALF.HI = 0xff;
        uVar2 = sub_0805ACC0(this);
        if (uVar2 == 0) {
            this->field_0x6a.HWORD = this->x.HALF.HI;
            uVar2 = (u16)this->y.HALF.HI;
        } else {
            this->field_0x6a.HWORD = (uVar2 >> 0x10);
        }
        *(u16*)&this->field_0x6c = uVar2;
        this->field_0x68.HALF.LO = GetFusionToOffer(this);
        sub_0807DD64(this);
        sub_08061D64(this);
    }
}

void sub_08061D64(Entity* this) {
    if (this->interactType == 2) {
        this->action = 3;
        this->interactType = 0;
        sub_0806F118(this);
        this->field_0x68.HALF.HI = this->animIndex;
        InitializeAnimation(this, (this->animIndex & -4) + sub_0806F5A4(GetFacingDirection(this, &gPlayerEntity)));
    } else {
        ExecuteScriptForEntity(this, NULL);
        HandleEntity0x82Actions(this);
        if (this->frameDuration == 0xff) {
            this->frameDuration = gUnk_0810B680[this->type].unk2;
        }
        GetNextFrame(this);
        if (this->interactType != 0) {
            this->action = 2;
            this->interactType = 0;
            sub_08062048(this);
            this->field_0x68.HALF.HI = this->animIndex;
            InitializeAnimation(this, (this->animIndex & -4) + sub_0806F5A4(GetFacingDirection(this, &gPlayerEntity)));
        }
    }
}

void sub_08061E24(Entity* this) {
    GetNextFrame(this);
    if ((gMessage.doTextBox & 0x7f) == 0) {
        this->action = 1;
        InitializeAnimation(this, this->field_0x68.HALF.HI);
    }
}

void sub_08061E50(Entity* this) {

    if (UpdateFuseInteraction(this) != 0) {
        this->action = 1;
        InitializeAnimation(this, this->field_0x68.HALF.HI);
    }
}

void Townsperson_MakeInteractable(Entity* this) {
    if (this->id == 6) {
        AddInteractableWhenBigFuser(this, this->field_0x68.HALF.LO);
    } else {
        AddInteractableWhenBigObject(this);
    }
}

void sub_08061E90(Entity* this, ScriptExecutionContext* context) {
    u32 animIndex;
    s32 iVar4;

    if (context->unk_18 == 0) {
        context->unk_18++;
        context->unk_12 = (Random() & 0x3f) + 0x20;
        animIndex = DirectionRound(Random());
        switch (this->direction) {
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
        this->direction = (u8)animIndex;
        this->animationState = sub_0806F5B0(animIndex);
        this->speed = gUnk_0810B74A[this->type];
    }
    animIndex = (this->animationState >> 1) + 4;
    if (animIndex != this->animIndex) {
        InitializeAnimation(this, animIndex);
    }
    ProcessMovement0(this);
    iVar4 = this->x.HALF.HI - *(s16*)&this->field_0x6a.HWORD;
    if (0x10 < iVar4) {
        this->x.HALF.HI = this->field_0x6a.HWORD + 0x10;
        context->unk_12 = 1;
    }
    if (iVar4 < -0x10) {
        this->x.HALF.HI = *(s16*)&this->field_0x6a.HWORD - 0x10;
        context->unk_12 = 1;
    }

    iVar4 = this->y.HALF.HI - *(s16*)&this->field_0x6c;
    if (0x10 < iVar4) {
        this->y.HALF.HI = *(s16*)&this->field_0x6c + 0x10;
        context->unk_12 = 1;
    }
    if (iVar4 < -0x10) {
        this->y.HALF.HI = *(s16*)&this->field_0x6c - 0x10;
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
