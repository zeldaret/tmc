/**
 * @file bobomb.c
 * @ingroup Enemies
 *
 * @brief Bobomb enemy
 */
#include "asm.h"
#include "collision.h"
#include "enemy.h"
#include "functions.h"
#include "object.h"
#include "sound.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[24];
    /*0x80*/ u8 unk_80;
    /*0x81*/ u8 unk_81;
    /*0x82*/ u8 unk_82;
    /*0x83*/ u8 unk_83;
} BobombEntity;

void sub_0802CB68(BobombEntity* this);
void sub_0802CBC4(BobombEntity* this);
void sub_0802CC18(BobombEntity* this);

extern void (*const Bobomb_Functions[])(BobombEntity*);
extern void (*const gUnk_080CD5EC[])(BobombEntity*);
extern void (*const gUnk_080CD600[])(BobombEntity*);
extern void (*const gUnk_080CD618[])(BobombEntity*);

void Bobomb(BobombEntity* this) {
    EnemyFunctionHandler(super, (EntityActionArray)Bobomb_Functions);
}

void Bobomb_OnTick(BobombEntity* this) {
    gUnk_080CD5EC[super->action](this);
}

void Bobomb_OnCollision(BobombEntity* this) {
    if (super->contactFlags & CONTACT_NOW) {
        switch (super->contactFlags & 0x7f) {
            case 0:
            case 1:
                if (this->unk_82) {
                    super->knockbackDuration = 0;
                    gPlayerEntity.base.knockbackDuration = 4;
                }
                return;
            case 0xe:
            case 0x14:
            case 0x15:
            case 0x16:
                super->action = 3;
                super->knockbackDuration = 0;
                sub_0802CBC4(this);
                return;
        }
        this->unk_82++;
        this->unk_80 = 28;
        switch (this->unk_82) {
            case 1:
                sub_0802CB68(this);
                EnqueueSFX(SFX_14D);
                break;
            case 2:
                super->action = 3;
                super->hitType = 0x6e;
                super->subtimer = 1;
                super->zVelocity = Q_16_16(1.5);
                super->speed = 0;
                this->unk_81 = 1;
                InitializeAnimation(super, super->direction >> 4 | IdleWest);
                break;
        }
    }
    EnemyFunctionHandlerAfterCollision(super, Bobomb_Functions);
}

void Bobomb_OnGrabbed(BobombEntity* this) {
    if (super->subAction < 3 && !sub_0806F520(super)) {
        super->subAction = 0;
        super->subtimer = 1;
        super->z.HALF.HI = 0;
        if (this->unk_82 != 2) {
            super->speed = this->unk_82 ? 0x200 : 0x80;
        }
        super->zVelocity = Q_16_16(1.5);
        this->unk_83 = 0;
        this->unk_81 = 0;
    } else {
        super->z.HALF.HI = -1;
        gUnk_080CD600[super->subAction](this);
        if (super->timer != 0) {
            GetNextFrame(super);
        }
    }
}

void sub_0802C820(BobombEntity* this) {
    super->subAction = 1;
    super->gustJarTolerance = 60;
}

void sub_0802C82C(BobombEntity* this) {
    sub_0806F4E8(super);
}

void sub_0802C834(BobombEntity* this) {
    sub_0806F3E4(super);
}

void sub_0802C83C(BobombEntity* this) {
    if (this->unk_82) {
        if (--super->timer == 0) {
            super->action = 3;
            switch (gPlayerEntity.base.animationState & 6) {
                case 2:
                    super->x.HALF.HI -= 6;
                    break;
                case 6:
                    super->x.HALF.HI += 6;
                    break;
            }
            sub_0802CBC4(this);
        } else {
            sub_0802CC18(this);
            COLLISION_OFF(super);
            super->hitType = 0x6e;
        }
    } else {
        this->unk_82 = 2;
        super->timer = 120;
        InitializeAnimation(super, (super->direction >> 4) | IdleWest);
        COLLISION_OFF(super);
        super->hitType = 0x6e;
    }
}

void nullsub_149(BobombEntity* this) {
    /* ... */
}

void sub_0802C8B8(BobombEntity* this) {
    super->action = 3;
    sub_0802CBC4(this);
}

void Bobomb_OnDeath(BobombEntity* this) {
    GenericDeath(super);
    super->spriteSettings.draw = 0;
}

void sub_0802C8D8(BobombEntity* this) {
    super->action = 1;
    super->timer = 60;
    super->subtimer = 0;
    super->direction = (Random() & 0x18) | DIR_DIAGONAL;
    super->carryFlags = 0;
    super->gustJarFlags = 0x12;
    this->unk_82 = 0;
    this->unk_83 = 0;
    this->unk_80 = 0;
    this->unk_81 = 0;
    InitializeAnimation(super, super->direction >> 4);
}

