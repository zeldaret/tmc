#include "entity.h"
#include "sound.h"
#include "script.h"
#include "npc.h"

extern SpriteLoadData gUnk_0810C48C;

extern void sub_0806FF10(Entity* this, u32 param_2, u32 param_3);

void MinishEzlo(Entity* this) {
    if (this->action == 0) {
        if (LoadExtraSpriteData(this, &gUnk_0810C48C) == 0) {
            return;
        }
        this->action += 1;
        this->animationState = this->timer * 2;
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

void MinishEzlo_Head(Entity* this) {
    u32 uVar1;
    u32 uVar2;
    u32 uVar3;
    if ((this->frameSpriteSettings & 4) != 0) {
        uVar2 = 1;
        uVar1 = 0;
    } else {
        uVar2 = 0;
        uVar1 = 1;
    }

    if ((this->frameSpriteSettings & 8) != 0) {
        uVar3 = 0x16;
    } else {
        uVar3 = 0x11c;
    }
    SetExtraSpriteFrame(this, uVar2, (this->frame & 0xffffff7f) - 1);
    SetExtraSpriteFrame(this, uVar1, this->frameIndex);
    sub_0806FF10(this, uVar1, uVar3);
    SetSpriteSubEntryOffsetData1(this, uVar1, uVar2);
    sub_0807000C(this);
}

void sub_0806305C(Entity* this) {
    this->spritePriority.b1 = 0;
    this->spriteRendering.b0 = 3;
    *(u32*)&this->field_0x6c = 0x100;
    this->field_0x70.WORD = 0x100;
    SetAffineInfo(this, 0x100, 0x100, 0x0);
    InitAnimationForceUpdate(this, 0x10);
    this->field_0x80.HWORD = 0x10;
    SoundReq(SFX_PLY_SHRINKING);
}

ASM_FUNC("asm/non_matching/minishEzlo/sub_080630A4.inc", void sub_080630A4(Entity* this))
