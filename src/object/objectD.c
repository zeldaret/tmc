/**
 * @file objectD.c
 * @ingroup Objects
 *
 * @brief ObjectD object
 */

#define NENT_DEPRECATED
#include "global.h"
#include "object.h"
#include "functions.h"
#include "hitbox.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[0x1e];
    /*0x86*/ u16 unk_86;
} ObjectDEntity;

void sub_0808434C(ObjectDEntity*);
void sub_080843F8(ObjectDEntity*);
void sub_08084428(ObjectDEntity*);

void (*const gUnk_0811F908[])(ObjectDEntity*) = {
    sub_0808434C,
    sub_080843F8,
    sub_08084428,
    (void (*)(ObjectDEntity*))GetNextFrame,
};

void ObjectD(ObjectDEntity* this) {
    gUnk_0811F908[super->action](this);
}

void sub_0808434C(ObjectDEntity* this) {
    super->action = 1;
    super->flags |= 0x80;
    super->spriteSettings.draw = 1;
    super->field_0x3c = 7;
    super->hitType = 1;
    super->hurtType = 0x47;
    super->flags2 = 2;
    super->hitbox = (Hitbox*)&gHitbox_4;
    SetTile(0x4050, COORD_TO_TILE(super), super->collisionLayer);
    if (super->type == 1 || CheckFlags(this->unk_86)) {
        super->action = 3;
        SetFlag(this->unk_86);
        InitializeAnimation(super, 1);
    } else {
        InitializeAnimation(super, super->type);
    }
}

void sub_080843F8(ObjectDEntity* this) {
    if (super->bitfield == 0x9c) {
        super->action = 2;
        super->flags &= 0x7f;
        CreateFx(super, FX_ICE, 0);
        EnqueueSFX(SFX_10D);
    }
}

void sub_08084428(ObjectDEntity* this) {
    GetNextFrame(super);
    if ((super->frame & 1) != 0) {
        super->action = 3;
        SetFlag(this->unk_86);
        EnqueueSFX(SFX_BUTTON_PRESS);
    }
}
