/**
 * @file rollobite.c
 * @ingroup Enemies
 *
 * @brief Rollobite enemy
 */

#include "enemy.h"
#include "functions.h"

extern void (*const Rollobite_Functions[])(Entity*);
extern void (*const gRollobiteActions[])(Entity*);
extern void (*const gUnk_080CA6A4[])(Entity*);
extern void (*const gUnk_080CA6BC[])(Entity*);

extern const u8 gUnk_080CA6CC[];
extern const s8 gUnk_080CA6D4[];

void sub_08020A30(Entity*);
void sub_08020A7C(Entity*);
bool32 Rollobite_TryToHoleUp(Entity*);
bool32 Rollobite_IsRolledUp(Entity*);

extern void RegisterCarryEntity(Entity*);

void Rollobite(Entity* this) {
    EnemyFunctionHandler(this, Rollobite_Functions);
}

void Rollobite_OnTick(Entity* this) {
    Rollobite_TryToHoleUp(this);
    gRollobiteActions[this->action](this);
}

void Rollobite_OnCollision(Entity* this) {
    if (this->hitType == 34 && this->health != 0xff) {
        this->action = 4;
        this->zVelocity = Q_16_16(2.0);
        this->direction = 0xff;
        this->health = 0xff;
        this->hitType = 35;
        InitializeAnimation(this, this->animationState + 8);
    }

    if (this->bitfield != 0x80) {
        if (this->action == 4 || this->action == 5) {
            this->action = 4;
            this->actionDelay = 180;
            this->direction = 0xff;
            InitializeAnimation(this, this->animationState + 0x10);
        }
    }

    if (this->bitfield == 0x93)
        Rollobite_OnTick(this);
}

void Rollobite_OnKnockback(Entity* this) {
    if (Rollobite_TryToHoleUp(this)) {
        this->knockbackDuration = 0;
    } else if (Rollobite_IsRolledUp(this)) {
        this->knockbackDuration--;
        CalculateEntityTileCollisions(this, this->knockbackDirection, 10);
        ProcessMovementInternal(this, this->knockbackSpeed, this->knockbackDirection, 10);
    } else {
        GenericKnockback(this);
    }
}

void Rollobite_OnGrabbed(Entity* this) {
    if (this->subAction < 3 && !sub_0806F520(this)) {
        this->action = 4;
        COLLISION_ON(this);
        this->direction = 0xff;
        InitializeAnimation(this, this->animationState + 0x10);
    } else {
        gUnk_080CA6A4[this->subAction](this);
    }
}

void sub_0802077C(Entity* this) {
    this->subAction = 1;
    this->field_0x1d = 60;
}

void sub_08020788(Entity* this) {
    sub_0806F4E8(this);
}

void sub_08020790(Entity* this) {
    sub_0806F3E4(this);
}

void sub_08020798(Entity* this) {
    COLLISION_OFF(this);
}

void nullsub_6(Entity* this) {
    /* ... */
}

void sub_080207A8(Entity* this) {
    this->action = 4;
    COLLISION_ON(this);
    this->spritePriority.b0 = 4;
    this->field_0x3a &= 0xfb;
    this->direction ^= 0x10;
    this->zVelocity = Q_16_16(1.5);
    this->speed = 0x80;
    InitializeAnimation(this, this->animationState + 0x10);
}

void Rollobite_Initialize(Entity* this) {
    sub_0804A720(this);
    this->field_0x16 = 0x30;
    this->field_0x1c = 18;
    this->cutsceneBeh.HALF.LO = 0;
    this->direction = DirectionRound(Random());
    sub_08020A30(this);
}

void Rollobite_Walk(Entity* this) {
    GetNextFrame(this);
    if (this->frame & 0x1) {
        this->frame &= ~0x1;
        if (!ProcessMovement0(this))
            this->actionDelay = 1;
    }

    if (this->frame & 0x10) {
        this->frame &= ~0x10;
        if (--this->actionDelay == 0) {
            this->action = 3;
            this->actionDelay = 60;
        }
    }
}

void sub_08020874(Entity* this) {
    gUnk_080CA6BC[this->subAction](this);
}

void sub_0802088C(Entity* this) {
    this->subAction = 1;
    COLLISION_OFF(this);
    this->cutsceneBeh.HALF.HI = gPlayerEntity.animationState;
    this->spritePriority.b1 = 0;
}

void sub_080208B4(Entity* this) {
    s8 uVar1 = (this->cutsceneBeh.HALF.HI - gPlayerEntity.animationState) / 2;
    if (uVar1) {
        this->animationState = (this->animationState + uVar1) & 3;
        InitializeAnimation(this, this->animationState + 0x10);
    }
    this->cutsceneBeh.HALF.HI = gPlayerEntity.animationState;
}

void sub_080208F0(Entity* this) {
    this->spritePriority.b1 = 3;
}

