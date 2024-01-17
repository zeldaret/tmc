/**
 * @file helmasaur.c
 * @ingroup Enemies
 *
 * @brief Helmasaur enemy
 */
#include "collision.h"
#include "enemy.h"
#include "functions.h"
#include "object.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[16];
    /*0x78*/ u8 unk_78;
    /*0x79*/ u8 unk_79;
} HelmasaurEntity;

extern u32 sub_0804A024(Entity*, u32, u32);

void sub_0802C18C(HelmasaurEntity*);
void sub_0802C218(HelmasaurEntity*);
void sub_0802C1C0(HelmasaurEntity*);
u32 sub_0802C020(HelmasaurEntity*);
void sub_0802C058(HelmasaurEntity*, u32);
bool32 sub_0802C06C(HelmasaurEntity*);
void sub_0802C1CC(HelmasaurEntity*);
bool32 sub_0802C0E8(HelmasaurEntity*);

extern void (*const Helmasaur_Functions[])(HelmasaurEntity*);
extern void (*const gUnk_080CD3FC[])(HelmasaurEntity*);
extern void (*const gUnk_080CD408[])(HelmasaurEntity*);
extern void (*const gUnk_080CD42C[])(HelmasaurEntity*);
extern void (*const gUnk_080CD438[])(HelmasaurEntity*);
extern void (*const gUnk_080CD450[])(HelmasaurEntity*);
extern const s8 gUnk_080CD45C[];
extern const s8 gUnk_080CD464[];

void Helmasaur(HelmasaurEntity* this) {
    if (super->type == 0) {
        EnemyFunctionHandler(super, (EntityActionArray)Helmasaur_Functions);
        EnemySetFXOffset(super, 0, 1, -0x10);
    } else {
        gUnk_080CD3FC[super->action](this);
    }
}

void Helmasaur_OnTick(HelmasaurEntity* this) {
    gUnk_080CD408[super->action](this);
}

void Helmasaur_OnCollision(HelmasaurEntity* this) {
    if (super->hitType != 0x19) {
        switch (super->contactFlags & 0x7f) {
            case 0:
            case 2:
            case 3:
                if (super->action == 4) {
                    super->knockbackDuration = 0;
                    sub_0802C218(this);
                }
                break;
        }
    }
    if (super->confusedTime != 0) {
        EnemyCreateFX(super, FX_STARS);
    }

    EnemyFunctionHandlerAfterCollision(super, Helmasaur_Functions);
}

void Helmasaur_OnGrabbed(HelmasaurEntity* this) {
    if (super->hitType != 0x19) {
        if (sub_0806F520(super)) {
            gUnk_080CD42C[super->subAction](this);
        }
    } else if (2 < super->subAction || sub_0806F520(super)) {
        gUnk_080CD438[super->subAction](this);
    }
}

void sub_0802BC74(HelmasaurEntity* this) {
    sub_0802C1C0(this);
    super->subAction = 1;
    super->gustJarTolerance = 60;
    super->animationState = AnimationStateFlip90(gPlayerEntity.base.animationState >> 1);
    InitializeAnimation(super, super->animationState);
}

void sub_0802BCA0(HelmasaurEntity* this) {
    sub_0806F4E8(super);
}

void sub_0802BCA8(HelmasaurEntity* this) {
    if (super->hitType != 0x19) {
        Entity* entity;

        super->action = 7;
        super->timer = 90;
        super->zVelocity = Q_16_16(1.5);
        super->hitType = 0x19;
        super->gustJarState = super->gustJarState & 0xfb;
        super->gustJarFlags = 0x12;
        entity = CreateEnemy(HELMASAUR, 1);
        if (entity != NULL) {
            entity->animationState = super->animationState;
            CopyPosition(super, entity);
        }
        InitializeAnimation(super, super->animationState + 4);
    }
}

void sub_0802BCFC(HelmasaurEntity* this) {
    super->subAction = 1;
    super->gustJarTolerance = 60;
}

void sub_0802BD08(HelmasaurEntity* this) {
    sub_0806F3E4(super);
}

void sub_0802BD10(HelmasaurEntity* this) {
    COLLISION_OFF(super);
    UpdateAnimationVariableFrames(super, 2);
}

void nullsub_145(HelmasaurEntity* this) {
    /* ... */
}

