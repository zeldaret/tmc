/**
 * @file sittingPerson.c
 * @ingroup NPCs
 *
 * @brief Sitting Person NPC
 */
#include "npc.h"
#include "functions.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 fusionOffer;
    /*0x69*/ u8 animIndex;
    /*0x6a*/ u8 unused[26];
    /*0x84*/ u32* unk_84;
} SittingPersonEntity;

const SpriteLoadData gUnk_0810CB78[] = {
    { 63, 61, 4 }, { 8255, 61, 4 }, { 0, 0, 0 }, { 62, 61, 4 }, { 8255, 61, 4 }, { 0, 0, 0 },
    { 64, 61, 4 }, { 8254, 61, 4 }, { 0, 0, 0 }, { 64, 61, 4 }, { 8256, 61, 4 }, { 0, 0, 0 },
    { 64, 61, 4 }, { 8255, 61, 4 }, { 0, 0, 0 }, { 62, 61, 4 }, { 8255, 61, 4 }, { 0, 0, 0 },
};
const FrameStruct gUnk_0810CBC0[] = {
    { 4, 0 },  { 0, 0 }, { 12, 0 }, { 0, 0 }, { 20, 0 }, { 0, 0 },
    { 28, 1 }, { 0, 0 }, { 36, 1 }, { 0, 0 }, { 44, 0 }, { 0, 0 },
};
void SittingPersion_Init(SittingPersonEntity*);
void sub_080637B8(SittingPersonEntity*);
void sub_08063830(SittingPersonEntity*);
void (*const SittingPersion_Actions[])(SittingPersonEntity*) = {
    SittingPersion_Init,
    sub_080637B8,
    sub_08063830,
};

const u16 gUnk_0810CBE4[][4] = { {
                                     TEXT_INDEX(TEXT_TOWN4, 0x2f),
                                     TEXT_INDEX(TEXT_TOWN4, 0x30),
                                     TEXT_INDEX(TEXT_TOWN4, 0x31),
                                     TEXT_INDEX(TEXT_TOWN4, 0x32),
                                 },
                                 {
                                     TEXT_INDEX(TEXT_TOWN5, 0x2f),
                                     TEXT_INDEX(TEXT_TOWN5, 0x30),
                                     TEXT_INDEX(TEXT_TOWN5, 0x31),
                                     TEXT_INDEX(TEXT_TOWN5, 0x32),
                                 },
                                 {
                                     TEXT_INDEX(TEXT_TOWN6, 0x28),
                                     TEXT_INDEX(TEXT_TOWN6, 0x29),
                                     TEXT_INDEX(TEXT_TOWN6, 0x2a),
                                     TEXT_INDEX(TEXT_TOWN6, 0x2b),
                                 },
                                 {
                                     TEXT_INDEX(TEXT_TOWN7, 0xe),
                                     TEXT_INDEX(TEXT_TOWN7, 0xf),
                                     TEXT_INDEX(TEXT_TOWN7, 0x10),
                                     TEXT_INDEX(TEXT_TOWN7, 0x11),
                                 } };

const u16 gUnk_0810CC04[] = {
    TEXT_INDEX(TEXT_TOWN5, 0x37),
    TEXT_INDEX(TEXT_TOWN5, 0x38),
};

