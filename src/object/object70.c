/**
 * @file object70.c
 * @ingroup Objects
 *
 * @brief Object70 object
 */
#define NENT_DEPRECATED
#include "functions.h"
#include "object.h"

void Object70_Init(Entity*);
void Object70_Action1(Entity*);

void Object70(Entity* this) {
    static void (*const Object70_Actions[])(Entity*) = {
        Object70_Init,
        Object70_Action1,
    };
    Object70_Actions[this->action](this);
}

void Object70_Init(Entity* this) {
    this->action = 1;
    this->spriteSettings.draw = 1;
    this->frameIndex = this->type + 0xb;
    if (this->type != 0) {
        sub_08004168(this);
        gPlayerEntity.spriteOrientation.flipY = 3;
        if ((gPlayerEntity.spritePriority.b0) != 7) {
            this->spritePriority.b0 = gPlayerEntity.spritePriority.b0 + 1;
        } else {
            this->spritePriority.b0 = 7;
        }
    }
}

void Object70_Action1(Entity* this) {
    u8 bVar1;

    if (this->type == 0) {
        if (gPlayerEntity.z.WORD == 0) {
            if ((((gPlayerState.dash_state & 0x40) == 0) && (gPlayerState.floor_type == SURFACE_SWAMP)) &&
                ((gPlayerEntity.action == PLAYER_NORMAL ||
                  ((gPlayerEntity.action == PLAYER_ROLL || (gPlayerEntity.action == PLAYER_JUMP)))))) {
                goto _080974FA;
            } else {
                if (gPlayerEntity.z.WORD == 0) {
                    CreateFx(&gPlayerEntity, FX_GREEN_SPLASH, 0);
                }
            }
        }
        gPlayerEntity.spriteOrientation.flipY = 2;
        DeleteThisEntity();
    _080974FA:
        this->x = gPlayerEntity.x;
        this->y = gPlayerEntity.y;
        if (gPlayerState.jump_status == 0) {
            gPlayerEntity.spriteOrientation.flipY = 3;
            if (gPlayerEntity.spritePriority.b0 != 7) {
                this->spritePriority.b0 = gPlayerEntity.spritePriority.b0 + 1;
            } else {
                this->spritePriority.b0 = 7;
            }
        }

    } else {
        if (gPlayerEntity.action != PLAYER_USEENTRANCE) {
            if (this->collisionLayer == 1) {
                gPlayerEntity.spriteOrientation.flipY = 2;
            } else {
                gPlayerEntity.spriteOrientation.flipY = 1;
            }
            DeleteThisEntity();
        }
    }
}
