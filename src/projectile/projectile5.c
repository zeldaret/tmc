#include "entity.h"
#include "enemy.h"
#include "player.h"
#include "room.h"
#include "physics.h"

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

void sub_080A86F0(Entity* this) {
    u8* pbVar2;

    if (this->parent == NULL) {
        DeleteThisEntity();
    } else {
        pbVar2 = &this->parent->field_0x82.HALF.HI;
        if ((this->parent->field_0x82.HALF.HI & 0x3f) == 3) {
            if (gPlayerState.hurtBlinkSpeed != 0) {
                if (sub_080B1B44(TILE(this->x.HALF.HI, this->y.HALF.HI), gPlayerEntity.collisionLayer) == 0) {
                    if (this->bitfield == 0x80) {
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
    this->field_0x3c |= 0x10;
    this->hitbox = (Hitbox*)&gUnk_08129734;
}

void Projectile5_Action1(Entity* this) {
    Entity* parent = this->parent;
    if (parent == NULL) {
        DeleteThisEntity();
    }
    if (parent->next == NULL) {
        DeleteThisEntity();
    }
    if ((parent->field_0x82.HALF.HI & 0x7f) != 3) {
        DeleteThisEntity();
    }
    CopyPosition(parent, this);
    this->z.HALF.HI += 2;
}

void (*const Projectile5_Functions[])(Entity*) = {
    Projectile5_OnTick, sub_080A86F0, DeleteEntity, DeleteEntity, DeleteEntity,
};
void (*const Projectile5_Actions[])(Entity*) = {
    Projectile5_Init,
    Projectile5_Action1,
};
const Hitbox3D gUnk_08129734 = { 0, 0, { 9, 6, 6, 9 }, 10, 10, 12, { 0, 0, 0 } };
