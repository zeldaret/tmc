/**
 * @file cuccoChickAggr.c
 * @ingroup Enemies
 *
 * @brief Cucco Chick Aggr enemy
 */
#include "enemy.h"
#include "functions.h"

void sub_08022A88(Entity*);
void sub_08022AA4(Entity*);
void sub_08022B0C(Entity*);
u32 sub_08022B20(Entity*);
void sub_08022B44(Entity*);

extern void (*const CuccoChickAggr_Functions[])(Entity*);
extern void (*const gUnk_080CBB7C[])(Entity*);

void CuccoChickAggr(Entity* this) {
    CuccoChickAggr_Functions[GetNextFunction(this)](this);
}

void CuccoChickAggr_OnTick(Entity* this) {
    gUnk_080CBB7C[this->action](this);
}

void CuccoChickAggr_OnCollision(Entity* this) {
    EnemyFunctionHandlerAfterCollision(this, CuccoChickAggr_Functions);
}

void CuccoChickAggr_OnGrabbed(Entity* this) {
}

void sub_08022960(Entity* this) {
    sub_0804A720(this);
    sub_08022A88(this);
}

void sub_08022970(Entity* this) {
    if (--this->timer == 0) {
        sub_08022AA4(this);
    }
}

void sub_08022988(Entity* this) {
    if (this->z.HALF.HI == 0 && sub_08022B20(this)) {
        sub_08022B0C(this);
    } else {
        if (this->subtimer) {
            if (--this->subtimer)
                return;

            this->frameIndex = 1;
            this->zVelocity = Q_16_16(1.0);
            EnqueueSFX(SFX_VO_CHEEP);
        }

        ProcessMovement0(this);
        if (GravityUpdate(this, Q_8_8(32.0)) == 0) {
            if (--this->timer == 0) {
                sub_08022A88(this);
            } else {
                this->subtimer = 4;
                this->frameIndex = 0;
            }
        }
    }
}

void sub_080229F8(Entity* this) {
    if (GravityUpdate(this, Q_8_8(40.0)) == 0) {
        if (--this->timer == 0) {
            this->action = 4;
            this->timer = 6;
            this->subtimer = 8;
            this->frameIndex = 0;
            this->speed = 0xc0;
            sub_08022B44(this);
        } else {
            this->zVelocity = Q_16_16(1.0);
            EnqueueSFX(SFX_VO_CHEEP);
        }
    }
}

void sub_08022A40(Entity* this) {
    if (this->subtimer) {
        if (--this->subtimer)
            return;

        this->frameIndex = 1;
    }

    ProcessMovement0(this);
    if (GravityUpdate(this, Q_8_8(32.0)) == 0) {
        if (--this->timer == 0) {
            sub_08022A88(this);
        } else {
            sub_08022B44(this);
        }
    }
}

void sub_08022A88(Entity* this) {
    this->action = 1;
    this->timer = (Random() & 0xf) + 8;
    this->frameIndex = 0;
}

void sub_08022AA4(Entity* this) {
    u32 rand = Random();

    this->action = 2;
    this->timer = (rand & 3) + 1;
    this->subtimer = 1;
    this->speed = 0x80;

    if (!sub_08049FA0(this) && (rand >> 8) & 3) {
        this->direction = sub_08049EE4(this);
    } else {
        this->direction =
            (rand >> 0x10) & (0x3 | DIR_DIAGONAL | DirectionNorth | DirectionEast | DirectionSouth | DirectionWest);
    }

    if (this->direction & (0x3 | DirectionEast | DIR_DIAGONAL))
        this->spriteSettings.flipX = (this->direction >> 4) ^ 1;
}

void sub_08022B0C(Entity* this) {
    this->action = 3;
    this->timer = 3;
    this->subtimer = 8;
    sub_08022B44(this);
}

u32 sub_08022B20(Entity* this) {
    if (!sub_08049DF4(2))
        return 0;

    return EntityInRectRadius(this, &gPlayerEntity.base, 36, 36);
}

void sub_08022B44(Entity* this) {
    this->zVelocity = Q_16_16(0.75);
    this->direction = GetFacingDirection(this, &gPlayerEntity.base);

    if (this->direction & (0x3 | DIR_DIAGONAL | DirectionEast))
        this->spriteSettings.flipX = (this->direction >> 4) ^ 1;

    EnqueueSFX(SFX_VO_CHEEP);
}

// clang-format off
void (*const CuccoChickAggr_Functions[])(Entity*) = {
    CuccoChickAggr_OnTick,
    CuccoChickAggr_OnCollision,
    GenericKnockback,
    GenericDeath,
    GenericConfused,
    CuccoChickAggr_OnGrabbed,
};

void (*const gUnk_080CBB7C[])(Entity*) = {
    sub_08022960,
    sub_08022970,
    sub_08022988,
    sub_080229F8,
    sub_08022A40,
};
// clang-format on
