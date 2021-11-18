#include "entity.h"
#include "textbox.h"
#include "npc.h"
#include "functions.h"
#include "random.h"
#include "audio.h"

extern void (*const gUnk_081145D4[])(Entity*);

void sub_0806E764(Entity*);

void sub_0806E838(Entity* this);

void sub_0806E884(Entity* this);

void CuccoChick(Entity* this) {
    gUnk_081145D4[this->action](this);
    sub_0806ED78(this);
}

void sub_0806E730(Entity* this) {
    this->action += 1;
    this->field_0x68.HALF.LO = sub_0801E99C(this);
    sub_080787A8(this, this->field_0x68.HALF.LO);
    sub_0805E3A0(this, 2);
    this->subAction = 0;
    sub_0806E764(this);
}

void sub_0806E764(Entity* this) {
    if (this->subAction == 0) {
        this->subAction += 1;
        this->actionDelay = (Random() & 0x1f) + 0x1e;
        this->frameIndex = 0;
    }
    if (--this->actionDelay == 0) {
        this->action = 2;
        this->subAction = 0;
        if ((Random() & 1) != 0) {
            EnqueueSFX(0xd6);
        }
    }
    sub_0806E838(this);
}

ASM_FUNC("asm/non_matching/cuccoChick/sub_0806E7B0.inc", void sub_0806E7B0(Entity* this))

void sub_0806E824(Entity* this) {
    if (UpdateFuseInteraction(this) != 0) {
        this->action = 1;
    }
}

void sub_0806E838(Entity* this) {
    if (this->interactType != 0) {
        if ((gPlayerState.flags & PL_IS_MINISH) != 0) {
            if (this->interactType == 2) {
                this->action = 3;
                sub_0806F118(this);
            } else {
                sub_0806E884(this);
            }
        } else {
            sub_080791D0();
        }
        SoundReq(SFX_VO_CHEEP);
        this->interactType = 0;
    }
}

void sub_0806E884(Entity* this) {
    MessageNoOverlap(0xdb6, this);
}

void CuccoChick_Fusion(Entity* this) {
    if (this->action == 0) {
        this->action += 1;
        this->spriteSettings.draw = 1;
        this->frameIndex = 1;
    } else {
        if (sub_08003FC4(this, 0x3000) == 0) {
            this->zVelocity = 0x10000;
        }
    }
}
