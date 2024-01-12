/**
 * @file rollobite.c
 * @ingroup Enemies
 *
 * @brief Rollobite enemy
 */
#include "collision.h"
#include "enemy.h"
#include "physics.h"
#include "player.h"
#include "room.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[28];
    /*0x84*/ u8 unk_84;
    /*0x85*/ u8 unk_85;
} RollobiteEntity;

extern void (*const Rollobite_Functions[])(RollobiteEntity*);
extern void (*const gRollobiteActions[])(RollobiteEntity*);
extern void (*const gUnk_080CA6A4[])(RollobiteEntity*);
extern void (*const gUnk_080CA6BC[])(RollobiteEntity*);

extern const u8 gUnk_080CA6CC[];
extern const s8 gUnk_080CA6D4[];

void sub_08020A30(RollobiteEntity* this);
void sub_08020A7C(RollobiteEntity* this);
bool32 Rollobite_TryToHoleUp(RollobiteEntity* this);
bool32 Rollobite_IsRolledUp(RollobiteEntity* this);

extern void RegisterCarryEntity(Entity*);

void Rollobite(RollobiteEntity* this) {
    EnemyFunctionHandler(super, (EntityActionArray)Rollobite_Functions);
}

void Rollobite_OnTick(RollobiteEntity* this) {
    Rollobite_TryToHoleUp(this);
    gRollobiteActions[super->action](this);
}

void Rollobite_OnCollision(RollobiteEntity* this) {
    if (super->hitType == 34 && super->health != 0xff) {
        super->action = 4;
        super->zVelocity = Q_16_16(2.0);
        super->direction = DIR_NONE;
        super->health = 0xff;
        super->hitType = 35;
        InitializeAnimation(super, super->animationState + 8);
    }

    if (super->contactFlags != CONTACT_NOW) {
        if (super->action == 4 || super->action == 5) {
            super->action = 4;
            super->timer = 180;
            super->direction = DIR_NONE;
            InitializeAnimation(super, super->animationState + 0x10);
        }
    }

    if (super->contactFlags == (CONTACT_NOW | 0x13))
        Rollobite_OnTick(this);
}

void Rollobite_OnKnockback(RollobiteEntity* this) {
    if (Rollobite_TryToHoleUp(this)) {
        super->knockbackDuration = 0;
    } else if (Rollobite_IsRolledUp(this)) {
        super->knockbackDuration--;
        CalculateEntityTileCollisions(super, super->knockbackDirection, 10);
        ProcessMovementInternal(super, super->knockbackSpeed, super->knockbackDirection, 10);
    } else {
        GenericKnockback(super);
    }
}

void Rollobite_OnGrabbed(RollobiteEntity* this) {
    if (super->subAction < 3 && !sub_0806F520(super)) {
        super->action = 4;
        COLLISION_ON(super);
        super->direction = DIR_NONE;
        InitializeAnimation(super, super->animationState + 0x10);
    } else {
        gUnk_080CA6A4[super->subAction](this);
    }
}

void sub_0802077C(RollobiteEntity* this) {
    super->subAction = 1;
    super->gustJarTolerance = 60;
}

void sub_08020788(RollobiteEntity* this) {
    sub_0806F4E8(super);
}

void sub_08020790(RollobiteEntity* this) {
    sub_0806F3E4(super);
}

void sub_08020798(RollobiteEntity* this) {
    COLLISION_OFF(super);
}

void nullsub_6(RollobiteEntity* this) {
    /* ... */
}

void sub_080207A8(RollobiteEntity* this) {
    super->action = 4;
    COLLISION_ON(super);
    super->spritePriority.b0 = 4;
    super->gustJarState &= 0xfb;
    super->direction ^= DirectionSouth;
    super->zVelocity = Q_16_16(1.5);
    super->speed = 0x80;
    InitializeAnimation(super, super->animationState + 0x10);
}

void Rollobite_Initialize(RollobiteEntity* this) {
    sub_0804A720(super);
    super->carryFlags = 0x30;
    super->gustJarFlags = 18;
    this->unk_84 = 0;
    super->direction = DirectionRound(Random());
    sub_08020A30(this);
}

void Rollobite_Walk(RollobiteEntity* this) {
    GetNextFrame(super);
    if (super->frame & 0x1) {
        super->frame &= ~0x1;
        if (!ProcessMovement0(super))
            super->timer = 1;
    }

    if (super->frame & 0x10) {
        super->frame &= ~0x10;
        if (--super->timer == 0) {
            super->action = 3;
            super->timer = 60;
        }
    }
}

void sub_08020874(RollobiteEntity* this) {
    gUnk_080CA6BC[super->subAction](this);
}

void sub_0802088C(RollobiteEntity* this) {
    super->subAction = 1;
    COLLISION_OFF(super);
    this->unk_85 = gPlayerEntity.base.animationState;
    super->spritePriority.b1 = 0;
}

void sub_080208B4(RollobiteEntity* this) {
    s8 uVar1 = (this->unk_85 - gPlayerEntity.base.animationState) / 2;
    if (uVar1) {
        super->animationState = (super->animationState + uVar1) & 3;
        InitializeAnimation(super, super->animationState + 0x10);
    }
    this->unk_85 = gPlayerEntity.base.animationState;
}

