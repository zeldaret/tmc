#include "enemy.h"
#include "entity.h"
#include "functions.h"

extern u32 sub_0804A024(Entity*, u32, u32);

extern Entity* gUnk_020000B0;

void sub_0802B9B4(Entity*);
void sub_0802B7A4(Entity*);
void sub_0802B960(Entity*);

extern void (*const gUnk_080CD2D8[])(Entity*);
extern void (*const gUnk_080CD2F0[])(Entity*);
extern const u8 gUnk_080CD314[];
extern const s8 gUnk_080CD318[];

void SpikedBeetle(Entity* this) {
    EnemyFunctionHandler(this, gUnk_080CD2D8);
    SetChildOffset(this, 0, 1, -0x10);
}

void sub_0802B610(Entity* this) {
    gUnk_080CD2F0[this->action](this);
}

void sub_0802B628(Entity* this) {
    switch (this->bitfield & 0x7f) {
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
                this->actionDelay = 1;
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
                this->field_0x20 = 0x18000;
                this->speed = 0xc0;
                this->direction = this->field_0x3e;
                this->field_0x42 = 0;
                this->iframes = -8;
                this->damageType = 100;
                InitializeAnimation(this, 9);
            }
    }
    if (this->field_0x43) {
        sub_0804A9FC(this, 0x1c);
    }
    sub_0804AA30(this, gUnk_080CD2D8);
}

void nullsub_144(Entity* this) {
    /* ... */
}

void sub_0802B72C(Entity* this) {
    sub_0804A720(this);
    this->actionDelay = 1;
    this->animationState = 0xff;
    sub_0802B7A4(this);
}

void sub_0802B744(Entity* this) {
    u32 direction;

    GetNextFrame(this);
    if (sub_08049FDC(this, 1) && (direction = sub_0804A024(this, 1, 0xc), direction != 0xff)) {
        this->action = 3;
        this->actionDelay = 0x1e;
        this->direction = DirectionRound(direction);
        InitializeAnimation(this, 8);
    } else {
        if (--this->actionDelay == 0) {
            this->action = 2;
            this->actionDelay = 0x1e;
        } else {
            if (!ProcessMovement(this)) {
                this->actionDelay = 1;
            }
        }
    }
}

void sub_0802B7A4(Entity* this) {
    if (--this->actionDelay == 0) {
        this->action = 1;
        this->actionDelay = gUnk_080CD314[Random() & 3];
        this->speed = 0x60;
        sub_0802B960(this);
        if (this->direction != 0xff) {
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
    if (--this->actionDelay == 0) {
        this->action = 4;
        this->actionDelay = 0x78;
        this->speed = 0x1c0;
    }
}

void sub_0802B820(Entity* this) {
    if (!sub_080AEFE0(this)) {
        this->actionDelay = 1;
    }
    GetNextFrame(this);
    if (--this->actionDelay == 0) {
        sub_0802B9B4(this);
    } else if (sub_08049FDC(this, 1)) {
        if ((this->actionDelay & 0xf) == 0) {
            sub_08004596(this, GetFacingDirection(this, gUnk_020000B0));
        }
    } else {
        sub_0802B9B4(this);
    }
}

void sub_0802B880(Entity* this) {
    if (--this->actionDelay == 0) {
        this->action = 2;
        this->actionDelay = 0x3c;
        this->animationState = DirectionToAnimationState(this->direction);
        InitializeAnimation(this, this->animationState);
    }
}

void sub_0802B8B0(Entity* this) {
    sub_080AEFE0(this);
    switch (sub_080044EC(this, 0x1800)) {
        case 0:
            this->action = 7;
            this->actionDelay = 0x96;
            /* fallthrough */
        case 1:
            EnqueueSFX(299);
            break;
    }
}

void sub_0802B8E0(Entity* this) {
    if (--this->actionDelay) {
        if (this->actionDelay < 0x3c && (this->actionDelay & 1)) {
            this->spriteOffsetX += gUnk_080CD318[(this->actionDelay >> 1) & 3];
        }
    } else {
        this->action = 8;
        this->field_0x20 = 0x10000;
        this->speed = 0x60;
        this->damageType = 99;
        InitializeAnimation(this, this->animationState);
        EnqueueSFX(299);
    }
}

void sub_0802B948(Entity* this) {
    if (!sub_08003FC4(this, 0x1800)) {
        this->action = 1;
        this->actionDelay = 1;
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
    this->actionDelay = 0x3c;
    this->animationState = (this->direction >> 3) & 3;
    InitializeAnimation(this, this->animationState + 4);
}

// clang-format off
void (*const gUnk_080CD2D8[])(Entity*) = {
    sub_0802B610,
    sub_0802B628,
    sub_08001324,
    sub_0804A7D4,
    sub_08001242,
    nullsub_144,
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
