/**
 * @file rockChuchu.c
 * @ingroup Enemies
 *
 * @brief Rock Chuchu enemy
 */
#include "enemy.h"
#include "player.h"

extern void (*const RockChuchu_Functions[])(Entity*);
extern void (*const gUnk_080CB960[])(Entity*);

void RockChuchu(Entity* this) {
    EnemyFunctionHandler(this, RockChuchu_Functions);
}

void RockChuchu_OnTick(Entity* this) {
    gUnk_080CB960[this->action](this);
}

void RockChuchu_OnCollision(Entity* this) {
    Entity* entity;

    if (this->health) {
        switch (this->contactFlags & 0x7f) {
            case 4:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 0xb:
            case 0xc:
            case 0xd:
            case 0x10:
            case 0x11:
            case 0x12:
            case 0x18:
            case 0x19:
            case 0x1a:
                if ((gPlayerState.skills & SKILL_ROCK_BREAKER) == 0)
                    break;
            case 0x16:
            case 0x1c:
                CreateFx(this, FX_ROCK, 0);
                entity = CreateEnemy(CHUCHU, 1);
                if (entity != NULL) {
                    entity->type2 = 1;
#ifndef EU
                    entity->iframes = -8;
#endif
                    EnemyCopyParams(this, entity);
                    this->action = 2;
                    COLLISION_OFF(this);
                    this->spriteSettings.draw = 0;
                    this->direction = this->knockbackDirection;
                    this->child = entity;
                }
        }
    } else {
        if (this->hitType != 0x94)
            InitializeAnimation(this, 2);
    }

    EnemyFunctionHandlerAfterCollision(this, RockChuchu_Functions);
}

void RockChuchu_OnGrabbed(Entity* this) {
}

void sub_08022368(Entity* this) {
    sub_0804A720(this);
    this->action = 1;
    this->timer = Random();
    this->direction = sub_08049F84(this, 1);
    InitializeAnimation(this, 0);
}

void sub_08022390(Entity* this) {
    if (sub_08049FDC(this, 1)) {
        if ((this->timer++ & 0xf) == 0) {
            this->direction = sub_08049F84(this, 1);
            this->subtimer = Random() & 4;
        }

        if (this->subtimer == 0) {
            ProcessMovement0(this);
        } else {
            this->subtimer = this->subtimer - 1;
        }
    } else {
        this->timer = Random();
    }

    GetNextFrame(this);
}

void sub_080223E4(Entity* this) {
    Entity* entity;

    entity = this->child;
    if (entity != NULL) {
        entity->contactFlags = (CONTACT_NOW | 0x14);
        entity->iframes = 0x10;
#ifndef EU
        entity->knockbackDuration = 0xc;
        entity->knockbackDirection = this->direction;
#endif
    }

    DeleteEntity(this);
}

// clang-format off
void (*const RockChuchu_Functions[])(Entity*) = {
    RockChuchu_OnTick,
    RockChuchu_OnCollision,
    GenericKnockback,
    GenericDeath,
    GenericConfused,
    RockChuchu_OnGrabbed,
};

void (*const gUnk_080CB960[])(Entity*) = {
    sub_08022368,
    sub_08022390,
    sub_080223E4,
};
// clang-format on