void sub_0802BD28(HelmasaurEntity* this) {
    if (super->flags & ENT_COLLIDE) {
        COLLISION_ON(super);
        super->gustJarState &= ~0x4;
    } else {
        super->health = 0;
    }
}

void sub_0802BD54(HelmasaurEntity* this) {
    sub_0804A720(super);
    super->action = 1;
    this->unk_78 = Random();
    super->gustJarTolerance = 60;
    this->unk_79 = 0xff;
    super->direction = DirectionRound(Random());
    super->animationState = super->direction >> 3;
    InitializeAnimation(super, super->animationState);
}

void sub_0802BD8C(HelmasaurEntity* this) {
    if (super->timer) {
        super->timer--;
    } else {
        u32 direction;

        if (sub_08049FDC(super, 1)) {
            direction = sub_0804A024(super, 1, 0x10);
            if (direction != 0xff && direction != this->unk_79) {
                sub_0802C058(this, direction);
                return;
            }
        }

        direction = sub_0802C020(this);
        if (direction != super->direction) {
            sub_0802C058(this, direction);
        }
    }
}

void sub_0802BDE0(HelmasaurEntity* this) {
    if (sub_0802C06C(this)) {
        super->action = 3;
        super->timer = 60;
        this->unk_79 = 0xff;
    } else {
        super->action = 1;
        super->timer = (Random() & 0xf) + 15;
        this->unk_79 = super->direction;
    }
}

void sub_0802BE18(HelmasaurEntity* this) {
    UpdateAnimationVariableFrames(super, 2);
    if (--super->timer == 0) {
        super->action = 4;
        super->timer = 30;
        super->speed = 0x300;
    } else {
        sub_0802C18C(this);
    }
}

void sub_0802BE48(HelmasaurEntity* this) {
    if (!ProcessMovement2(super)) {
        sub_0802C218(this);
        InitScreenShake(8, 0);
    } else {
        GetNextFrame(super);
        sub_0802C1CC(this);
        if (sub_0802C0E8(this)) {
            super->action = 5;
        }
    }
}

void sub_0802BE80(HelmasaurEntity* this) {
    super->speed -= 0x20;
    if (0xff < super->speed) {
        sub_0802C1CC(this);
    }

    if (super->speed > 0) {
        ProcessMovement2(super);
        sub_0802C18C(this);
    } else {
        sub_0802C1C0(this);
        super->timer += 30;
    }
}

void sub_0802BEBC(HelmasaurEntity* this) {
    super->direction ^= DirectionSouth;
    ProcessMovement2(super);
    super->direction ^= DirectionSouth;
    if (BounceUpdate(super, Q_16_16(0.125)) == BOUNCE_DONE_ALL) {
        sub_0802C1C0(this);
    }
}

void sub_0802BEEC(HelmasaurEntity* this) {
    if (super->timer != 0) {
        if ((--super->timer & 0x1F) == 0) {
            super->animationState ^= 2;
            super->direction = super->animationState << 3;
            InitializeAnimation(super, super->animationState + 4);
        }
    } else if (!GravityUpdate(super, Q_8_8(28.0))) {
        super->action = 8;
        super->timer = 30;
        super->speed = 0x120;
    }
}

void sub_0802BF3C(HelmasaurEntity* this) {
    ProcessMovement0(super);
    GetNextFrame(super);
    if (--super->timer == 0) {
        u32 sprite;

        super->timer = 30;
        super->direction = sub_0802C020(this);
        sprite = super->direction >> 3;
        if (sprite != super->animationState) {
            super->animationState = sprite;
            InitializeAnimation(super, sprite + 4);
        }
    }
}

void sub_0802BF78(HelmasaurEntity* this) {
    super->action = 1;
    super->collisionMask = 4;
    super->gustJarFlags = 1;
    super->direction = super->animationState << 3;
    InitializeAnimation(super, super->animationState + 8);
}

void sub_0802BF98(HelmasaurEntity* this) {
    if (sub_0806F520(super)) {
        gUnk_080CD450[super->subAction](this);
    } else {
        super->action = 2;
        super->timer = 30;
        COLLISION_OFF(super);
    }
}

void sub_0802BFD0(HelmasaurEntity* this) {
    super->subAction = 2;
}

void sub_0802BFD8(HelmasaurEntity* this) {
    sub_0806F4E8(super);
}