void sub_0806387C(Entity*);
void sub_0806390C(Entity*);
const Dialog gUnk_0810CC08[] = {
    { 2, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_CAFE, 0x5), TEXT_INDEX(TEXT_CAFE, 0x4) } },
    { 2, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_CAFE, 0x5), TEXT_INDEX(TEXT_CAFE, 0x4) } },
    { 2, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_CAFE, 0xf), TEXT_INDEX(TEXT_CAFE, 0xe) } },
    { 2, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_CAFE, 0x1d), TEXT_INDEX(TEXT_CAFE, 0x1c) } },
    { 2, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_CAFE, 0x29), TEXT_INDEX(TEXT_CAFE, 0x28) } },
    { 2, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_CAFE, 0x35), TEXT_INDEX(TEXT_CAFE, 0x34) } },
    { 2, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_CAFE, 0x41), TEXT_INDEX(TEXT_CAFE, 0x40) } },
    { 2, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_CAFE, 0x4b), TEXT_INDEX(TEXT_CAFE, 0x4a) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_CAFE, 0x8) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_CAFE, 0x8) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_CAFE, 0x12) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_CAFE, 0x20) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_CAFE, 0x2c) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_CAFE, 0x38) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_CAFE, 0x44) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_CAFE, 0x4e) } },
    { 0, 0, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_HAPPY_HEARTH, 0xf), TEXT_INDEX(TEXT_HAPPY_HEARTH, 0xe) } },
    { 0, 0, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_HAPPY_HEARTH, 0xf), TEXT_INDEX(TEXT_HAPPY_HEARTH, 0xe) } },
    { 0, 0, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_HAPPY_HEARTH, 0xf), TEXT_INDEX(TEXT_HAPPY_HEARTH, 0xe) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_HAPPY_HEARTH, 0x16) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_HAPPY_HEARTH, 0x17) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_HAPPY_HEARTH, 0x19) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_HAPPY_HEARTH, 0x1b) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_HAPPY_HEARTH, 0x1b) } },
    { 0, 0, DIALOG_CALL_FUNC, 0, { .func = sub_0806387C } },
    { 0, 0, DIALOG_CALL_FUNC, 0, { .func = sub_0806387C } },
    { 0, 0, DIALOG_CALL_FUNC, 0, { .func = sub_0806387C } },
    { 0, 0, DIALOG_CALL_FUNC, 0, { .func = sub_0806387C } },
    { 0, 0, DIALOG_CALL_FUNC, 0, { .func = sub_0806387C } },
    { 0, 0, DIALOG_CALL_FUNC, 0, { .func = sub_0806387C } },
    { 0, 0, DIALOG_CALL_FUNC, 0, { .func = sub_0806387C } },
    { 0, 0, DIALOG_CALL_FUNC, 0, { .func = sub_0806387C } },
    { 0, 0, DIALOG_CALL_FUNC, 0, { .func = sub_0806390C } },
    { 0, 0, DIALOG_CALL_FUNC, 0, { .func = sub_0806390C } },
    { 0, 0, DIALOG_CALL_FUNC, 0, { .func = sub_0806390C } },
    { 0, 0, DIALOG_CALL_FUNC, 0, { .func = sub_0806390C } },
    { 0, 0, DIALOG_CALL_FUNC, 0, { .func = sub_0806390C } },
    { 0, 0, DIALOG_CALL_FUNC, 0, { .func = sub_0806390C } },
    { 0, 0, DIALOG_CALL_FUNC, 0, { .func = sub_0806390C } },
    { 0, 0, DIALOG_CALL_FUNC, 0, { .func = sub_0806390C } },
    { 89, DIALOG_LOCAL_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_CAFE, 0x52), TEXT_INDEX(TEXT_CAFE, 0x51) } },
    { 89, DIALOG_LOCAL_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_CAFE, 0x52), TEXT_INDEX(TEXT_CAFE, 0x51) } },
    { 89, DIALOG_LOCAL_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_CAFE, 0x54), TEXT_INDEX(TEXT_CAFE, 0x53) } },
    { 89, DIALOG_LOCAL_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_CAFE, 0x56), TEXT_INDEX(TEXT_CAFE, 0x55) } },
    { 89, DIALOG_LOCAL_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_CAFE, 0x58), TEXT_INDEX(TEXT_CAFE, 0x57) } },
    { 89, DIALOG_LOCAL_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_CAFE, 0x5a), TEXT_INDEX(TEXT_CAFE, 0x59) } },
    { 89, DIALOG_LOCAL_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_CAFE, 0x5c), TEXT_INDEX(TEXT_CAFE, 0x5b) } },
    { 89, DIALOG_LOCAL_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_CAFE, 0x5e), TEXT_INDEX(TEXT_CAFE, 0x5d) } },
};
const u8 gUnk_0810CD88[][4] = {
    { 0, 0, 0, 0 }, { 0, 0, 0, 0 }, { 0, 0, 0, 0 }, { 0, 1, 2, 0 }, { 0, 1, 2, 0 }, { 0, 0, 0, 0 },
};