void sub_08020904(Entity* this) {
    this->action = 4;
    COLLISION_ON(this);
    this->direction = -1;
    InitializeAnimation(this, this->animationState + 0x10);
}

void Rollobite_Turn(Entity* this) {
    if (--this->actionDelay == 0)
        sub_08020A30(this);
}

void Rollobite_RolledUp(Entity* this) {
    u32 unk;

    if ((this->frame & ANIM_DONE) == 0)
        GetNextFrame(this);

    unk = sub_080044EC(this, 0x2800);

    if (unk == 0) {
        if (--this->actionDelay == 0) {
            this->action = 5;
            InitializeAnimation(this, this->animationState + 12);
        }
        RegisterCarryEntity(this);
    } else {
        if (unk == 1)
            EnqueueSFX(SFX_104);

        if ((this->direction & 0x80) == 0)
            ProcessMovement2(this);
    }
}

void Rollobite_Unroll(Entity* this) {
    GetNextFrame(this);
    if (this->frame & ANIM_DONE) {
        COLLISION_ON(this);
        this->speed = 0x100;
        this->hitType = 34;
        sub_08020A30(this);
        this->direction = DirectionFromAnimationState(this->animationState);
        InitializeAnimation(this, this->animationState);
    } else {
        if ((this->frame & 1) == 0)
            RegisterCarryEntity(this);
    }
}

void Rollobite_LinedUp(Entity* this) {
    if (GravityUpdate(this, 0x1c00) == 0) {
        this->action = 7;
        this->spritePriority.b0 = 7;
    }

    if (this->frame == 0)
        GetNextFrame(this);
}

void Rollobite_Holed(Entity* this) {
    GetNextFrame(this);
}

void sub_08020A30(Entity* this) {
    if (this->cutsceneBeh.HALF.LO < 2) {
        this->actionDelay = gUnk_080CA6CC[Random() & 7];
        if (this->actionDelay == 0) {
            this->action = 3;
            this->actionDelay = 60;
            this->cutsceneBeh.HALF.LO++;
            return;
        }
    }
    this->action = 1;
    this->cutsceneBeh.HALF.LO = 0;
    sub_08020A7C(this);
}

void sub_08020A7C(Entity* this) {
    int tmp = Random();
    u32 state = DirectionRound(this->direction + gUnk_080CA6D4[tmp % 3]);

    if (sub_08049FA0(this) == 0) {
        int tmp = DirectionRoundUp(sub_08049EE4(this));
        if ((state ^ 0x10) == tmp)
            state ^= 0x10;
    }

    this->direction = state;
    this->animationState = (u8)(state >> 3);
    InitializeAnimation(this, this->animationState);
}

bool32 Rollobite_TryToHoleUp(Entity* this) {
    if (Rollobite_IsRolledUp(this) && this->z.HALF.HI == 0) {
        int tile = COORD_TO_TILE(this);
        int iVar1 = GetTileType(tile, this->collisionLayer);
        if ((iVar1 * 0x10000 - 0x710000U) >> 0x10 < 2) {
            this->action = 6;
            COLLISION_OFF(this);
            this->x.HALF.HI &= 0xfff0;
            this->x.HALF.HI += 8;
            this->y.HALF.HI &= 0xfff0;
            this->y.HALF.HI += 13;
            this->zVelocity = Q_16_16(2.0);
            InitializeAnimation(this, this->animationState + 0x14);
            SetTile(0x4034, tile, this->collisionLayer);
            return TRUE;
        }
    }
    return FALSE;
}

bool32 Rollobite_IsRolledUp(Entity* this) {
    u32 tmp = this->animIndex;
    if (16 <= tmp && tmp <= 19) {
        return TRUE;
    } else {
        return FALSE;
    }
}

// clang-format off
void (*const Rollobite_Functions[])(Entity*) = {
    Rollobite_OnTick,
    Rollobite_OnCollision,
    Rollobite_OnKnockback,
    GenericDeath,
    GenericConfused,
    Rollobite_OnGrabbed,
};

void (*const gRollobiteActions[])(Entity*) = {
    Rollobite_Initialize,
    Rollobite_Walk,
    sub_08020874,
    Rollobite_Turn,
    Rollobite_RolledUp,
    Rollobite_Unroll,
    Rollobite_LinedUp,
    Rollobite_Holed,
};

void (*const gUnk_080CA6A4[])(Entity*) = {
    sub_0802077C,
    sub_08020788,
    sub_08020790,
    sub_08020798,
    nullsub_6,
    sub_080207A8,
};

void (*const gUnk_080CA6BC[])(Entity*) = {
    sub_0802088C,
    sub_080208B4,
    sub_080208F0,
    sub_08020904,
};

const u8 gUnk_080CA6CC[] = {
    0, 6, 9, 0, 6, 6, 0, 7,
};
// clang-format on
