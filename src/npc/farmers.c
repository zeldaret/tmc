#include "entity.h"
#include "script.h"
#include "functions.h"

extern Dialog gUnk_08113158[];

extern void sub_0806F188(Entity*);

extern SpriteLoadData gUnk_08113140[];
void sub_0806BC58(Entity* this);

ASM_FUNC("asm/non_matching/farmers/Farmers.inc", void Farmers(Entity* this))

void sub_0806BC58(Entity* this) {
    SetDefaultPriority(this, 2);
}

void Farmers_Head(Entity* this) {
    SetExtraSpriteFrame(this, 0, this->frame & 0x7f);
    SetExtraSpriteFrame(this, 1, this->frameIndex);
    SetSpriteSubEntryOffsetData1(this, 1, 0);
    sub_0807000C(this);
}

void sub_0806BC94(Entity* this, ScriptExecutionContext* context) {
    InitializeAnimation(this, context->intVariable + (BOOLCAST(this->spriteSettings.flipX) & 8U) +
                                  (this->animationState >> 1));
}

void sub_0806BCB8(Entity* this) {
    this->animationState = this->actionDelay;
}

void sub_0806BCC0(Entity* this) {
    if (this->type == 0) {
        sub_0806F188(this);
    }
}

void sub_0806BCD4(Entity* this) {
    sub_08078784(this, sub_0801E99C(this));
}

void sub_0806BCE8(Entity* this) {
    ShowNPCDialogue(this, &gUnk_08113158[this->type]);
}

void Farmers_Fusion(Entity* this) {

    if (this->action == 0) {
        if (LoadExtraSpriteData(this, &gUnk_08113140[this->type * 3]) != 0) {
            this->action = this->action + 1;
            this->spriteSettings.draw = 1;
            this->spriteSettings.flipX = 0;
            sub_0806BC58(this);
            InitAnimationForceUpdate(this, 3);
        }
    } else {
        UpdateAnimationSingleFrame(this);
    }
}
