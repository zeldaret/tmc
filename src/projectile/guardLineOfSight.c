#include "entity.h"
#include "asm.h"
#include "coord.h"
#include "functions.h"
#include "projectile.h"

extern u32 sub_080644C8(Entity*);
extern Entity gUnk_02027EB4;
extern const Hitbox gUnk_080FD1E4;

extern const u8 gUnk_081299C8[];

void GuardLineOfSight(Entity* this) {
    Entity* entity;
    u8 tmp;

    if (this->type == 0) {
        if (this->action == 0) {
            this->action = 1;
            this->actionDelay = Random();
            this->spriteSettings.draw = 0;
        }
        if (this->bitfield == 0x80) {
            if (this->parent != NULL) {
                this->parent->type = 0xff;
            }
            DeleteThisEntity();
        }
        CopyPosition(this->parent, this);
        if (this->field_0xf != 0) {
            this->field_0xf -= 1;
        } else {
            if (sub_080644C8(this) != 0) {
                if (((this->actionDelay++) & 3) == 0) {
                    entity = CreateProjectile(GUARD_LINE_OF_SIGHT);
                    if (entity != NULL) {
                        entity->type = 1;
                        tmp = this->parent->knockbackDirection;
                        entity->direction = (gUnk_081299C8[(this->actionDelay >> 2 & 7)] + (tmp << 3)) & 0x1f;
                        entity->parent = this->parent;
                        CopyPosition(this, entity);
                    }
                }
            }
        }
    } else {
        if (this->action == 0) {
            this->action = 1;
            this->actionDelay = 0x12;
            this->spriteSettings.draw = 0;
            this->speed = 0x800;
            this->hitbox = (Hitbox*)&gUnk_080FD1E4;
            InitializeAnimation(this, 0);
        }
        if (this->bitfield == 0x80) {
            if (this->parent != NULL) {
                this->parent->type = 0xff;
            }
            DeleteThisEntity();
        }
        if (--this->actionDelay == 0) {
            DeleteThisEntity();
        }
        LinearMoveUpdate(this);
        if (sub_080AE4CC(&gUnk_02027EB4, this->x.HALF.HI, this->y.HALF.HI, 2) != 0) {
            DeleteThisEntity();
        }
    }
}

const u8 gUnk_081299C8[] = {
    0, 254, 0, 254, 0, 2, 0, 2,
};
