#include "entity.h"
#include "enemy.h"
#include "player.h"
#include "audio.h"

extern s32 sub_080AF090(Entity*);
extern s32 IsProjectileOffScreen(Entity*);

extern void (*const V3HandProjectile_Functions[])(Entity*);

void V3HandProjectile(Entity* this) {
    V3HandProjectile_Functions[GetNextFunction(this)](this);
}

void V3HandProjectile_OnTick(Entity* this) {
    if (this->action == 0) {
        this->action = 1;
        this->direction = GetFacingDirection(this, &gPlayerEntity);
        InitializeAnimation(this, 0);
        SoundReq(SFX_199);
    }
    if (this->height.HALF.HI < -6) {
        this->height.HALF.HI += 2;
    }
    sub_080AF090(this);
    if (this->collisions != 0) {
        DeleteThisEntity();
    }
    GetNextFrame(this);
    if (IsProjectileOffScreen(this) != 0) {
        DeleteThisEntity();
    }
}

void sub_080ABFA8(Entity* this) {
    DeleteThisEntity();
}

void (*const V3HandProjectile_Functions[])(Entity*) = {
    V3HandProjectile_OnTick, sub_080ABFA8, DeleteEntity, DeleteEntity, DeleteEntity,
};