void sub_0802C91C(BobombEntity* this) {
    GetNextFrame(super);
    ProcessMovement0(super);
    if (this->unk_82) {
        if (super->collisions != COL_NONE) {
            sub_0800417E(super, super->collisions);
            InitializeAnimation(super, (super->direction >> 4) | IdleEast);
        }
        if (--super->timer == 0) {
            sub_0802CBC4(this);
        } else {
            if ((super->timer & 0xf) == 8) {
                CreateDustSmall(super);
            }
            sub_0802CC18(this);
        }
    } else {
        if (super->collisions != COL_NONE) {
            sub_0800417E(super, super->collisions);
            InitializeAnimation(super, super->direction >> 4);
        }
        if (--super->timer == 0) {
            super->timer = 60;
            super->direction = (super->direction + 8) & (DirectionWest | DIR_DIAGONAL);
            InitializeAnimation(super, super->direction >> 4);
        }
    }
}

void sub_0802C9B8(BobombEntity* this) {
    gUnk_080CD618[super->subAction](this);
}

void sub_0802C9D0(BobombEntity* this) {
    super->subAction = 1;
    COLLISION_OFF(super);
    super->spritePriority.b1 = 0;
    this->unk_83 = 1;
    sub_0802CC18(this);
    InitializeAnimation(super, (super->direction >> 4) | IdleWest);
    GetNextFrame(super);
}

void sub_0802CA10(BobombEntity* this) {
    if (gPlayerState.heldObject != 5) {
        if (--super->timer == 0) {
            sub_0802CBC4(this);
        } else {
            sub_0802CC18(this);
            GetNextFrame(super);
        }
    } else {
        this->unk_83 = 2;
        super->direction = (((gPlayerEntity.base.animationState) << 2) | IdleSouth) & (DIR_DIAGONAL | DirectionWest);
        sub_0802CC18(this);
        GetNextFrame(super);
    }
}

void sub_0802CA6C(BobombEntity* this) {
    if (--super->timer == 0) {
        sub_0802CBC4(this);
    } else {
        sub_0802CC18(this);
        GetNextFrame(super);
    }
}

void sub_0802CA94(BobombEntity* this) {
    super->action = 3;
    COLLISION_OFF(super);
    super->subtimer = 1;
    super->spritePriority.b1 = 1;
    super->zVelocity = Q_16_16(1.5);
    super->speed = 0;
    this->unk_83 = 0;
    this->unk_81 = 0;
    super->direction = ((gPlayerEntity.base.animationState << 2) | IdleSouth) & (DirectionWest | DIR_DIAGONAL);
    InitializeAnimation(super, (super->direction >> 4) | IdleWest);
}

void sub_0802CAF8(BobombEntity* this) {
    if (--super->timer == 0) {
        sub_0802CBC4(this);
    } else {
        if (this->unk_81 && BounceUpdate(super, Q_8_8(40.0)) == BOUNCE_INIT_NEXT) {
            EnqueueSFX(SFX_PLACE_OBJ);
        }
        sub_0802CC18(this);
        RegisterCarryEntity(super);
        if (super->subtimer && super->z.HALF.HI == 0) {
            super->subtimer = 0;
            COLLISION_ON(super);
            super->hitType = 0x6e;
        }
        GetNextFrame(super);
    }
}

void nullsub_150(BobombEntity* this) {
    /* ... */
}

void sub_0802CB68(BobombEntity* this) {
    super->action = 1;
    super->subAction = 0;
    super->direction = Random() & 0x18;
    super->direction |= IdleSouth;
    COLLISION_ON(super);
    if (this->unk_82) {
        super->timer = 200;
        super->speed = 0x200;
        InitializeAnimation(super, (super->direction >> 4) | 2);
    } else {
        super->timer = 60;
        super->speed = 0x80;
        InitializeAnimation(super, super->direction >> 4);
    }
}

void sub_0802CBC4(BobombEntity* this) {
    Entity* entity;

    super->action = 4;
    super->spriteSettings.draw = 0;
    COLLISION_OFF(super);
    super->health = 0;
    if (this->unk_83) {
        PlayerDropHeldObject();
    }
    FreeCarryEntity(super);

    entity = CreateObjectWithParent(super, SMOKE_PARTICLE, 0, 0);
    if (entity != NULL) {
        entity->collisionLayer = super->collisionLayer;
    }
}

void sub_0802CC18(BobombEntity* this) {
    if (--this->unk_80 == 0) {
        this->unk_80 = 28;
        EnqueueSFX(SFX_14D);
    }
}

// clang-format off
void (*const Bobomb_Functions[])(BobombEntity*) = {
    Bobomb_OnTick,
    Bobomb_OnCollision,
    (void (*)(BobombEntity*))GenericKnockback,
    Bobomb_OnDeath,
    (void (*)(BobombEntity*))GenericConfused,
    Bobomb_OnGrabbed,
};

void (*const gUnk_080CD5EC[])(BobombEntity*) = {
    sub_0802C8D8,
    sub_0802C91C,
    sub_0802C9B8,
    sub_0802CAF8,
    nullsub_150,
};

void (*const gUnk_080CD600[])(BobombEntity*) = {
    sub_0802C820,
    sub_0802C82C,
    sub_0802C834,
    sub_0802C83C,
    nullsub_149,
    sub_0802C8B8,
};

void (*const gUnk_080CD618[])(BobombEntity*) = {
    sub_0802C9D0,
    sub_0802CA10,
    sub_0802CA6C,
    sub_0802CA94,
};
// clang-format on
