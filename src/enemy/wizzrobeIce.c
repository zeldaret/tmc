/**
 * @file wizzrobeIce.c
 * @ingroup Enemies
 *
 * @brief Wizzrobe Ice enemy
 */

#define NENT_DEPRECATED
#include "global.h"
#include "enemy.h"
#include "enemy/wizzrobe.h"
#include "functions.h"
#include "object.h"

extern void (*const WizzrobeIce_Functions[])(WizzrobeEntity*);
extern void (*const WizzrobeIce_Actions[])(WizzrobeEntity*);

void WizzrobeIce(WizzrobeEntity* this) {
    WizzrobeIce_Functions[GetNextFunction(super)](this);
    SetChildOffset(super, 0, 1, -0x10);
}

void WizzrobeIce_OnTick(WizzrobeEntity* this) {
    WizzrobeIce_Actions[super->action](this);
}

void sub_0802FE18(WizzrobeEntity* this) {
    if (super->field_0x43 != 0) {
        sub_0804A9FC(super, 0x1c);
    }
    sub_0804AA30(super, WizzrobeIce_Functions);
    if (super->bitfield == 0x87) {
        Entity* obj = CreateObject(OBJECT_2A, 3, 0);
        if (obj != NULL) {
            obj->spritePriority.b0 = 3;
            obj->spriteOffsetY = -4;
            obj->parent = super;
        }
    }
    if (super->health == 0) {
        SetTile(this->tileIndex, this->tilePosition, super->collisionLayer);
    }
}

void WizzrobeIce_Init(WizzrobeEntity* this) {
    Entity* projectile;

    sub_0804A720(super);
    super->action = 1;
    this->timer2 = 0xff;
    this->timer1 = 0x28;
    super->actionDelay = 0x28;
    super->field_0xf = 0x60;
    sub_0802F888(this);
    projectile = CreateProjectileWithParent(super, ICE_PROJECTILE, 0);
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
            if (--super->field_0xf == 0) {
                this->timer2 = 0;
            }
            break;
        case 0:
            if (--super->actionDelay == 0) {
                this->timer2++;
                super->actionDelay = 0xc;
                super->flags |= 0x80;
            }

            break;
        case 1:
            if (--super->actionDelay == 0) {
                super->action = 2;
                this->timer2 = 0;
                super->actionDelay = 0x20;
                tmp = super->direction >> 3;
                child = super->child;
                child->actionDelay = 1;
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
            switch (--super->actionDelay) {
                case 0:
                    this->timer2 += 1;
                    super->actionDelay = 0x38;
                    super->field_0xf = 0;
                    super->child->spriteSettings.draw = 0;
                    break;
                case 0xa:
                    if (EntityInRectRadius(super, &gPlayerEntity, 0xa0, 0xa0) && CheckOnScreen(super)) {
                        Entity* projectile = CreateProjectileWithParent(super, ICE_PROJECTILE, 1);
                        if (projectile != NULL) {
                            projectile->direction = super->direction & 0x18;
                        }
                    }
                    break;
            }
            break;
        case 1:
            if (--super->actionDelay == 0) {
                this->timer2++;
                this->timer1 = 0x28;
                super->actionDelay = 0x28;
                super->field_0xf = 0;
                super->flags &= 0x7f;
                SetTile(this->tileIndex, this->tilePosition, super->collisionLayer);
                EnqueueSFX(SFX_156);
                InitializeAnimation(super, super->direction >> 3);
            }
            break;
        case 2:
            if (--super->actionDelay == 0) {
                this->timer2++;
                super->actionDelay = (Random() & 0x3f) + 0x18;
                super->spriteSettings.draw = 0;
            }
            break;
        case 3:
            if (--super->actionDelay == 0) {
                super->action = 1;
                this->timer2 = 0;
                this->timer1 = 0x28;
                super->actionDelay = 0x28;
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
    sub_0802FE18,
    (void (*)(WizzrobeEntity*))sub_08001324,
    (void (*)(WizzrobeEntity*))sub_0804A7D4,
    (void (*)(WizzrobeEntity*))sub_08001242,
    WizzrobeIce_OnTick,
};
void (*const WizzrobeIce_Actions[])(WizzrobeEntity*) = {
    WizzrobeIce_Init,
    WizzrobeIce_Action1,
    WizzrobeIce_Action2,
};
