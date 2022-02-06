/**
 * @file enemy4D.c
 * @ingroup Enemies
 *
 * @brief enemy 4D
 */

#include "global.h"
#include "entity.h"
#include "enemy.h"
#include "functions.h"

extern void sub_0803EE8C(Entity*);

extern void (*const Enemy4D_Functions[])(Entity*);
extern void (*const gUnk_080D0898[])(Entity*);

void Enemy4D(Entity* this) {
    EnemyFunctionHandler(this, Enemy4D_Functions);
}

void Enemy4D_OnTick(Entity* this) {
    gUnk_080D0898[this->action](this);
}

void Enemy4D_OnCollision(Entity* this) {
    EnemyFunctionHandlerAfterCollision(this, Enemy4D_Functions);
}

void Enemy4D_OnKnockback(Entity* this) {
    GenericKnockback(this);
    Enemy4D_OnTick(this);
}

void Enemy4D_OnDeath(Entity* this) {
    CreateDeathFx(this, 0xff, 0x57);
}

void Enemy4D_OnGrabbed(Entity* this) {
}

void sub_0803EB44(Entity* this) {
    Entity* pEVar1;

    sub_0804A720(this);
    pEVar1 = CreateProjectileWithParent(this, BALL_AND_CHAIN, 0);
    if (pEVar1 != NULL) {
        pEVar1->parent = this;
        this->child = pEVar1;
        COLLISION_ON(this);
        this->spriteSettings.draw = TRUE;
        this->animationState = 2;
        *((u8*)&this->field_0x7a + 1) = 0;
        *(u8*)&this->field_0x7c = 0;
        *((u8*)&this->field_0x7c + 2) = 0x28;
        *((u8*)&this->field_0x7c + 3) = 0xfe;
        this->field_0x80.HWORD = this->x.HALF.HI;
        this->field_0x82.HWORD = this->y.HALF.HI;
        InitAnimationForceUpdate(this, this->animationState << 2);
        sub_0803EE8C(this);
    }
}
