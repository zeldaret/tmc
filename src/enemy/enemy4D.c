#include "global.h"
#include "entity.h"
#include "enemy.h"
#include "functions.h"

extern void sub_0803EE8C(Entity*);

extern void (*const gUnk_080D0880[])(Entity*);
extern void (*const gUnk_080D0898[])(Entity*);

void Enemy4D(Entity* this) {
    EnemyFunctionHandler(this, gUnk_080D0880);
}

void sub_0803EAFC(Entity* this) {
    gUnk_080D0898[this->action](this);
}

void sub_0803EB14(Entity* this) {
    sub_0804AA30(this, gUnk_080D0880);
}

void sub_0803EB24(Entity* this) {
    sub_08001324(this);
    sub_0803EAFC(this);
}

void sub_0803EB34(Entity* this) {
    CreateDeathFx(this, 0xff, 0x57);
}

void nullsub_21() {
}

void sub_0803EB44(Entity* this) {
    Entity* pEVar1;

    sub_0804A720(this);
    pEVar1 = sub_0804A98C(this, 0x19, 0);
    if (pEVar1 != NULL) {
        pEVar1->parent = this;
        this->attachedEntity = pEVar1;
        this->flags |= 0x80;
        this->spriteSettings.b.draw = TRUE;
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
