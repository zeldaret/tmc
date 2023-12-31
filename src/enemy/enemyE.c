/**
 * @file enemyE.c
 * @ingroup Enemies
 *
 * @brief EnemyE enemy
 */
#include "enemy.h"
#include "functions.h"

void sub_08023000(Entity*, int);

extern void (*const EnemyE_Functions[])(Entity*);
extern void (*const gUnk_080CBBDC[])(Entity*);

void EnemyE(Entity* this) {
    EnemyFunctionHandler(this, EnemyE_Functions);
}

void EnemyE_OnTick(Entity* this) {
    gUnk_080CBBDC[this->action](this);
}

void EnemyE_OnCollision(Entity* this) {
}

void sub_08022FD0(Entity* this) {
    this->action = 1;
    this->spriteSettings.draw = 1;
    sub_08023000(this, 0);
}

void sub_08022FEC(Entity* this) {
    sub_08023000(this, 0x80);
}

void sub_08022FF8(Entity* this) {
}

void sub_08022FFC(Entity* this) {
}

void sub_08023000(Entity* this, int frames) {
    int tmp;

    if (frames == 0x80) {
        UpdateAnimationSingleFrame(this);
    } else {
        InitAnimationForceUpdate(this, frames);
    }

    tmp = 0x80;
    if (this->frameSpriteSettings == 0x40)
        tmp *= -1;

    this->spriteRendering.b0 = 3;
    SetAffineInfo(this, tmp, 0x80, 0);
}

// clang-format off
void (*const EnemyE_Functions[])(Entity*) = {
    EnemyE_OnTick,
    EnemyE_OnCollision,
    GenericKnockback,
    GenericDeath,
    GenericConfused,
};

void (*const gUnk_080CBBDC[])(Entity*) = {
    sub_08022FD0,
    sub_08022FEC,
    sub_08022FF8,
    sub_08022FFC,
};
// clang-format on
