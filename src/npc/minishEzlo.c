#include "entity.h"
#include "functions.h"
#include "sound.h"

extern SpriteLoadData gUnk_0810C48C;

void MinishEzlo(Entity* this) {
    if (this->action == 0) {
        if (LoadExtraSpriteData(this, &gUnk_0810C48C) == 0) {
            return;
        }
        this->action += 1;
        this->animationState = this->actionDelay * 2;
        SetDefaultPriority(this, PRIO_MESSAGE);
        sub_0807DD50(this);
    }
    ExecuteScriptForEntity(this, NULL);
    HandleEntity0x82Actions(this);
    GetNextFrame(this);
    if ((this->frameSpriteSettings & 0x10) != 0) {
        this->frameSpriteSettings &= 0xef;
        EnqueueSFX(SFX_ELEMENT_CHARGE);
    }
    if ((this->frameSpriteSettings & 0x20) != 0) {
        this->frameSpriteSettings &= 0xdf;
        EnqueueSFX(SFX_PICOLYTE);
    }
}

ASM_FUNC("asm/non_matching/minishEzlo/MinishEzlo_Head.inc", void MinishEzlo_Head(Entity* this))

void sub_0806305C(Entity* this) {
    this->spritePriority.b1 = 0;
    this->spriteRendering.b0 = 3;
    *(u32*)&this->field_0x6c = 0x100;
    this->field_0x70.WORD = 0x100;
    sub_0805EC9C(this, 0x100, 0x100, 0x0);
    InitAnimationForceUpdate(this, 0x10);
    this->field_0x80.HWORD = 0x10;
    SoundReq(SFX_PLY_SHRINKING);
}

ASM_FUNC("asm/non_matching/minishEzlo/sub_080630A4.inc", void sub_080630A4(Entity* this))
