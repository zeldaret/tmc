#include "npc.h"
#include "functions.h"

extern void (*SittingPersion_Actions[])(Entity*);

extern Dialog gUnk_0810CC08[];

extern SpriteLoadData gUnk_0810CB78[];
extern u8 gUnk_02002B0E[];
extern u16 gUnk_0810CC04[];
extern u8 gUnk_02002B0E[];
extern u16 gUnk_0810CBE4[][4];
extern u8 gUnk_0810CBC0[];
extern u8 gUnk_0810CD88[][4];

extern void sub_08096208(Entity*, u32);
void sub_080637B8(Entity* this);

void SittingPerson(Entity* this) {
    SittingPersion_Actions[this->action](this);
}

void SittingPersion_Init(Entity* this) {
    if (LoadExtraSpriteData(this, &gUnk_0810CB78[this->type * 3])) {
        this->action = 1;
        this->spriteSettings.flipX = this->timer;

        if (this->spriteSettings.flipX == 0) {
            this->animationState = 6;
        } else {
            this->animationState = 2;
        }

        this->timer = this->animationState;
        this->field_0x68.HALF.HI = 0;
        sub_0807DD50(this);
        sub_080637B8(this);
    }
}

void sub_080637B8(Entity* this) {
    u32 tmp;

    if (this->interactType == 2) {
        this->action = 2;
        this->interactType = 0;
        this->field_0x68.HALF.HI = this->animIndex;
        tmp = sub_0806F5A4(GetFacingDirection(this, &gPlayerEntity));
        tmp += this->spriteSettings.flipX ? 4 : 0;
        InitializeAnimation(this, tmp);
        sub_0806F118(this);
    } else {
        ExecuteScriptForEntity(this, NULL);
        HandleEntity0x82Actions(this);
        if (this->frameDuration == 0xfe) {
            this->frameDuration = (Random() & 0x1f) + 0x1e;
        }
        GetNextFrame(this);
    }
}

void sub_08063830(Entity* this) {
    if (UpdateFuseInteraction(this) != 0) {
        this->action = 1;
        InitializeAnimation(this, this->field_0x68.HALF.HI);
    }
}

void sub_08063850(Entity* this, ScriptExecutionContext* context) {
    u32 offset = 0;
    if (this->spriteSettings.flipX) {
        offset = 4;
    }
    InitializeAnimation(this, context->intVariable + offset + (this->animationState >> 1));
}

void sub_08063874(Entity* this) {
    this->animationState = this->timer;
}

#if defined(EU) || defined(DEMO_JP) || defined(JP)
#define SUB_0806387C_FLAG 0xd7
#define SUB_0806387C_FLAG2 0xce
#define SUB_0806390C_FLAG 0xd6
#else
#define SUB_0806387C_FLAG 0xda
#define SUB_0806387C_FLAG2 0xd1
#define SUB_0806390C_FLAG 0xd9
#endif

void sub_0806387C(Entity* this) {
    s32 r4 = 3;
    s32 r5;
    s32 val, val2;
    u16* ptr;
    if (CheckLocalFlag(SUB_0806387C_FLAG) == 0) {
        r4 = 0;
        SetLocalFlag(SUB_0806387C_FLAG);
    } else {
        if (CheckLocalFlag(SUB_0806387C_FLAG2) == 0) {
            r5 = 0;
            for (r4 = 1; r4 <= 0x82; r4++) {
                if (ReadBit(gUnk_02002B0E, r4)) {
                    r5++;
                }
            }

            r4 = 1;
            if (r5 > 0x81) {
                r4 = 2;
                SetLocalFlag(SUB_0806387C_FLAG2);
                RestorePrevTileEntity(0xa17, 1);
                RestorePrevTileEntity(0xa57, 1);
            }
        }
    }

    val = gSave.global_progress - 6;
    if (val < 0) {
        val = 0;
    }

    MessageNoOverlap(gUnk_0810CBE4[val][r4], this);
}

void sub_0806390C(Entity* this) {
    u32 r5 = 1;
    if (CheckLocalFlag(SUB_0806390C_FLAG) == 0) {
        r5 = 0;
        SetLocalFlag(SUB_0806390C_FLAG);
        (*(u32**)&this->cutsceneBeh)[0x5] = 1;
    }

    MessageNoOverlap(gUnk_0810CC04[r5], this);
}

void SittingPersion_ShowDialogue(Entity* this, ScriptExecutionContext* context) {
    s32 tmp;

    context->condition = 0;
    tmp = gSave.global_progress - 2;
    if (tmp < 0) {
        tmp = 0;
    }
    ShowNPCDialogue(this, gUnk_0810CC08 + this->type2 * 8 + tmp);
}

void SittingPerson_Head(Entity* this) {
    u8* ptr = &gUnk_0810CBC0[this->type * 4];
    SetExtraSpriteFrame(this, 0, *ptr + (this->frame & 0xf));
    SetExtraSpriteFrame(this, 1, gUnk_0810CD88[this->type][this->frameIndex & 3] + *(ptr + 1));
    SetSpriteSubEntryOffsetData1(this, 1, 0);
    sub_0807000C(this);
}

void sub_080639D0(Entity* this) {
    this->field_0x68.HALF.LO = sub_0801E99C(this);
    sub_08078784(this, this->field_0x68.HALF.LO);
}

void SittingPerson_Fusion(Entity* this) {
    if (this->action == 0) {
        if (LoadExtraSpriteData(this, &gUnk_0810CB78[this->type * 3]) != 0) {
            this->action += 1;
            this->spriteSettings.draw = 1;
            this->spriteSettings.flipX = 0;
            this->y.HALF.HI -= 4;
            InitializeAnimation(this, 2);
            sub_08096208(this, this->type);
        }
    } else {
        if (this->frameDuration == 0xfe) {
            this->frameDuration = (Random() & 0x1f) + 0x1e;
        }
        GetNextFrame(this);
    }
}
