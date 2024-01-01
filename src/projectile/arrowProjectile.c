/**
 * @file arrowProjectile.c
 * @ingroup Projectiles
 *
 * @brief Arrow Projectile
 */
#include "collision.h"
#include "enemy.h"
#include "entity.h"
#include "functions.h"
#include "object.h"

extern void (*const ArrowProjectile_Functions[])(Entity*);
extern void (*const ArrowProjectile_Actions[])(Entity*);

typedef struct {
    u8 flipX;
    u8 flipY;
    u8 animIndex;
    u8 unk;
    const Hitbox* hitbox;
} struct_081299F8;
extern const struct_081299F8 gUnk_081299F8[];

void sub_080A9488(Entity*);
void sub_080A94C0(Entity*, u32);

void ArrowProjectile(Entity* this) {
    ArrowProjectile_Functions[GetNextFunction(this)](this);
}

void ArrowProjectile_OnTick(Entity* this) {
    ArrowProjectile_Actions[this->action](this);
}

void ArrowProjectile_OnCollision(Entity* this) {
    if ((this->contactFlags & CONTACT_NOW) != 0) {
        if ((this->contactFlags & 0x3f) != 0) {
            ModHealth(-2);
            sub_080A9488(this);
            this->knockbackDuration = 0;
            this->iframes = 0;
        } else {
            DeleteThisEntity();
        }
    }
}

void ArrowProjectile_Init(Entity* this) {
    this->action = 1;
    this->spriteSettings.draw = 1;
    COLLISION_OFF(this);
    this->timer = 106;
    this->subtimer = 0;
    this->zVelocity = Q_16_16(10.0 / 256.0);
    sub_080A94C0(this, this->type);
}

void ArrowProjectile_Action1(Entity* this) {
    Entity* parent = this->parent;
    if ((parent == NULL) || (parent->next == NULL)) {
        DeleteThisEntity();
    }
    if (this->subtimer != 0) {
        DeleteThisEntity();
    }
    if (parent->subtimer != 0) {
        this->action = 2;
        COLLISION_ON(this);
        parent->child = NULL;
        SoundReq(SFX_FC);
    }
}

void ArrowProjectile_Action2(Entity* this) {
    if (this->collisions != COL_NONE) {
        this->action = 3;
        COLLISION_OFF(this);
        this->timer = 32;
        InitializeAnimation(this, this->animIndex + 2);
        EnqueueSFX(SFX_18A);
        LinearMoveUpdate(this);
    } else if (--this->timer == 0) {
        DeleteThisEntity();
    }
    ProcessMovement3(this);
}

void ArrowProjectile_Action3(Entity* this) {
    if (--this->timer == 0) {
        DeleteThisEntity();
    }
    GetNextFrame(this);
}

void ArrowProjectile_Action4(Entity* this) {
    if (GravityUpdate(this, Q_8_8(40.0)) == 0) {
        CreateDust(this);
        DeleteThisEntity();
    } else {
        if (--this->timer == 0) {
            this->timer = 2;
            this->animationState = (this->animationState + 1) & 3;
            sub_080A94C0(this, this->animationState);
        }
    }
}

void sub_080A9488(Entity* this) {
    this->action = 4;
    COLLISION_OFF(this);
    this->timer = 2;
    this->zVelocity = Q_16_16(1.5);
    this->animationState = (this->knockbackDirection & 0x18) >> 3;
    EnqueueSFX(SFX_METAL_CLINK);
    sub_080A94C0(this, this->animationState);
}

void sub_080A94C0(Entity* this, u32 animationState) {
    const struct_081299F8* entry = &gUnk_081299F8[animationState];
    this->spriteSettings.flipX = entry->flipX;
    this->spriteSettings.flipY = entry->flipY;
    this->animIndex = entry->animIndex;
    this->hitbox = (Hitbox*)entry->hitbox;
    InitializeAnimation(this, this->animIndex);
}

void (*const ArrowProjectile_Functions[])(Entity*) = {
    ArrowProjectile_OnTick, ArrowProjectile_OnCollision, DeleteEntity, DeleteEntity, DeleteEntity,
};
void (*const ArrowProjectile_Actions[])(Entity*) = {
    ArrowProjectile_Init,    ArrowProjectile_Action1, ArrowProjectile_Action2,
    ArrowProjectile_Action3, ArrowProjectile_Action4,
};

extern const Hitbox gUnk_08129A18;
extern const Hitbox gUnk_08129A20;

const struct_081299F8 gUnk_081299F8[] = {
    { 0, 0, 1, 0, &gUnk_08129A20 },
    { 1, 0, 0, 0, &gUnk_08129A18 },
    { 0, 1, 1, 0, &gUnk_08129A20 },
    { 0, 0, 0, 0, &gUnk_08129A18 },
};

const Hitbox gUnk_08129A18 = { 0, 0, { 4, 0, 0, 0 }, 6, 4 };
const Hitbox gUnk_08129A20 = { 0, 0, { 0, 0, 0, 4 }, 4, 6 };
