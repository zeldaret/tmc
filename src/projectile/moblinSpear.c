/**
 * @file moblinSpear.c
 * @ingroup Projectiles
 *
 * @brief Moblin Spear Projectile
 */
#include "enemy.h"
#include "entity.h"
#include "physics.h"

typedef struct {
    s8 offsetX;
    s8 offsetY;
    u8 width;
    u8 height;
} HitboxChange;

void MoblinSpear_OnTick(Entity* this);
void MoblinSpear_OnCollision(Entity* this);
void MoblinSpear_Init(Entity* this);
void MoblinSpear_Action1(Entity* this);

void MoblinSpear(Entity* this) {
    static void (*const MoblinSpear_Functions[])(Entity*) = {
        MoblinSpear_OnTick, MoblinSpear_OnCollision, DeleteEntity, DeleteEntity, DeleteEntity,
    };
    MoblinSpear_Functions[GetNextFunction(this)](this);
}

void MoblinSpear_OnTick(Entity* this) {
    static void (*const MoblinSpear_Actions[])(Entity*) = {
        MoblinSpear_Init,
        MoblinSpear_Action1,
    };
    MoblinSpear_Actions[this->action](this);
}

void MoblinSpear_OnCollision(Entity* this) {
    u8 tmp;

    if (this->contactFlags == CONTACT_NOW) {
        this->iframes = 0x10;
        this->knockbackDuration = 0xc;
        this->knockbackSpeed = 0x180;
        this->parent->contactFlags = this->contactFlags;
    }
    tmp = this->iframes;
    if ((tmp & 0x80) != 0) {
        this->parent->iframes = tmp;
    } else {
        this->parent->iframes = -tmp;
    }
    this->parent->knockbackDuration = this->knockbackDuration;
    this->parent->knockbackSpeed = this->knockbackSpeed;
    this->parent->knockbackDirection = this->knockbackDirection;
    this->knockbackDuration = 0;
}

void MoblinSpear_Init(Entity* this) {
    if (AllocMutableHitbox(this) != NULL) {
        this->action = 1;
    }
}

void MoblinSpear_Action1(Entity* this) {
    static const HitboxChange gUnk_0812966C[] = {
        { 6, 11, 2, 4 },   { -12, 2, 3, 3 },   { -13, -15, 1, 2 }, { 5, 12, 1, 3 },   { 7, 10, 1, 2 },
        { 8, 9, 1, 3 },    { 7, 10, 1, 2 },    { -22, 1, 4, 2 },   { -12, 1, 3, 2 },  { -6, 2, 4, 2 },
        { -12, 1, 3, 2 },  { -1, -19, 1, 1 },  { -4, -19, 1, 1 },  { -4, -20, 1, 1 }, { -4, -19, 1, 1 },
        { 6, 9, 1, 2 },    { 6, 10, 1, 2 },    { 6, 9, 1, 2 },     { 6, 10, 1, 2 },   { -29, -11, 3, 2 },
        { -29, -9, 3, 2 }, { -29, -11, 3, 2 }, { -29, -9, 3, 2 },  { -5, -25, 1, 2 }, { -5, -24, 1, 2 },
        { -5, -25, 1, 2 }, { -5, -24, 1, 2 },  { 7, 12, 1, 2 },    { 7, 11, 1, 2 },   { -12, 3, 3, 1 },
        { -12, 2, 3, 1 },  { -13, -16, 1, 2 }, { -13, -15, 1, 2 },
    };

    u8 frames;
    Entity* parent;
    u32 tmp;

    // const HitboxChange* a;
    // TODO: Copying a members using HitboxChange members addresses them directly using [r2, 0x1]
    // while the assembly increases the pointer after every copy.
    // Not sure how to make this more readable.
    const u8* a;

    parent = this->parent;
    if (parent == NULL) {
        DeleteThisEntity();
    }
    if (parent->next == NULL) {
        DeleteThisEntity();
    }
    frames = parent->frame * 4;
    a = (u8*)&gUnk_0812966C[frames / 4];
    this->hitbox->offset_x = *a++;
    if (parent->frameSpriteSettings == 0x40) {
        this->hitbox->offset_x = -this->hitbox->offset_x;
    }
    this->hitbox->offset_y = *a++;
    this->hitbox->width = *a++;
    this->hitbox->height = *a++;
    if (parent->confusedTime != 0) {
        if ((this->flags & ENT_COLLIDE) != 0) {
            COLLISION_OFF(this);
        }
    } else {
        if ((this->flags & ENT_COLLIDE) == 0) {
            COLLISION_ON(this);
        }
    }
}
