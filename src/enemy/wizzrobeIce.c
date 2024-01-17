/**
 * @file wizzrobeIce.c
 * @ingroup Enemies
 *
 * @brief Wizzrobe Ice enemy
 */
#include "enemy/wizzrobe.h"
#include "enemy.h"
#include "functions.h"
#include "object.h"

extern void (*const WizzrobeIce_Functions[])(WizzrobeEntity*);
extern void (*const WizzrobeIce_Actions[])(WizzrobeEntity*);

void WizzrobeIce(WizzrobeEntity* this) {
    WizzrobeIce_Functions[GetNextFunction(super)](this);
    EnemySetFXOffset(super, 0, 1, -0x10);
}

void WizzrobeIce_OnTick(WizzrobeEntity* this) {
    WizzrobeIce_Actions[super->action](this);
}

void WizzrobeIce_OnCollision(WizzrobeEntity* this) {
    if (super->confusedTime != 0) {
        EnemyCreateFX(super, FX_STARS);
    }
    EnemyFunctionHandlerAfterCollision(super, WizzrobeIce_Functions);
    if (super->contactFlags == (CONTACT_NOW | 0x7)) {
        Entity* obj = CreateObject(FLAME, 3, 0);
        if (obj != NULL) {
            obj->spritePriority.b0 = 3;
            obj->spriteOffsetY = -4;
            obj->parent = super;
        }
    }
    if (super->health == 0) {
        SetTile(this->tileIndex, this->tilePos, super->collisionLayer);
    }
}

void WizzrobeIce_Init(WizzrobeEntity* this) {
    Entity* projectile;

    sub_0804A720(super);
    super->action = 1;
    this->timer2 = 0xff;
    this->timer1 = 0x28;
    super->timer = 40;
    super->subtimer = 96;
    sub_0802F888(this);
    projectile = EnemyCreateProjectile(super, ICE_PROJECTILE, 0);
    if (projectile != NULL) {
        super->child = projectile;
        projectile->parent = super;
        projectile->direction = super->direction;
    }
    InitializeAnimation(super, super->direction >> 3);
}

void WizzrobeIce_Action1(WizzrobeEntity* this) {
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
                super->timer = 12;
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

void WizzrobeIce_Action2(WizzrobeEntity* this) {
    switch (this->timer2) {
        case 0:
            switch (--super->timer) {
                case 0:
                    this->timer2++;
                    super->timer = 56;
                    super->subtimer = 0;
                    super->child->spriteSettings.draw = 0;
                    break;
                case 0xa:
                    if (EntityInRectRadius(super, &gPlayerEntity.base, 0xa0, 0xa0) && CheckOnScreen(super)) {
                        Entity* projectile = EnemyCreateProjectile(super, ICE_PROJECTILE, 1);
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
                super->timer = (Random() & 0x3f) + 24;
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

void (*const WizzrobeIce_Functions[])(WizzrobeEntity*) = {
    WizzrobeIce_OnTick,
    WizzrobeIce_OnCollision,
    (void (*)(WizzrobeEntity*))GenericKnockback,
    (void (*)(WizzrobeEntity*))GenericDeath,
    (void (*)(WizzrobeEntity*))GenericConfused,
    WizzrobeIce_OnTick,
};
void (*const WizzrobeIce_Actions[])(WizzrobeEntity*) = {
    WizzrobeIce_Init,
    WizzrobeIce_Action1,
    WizzrobeIce_Action2,
};
