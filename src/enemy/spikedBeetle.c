/**
 * @file spikedBeetle.c
 * @ingroup Enemies
 *
 * @brief Spiked Beetle enemy
 */
#include "enemy.h"
#include "functions.h"

extern u32 sub_0804A024(Entity*, u32, u32);

extern Entity* gUnk_020000B0;

void sub_0802B9B4(Entity*);
void sub_0802B7A4(Entity*);
void sub_0802B960(Entity*);

extern void (*const SpikedBeetle_Functions[])(Entity*);
extern void (*const gUnk_080CD2F0[])(Entity*);
extern const u8 gUnk_080CD314[];
extern const s8 gUnk_080CD318[];

void SpikedBeetle(Entity* this) {
    EnemyFunctionHandler(this, SpikedBeetle_Functions);
    EnemySetFXOffset(this, 0, 1, -0x10);
}

void SpikedBeetle_OnTick(Entity* this) {
    gUnk_080CD2F0[this->action](this);
}

void SpikedBeetle_OnCollision(Entity* this) {
    switch (this->contactFlags & 0x7f) {
        case 0:
        case 4:
        case 5:
        case 6:
        case 8:
        case 9:
        case 10:
        case 0xb:
        case 0xc:
            if (this->action == 4) {
                this->timer = 1;
            }
            break;
        case 2:
        case 3:
        case 0x16:
        case 0x18:
        case 0x19:
        case 0x1a:
        case 0x1d:
            if (this->action < 6) {
                this->action = 6;
                this->zVelocity = Q_16_16(1.5);
                this->speed = 0xc0;
                this->direction = this->knockbackDirection;
                this->knockbackDuration = 0;
                this->iframes = -8;
                this->hitType = 100;
                InitializeAnimation(this, 9);
            }
    }
    if (this->confusedTime) {
        EnemyCreateFX(this, FX_STARS);
    }
    EnemyFunctionHandlerAfterCollision(this, SpikedBeetle_Functions);
}

void SpikedBeetle_OnGrabbed(Entity* this) {
    /* ... */
}

void sub_0802B72C(Entity* this) {
    sub_0804A720(this);
    this->timer = 1;
    this->animationState = 0xff;
    sub_0802B7A4(this);
}

void sub_0802B744(Entity* this) {
    u32 direction;

    GetNextFrame(this);
    if (sub_08049FDC(this, 1) && (direction = sub_0804A024(this, 1, 0xc), direction != 0xff)) {
        this->action = 3;
        this->timer = 30;
        this->direction = DirectionRound(direction);
        InitializeAnimation(this, 8);
    } else {
        if (--this->timer == 0) {
            this->action = 2;
            this->timer = 30;
        } else {
            if (!ProcessMovement0(this)) {
                this->timer = 1;
            }
        }
    }
}

void sub_0802B7A4(Entity* this) {
    if (--this->timer == 0) {
        this->action = 1;
        this->timer = gUnk_080CD314[Random() & 3];
        this->speed = 0x60;
        sub_0802B960(this);
        if (this->direction != DIR_NONE) {
            u32 animation = this->direction >> 3;
            if (animation != this->animationState) {
                this->animationState = animation & 3;
                InitializeAnimation(this, animation);
            }
        }
    }
}

void sub_0802B7FC(Entity* this) {
    GetNextFrame(this);
    if (--this->timer == 0) {
        this->action = 4;
        this->timer = 120;
        this->speed = 0x1c0;
    }
}

void sub_0802B820(Entity* this) {
    if (!ProcessMovement2(this)) {
        this->timer = 1;
    }
    GetNextFrame(this);
    if (--this->timer == 0) {
        sub_0802B9B4(this);
    } else if (sub_08049FDC(this, 1)) {
        if ((this->timer & 0xf) == 0) {
            sub_08004596(this, GetFacingDirection(this, gUnk_020000B0));
        }
    } else {
        sub_0802B9B4(this);
    }
}

void sub_0802B880(Entity* this) {
    if (--this->timer == 0) {
        this->action = 2;
        this->timer = 60;
        this->animationState = DirectionToAnimationState(this->direction);
        InitializeAnimation(this, this->animationState);
    }
}

void sub_0802B8B0(Entity* this) {
    ProcessMovement2(this);
    switch (BounceUpdate(this, Q_8_8(24.0))) {
        case BOUNCE_DONE_ALL:
            this->action = 7;
            this->timer = 150;
            /* fallthrough */
        case BOUNCE_INIT_NEXT:
            EnqueueSFX(SFX_12B);
            break;
    }
}

void sub_0802B8E0(Entity* this) {
    if (--this->timer) {
        if (this->timer < 0x3c && (this->timer & 1)) {
            this->spriteOffsetX += gUnk_080CD318[(this->timer >> 1) & 3];
        }
    } else {
        this->action = 8;
        this->zVelocity = Q_16_16(1.0);
        this->speed = 0x60;
        this->hitType = 99;
        InitializeAnimation(this, this->animationState);
        EnqueueSFX(SFX_12B);
    }
}

void sub_0802B948(Entity* this) {
    if (!GravityUpdate(this, Q_8_8(24.0))) {
        this->action = 1;
        this->timer = 1;
    }
}

void sub_0802B960(Entity* this) {
    if (sub_08049FDC(this, 1)) {
        if ((Random() & 7) == 0) {
            this->direction = DirectionRoundUp(sub_08049F84(this, 1));
            return;
        }
    } else if (!sub_08049FA0(this)) {
        if ((Random() & 3) == 0) {
            this->direction = DirectionRoundUp(sub_08049EE4(this));
            return;
        }
    }

    this->direction = DirectionRound(Random());
}

void sub_0802B9B4(Entity* this) {
    this->action = 5;
    this->timer = 60;
    this->animationState = (this->direction >> 3) & 3;
    InitializeAnimation(this, this->animationState + 4);
}

// clang-format off
void (*const SpikedBeetle_Functions[])(Entity*) = {
    SpikedBeetle_OnTick,
    SpikedBeetle_OnCollision,
    GenericKnockback,
    GenericDeath,
    GenericConfused,
    SpikedBeetle_OnGrabbed,
};

void (*const gUnk_080CD2F0[])(Entity*) = {
    sub_0802B72C,
    sub_0802B744,
    sub_0802B7A4,
    sub_0802B7FC,
    sub_0802B820,
    sub_0802B880,
    sub_0802B8B0,
    sub_0802B8E0,
    sub_0802B948,
};

const u8 gUnk_080CD314[] = {
    0x30,
    0x48,
    0x60,
    0x78,
};

const s8 gUnk_080CD318[] = {
    1, -1, -1, 1,
};
// clang-format on
