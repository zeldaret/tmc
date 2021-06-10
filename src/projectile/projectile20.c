#include "entity.h"
#include "enemy.h"
#include "player.h"
#include "audio.h"

extern void (*const gUnk_0812A84C[])(Entity*);

extern s32 sub_080AF090(Entity*);
extern s32 sub_080A7EB0(Entity*);

void Projectile20(Entity* this) {
    gUnk_0812A84C[GetNextFunction(this)](this);
}

void sub_080ABF40(Entity* this) {
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
    if (sub_080A7EB0(this) != 0) {
        DeleteThisEntity();
    }
}

void sub_080ABFA8(Entity* this) {
    DeleteThisEntity();
}
