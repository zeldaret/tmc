/**
 * @file lakituCloud.c
 * @ingroup Enemies
 *
 * @brief Lakitu Cloud enemy
 */

#include "global.h"
#include "asm.h"
#include "entity.h"
#include "player.h"
#include "functions.h"
#include "effects.h"
#include "enemy.h"

extern void (*const LakituCloud_Functions[6])(Entity*);
extern void (*const gUnk_080D0430[3])(Entity*);
extern void (*const gUnk_080D043C[3])(Entity*);

void sub_0803CE14(Entity*);
void sub_0803CE3C(Entity*);

void LakituCloud(Entity* this) {
    LakituCloud_Functions[GetNextFunction(this)](this);
}

void LakituCloud_OnTick(Entity* this) {
    gUnk_080D0430[this->action](this);
}

void LakituCloud_OnKnockback(Entity* this) {
    this->knockbackDuration = 0;
    LakituCloud_OnTick(this);
}

void LakituCloud_OnGrabbed(Entity* this) {
    if (sub_0806F520(this) == 0) {
        if (this->subAction == 2) {
            sub_0803CE3C(this);
        }
    } else {
        gUnk_080D043C[this->subAction](this);
    }
}

void sub_0803CD2C(Entity* this) {
    this->subAction = 1;
    this->field_0x1d = 0x3c;
}

void sub_0803CD38(Entity* this) {
    sub_0806F4E8(this);
}

void sub_0803CD40(Entity* this) {
    if (!sub_0806F3E4(this)) {
        return;
    }

    ModHealth(-2);

    SoundReqClipped(&gPlayerEntity, SFX_PLY_VO6);
    sub_08079D84();

    sub_0803CE3C(this);
}

void sub_0803CD6C(Entity* this) {
    Entity* lakitu;

    this->action = 1;
    this->z.HALF.HI = -2;

    // Set parent to lakitu
    lakitu = GetCurrentRoomProperty(this->type);
    this->child = lakitu;
    this->parent = lakitu;

    this->field_0x78.HWORD = this->x.HALF.HI;
    this->field_0x7a.HWORD = this->y.HALF.HI;

    InitAnimationForceUpdate(this, 4);

    sub_0803CE14(this);
}

void sub_0803CDA8(Entity* this) {
    UpdateAnimationSingleFrame(this);

    if ((this->direction & 0x80) == 0) {
        LinearMoveUpdate(this);
    }

    if (--this->field_0x74.HWORD << 0x10 == 0) {
        sub_0803CE14(this);
    }
}

void sub_0803CDD8(Entity* this) {
    u8 one;
    u8 draw;

    draw = this->spriteSettings.draw;
    one = 1;
    this->spriteSettings.draw = draw ^ one;

    this->actionDelay--;

    if (this->actionDelay == 0) {
        this->action = 1;

        COLLISION_ON(this);

        this->spriteSettings.draw = one;
    }
}

void sub_0803CE14(Entity* this) {
    u8 direction;

    sub_080A2CC0(this, (u16**)&this->child, &this->field_0x74.HWORD);

    direction = this->direction;
    if (direction & 0x80) {
        return;
    }

    direction = direction / 8 + 4;

    InitAnimationForceUpdate(this, direction);
}

void sub_0803CE3C(Entity* this) {
    CreateFx(this, FX_DEATH, 0);

    this->action = 2;
    this->actionDelay = 60;

    COLLISION_OFF(this);

    this->field_0x3a &= 0xfb;

    this->x.HALF.HI = this->field_0x78.HWORD;
    this->y.HALF.HI = this->field_0x7a.HWORD;

    this->child = this->parent;

    sub_0803CE14(this);
}

void (*const LakituCloud_Functions[])(Entity*) = {
    LakituCloud_OnTick, LakituCloud_OnTick, LakituCloud_OnKnockback,
    GenericDeath,       GenericConfused,    LakituCloud_OnGrabbed,
};

void (*const gUnk_080D0430[])(Entity*) = {
    sub_0803CD6C,
    sub_0803CDA8,
    sub_0803CDD8,
};

void (*const gUnk_080D043C[])(Entity*) = {
    sub_0803CD2C,
    sub_0803CD38,
    sub_0803CD40,
};
