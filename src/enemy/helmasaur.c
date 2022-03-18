/**
 * @file helmasaur.c
 * @ingroup Enemies
 *
 * @brief Helmasaur enemy
 */

#include "enemy.h"
#include "object.h"
#include "functions.h"

extern u32 sub_0804A024(Entity*, u32, u32);

extern u8 gUnk_0200D654[];
extern u8 gUnk_02027EB4[];

void sub_0802C18C(Entity*);
void sub_0802C218(Entity*);
void sub_0802C1C0(Entity*);
u32 sub_0802C020(Entity*);
void sub_0802C058(Entity*, u32);
bool32 sub_0802C06C(Entity*);
void sub_0802C1CC(Entity*);
bool32 sub_0802C0E8(Entity*);

extern void (*const Helmasaur_Functions[])(Entity*);
extern void (*const gUnk_080CD3FC[])(Entity*);
extern void (*const gUnk_080CD408[])(Entity*);
extern void (*const gUnk_080CD42C[])(Entity*);
extern void (*const gUnk_080CD438[])(Entity*);
extern void (*const gUnk_080CD450[])(Entity*);
extern const s8 gUnk_080CD45C[];
extern const s8 gUnk_080CD464[];

void Helmasaur(Entity* this) {
    if (this->type == 0) {
        EnemyFunctionHandler(this, Helmasaur_Functions);
        SetChildOffset(this, 0, 1, -0x10);
    } else {
        gUnk_080CD3FC[this->action](this);
    }
}

void Helmasaur_OnTick(Entity* this) {
    gUnk_080CD408[this->action](this);
}

void Helmasaur_OnCollision(Entity* this) {
    if (this->hitType != 0x19) {
        switch (this->bitfield & 0x7f) {
            case 0:
            case 2:
            case 3:
                if (this->action == 4) {
                    this->knockbackDuration = 0;
                    sub_0802C218(this);
                }
                break;
        }
    }
    if (this->confusedTime != 0) {
        Create0x68FX(this, FX_STARS);
    }

    EnemyFunctionHandlerAfterCollision(this, Helmasaur_Functions);
}

void Helmasaur_OnGrabbed(Entity* this) {
    if (this->hitType != 0x19) {
        if (sub_0806F520(this)) {
            gUnk_080CD42C[this->subAction](this);
        }
    } else if (2 < this->subAction || sub_0806F520(this)) {
        gUnk_080CD438[this->subAction](this);
    }
}

void sub_0802BC74(Entity* this) {
    sub_0802C1C0(this);
    this->subAction = 1;
    this->field_0x1d = 60;
    this->animationState = AnimationStateFlip90(gPlayerEntity.animationState >> 1);
    InitializeAnimation(this, this->animationState);
}

void sub_0802BCA0(Entity* this) {
    sub_0806F4E8(this);
}

void sub_0802BCA8(Entity* this) {
    if (this->hitType != 0x19) {
        Entity* ent;

        this->action = 7;
        this->actionDelay = 90;
        this->zVelocity = Q_16_16(1.5);
        this->hitType = 0x19;
        this->field_0x3a = this->field_0x3a & 0xfb;
        this->field_0x1c = 0x12;
        ent = CreateEnemy(HELMASAUR, 1);
        if (ent) {
            ent->animationState = this->animationState;
            CopyPosition(this, ent);
        }
        InitializeAnimation(this, this->animationState + 4);
    }
}

void sub_0802BCFC(Entity* this) {
    this->subAction = 1;
    this->field_0x1d = 60;
}

void sub_0802BD08(Entity* this) {
    sub_0806F3E4(this);
}

void sub_0802BD10(Entity* this) {
    COLLISION_OFF(this);
    UpdateAnimationVariableFrames(this, 2);
}

void nullsub_145(Entity* this) {
    /* ... */
}

void sub_0802BD28(Entity* this) {
    if (this->flags & ENT_COLLIDE) {
        COLLISION_ON(this);
        this->field_0x3a &= ~0x4;
    } else {
        this->health = 0;
    }
}

void sub_0802BD54(Entity* this) {
    sub_0804A720(this);
    this->action = 1;
    this->field_0x78.HALF.LO = Random();
    this->field_0x1d = 60;
    this->field_0x78.HALF.HI = 0xff;
    this->direction = DirectionRound(Random());
    this->animationState = this->direction >> 3;
    InitializeAnimation(this, this->animationState);
}

