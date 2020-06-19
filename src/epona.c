#include "global.h"
#include "entity.h"
#include "textbox.h"
#include "link.h"
#include "functions.h"

void sub_08065A64(Entity* this);
void sub_08065AA4(Entity*);

extern void (*gUnk_0811006C[])(Entity*);
extern u32 gUnk_08110080[];

void Epona(Entity* this) {
    gUnk_0811006C[this->action](this);
    sub_08065A64(this);
    sub_0806ED78(this);
}

void sub_080659B8(Entity* this) {
    this->action = 1;
    this->spriteSettings.b.ss0 = 1;
    this->animationState = 6;
    this->field_0x69 = -1;
    this->field_0x68 = sub_0801E99C(this);
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
    ShowNPCDialogue(this, &gUnk_08110080[this->entityType.form * 2]);
}

void sub_08065A64(Entity* this) {
    u32 uVar2;

    uVar2 = -(gLinkState.flags.all & 0x80) >> 0x1f;
    if (uVar2 != this->field_0x69) {
        if (uVar2 == 0) {
            sub_08078778(this);
        } else {
            sub_080787A8(this, this->field_0x68);
        }
    }
    this->field_0x69 = uVar2;
}

void sub_08065AA4(Entity* this) {
    if (this->interactType != 0) {
        if (gLinkState.flags.all & 0x80) {
            if (this->interactType == 2) {
                this->action = 4;
                sub_0806F118(this);
            } else {
                this->action = 3;
                sub_0805E3A0(this, 2);
                sub_08065A50(this);
            }
            InitAnimationForceUpdate(this, sub_0806F5A4(sub_080045C4(this, &gLinkEntity)));
        } else {
            sub_08065A50(this);
            sub_080791D0();
        }
        PlaySFX(0xD3);
        this->interactType = 0;
    }
}

void Epona_Fusion(Entity* this) {
    if (this->action == 0) {
        this->action += 1;
        this->spriteSettings.b.ss0 = 1;
        InitAnimationForceUpdate(this, 7);
    } else {
        UpdateAnimationSingleFrame(this);
    }
}
