#include "global.h"
#include "audio.h"
#include "entity.h"
#include "textbox.h"
#include "player.h"
#include "functions.h"

void sub_08065A64(Entity* this);
void sub_08065AA4(Entity*);

extern void (*gUnk_0811006C[])(Entity*);
extern Dialog gUnk_08110080[];

void Epona(Entity* this) {
    gUnk_0811006C[this->action](this);
    sub_08065A64(this);
    sub_0806ED78(this);
}

void sub_080659B8(Entity* this) {
    this->action = 1;
    this->spriteSettings.b.draw = 1;
    this->animationState = 6;
    this->field_0x68.HALF.HI = -1;
    this->field_0x68.HALF.LO = sub_0801E99C(this);
    InitAnimationForceUpdate(this, this->animationState / 2);
}

void sub_080659F0(Entity* this) {
    UpdateAnimationSingleFrame(this);
    sub_08065AA4(this);
}

void sub_08065A00(Entity* this) {
    UpdateAnimationSingleFrame(this);
    sub_08065AA4(this);
}

void sub_08065A10(Entity* this) {
    if ((gTextBox.doTextBox & 0x7F) == 0) {
        this->action = 1;
        InitAnimationForceUpdate(this, this->animationState / 2);
    }
}

void sub_08065A34(Entity* this) {
    if (UpdateFuseInteraction() != 0) {
        this->action = 1;
        InitAnimationForceUpdate(this, this->animationState / 2);
    }
}

void sub_08065A50(Entity* this) {
    ShowNPCDialogue(this, &gUnk_08110080[this->type]);
}

void sub_08065A64(Entity* this) {
    u32 uVar2;

    uVar2 = -(gPlayerState.flags.all & 0x80) >> 0x1f;
    if (uVar2 != this->field_0x68.HALF.HI) {
        if (uVar2 == 0) {
            sub_08078778(this);
        } else {
            sub_080787A8(this, this->field_0x68.HALF.LO);
        }
    }
    this->field_0x68.HALF.HI = uVar2;
}

void sub_08065AA4(Entity* this) {
    if (this->interactType != 0) {
        if (gPlayerState.flags.all & 0x80) {
            if (this->interactType == 2) {
                this->action = 4;
                sub_0806F118(this);
            } else {
                this->action = 3;
                sub_0805E3A0(this, 2);
                sub_08065A50(this);
            }
            InitAnimationForceUpdate(this, sub_0806F5A4(GetFacingDirection(this, &gPlayerEntity)));
        } else {
            sub_08065A50(this);
            sub_080791D0();
        }
        SoundReq(SFX_VO_EPONA);
        this->interactType = 0;
    }
}

void Epona_Fusion(Entity* this) {
    if (this->action == 0) {
        this->action += 1;
        this->spriteSettings.b.draw = 1;
        InitAnimationForceUpdate(this, 7);
    } else {
        UpdateAnimationSingleFrame(this);
    }
}