void sub_0802BD8C(Entity* this) {
    if (this->actionDelay) {
        this->actionDelay--;
    } else {
        u32 direction;

        if (sub_08049FDC(this, 1)) {
            direction = sub_0804A024(this, 1, 0x10);
            if (direction != 0xff && direction != this->field_0x78.HALF.HI) {
                sub_0802C058(this, direction);
                return;
            }
        }

        direction = sub_0802C020(this);
        if (direction != this->direction) {
            sub_0802C058(this, direction);
        }
    }
}

void sub_0802BDE0(Entity* this) {
    if (sub_0802C06C(this)) {
        this->action = 3;
        this->actionDelay = 60;
        this->field_0x78.HALF.HI = 0xff;
    } else {
        this->action = 1;
        this->actionDelay = (Random() & 0xf) + 0xf;
        this->field_0x78.HALF.HI = this->direction;
    }
}

void sub_0802BE18(Entity* this) {
    UpdateAnimationVariableFrames(this, 2);
    if (--this->actionDelay == 0) {
        this->action = 4;
        this->actionDelay = 0x1e;
        this->speed = 0x300;
    } else {
        sub_0802C18C(this);
    }
}

void sub_0802BE48(Entity* this) {
    if (!ProcessMovement2(this)) {
        sub_0802C218(this);
        InitScreenShake(8, 0);
    } else {
        GetNextFrame(this);
        sub_0802C1CC(this);
        if (sub_0802C0E8(this)) {
            this->action = 5;
        }
    }
}

void sub_0802BE80(Entity* this) {
    this->speed -= 0x20;
    if (0xff < this->speed) {
        sub_0802C1CC(this);
    }

    if (this->speed > 0) {
        ProcessMovement2(this);
        sub_0802C18C(this);
    } else {
        sub_0802C1C0(this);
        this->actionDelay += 30;
    }
}

void sub_0802BEBC(Entity* this) {
    this->direction ^= 0x10;
    ProcessMovement2(this);
    this->direction ^= 0x10;
    if (!sub_080044EC(this, Q_16_16(0.125))) {
        sub_0802C1C0(this);
    }
}

void sub_0802BEEC(Entity* this) {
    if (this->actionDelay) {
        if ((--this->actionDelay & 0x1f) == 0) {
            this->animationState ^= 2;
            this->direction = this->animationState << 3;
            InitializeAnimation(this, this->animationState + 4);
        }
    } else if (!GravityUpdate(this, Q_16_16(0.109375))) {
        this->action = 8;
        this->actionDelay = 30;
        this->speed = 0x120;
    }
}

void sub_0802BF3C(Entity* this) {
    ProcessMovement0(this);
    GetNextFrame(this);
    if (--this->actionDelay == 0) {
        u32 sprite;

        this->actionDelay = 30;
        this->direction = sub_0802C020(this);
        sprite = this->direction >> 3;
        if (sprite != this->animationState) {
            this->animationState = sprite;
            InitializeAnimation(this, sprite + 4);
        }
    }
}

void sub_0802BF78(Entity* this) {
    this->action = 1;
    this->flags2 = 4;
    this->field_0x1c = 1;
    this->direction = this->animationState << 3;
    InitializeAnimation(this, this->animationState + 8);
}

void sub_0802BF98(Entity* this) {
    if (sub_0806F520(this)) {
        gUnk_080CD450[this->subAction](this);
    } else {
        this->action = 2;
        this->actionDelay = 30;
        COLLISION_OFF(this);
    }
}

void sub_0802BFD0(Entity* this) {
    this->subAction = 2;
}

void sub_0802BFD8(Entity* this) {
    sub_0806F4E8(this);
}

void sub_0802BFE0(Entity* this) {
    if (sub_0806F3E4(this)) {
        DeleteEntity(this);
    }
}

void sub_0802BFF4(Entity* this) {
    this->spriteSettings.draw ^= 1;
    if (--this->actionDelay == 0) {
        DeleteEntity(this);
    }
}

u32 sub_0802C020(Entity* this) {
    u32 uVar1 = Random();

    if (sub_08049FA0(this) || (uVar1 & 1))
        return DirectionRound(uVar1);

    return (sub_08049EE4(this) + (uVar1 >> 0x10 & 1) * 4) & 0x18;
}

