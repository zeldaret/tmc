#include "entity.h"
#include "enemy.h"
#include "functions.h"
#include "player.h"
#include "effects.h"

extern void sub_0800449C(Entity*, u32);
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

void nullsub_539(Entity* this) {
}

void sub_080A9CF0(Entity* this) {
    if (sub_0806F520() == 0) {
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
            sub_0800449C(&gPlayerEntity, 0x7a);
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
    PositionRelative(this->parent, this, 0, -0x10000);
    this->z.HALF.HI = 0xfffe;
    UpdateAnimationSingleFrame(this);
}

void (*const LakituCloudProjectile_Functions[])(Entity*) = {
    LakituCloudProjectile_OnTick, nullsub_539, DeleteEntity, DeleteEntity, DeleteEntity, sub_080A9CF0,
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
