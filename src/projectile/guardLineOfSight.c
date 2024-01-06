/**
 * @file guardLineOfSightProjectile.c
 * @ingroup Projectiles
 *
 * @brief Guard Line of Sight Projectile
 */
#include "asm.h"
#include "collision.h"
#include "entity.h"
#include "functions.h"
#include "hitbox.h"
#include "physics.h"
#include "projectile.h"

extern u32 sub_080644C8(Entity*);

extern const u8 gUnk_081299C8[];

void GuardLineOfSight(Entity* this) {
    Entity* entity;
    u8 tmp;

    if (this->type == 0) {
        if (this->action == 0) {
            this->action = 1;
            this->timer = Random();
            this->spriteSettings.draw = 0;
        }
        if (this->contactFlags == CONTACT_NOW) {
            if (this->parent != NULL) {
                this->parent->type = 0xff;
            }
            DeleteThisEntity();
        }
        CopyPosition(this->parent, this);
        if (this->subtimer != 0) {
            this->subtimer--;
        } else {
            if (sub_080644C8(this) != 0) {
                if (((this->timer++) & 3) == 0) {
                    entity = CreateProjectile(GUARD_LINE_OF_SIGHT);
                    if (entity != NULL) {
                        entity->type = 1;
                        tmp = this->parent->knockbackDirection;
                        entity->direction = (gUnk_081299C8[(this->timer >> 2 & 7)] + (tmp << 3)) & 0x1f;
                        entity->parent = this->parent;
                        CopyPosition(this, entity);
                    }
                }
            }
        }
    } else {
        if (this->action == 0) {
            this->action = 1;
            this->timer = 18;
            this->spriteSettings.draw = 0;
            this->speed = 0x800;
            this->hitbox = (Hitbox*)&gUnk_080FD1E4;
            InitializeAnimation(this, 0);
        }
        if (this->contactFlags == CONTACT_NOW) {
            if (this->parent != NULL) {
                this->parent->type = 0xff;
            }
            DeleteThisEntity();
        }
        if (--this->timer == 0) {
            DeleteThisEntity();
        }
        LinearMoveUpdate(this);
        if (IsTileCollision(gMapBottom.collisionData, this->x.HALF.HI, this->y.HALF.HI, 2)) {
            DeleteThisEntity();
        }
    }
}

const u8 gUnk_081299C8[] = {
    0, 254, 0, 254, 0, 2, 0, 2,
};