void sub_0802C058(Entity* this, u32 param_2) {
    this->action = 2;
    this->direction = param_2;
    this->animationState = param_2 >> 3;
    InitializeAnimation(this, this->animationState);
}

bool32 sub_0802C06C(Entity* this) {
    u32 x = this->x.HALF.HI + this->hitbox->offset_x;
    u32 y = this->y.HALF.HI + this->hitbox->offset_y;
    u32 xdiff = gUnk_080CD45C[(this->direction >> 2) + 0];
    u32 ydiff = gUnk_080CD45C[(this->direction >> 2) + 1];

    u8* layer = this->collisionLayer == 2 ? gUnk_0200D654 : gUnk_02027EB4;

    u32 i;
    for (i = 0; i < 8; i++) {
        x += xdiff;
        y += ydiff;
        if (IsTileCollision(layer, x, y, 0))
            return FALSE;
    }

    return TRUE;
}

bool32 sub_0806FC24(u32, u32);

bool32 sub_0802C0E8(Entity* this) {
    if (--this->actionDelay == 0) {
        return TRUE;
    } else {
        const s8* ptr = &gUnk_080CD45C[this->direction >> 2];
        s32 x = this->x.HALF.HI + this->hitbox->offset_x + ptr[0] * 6;
        s32 y = this->y.HALF.HI + this->hitbox->offset_y + ptr[1] * 6;

        u8* layer = this->collisionLayer == 2 ? gUnk_0200D654 : gUnk_02027EB4;
        u32 ret = FALSE;
        if (!sub_0806FC24(TILE(x, y), 9)) {
            if (IsTileCollision(layer, x, y, 0)) {
                ret = 1;
            } else {
                ret = 0;
            }
        }
        return ret;
    }
}

void sub_0802C18C(Entity* this) {
    this->field_0x78.HALF.LO--;
    if ((this->field_0x78.HALF.LO & 7) == 0) {
        Entity* ent = CreateObject(SPECIAL_FX, 0x11, 0x40);
        if (ent) {
            PositionRelative(this, ent, 0, Q_16_16(1.0));
        }
    }
}

void sub_0802C1C0(Entity* this) {
    this->action = 1;
    this->actionDelay = 30;
}

void sub_0802C1CC(Entity* this) {
    const s8* ptr = &gUnk_080CD464[this->animationState << 2];
    sub_08008796(this, 9, this->x.HALF.HI + ptr[0], this->y.HALF.HI + ptr[1]);
    sub_08008796(this, 9, this->x.HALF.HI + ptr[2], this->y.HALF.HI + ptr[3]);
}

void sub_0802C218(Entity* this) {
    this->action = 6;
    this->speed = Q_8_8(0.875);
    this->zVelocity = Q_16_16(1.5);
}

// clang-format off
void (*const Helmasaur_Functions[])(Entity*) = {
    Helmasaur_OnTick,
    Helmasaur_OnCollision,
    GenericKnockback,
    GenericDeath,
    GenericConfused,
    Helmasaur_OnGrabbed,
};

void (*const gUnk_080CD3FC[])(Entity*) = {
    sub_0802BF78,
    sub_0802BF98,
    sub_0802BFF4,
};

void (*const gUnk_080CD408[])(Entity*) = {
    sub_0802BD54,
    sub_0802BD8C,
    sub_0802BDE0,
    sub_0802BE18,
    sub_0802BE48,
    sub_0802BE80,
    sub_0802BEBC,
    sub_0802BEEC,
    sub_0802BF3C,
};

void (*const gUnk_080CD42C[])(Entity*) = {
    sub_0802BC74,
    sub_0802BCA0,
    sub_0802BCA8,
};

void (*const gUnk_080CD438[])(Entity*) = {
    sub_0802BCFC,
    sub_0802BCA0,
    sub_0802BD08,
    sub_0802BD10,
    nullsub_145,
    sub_0802BD28,
};

void (*const gUnk_080CD450[])(Entity*) = {
    sub_0802BFD0,
    sub_0802BFD8,
    sub_0802BFE0,
};

const s8 gUnk_080CD45C[] = {
     0, -8,
     8,  0,
     0,  8,
    -8,  0,
};

const s8 gUnk_080CD464[] = {
    -3, -8,  3, -8,
     8, -3,  8,  3,
    -3,  8,  3,  8,
    -8, -3, -8,  3,
};
// clang-format on
