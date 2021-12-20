#include "npc.h"

extern void (*gUnk_0810CBD8[])(Entity*);

extern Dialog gUnk_0810CC08[];

extern SpriteLoadData gUnk_0810CB78[];
extern void sub_08096208(Entity*, u32);

void SittingPerson(Entity* this) {
    gUnk_0810CBD8[this->action](this);
}

ASM_FUNC("asm/non_matching/sittingPerson/sub_08063758.inc", void sub_08063758(Entity* this))

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
    InitializeAnimation(this, context->intVariable + (BOOLCAST(this->spriteSettings.flipX) & 4U) +
                                  (this->animationState >> 1));
}

void sub_08063874(Entity* this) {
    this->animationState = this->actionDelay;
}

ASM_FUNC("asm/non_matching/sittingPerson/sub_0806387C.inc", void sub_0806387C(Entity* this))

ASM_FUNC("asm/non_matching/sittingPerson/sub_0806390C.inc", void sub_0806390C(Entity* this))

void sub_08063944(Entity* this, ScriptExecutionContext* context) {
    s32 tmp;

    context->condition = 0;
    tmp = gSave.global_progress - 2;
    if (tmp < 0) {
        tmp = 0;
    }
    ShowNPCDialogue(this, gUnk_0810CC08 + this->type2 * 8 + tmp);
}

ASM_FUNC("asm/non_matching/sittingPerson/SittingPerson_Head.inc", void SittingPerson_Head(Entity* this))

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
