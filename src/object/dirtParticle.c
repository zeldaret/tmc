/**
 * @file dirtParticle.c
 * @ingroup Objects
 *
 * @brief Dirt Particle object
 */
#include "functions.h"
#include "object.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[0x18];
    /*0x80*/ u32 unk_80;
    /*0x84*/ u32 unk_84;
} DirtParticleEntity;

void DirtParticle_Init(DirtParticleEntity*);
void DirtParticle_Action1(DirtParticleEntity*);
void DirtParticle_Action3(DirtParticleEntity*);
void sub_08087B88(DirtParticleEntity*);
void sub_08087B9C(DirtParticleEntity*);
void sub_08087B9C(DirtParticleEntity*);

void DirtParticle(DirtParticleEntity* this) {
    static void (*const DirtParticle_Actions[])(DirtParticleEntity*) = {
        DirtParticle_Init,
        DirtParticle_Action1,
        NULL,
        DirtParticle_Action3,
    };
    DirtParticle_Actions[super->action](this);
    GetNextFrame(super);
    if (super->timer != 0) {
        super->timer--;
    } else {
        if (super->animIndex == 0xa) {
            InitializeAnimation(super, 0xd);
        } else if ((super->frame & ANIM_DONE) != 0) {
            DeleteThisEntity();
        }
    }
    if (super->speed != 0) {
        LinearMoveUpdate(super);
        if (super->speed > 0x10) {
            super->speed -= 0x10;
        } else {
            super->speed = 0;
        }
    }
}

extern const Hitbox gUnk_08120A8C;

void DirtParticle_Init(DirtParticleEntity* this) {
    static const u8 gUnk_08120A78[] = {
        3,
        63,
    };
    static const u8 gUnk_08120A7A[] = {
        15, 24, 30, 35, 0, 0,
    };
    u32 rand;
    u32 tmp;
    super->action = 1;
    if (super->type2 != 0) {
        ChangeObjPalette(super, 3);
    }
    if (super->type > 2) {
        ChangeObjPalette(super, gUnk_08120A78[super->type - 3]);
    }
    switch (super->type) {
        case 4:
            super->collisionLayer = 2;
            UpdateSpriteForCollisionLayer(super);
        case 0:
        case 3:
            super->flags |= ENT_COLLIDE;
            super->health = 1;
            super->collisionFlags = 7;
            super->hitType = 0xaa;
            super->collisionMask = 0x0e;
            super->hitbox = (Hitbox*)&gUnk_08120A8C;
            super->gustJarFlags = 0;
        case 2:
            rand = Random();
            super->timer = gUnk_08120A7A[rand & 3];
            tmp = (rand >> 8) & 3;
            if ((rand & 0x10) != 0) {
                tmp = -tmp;
            }
            super->x.HALF.HI += tmp;
            super->y.HALF.HI += tmp;
            super->collisionLayer = gPlayerEntity.base.collisionLayer;
            InitializeAnimation(super, 10);
            return;
        case 1:
            break;
    }
    InitializeAnimation(super, 0x10);
}

void DirtParticle_Action1(DirtParticleEntity* this) {
    DirtParticleEntity* entity;
    if ((super->contactFlags & CONTACT_NOW) == 0) {
        return;
    }
    switch (super->contactFlags & 0x7f) {
        case 0x16:
            super->direction = GetFacingDirection(super->contactedEntity, super);
            super->speed = 0x100;
            break;
        case 0x13:
            super->action = 3;
            super->subAction = 0;
            break;
        case 0x1b:
        case 0x1c:
            entity = (DirtParticleEntity*)super->contactedEntity;
            super->direction = CalculateDirectionTo(entity->unk_84, entity->unk_80, super->x.WORD, super->y.WORD);
            super->speed = 0x100;
            break;
    }
}

void DirtParticle_Action3(DirtParticleEntity* this) {
    static void (*const gUnk_08120A80[])(DirtParticleEntity*) = {
        sub_08087B88,
        sub_08087B9C,
        sub_08087B9C,
    };
    if ((super->contactFlags & CONTACT_NOW) != 0) {
        gUnk_08120A80[super->subAction](this);
    } else {
        super->action = 1;
    }
}

const Hitbox gUnk_08120A8C = { 0, 0, { 6, 3, 3, 6 }, 3, 3 };

void sub_08087B88(DirtParticleEntity* this) {
    super->knockbackSpeed = 0x100;
    super->subAction = 1;
    super->gustJarTolerance = 1;
}

void sub_08087B9C(DirtParticleEntity* this) {
    if (sub_0806F3E4(super)) {
        DeleteThisEntity();
    }
}
