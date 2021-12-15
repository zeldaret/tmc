#include "entity.h"
#include "functions.h"
#include "npc.h"
#include "audio.h"
#include "random.h"

extern void (*const gUnk_081145B4[])(Entity*);

void sub_0806E4EC(Entity*);

void sub_0806E6A8(Entity*);

extern u16 gUnk_081145C8[];
void sub_0806E65C(Entity* this);

void Cucco(Entity* this) {
    gUnk_081145B4[this->action](this);
}

void sub_0806E4B8(Entity* this) {
    this->action += 1;
    this->field_0x68.HALF.LO = sub_0801E99C(this);
    sub_080787A8(this, this->field_0x68.HALF.LO);
    SetDefaultPriority(this, PRIO_MESSAGE);
    this->subAction = 0;
    sub_0806E4EC(this);
}

void sub_0806E4EC(Entity* this) {
    if (this->subAction == 0) {
        this->subAction += 1;
        this->actionDelay = (Random() & 0x1f) + 0x3c;
        InitAnimationForceUpdate(this, 0);
    }
    if (--this->actionDelay == 0) {
        if ((Random() & 1) != 0) {
            this->action = 3;
        } else {
            this->action = 2;
        }
        this->subAction = 0;
        if ((Random() & 1) != 0) {
            EnqueueSFX(gUnk_081145C8[Random() & 3]);
        }
    }
    sub_0806E65C(this);
    UpdateAnimationSingleFrame(this);
}

ASM_FUNC("asm/non_matching/cucco/sub_0806E564.inc", void sub_0806E564(Entity* this))

ASM_FUNC("asm/non_matching/cucco/sub_0806E5E4.inc", void sub_0806E5E4(Entity* this))

void sub_0806E648(Entity* this) {
    if (UpdateFuseInteraction(this) != 0) {
        this->action = 1;
    }
}

void sub_0806E65C(Entity* this) {
    if (this->interactType != 0) {
        if ((gPlayerState.flags & PL_MINISH) != 0) {
            if (this->interactType == 2) {
                this->action = 4;
                sub_0806F118(this);
            } else {
                sub_0806E6A8(this);
            }
        } else {
            sub_080791D0();
        }
        SoundReq(SFX_VO_CUCCO_CALL);
        this->interactType = 0;
    }
}

ASM_FUNC("asm/non_matching/cucco/sub_0806E6A8.inc", void sub_0806E6A8(Entity* this))

void Cucco_Fusion(Entity* this) {
    if (this->action == 0) {
        this->action += 1;
        this->spriteSettings.draw = 1;
        InitAnimationForceUpdate(this, 1);
    } else {
        UpdateAnimationSingleFrame(this);
    }
}
