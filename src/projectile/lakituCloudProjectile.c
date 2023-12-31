/**
 * @file lakituCloudProjectile.c
 * @ingroup Projectiles
 *
 * @brief Lakitu Cloud Projectile
 */
#include "enemy.h"
#include "entity.h"
#include "functions.h"

extern void SoundReqClipped(Entity*, u32);
extern void sub_08079D84(void);

extern void (*const LakituCloudProjectile_Functions[])(Entity*);
extern void (*const LakituCloudProjectile_Actions[])(Entity*);
extern void (*const LakituCloudProjectile_SubActions[])(Entity*);

void LakituCloudProjectile(Entity* this) {
    if (this->parent->next == NULL) {
        DeleteThisEntity();
    }
    LakituCloudProjectile_Functions[GetNextFunction(this)](this);
}

void LakituCloudProjectile_OnTick(Entity* this) {
    LakituCloudProjectile_Actions[this->action](this);
}

void LakituCloudProjectile_OnCollision(Entity* this) {
}

void LakituCloudProjectile_OnGrabbed(Entity* this) {
    if (!sub_0806F520(this)) {
        CreateFx(this, FX_DEATH, 0);
        DeleteThisEntity();
    }
    LakituCloudProjectile_SubActions[this->subAction](this);
}

void LakituCloudProjectile_SubAction0(Entity* this) {
    this->subAction = 2;
}

void LakituCloudProjectile_SubAction1(Entity* this) {
}

void LakituCloudProjectile_SubAction2(Entity* this) {
    if (sub_0806F3E4(this) != 0) {
        if (this->hitType == 0xa6) {
            ModHealth(-2);
            SoundReqClipped(&gPlayerEntity.base, SFX_PLY_VO6);
            sub_08079D84();
        }
        CreateFx(this, FX_DEATH, 0);
        DeleteThisEntity();
    }
}

void LakituCloudProjectile_Init(Entity* this) {
    this->action = 1;
    this->animationState = this->parent->animationState;
    InitAnimationForceUpdate(this, this->animationState);
}

void LakituCloudProjectile_Action1(Entity* this) {
    PositionRelative(this->parent, this, 0, Q_16_16(-1.0));
    this->z.HALF.HI = -2;
    UpdateAnimationSingleFrame(this);
}

void (*const LakituCloudProjectile_Functions[])(Entity*) = {
    LakituCloudProjectile_OnTick,    LakituCloudProjectile_OnCollision, DeleteEntity, DeleteEntity, DeleteEntity,
    LakituCloudProjectile_OnGrabbed,
};
void (*const LakituCloudProjectile_Actions[])(Entity*) = {
    LakituCloudProjectile_Init,
    LakituCloudProjectile_Action1,
};
void (*const LakituCloudProjectile_SubActions[])(Entity*) = {
    LakituCloudProjectile_SubAction0,
    LakituCloudProjectile_SubAction1,
    LakituCloudProjectile_SubAction2,
};