extern void sub_08096208(Entity*, u32);
void sub_080637B8(SittingPersonEntity* this);

void SittingPerson(SittingPersonEntity* this) {
    SittingPersion_Actions[super->action](this);
}

void SittingPersion_Init(SittingPersonEntity* this) {
    if (LoadExtraSpriteData(super, &gUnk_0810CB78[super->type * 3])) {
        super->action = 1;
        super->spriteSettings.flipX = super->timer;

        if (super->spriteSettings.flipX == 0) {
            super->animationState = 6;
        } else {
            super->animationState = 2;
        }

        super->timer = super->animationState;
        this->animIndex = 0;
        InitScriptForNPC(super);
        sub_080637B8(this);
    }
}

void sub_080637B8(SittingPersonEntity* this) {
    u32 tmp;

    if (super->interactType == INTERACTION_FUSE) {
        super->action = 2;
        super->interactType = INTERACTION_NONE;
        this->animIndex = super->animIndex;
        tmp = GetAnimationStateForDirection4(GetFacingDirection(super, &gPlayerEntity.base));
        tmp += super->spriteSettings.flipX ? 4 : 0;
        InitializeAnimation(super, tmp);
        InitializeNPCFusion(super);
    } else {
        ExecuteScriptForEntity(super, NULL);
        HandleEntity0x82Actions(super);
        if (super->frameDuration == 0xfe) {
            super->frameDuration = (Random() & 0x1f) + 0x1e;
        }
        GetNextFrame(super);
    }
}

void sub_08063830(SittingPersonEntity* this) {
    if (UpdateFuseInteraction(super) != 0) {
        super->action = 1;
        InitializeAnimation(super, this->animIndex);
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

void sub_0806387C(Entity* this) {
    s32 r4 = 3;
    s32 r5;
    s32 val, val2;
    u16* ptr;
    if (CheckLocalFlag(MACHI_MES_50) == 0) {
        r4 = 0;
        SetLocalFlag(MACHI_MES_50);
    } else {
        if (CheckLocalFlag(SHOP05_OPEN) == 0) {
            r5 = 0;
            for (r4 = 1; r4 <= 0x82; r4++) {
                if (ReadBit(gSave.figurines, r4)) {
                    r5++;
                }
            }

            r4 = 1;
            if (r5 > 0x81) {
                r4 = 2;
                SetLocalFlag(SHOP05_OPEN);
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
    if (CheckLocalFlag(MACHI_MES_60) == 0) {
        r5 = 0;
        SetLocalFlag(MACHI_MES_60);
        ((SittingPersonEntity*)this)->unk_84[5] = 1;
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
    const FrameStruct* ptr = &gUnk_0810CBC0[this->type * 2];
    SetExtraSpriteFrame(this, 0, ptr->frame + (this->frame & 0xf));
    SetExtraSpriteFrame(this, 1, gUnk_0810CD88[this->type][this->frameIndex & 3] + ptr->frameIndex);
    SetSpriteSubEntryOffsetData1(this, 1, 0);
    sub_0807000C(this);
}

void SittingPerson_MakeInteractable(SittingPersonEntity* this) {
    this->fusionOffer = GetFusionToOffer(super);
    AddInteractableWhenBigFuser(super, this->fusionOffer);
}

void SittingPerson_Fusion(Entity* this) {
    if (this->action == 0) {
        if (LoadExtraSpriteData(this, &gUnk_0810CB78[this->type * 3])) {
            this->action++;
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