void sub_080208F0(RollobiteEntity* this) {
    super->spritePriority.b1 = 3;
}

void sub_08020904(RollobiteEntity* this) {
    super->action = 4;
    COLLISION_ON(super);
    super->direction = -1;
    InitializeAnimation(super, super->animationState + 0x10);
}

void Rollobite_Turn(RollobiteEntity* this) {
    if (--super->timer == 0)
        sub_08020A30(this);
}

void Rollobite_RolledUp(RollobiteEntity* this) {
    u32 unk;

    if ((super->frame & ANIM_DONE) == 0)
        GetNextFrame(super);

    unk = BounceUpdate(super, Q_8_8(40.0));

    if (unk == BOUNCE_DONE_ALL) {
        if (--super->timer == 0) {
            super->action = 5;
            InitializeAnimation(super, super->animationState + 12);
        }
        RegisterCarryEntity(super);
    } else {
        if (unk == BOUNCE_INIT_NEXT)
            EnqueueSFX(SFX_PLACE_OBJ);

        if (!(super->direction & DIR_NOT_MOVING_CHECK))
            ProcessMovement2(super);
    }
}

void Rollobite_Unroll(RollobiteEntity* this) {
    GetNextFrame(super);
    if (super->frame & ANIM_DONE) {
        COLLISION_ON(super);
        super->speed = 0x100;
        super->hitType = 34;
        sub_08020A30(this);
        super->direction = DirectionFromAnimationState(super->animationState);
        InitializeAnimation(super, super->animationState);
    } else {
        if ((super->frame & 1) == 0)
            RegisterCarryEntity(super);
    }
}

void Rollobite_LinedUp(RollobiteEntity* this) {
    if (GravityUpdate(super, Q_8_8(28.0)) == 0) {
        super->action = 7;
        super->spritePriority.b0 = 7;
    }

    if (super->frame == 0)
        GetNextFrame(super);
}

void Rollobite_Holed(RollobiteEntity* this) {
    GetNextFrame(super);
}

void sub_08020A30(RollobiteEntity* this) {
    if (this->unk_84 < 2) {
        super->timer = gUnk_080CA6CC[Random() & 7];
        if (super->timer == 0) {
            super->action = 3;
            super->timer = 60;
            this->unk_84++;
            return;
        }
    }
    super->action = 1;
    this->unk_84 = 0;
    sub_08020A7C(this);
}

void sub_08020A7C(RollobiteEntity* this) {
    s32 tmp = Random();
    u32 state = DirectionRound(super->direction + gUnk_080CA6D4[tmp % 3]);

    if (sub_08049FA0(super) == 0) {
        u32 tmp = DirectionRoundUp(sub_08049EE4(super));
        if ((state ^ DirectionSouth) == tmp)
            state ^= DirectionSouth;
    }

    super->direction = state;
    super->animationState = (u8)(state >> 3);
    InitializeAnimation(super, super->animationState);
}

bool32 Rollobite_TryToHoleUp(RollobiteEntity* this) {
    if (Rollobite_IsRolledUp(this) && super->z.HALF.HI == 0) {
        u32 tilePos = COORD_TO_TILE(super);
        u32 tileType = GetTileTypeAtTilePos(tilePos, super->collisionLayer);
        if ((tileType * 0x10000 - 0x710000U) >> 0x10 < 2) {
            super->action = 6;
            COLLISION_OFF(super);
            super->x.HALF.HI &= 0xfff0;
            super->x.HALF.HI += 8;
            super->y.HALF.HI &= 0xfff0;
            super->y.HALF.HI += 13;
            super->zVelocity = Q_16_16(2.0);
            InitializeAnimation(super, super->animationState + 0x14);
            SetTile(SPECIAL_TILE_52, tilePos, super->collisionLayer);
            return TRUE;
        }
    }
    return FALSE;
}

bool32 Rollobite_IsRolledUp(RollobiteEntity* this) {
    u32 tmp = super->animIndex;
    if (16 <= tmp && tmp <= 19) {
        return TRUE;
    } else {
        return FALSE;
    }
}

// clang-format off
void (*const Rollobite_Functions[])(RollobiteEntity*) = {
    Rollobite_OnTick,
    Rollobite_OnCollision,
    Rollobite_OnKnockback,
    (void (*)(RollobiteEntity*))GenericDeath,
    (void (*)(RollobiteEntity*))GenericConfused,
    Rollobite_OnGrabbed,
};

void (*const gRollobiteActions[])(RollobiteEntity*) = {
    Rollobite_Initialize,
    Rollobite_Walk,
    sub_08020874,
    Rollobite_Turn,
    Rollobite_RolledUp,
    Rollobite_Unroll,
    Rollobite_LinedUp,
    Rollobite_Holed,
};

void (*const gUnk_080CA6A4[])(RollobiteEntity*) = {
    sub_0802077C,
    sub_08020788,
    sub_08020790,
    sub_08020798,
    nullsub_6,
    sub_080207A8,
};

void (*const gUnk_080CA6BC[])(RollobiteEntity*) = {
    sub_0802088C,
    sub_080208B4,
    sub_080208F0,
    sub_08020904,
};

const u8 gUnk_080CA6CC[] = {
    0, 6, 9, 0, 6, 6, 0, 7,
};
// clang-format on
