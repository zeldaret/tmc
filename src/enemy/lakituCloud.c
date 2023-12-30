/**
 * @file lakituCloud.c
 * @ingroup Enemies
 *
 * @brief Lakitu Cloud enemy
 */
#include "asm.h"
#include "effects.h"
#include "enemy.h"
#include "entity.h"
#include "object.h"
#include "physics.h"
#include "player.h"
#include "room.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[12];
    /*0x74*/ u16 unk_74;
    /*0x76*/ u8 unused2[2];
    /*0x78*/ u16 unk_78;
    /*0x7a*/ u16 unk_7a;
} LakituCloudEntity;

extern void (*const LakituCloud_Functions[6])(LakituCloudEntity*);
extern void (*const gUnk_080D0430[3])(LakituCloudEntity*);
extern void (*const gUnk_080D043C[3])(LakituCloudEntity*);

void sub_0803CE14(LakituCloudEntity*);
void sub_0803CE3C(LakituCloudEntity*);

void LakituCloud(LakituCloudEntity* this) {
    LakituCloud_Functions[GetNextFunction(super)](this);
}

void LakituCloud_OnTick(LakituCloudEntity* this) {
    gUnk_080D0430[super->action](this);
}

void LakituCloud_OnKnockback(LakituCloudEntity* this) {
    super->knockbackDuration = 0;
    LakituCloud_OnTick(this);
}

void LakituCloud_OnGrabbed(LakituCloudEntity* this) {
    if (!sub_0806F520(super)) {
        if (super->subAction == 2) {
            sub_0803CE3C(this);
        }
    } else {
        gUnk_080D043C[super->subAction](this);
    }
}

void sub_0803CD2C(LakituCloudEntity* this) {
    super->subAction = 1;
    super->gustJarTolerance = 0x3c;
}

void sub_0803CD38(LakituCloudEntity* this) {
    sub_0806F4E8(super);
}

void sub_0803CD40(LakituCloudEntity* this) {
    if (!sub_0806F3E4(super)) {
        return;
    }

    ModHealth(-2);

    SoundReqClipped(&gPlayerEntity.base, SFX_PLY_VO6);
    sub_08079D84();

    sub_0803CE3C(this);
}

void sub_0803CD6C(LakituCloudEntity* this) {
    Entity* lakitu;

    super->action = 1;
    super->z.HALF.HI = -2;

    // Set parent to lakitu
    lakitu = GetCurrentRoomProperty(super->type);
    super->child = lakitu;
    super->parent = lakitu;

    this->unk_78 = super->x.HALF.HI;
    this->unk_7a = super->y.HALF.HI;

    InitAnimationForceUpdate(super, 4);

    sub_0803CE14(this);
}

void sub_0803CDA8(LakituCloudEntity* this) {
    UpdateAnimationSingleFrame(super);

    if (!(super->direction & DIR_NOT_MOVING_CHECK)) {
        LinearMoveUpdate(super);
    }

    if (--this->unk_74 << 0x10 == 0) {
        sub_0803CE14(this);
    }
}

void sub_0803CDD8(LakituCloudEntity* this) {
    u8 one;
    u8 draw;

    draw = super->spriteSettings.draw;
    one = 1;
    super->spriteSettings.draw = draw ^ one;

    super->timer--;

    if (super->timer == 0) {
        super->action = 1;

        COLLISION_ON(super);

        super->spriteSettings.draw = one;
    }
}

void sub_0803CE14(LakituCloudEntity* this) {
    u8 direction;

    UpdateRailMovement(super, (u16**)&super->child, &this->unk_74);

    direction = super->direction;
    if (direction & DIR_NOT_MOVING_CHECK) {
        return;
    }

    direction = direction / 8 + 4;

    InitAnimationForceUpdate(super, direction);
}

void sub_0803CE3C(LakituCloudEntity* this) {
    CreateFx(super, FX_DEATH, 0);

    super->action = 2;
    super->timer = 60;

    COLLISION_OFF(super);

    super->gustJarState &= 0xfb;

    super->x.HALF.HI = this->unk_78;
    super->y.HALF.HI = this->unk_7a;

    super->child = super->parent;

    sub_0803CE14(this);
}

void (*const LakituCloud_Functions[])(LakituCloudEntity*) = {
    LakituCloud_OnTick,
    LakituCloud_OnTick,
    LakituCloud_OnKnockback,
    (void (*)(LakituCloudEntity*))GenericDeath,
    (void (*)(LakituCloudEntity*))GenericConfused,
    LakituCloud_OnGrabbed,
};

void (*const gUnk_080D0430[])(LakituCloudEntity*) = {
    sub_0803CD6C,
    sub_0803CDA8,
    sub_0803CDD8,
};

void (*const gUnk_080D043C[])(LakituCloudEntity*) = {
    sub_0803CD2C,
    sub_0803CD38,
    sub_0803CD40,
};