void sub_0802BFE0(HelmasaurEntity* this) {
    if (sub_0806F3E4(super)) {
        DeleteEntity(super);
    }
}

void sub_0802BFF4(HelmasaurEntity* this) {
    super->spriteSettings.draw ^= 1;
    if (--super->timer == 0) {
        DeleteEntity(super);
    }
}

u32 sub_0802C020(HelmasaurEntity* this) {
    u32 uVar1 = Random();

    if (sub_08049FA0(super) || (uVar1 & 1))
        return DirectionRound(uVar1);

    return (sub_08049EE4(super) + (uVar1 >> 0x10 & 1) * 4) & 0x18;
}

void sub_0802C058(HelmasaurEntity* this, u32 param_2) {
    super->action = 2;
    super->direction = param_2;
    super->animationState = param_2 >> 3;
    InitializeAnimation(super, super->animationState);
}

bool32 sub_0802C06C(HelmasaurEntity* this) {
    u32 x = super->x.HALF.HI + super->hitbox->offset_x;
    u32 y = super->y.HALF.HI + super->hitbox->offset_y;
    u32 xdiff = gUnk_080CD45C[(super->direction >> 2) + 0];
    u32 ydiff = gUnk_080CD45C[(super->direction >> 2) + 1];

    u8* layer = super->collisionLayer == 2 ? gMapTop.collisionData : gMapBottom.collisionData;

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

bool32 sub_0802C0E8(HelmasaurEntity* this) {
    if (--super->timer == 0) {
        return TRUE;
    } else {
        const s8* ptr = &gUnk_080CD45C[super->direction >> 2];
        s32 x = super->x.HALF.HI + super->hitbox->offset_x + ptr[0] * 6;
        s32 y = super->y.HALF.HI + super->hitbox->offset_y + ptr[1] * 6;

        u8* layer = super->collisionLayer == 2 ? gMapTop.collisionData : gMapBottom.collisionData;
        u32 result = FALSE;
        if (!sub_0806FC24(TILE(x, y), 9)) {
            if (IsTileCollision(layer, x, y, 0)) {
                result = TRUE;
            } else {
                result = FALSE;
            }
        }
        return result;
    }
}

void sub_0802C18C(HelmasaurEntity* this) {
    this->unk_78--;
    if ((this->unk_78 & 7) == 0) {
        Entity* entity = CreateObject(SPECIAL_FX, FX_DASH, 0x40);
        if (entity != NULL) {
            PositionRelative(super, entity, 0, Q_16_16(1.0));
        }
    }
}

void sub_0802C1C0(HelmasaurEntity* this) {
    super->action = 1;
    super->timer = 30;
}

void sub_0802C1CC(HelmasaurEntity* this) {
    const s8* ptr = &gUnk_080CD464[super->animationState << 2];
    DoTileInteraction(super, 9, super->x.HALF.HI + ptr[0], super->y.HALF.HI + ptr[1]);
    DoTileInteraction(super, 9, super->x.HALF.HI + ptr[2], super->y.HALF.HI + ptr[3]);
}

void sub_0802C218(HelmasaurEntity* this) {
    super->action = 6;
    super->speed = Q_8_8(0.875);
    super->zVelocity = Q_16_16(1.5);
}

// clang-format off
void (*const Helmasaur_Functions[])(HelmasaurEntity*) = {
    Helmasaur_OnTick,
    Helmasaur_OnCollision,
    (void (*)(HelmasaurEntity*))GenericKnockback,
    (void (*)(HelmasaurEntity*))GenericDeath,
    (void (*)(HelmasaurEntity*))GenericConfused,
    Helmasaur_OnGrabbed,
};

void (*const gUnk_080CD3FC[])(HelmasaurEntity*) = {
    sub_0802BF78,
    sub_0802BF98,
    sub_0802BFF4,
};

void (*const gUnk_080CD408[])(HelmasaurEntity*) = {
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

void (*const gUnk_080CD42C[])(HelmasaurEntity*) = {
    sub_0802BC74,
    sub_0802BCA0,
    sub_0802BCA8,
};

void (*const gUnk_080CD438[])(HelmasaurEntity*) = {
    sub_0802BCFC,
    sub_0802BCA0,
    sub_0802BD08,
    sub_0802BD10,
    nullsub_145,
    sub_0802BD28,
};

void (*const gUnk_080CD450[])(HelmasaurEntity*) = {
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
