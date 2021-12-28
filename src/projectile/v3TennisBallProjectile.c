#include "entity.h"
#include "enemy.h"

extern s32 sub_080AF090(Entity*);
extern s32 IsProjectileOffScreen(Entity*);

extern void (*const V3TennisBallProjectile_Functions[])(Entity*);
extern void (*const V3TennisBallProjectile_Actions[])(Entity*);

void sub_080ACB90(Entity*);

void V3TennisBallProjectile(Entity* this) {
    V3TennisBallProjectile_Functions[GetNextFunction(this)](this);
}

void V3TennisBallProjectile_OnTick(Entity* this) {
    V3TennisBallProjectile_Actions[this->action](this);
}

ASM_FUNC("asm/non_matching/v3TennisBallProjectile/sub_080ACA68.inc", void sub_080ACA68(Entity* this))

void V3TennisBallProjectile_Init(Entity* this) {
    this->action = 1;
    this->direction = 0x10;
    this->z.HALF.HI = 0xfffc;
    this->child = NULL;
    InitializeAnimation(this, 7);
    SoundReq(SFX_199);
}

void V3TennisBallProjectile_Action1(Entity* this) {
    sub_080AF090(this);
    GetNextFrame(this);
    if (IsProjectileOffScreen(this) != 0) {
        DeleteThisEntity();
    }
}

void V3TennisBallProjectile_Action2(Entity* this) {
    sub_080AF090(this);
    if (this->collisions != 0) {
        DeleteThisEntity();
    }
    GetNextFrame(this);
    sub_080ACB90(this);
    if (IsProjectileOffScreen(this) != 0) {
        DeleteThisEntity();
    }
}

ASM_FUNC("asm/non_matching/v3TennisBallProjectile/sub_080ACB40.inc", void sub_080ACB40(Entity* this))

void sub_080ACB90(Entity* this) {
    Entity* parent = this->parent;
    if ((this->x.HALF.HI == parent->x.HALF.HI) && (this->y.HALF.HI <= parent->y.HALF.HI)) {
        parent->field_0xf = 1;
        CreateFx(this, FX_REFLECT2, 0x40);
        EnqueueSFX(SFX_ITEM_GLOVES_KNOCKBACK);
        DeleteThisEntity();
    }
}

void (*const V3TennisBallProjectile_Functions[])(Entity*) = {
    V3TennisBallProjectile_OnTick, sub_080ACA68, DeleteEntity, DeleteEntity, DeleteEntity,
    V3TennisBallProjectile_OnTick,
};
void (*const V3TennisBallProjectile_Actions[])(Entity*) = {
    V3TennisBallProjectile_Init,
    V3TennisBallProjectile_Action1,
    V3TennisBallProjectile_Action2,
};
