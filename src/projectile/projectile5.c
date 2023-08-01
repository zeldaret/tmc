/**
 * @file projectile5.c
 * @ingroup Projectiles
 *
 * @brief Projectile 5
 */
#define NENT_DEPRECATED
#include "enemy.h"
#include "entity.h"
#include "physics.h"
#include "player.h"
#include "room.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused[27];
    /*0x83*/ u8 unk_83;
} Projectile5Entity;

extern u32 sub_080B1B44(u32, u32);

extern void (*const Projectile5_Functions[])(Entity*);
extern void (*const Projectile5_Actions[])(Entity*);

extern const Hitbox3D gUnk_08129734;

void Projectile5(Entity* this) {
    Projectile5_Functions[GetNextFunction(this)](this);
}

void Projectile5_OnTick(Entity* this) {
    Projectile5_Actions[this->action](this);
}

void Projectile5_OnCollision(Entity* this) {
    u8* pbVar2;

    if (this->parent == NULL) {
        DeleteThisEntity();
    } else {
        pbVar2 = &((Projectile5Entity*)this->parent)->unk_83;
        if ((((Projectile5Entity*)this->parent)->unk_83 & 0x3f) == 3) {
            if (gPlayerState.hurtBlinkSpeed != 0) {
                if (sub_080B1B44(TILE(this->x.HALF.HI, this->y.HALF.HI), gPlayerEntity.collisionLayer) == 0) {
                    if (this->contactFlags == 0x80) {
                        *pbVar2 = *pbVar2 & 0x7f;
                        DeleteThisEntity();
                    }
                }
            }
        } else {
            DeleteEntity(this);
        }
    }
}

void Projectile5_Init(Entity* this) {
    this->action = 1;
    this->collisionFlags |= 0x10;
    this->hitbox = (Hitbox*)&gUnk_08129734;
}

void Projectile5_Action1(Entity* this) {
    Projectile5Entity* parent = (Projectile5Entity*)this->parent;
    if (parent == NULL) {
        DeleteThisEntity();
    }
    if (parent->base.next == NULL) {
        DeleteThisEntity();
    }
    if ((parent->unk_83 & 0x7f) != 3) {
        DeleteThisEntity();
    }
    CopyPosition(&parent->base, this);
    this->z.HALF.HI += 2;
}

void (*const Projectile5_Functions[])(Entity*) = {
    Projectile5_OnTick, Projectile5_OnCollision, DeleteEntity, DeleteEntity, DeleteEntity,
};
void (*const Projectile5_Actions[])(Entity*) = {
    Projectile5_Init,
    Projectile5_Action1,
};
const Hitbox3D gUnk_08129734 = { 0, 0, { 9, 6, 6, 9 }, 10, 10, 12, { 0, 0, 0 } };
