/**
 * @file dekuSeedProjectile.c
 * @ingroup Projectiles
 *
 * @brief Deku Seed Projectile
 */
#include "collision.h"
#include "enemy.h"
#include "entity.h"
#include "functions.h"

extern void (*const DekuSeedProjectile_Functions[])(Entity*);
extern void (*const DekuSeedProjectile_Actions[])(Entity*);

void sub_080A8680(Entity*);
void sub_080A86A0(Entity*);

void DekuSeedProjectile(Entity* this) {
    DekuSeedProjectile_Functions[GetNextFunction(this)](this);
}

void DekuSeedProjectile_OnTick(Entity* this) {
    DekuSeedProjectile_Actions[this->action](this);
}

void DekuSeedProjectile_OnCollision(Entity* this) {
    if (this->contactFlags == CONTACT_NOW) {
        if (this->hitType == 0x68) {
            EnqueueSFX(SFX_86);
        }
        DeleteEntity(this);
    } else {
        this->direction = DirectionRoundUp(this->knockbackDirection);
        if ((u8)(this->contactFlags + 0x7e) < 2) {
            sub_080A8680(this);
        } else {
            InitializeAnimation(this, 0x19);
            sub_080A86A0(this);
        }
    }
}

void DekuSeedProjectile_Init(Entity* this) {
    this->action = 1;
    this->timer = 48;
    this->subtimer = 0;
    this->z.HALF.HI -= 4;
    if (CheckGlobalFlag(TABIDACHI) == 0) {
        this->hitType = 0x68;
    }
    EnqueueSFX(SFX_18D);
    InitializeAnimation(this, 0x18);
}

void DekuSeedProjectile_Action1(Entity* this) {
    Entity* parent;

    GetNextFrame(this);
    if (ProcessMovement3(this) != 0) {
        if (IsProjectileOffScreen(this)) {
            DeleteThisEntity();
        }
        UpdateCollisionLayer(this);
        if (--this->timer == 0) {
            this->action = 4;
        }
    } else {
        sub_0800417E(this, this->collisions);
        UpdateCollisionLayer(this);
        InitializeAnimation(this, 0x19);
        sub_080A86A0(this);
    }
    if (this->subtimer != 0) {
        parent = this->parent;
        if ((parent->next != NULL) && (IsColliding(this, parent) != 0)) {
            this->iframes = 0x10;
            this->knockbackDirection = -this->direction;
            this->contactFlags = CONTACT_NOW;
            this->knockbackDuration = 0xc;
            this->knockbackSpeed = 0;
            parent->iframes = 0x10;
            parent->knockbackDirection = this->direction;
            parent->contactFlags = 0xc2;
            parent->knockbackDuration = 0xc;
            parent->knockbackSpeed = 0;
        }
    }
}

void DekuSeedProjectile_Action2(Entity* this) {
    GetNextFrame(this);
    if (ProcessMovement3(this) != 0) {
        if (IsProjectileOffScreen(this)) {
            DeleteThisEntity();
        }
        if (--this->timer == 0) {
            this->action = 1;
            COLLISION_ON(this);
        }
    } else {
        sub_0800417E(this, this->collisions);
        UpdateCollisionLayer(this);
        InitializeAnimation(this, 0x19);
        sub_080A86A0(this);
    }
}

void DekuSeedProjectile_Action3(Entity* this) {
    GetNextFrame(this);
    if ((this->frame & ANIM_DONE) != 0) {
        DeleteThisEntity();
    }
}

void DekuSeedProjectile_Action4(Entity* this) {
    GetNextFrame(this);
    ProcessMovement3(this);
    switch (BounceUpdate(this, Q_8_8(40.0))) {
        case BOUNCE_DONE_ALL:
            DeleteThisEntity();
            return;
        case BOUNCE_INIT_NEXT:
            COLLISION_OFF(this);
            this->speed = 0x120;

            break;
    }
    if ((this->flags & ENT_COLLIDE) == 0) {
        this->spriteSettings.draw ^= 1;
    }
}

void sub_080A8680(Entity* this) {
    this->action = 2;
    COLLISION_OFF(this);
    this->timer = 3;
    this->subtimer = 1;
    EnqueueSFX(SFX_ITEM_SHIELD_BOUNCE);
}

void sub_080A86A0(Entity* this) {
    this->action = 3;
    COLLISION_OFF(this);
    this->speed = 0;
    EnqueueSFX(SFX_18E);
}

void (*const DekuSeedProjectile_Functions[])(Entity*) = {
    DekuSeedProjectile_OnTick, DekuSeedProjectile_OnCollision, DeleteEntity, DeleteEntity, DeleteEntity,
};
void (*const DekuSeedProjectile_Actions[])(Entity*) = {
    DekuSeedProjectile_Init,    DekuSeedProjectile_Action1, DekuSeedProjectile_Action2,
    DekuSeedProjectile_Action3, DekuSeedProjectile_Action4,
};
