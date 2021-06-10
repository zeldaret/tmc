#include "entity.h"
#include "enemy.h"
#include "functions.h"
#include "player.h"

extern void (*const gUnk_08129B58[])(Entity*);

extern void (*const gUnk_08129B70[])(Entity*);

extern void (*const gUnk_08129B78[])(Entity*);

extern void sub_0800449C(Entity*, u32);
extern void sub_08079D84(void);

void Projectile11(Entity* this) {
    if (this->parent->next == NULL) {
        DeleteThisEntity();
    }
    gUnk_08129B58[GetNextFunction(this)](this);
}

void sub_080A9CD4(Entity* this) {
    gUnk_08129B70[this->action](this);
}

void nullsub_539(Entity* this) {
}

void sub_080A9CF0(Entity* this) {
    if (sub_0806F520() == 0) {
        CreateFx(this, 2, 0);
        DeleteThisEntity();
    }
    gUnk_08129B78[this->subAction](this);
}

void sub_080A9D20(Entity* this) {
    this->subAction = 2;
}

void nullsub_540(Entity* this) {
}

void sub_080A9D2C(Entity* this) {
    if (sub_0806F3E4(this) != 0) {
        if (this->damageType == 0xa6) {
            ModHealth(-2);
            sub_0800449C(&gPlayerEntity, 0x7a);
            sub_08079D84();
        }
        CreateFx(this, 2, 0);
        DeleteThisEntity();
    }
}

void sub_080A9D6C(Entity* this) {
    this->action = 1;
    this->animationState = this->parent->animationState;
    InitAnimationForceUpdate(this, this->animationState);
}

void sub_080A9D80(Entity* this) {
    PositionRelative(this->parent, this, 0, -0x10000);
    this->height.HALF.HI = 0xfffe;
    UpdateAnimationSingleFrame(this);
}
