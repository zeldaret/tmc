/**
 * @file wizzrobeFire.c
 * @ingroup Enemies
 *
 * @brief Wizzrobe Fire enemy
 */
#include "enemy/wizzrobe.h"
#include "enemy.h"
#include "functions.h"

extern void (*const WizzrobeFire_Functions[])(WizzrobeEntity*);
extern void (*const WizzrobeFire_Actions[])(WizzrobeEntity*);

void WizzrobeFire(WizzrobeEntity* this) {
    WizzrobeFire_Functions[GetNextFunction(super)](this);
    EnemySetFXOffset(super, 0, 1, -0x10);
}

void WizzrobeFire_OnTick(WizzrobeEntity* this) {
    WizzrobeFire_Actions[super->action](this);
}

void WizzrobeFire_OnCollision(WizzrobeEntity* this) {
    if (super->confusedTime != 0) {
        EnemyCreateFX(super, FX_STARS);
    }
    EnemyFunctionHandlerAfterCollision(super, WizzrobeFire_Functions);
    if (super->health == 0) {
        SetTile(this->tileIndex, this->tilePos, super->collisionLayer);
    }
}

void WizzrobeFire_Init(WizzrobeEntity* this) {
    Entity* projectile;

    sub_0804A720(super);
    super->action = 1;
    this->timer2 = 0xff;
    this->timer1 = 0x28;
    super->timer = 40;
    super->subtimer = 96;
    sub_0802F888(this);
    projectile = EnemyCreateProjectile(super, FIRE_PROJECTILE, 0);
    if (projectile != NULL) {
        super->child = projectile;
        projectile->parent = super;
        projectile->direction = super->direction;
    }
    InitializeAnimation(super, super->direction >> 3);
}

void WizzrobeFire_Action1(WizzrobeEntity* this) {
    u8 tmp;
    Entity* child;

    switch (this->timer2) {
        case 0xff:
            if (--super->subtimer == 0) {
                this->timer2 = 0;
            }
            break;
        case 0:
            if (--super->timer == 0) {
                this->timer2++;
                super->timer = 14;
                super->flags |= 0x80;
            }
            break;
        case 1:
            if (--super->timer == 0) {
                super->action = 2;
                this->timer2 = 0;
                super->timer = 32;
                tmp = super->direction >> 3;
                child = super->child;
                child->timer = 1;
                child->spriteSettings.draw = 1;
                InitializeAnimation(super, tmp | 4);
            }

            break;
    }

    sub_0802F9C8(this);
}

void WizzrobeFire_Action2(WizzrobeEntity* this) {
    switch (this->timer2) {
        case 0:
            switch (--super->timer) {
                case 0:
                    this->timer2++;
                    super->timer = 56;
                    super->subtimer = 0;
                    super->child->spriteSettings.draw = 0;
                    break;
                case 6:
                    if (EntityInRectRadius(super, &gPlayerEntity.base, 0xa0, 0xa0) && CheckOnScreen(super)) {
                        Entity* projectile = EnemyCreateProjectile(super, FIRE_PROJECTILE, 1);
                        if (projectile != NULL) {
                            projectile->direction = super->direction & 0x18;
                        }
                    }
                    break;
            }
            break;
        case 1:
            if (--super->timer == 0) {
                this->timer2++;
                this->timer1 = 0x28;
                super->timer = 40;
                super->subtimer = 0;
                super->flags &= ~0x80;
                SetTile(this->tileIndex, this->tilePos, super->collisionLayer);
                EnqueueSFX(SFX_156);
                InitializeAnimation(super, super->direction >> 3);
            }
            break;

        case 2:
            if (--super->timer == 0) {
                this->timer2++;
                super->timer = (Random() & 0x3f) + 28;
                super->spriteSettings.draw = 0;
            }
            break;
        case 3:
            if (--super->timer == 0) {
                super->action = 1;
                this->timer2 = 0;
                this->timer1 = 0x28;
                super->timer = 40;
                EnqueueSFX(SFX_156);
                sub_0802F8E4(this);
                InitializeAnimation(super, super->direction >> 3);
            }
            break;
    }
    sub_0802F9C8(this);
}

void (*const WizzrobeFire_Functions[])(WizzrobeEntity*) = {
    WizzrobeFire_OnTick,
    WizzrobeFire_OnCollision,
    (void (*)(WizzrobeEntity*))GenericKnockback,
    (void (*)(WizzrobeEntity*))GenericDeath,
    (void (*)(WizzrobeEntity*))GenericConfused,
    WizzrobeFire_OnTick,
};
void (*const WizzrobeFire_Actions[])(WizzrobeEntity*) = {
    WizzrobeFire_Init,
    WizzrobeFire_Action1,
    WizzrobeFire_Action2,
};
