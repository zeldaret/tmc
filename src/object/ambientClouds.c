/**
 * @file ambientClouds.c
 * @ingroup Objects
 *
 * @brief Ambient Clouds object
 */
#include "asm.h"
#include "effects.h"
#include "entity.h"
#include "functions.h"
#include "object.h"

void AmbientClouds_Init(Entity* this);
void AmbientClouds_Action1(Entity* this);
void AmbientClouds_Action2(Entity* this);
void AmbientClouds_Action3(Entity* this);

void AmbientClouds(Entity* this) {
    static void (*const AmbientClouds_Actions[])(Entity*) = {
        AmbientClouds_Init,
        AmbientClouds_Action1,
        AmbientClouds_Action2,
        AmbientClouds_Action3,
    };
    AmbientClouds_Actions[this->action](this);
    UpdateAnimationVariableFrames(this, (Random() & 1) + 1);
}

void AmbientClouds_Init(Entity* this) {
#ifndef EU
    if ((this->flags & ENT_DID_INIT) != 0) {
#endif
        this->collisionLayer = 3;
        if (this->type2 == 0) {
            if (this->type == 0x80) {
                this->action = 3;
                this->spriteRendering.b3 = 3;
                InitializeAnimation(this, 0);
                AmbientClouds_Action3(this);
                return;
            } else {
                this->parent = NULL;
                CreateObjectWithParent(this, AMBIENT_CLOUDS, 0, 0xff);
                for (; this->type != 0; --this->type) {
                    Entity* entity = CreateObjectWithParent(this, AMBIENT_CLOUDS, 0, this->type);
                    this->child = entity;
                    if (entity != NULL) {
                        entity->parent = this->parent;
                        if (this->parent != NULL) {
                            this->parent->child = this->child;
                        }
                        this->parent = this->child;
                    }
                }
            }
            DeleteThisEntity();
        } else {
            this->action = 1;
            if (this->parent == NULL) {
                InitializeAnimation(this, 0);
            } else {
                InitializeAnimation(this, 1);
            }
            if (this->type2 == 0xff) {
                this->collisionLayer = 1;
                ResolveCollisionLayer(this);
                ChangeObjPalette(this, 0x15);
            } else {
                this->z.HALF.HI = this->type2 * -0x24;
            }
        }
#ifndef EU
    }
#endif
}

void AmbientClouds_Action1(Entity* this) {
    if (this->type2 == 0xff) {
        this->spritePriority.b0 = 7;
        this->spriteRendering.b3 = 3;
    } else {
        this->spriteOrientation.flipY = 1;
        this->spriteRendering.b3 = 0;
        if ((this->type2 == 1) || (this->child->action == 2)) {
            if (gPlayerEntity.base.z.HALF.HI < -0x24)
                this->timer = 1;
            else
                this->timer = 0;
            this->y.HALF.HI += (this->type2 - 1) * -0x24;
            if (EntityInRectRadius(this, &gPlayerEntity.base, 15, 15) && (this->timer != 0)) {
                this->action = 2;
                this->spriteOrientation.flipY = 2;
                this->spriteRendering.b3 = 3;
                if (this->type2 != 1) {
                    this->child->action = 1;
                }
                gPlayerState.field_0x14 = 1;
                gPlayerEntity.base.y.HALF.HI -= 0x24;
                gPlayerEntity.base.z.HALF.HI += 0x24;
                sub_0807AA80(&gPlayerEntity.base);
                if (this->subtimer == 0) {
                    Entity* fx = CreateFx(&gPlayerEntity.base, FX_DEATH, 0);
                    if (fx != NULL) {
                        fx->x.HALF.HI += 8;
                    }
                    fx = CreateFx(&gPlayerEntity.base, FX_DEATH, 0);
                    if (fx != NULL) {
                        fx->x.HALF.HI -= 8;
                    }
                    fx = CreateFx(&gPlayerEntity.base, FX_DEATH, 0);
                    if (fx != NULL) {
                        fx->y.HALF.HI += 8;
                    }
                    fx = CreateFx(&gPlayerEntity.base, FX_DEATH, 0);
                    if (fx != NULL) {
                        fx->y.HALF.HI -= 8;
                    }
                }
            }
            this->y.HALF.HI += (this->type2 - 1) * 0x24;
            this->subtimer = this->timer;
        }
    }
}

void AmbientClouds_Action2(Entity* this) {
    this->y.HALF.HI += this->type2 * -0x24;
    if (EntityInRectRadius(this, &gPlayerEntity.base, 15, 15)) {
        gPlayerState.field_0x14 = 1;
        gPlayerState.flags |= PL_FLAGS2;
    } else {
        this->action = 1;
        gPlayerEntity.base.z.HALF_U.HI += this->z.HALF_U.HI;
        gPlayerEntity.base.y.HALF_U.HI -= this->z.HALF_U.HI;
        gPlayerEntity.base.collisionLayer = 1;
    }
    this->y.HALF.HI += this->type2 * 0x24;
}

void AmbientClouds_Action3(Entity* this) {
    if (EntityInRectRadius(this, &gPlayerEntity.base, 15, 15)) {
        gPlayerState.field_0x14 = 1;
    }
}
