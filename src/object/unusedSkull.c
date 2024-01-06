/**
 * @file unusedSkull.c
 * @ingroup Objects
 *
 * @brief Unused Skull object
 */
#include "functions.h"
#include "hitbox.h"
#include "object.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[0x1e];
    /*0x86*/ u16 unk_86;
} UnusedSkullEntity;

void UnusedSkull_Init(UnusedSkullEntity*);
void UnusedSkull_Action1(UnusedSkullEntity*);
void UnusedSkull_Action2(UnusedSkullEntity*);

void (*const UnusedSkull_Actions[])(UnusedSkullEntity*) = {
    UnusedSkull_Init,
    UnusedSkull_Action1,
    UnusedSkull_Action2,
    (void (*)(UnusedSkullEntity*))GetNextFrame,
};

void UnusedSkull(UnusedSkullEntity* this) {
    UnusedSkull_Actions[super->action](this);
}

void UnusedSkull_Init(UnusedSkullEntity* this) {
    super->action = 1;
    super->flags |= 0x80;
    super->spriteSettings.draw = 1;
    super->collisionFlags = 7;
    super->hitType = 1;
    super->hurtType = 0x47;
    super->collisionMask = 2;
    super->hitbox = (Hitbox*)&gHitbox_4;
    SetTile(SPECIAL_TILE_80, COORD_TO_TILE(super), super->collisionLayer);
    if (super->type == 1 || CheckFlags(this->unk_86)) {
        super->action = 3;
        SetFlag(this->unk_86);
        InitializeAnimation(super, 1);
    } else {
        InitializeAnimation(super, super->type);
    }
}

void UnusedSkull_Action1(UnusedSkullEntity* this) {
    if (super->contactFlags == (CONTACT_NOW | 0x1c)) {
        super->action = 2;
        super->flags &= ~0x80;
        CreateFx(super, FX_ICE, 0);
        EnqueueSFX(SFX_10D);
    }
}

void UnusedSkull_Action2(UnusedSkullEntity* this) {
    GetNextFrame(super);
    if ((super->frame & 1) != 0) {
        super->action = 3;
        SetFlag(this->unk_86);
        EnqueueSFX(SFX_BUTTON_PRESS);
    }
}
