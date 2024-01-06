/**
 * @file beetle.c
 * @ingroup Enemies
 *
 * @brief Beetle enemy
 */
#include "enemy.h"
#include "functions.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[30];
    /*0x86*/ u8 unk_86;
    /*0x87*/ u8 unk_87;
} BeetleEntity;

u32 sub_08021D00(BeetleEntity*);
void sub_08021D44(BeetleEntity* this, u32 direction);

extern void (*const Beetle_Functions[])(BeetleEntity*);
extern void (*const gUnk_080CB5A8[])(BeetleEntity*);
extern void (*const gUnk_080CB5C8[])(BeetleEntity*);
extern void (*const gUnk_080CB5D4[])(BeetleEntity*);

extern const s8 gUnk_080CB5DC[];
extern const s8 gUnk_080CB5E4[];

void Beetle(BeetleEntity* this) {
    EnemyFunctionHandler(super, (EntityActionArray)Beetle_Functions);
}

void Beetle_OnTick(BeetleEntity* this) {
    gUnk_080CB5A8[super->action](this);
}

void Beetle_OnCollision(BeetleEntity* this) {
    switch (super->contactFlags) {
        case CONTACT_NOW:
            if (gPlayerState.framestate == PL_STATE_CLIMB) {
                Beetle_OnTick(this);
            } else {
                super->action = 5;
                super->timer = 180;
                super->subtimer = 0;
                COLLISION_OFF(super);
                super->spritePriority.b0 = 3;
                CopyPositionAndSpriteOffset(&gPlayerEntity.base, super);
                super->z.HALF.HI = -1;
                this->unk_87 = 1;
                InitializeAnimation(super, 6);
            }
            break;
        case CONTACT_NOW | 0x13:
            Beetle_OnTick(this);
            break;
    }

    if (super->health == 0)
        super->knockbackDuration = 0;

    EnemyFunctionHandlerAfterCollision(super, Beetle_Functions);
}

void Beetle_OnDeath(BeetleEntity* this) {
    if (super->type == 0) {
        GenericDeath(super);
    } else {
        Entity* entity = super->parent;
        if (entity != NULL) {
            entity->subtimer--;
            super->parent = NULL;
        }
        EnemyCreateDeathFX((Enemy*)super, 0xf0, 0);
    }
}

void Beetle_OnGrabbed(BeetleEntity* this) {
    if (sub_0806F520(super)) {
        gUnk_080CB5C8[super->subAction](this);
    } else {
        super->action = 3;
        super->z.HALF.HI = 0;
        InitializeAnimation(super, 2);
    }
}

void sub_0802187C(BeetleEntity* this) {
    super->subAction = 2;
}

void nullsub_130(BeetleEntity* this) {
}

void sub_08021888(BeetleEntity* this) {
    if (sub_0806F3E4(super))
        Beetle_OnDeath(this);
}

void Beetle_Initialize(BeetleEntity* this) {
    sub_0804A720(super);
    super->action = 1;
    super->gustJarFlags = 1;
    InitializeAnimation(super, 3);
}

void sub_080218B4(BeetleEntity* this) {
    gUnk_080CB5D4[super->type2](this);
}

void sub_080218CC(BeetleEntity* this) {
    if (super->subAction == 0) {
        super->subAction = 1;
        super->spriteSettings.draw = 1;
        super->direction = ((sub_08049F84(super, 1) ^ 0x10) + gUnk_080CB5DC[Random() & 7]) &
                           (0x3 | DIR_DIAGONAL | DirectionNorth | DirectionEast | DirectionSouth | DirectionWest);
        super->speed = 0x100;
        super->zVelocity = Q_16_16(1.125);
    }

    GetNextFrame(super);
    if (super->frame & 1) {
        ProcessMovement2(super);
        if (BounceUpdate(super, Q_8_8(28.0)) == BOUNCE_DONE_ALL)
            super->frameDuration = 1;
    }

    if (super->frame & ANIM_DONE) {
        super->action = 2;
        super->timer = (Random() & 0x38) + 8;
        super->subtimer = 1;
        COLLISION_ON(super);
        super->speed = 0x180;
        InitializeAnimation(super, 0);
    }
}

void sub_08021984(BeetleEntity* this) {
    if (super->subAction == 0) {
        super->subAction = 1;
        COLLISION_ON(super);
        super->spriteSettings.draw = 3;
        super->z.HALF.HI = -0x80;
        super->spriteRendering.b3 = 1;
        super->spriteOrientation.flipY = 1;
        EnqueueSFX(SFX_12D);
    }

    if (GravityUpdate(super, Q_8_8(24.0)) == 0) {
        super->action = 2;
        super->timer = 16;
        super->subtimer = 1;
        super->spriteSettings.draw = 1;
        super->speed = 0x180;
        this->unk_86 = 60;
        InitializeAnimation(super, 0);
        UpdateSpriteForCollisionLayer(super);
    }
}

void sub_08021A10(BeetleEntity* this) {
    GetNextFrame(super);
    if (EntityInRectRadius(super, &gPlayerEntity.base, 120, 80) && sub_08021D00(this) == 0) {
        if (--super->timer == 0) {
            super->action = 3;
            super->timer = (Random() & 0x3f) + 30;
            sub_08021D44(this, super->direction);
            InitializeAnimation(super, 2);
        }
    }
}

void sub_08021A64(BeetleEntity* this) {
    if (!sub_08021D00(this)) {
        if (--super->timer == 0) {
            super->action = 2;
            super->timer = (Random() & 0x1F) + 30;
            InitializeAnimation(super, 0);
        }

        if (--super->subtimer == 0) {
            u32 tmp;

            super->subtimer = 8;
            tmp = sub_08049F84(super, 1);
            if (tmp == 0xff) {
                super->action = 7;
                InitializeAnimation(super, 1);
                return;
            }
            sub_08021D44(this, tmp);
        }
        ProcessMovement0(super);
        GetNextFrame(super);
    }
}

void sub_08021AD8(BeetleEntity* this) {
    GetNextFrame(super);
    if (super->frame & 1) {
        if (super->timer != 0) {
            u32 tmp;

            super->timer = 0;
            tmp = sub_08049F84(super, 1);
            if (tmp == 0xff) {
                super->action = 2;
                super->timer = 8;
                InitializeAnimation(super, 0);
                return;
            }
            super->direction = (u8)tmp;
            EnqueueSFX(SFX_PLY_JUMP);
        }
        ProcessMovement2(super);
        if (!GravityUpdate(super, Q_8_8(24.0)))
            super->frameDuration = 1;
    }

    if (super->frame & ANIM_DONE) {
        super->action = 2;
        super->timer = 20;
        this->unk_86 = 60;
        InitializeAnimation(super, 0);
    }
}

void sub_08021B64(BeetleEntity* this) {
    if (gPlayerState.flags & PL_DROWNING) {
        super->action = 3;
        super->z.WORD = 0;
        InitializeAnimation(super, 2);
    } else {
        s32 iVar4 = 1;

        if (gPlayerState.framestate != PL_STATE_JUMP && gPlayerState.framestate != PL_STATE_CAPE) {
            if (sub_0807953C())
                iVar4 = super->type * 3 + 8;

            iVar4 = super->timer - iVar4;
            if (iVar4 < 0)
                iVar4 = 0;

            super->timer = (u8)iVar4;
        }

        if (gPlayerState.flags & (PL_DISABLE_ITEMS | PL_CAPTURED))
            iVar4 = 0;

        if (iVar4 == 0) {
            super->action = 6;
            super->zVelocity = Q_16_16(1.0);
            this->unk_87 = 0;
            if (gPlayerEntity.base.direction != 0xff) {
                super->direction = DirectionSouth ^ gPlayerEntity.base.direction;
            } else {
                super->direction = (gPlayerEntity.base.animationState << 2) ^ DirectionSouth;
            }
            InitializeAnimation(super, 5);
        } else {
            gPlayerState.mobility |= 0x80;
            gPlayerState.speed_modifier -= 0x50;
            gPlayerState.attachedBeetleCount++;
            CopyPositionAndSpriteOffset(&gPlayerEntity.base, super);
            super->x.HALF.HI += gUnk_080CB5E4[(super->subtimer++ & 0xe) >> 1];
            super->z.HALF.HI--;
            GetNextFrame(super);
        }
    }
}

void sub_08021C58(BeetleEntity* this) {
    GetNextFrame(super);
    if (super->frame & 1) {
        ProcessMovement2(super);
        if (GravityUpdate(super, Q_8_8(24.0)) == 0)
            super->frameDuration = 1;
    }

    if (super->frame & ANIM_DONE) {
        super->action = 2;
        super->timer = 60;
        super->subtimer = 1;
        COLLISION_ON(super);
        super->spritePriority.b0 = 4;
        this->unk_86 = 60;
        InitializeAnimation(super, 0);
    }
}

void sub_08021CD0(BeetleEntity* this) {
    if ((super->frame & ANIM_DONE) == 0)
        GetNextFrame(super);

    if (sub_08049F84(super, 1) == 0xff)
        return;

    super->action = 3;
    InitializeAnimation(super, 2);
}

u32 sub_08021D00(BeetleEntity* this) {
    u32 ret;

    if (this->unk_86) {
        this->unk_86--;
        ret = 0;
    } else if (PlayerInRange(super, 1, 0x10) == 0) {
        ret = 0;
    } else {
        super->action = 4;
        super->timer = 1;
        super->zVelocity = Q_16_16(1.5);
        InitializeAnimation(super, 4);
        ret = 1;
    }

    return ret;
}

void sub_08021D44(BeetleEntity* this, u32 direction) {
    direction = DirectionRoundUp(direction);
    super->direction = direction;
    if (DirectionIsHorizontal(direction)) {
        super->speed = 0x180;
    } else {
        super->speed = 0xc0;
    }
}

// clang-format off
void (*const Beetle_Functions[])(BeetleEntity*) = {
    Beetle_OnTick,
    Beetle_OnCollision,
    (void (*)(BeetleEntity*))GenericKnockback,
    Beetle_OnDeath,
    (void (*)(BeetleEntity*))GenericConfused,
    Beetle_OnGrabbed,
};

void (*const gUnk_080CB5A8[])(BeetleEntity*) = {
    Beetle_Initialize,
    sub_080218B4,
    sub_08021A10,
    sub_08021A64,
    sub_08021AD8,
    sub_08021B64,
    sub_08021C58,
    sub_08021CD0,
};

void (*const gUnk_080CB5C8[])(BeetleEntity*) = {
    sub_0802187C,
    nullsub_130,
    sub_08021888,
};

void (*const gUnk_080CB5D4[])(BeetleEntity*) = {
    sub_080218CC,
    sub_08021984,
};

const s8 gUnk_080CB5DC[] = {
    -1, -2, 1, 2, -3, 3, -4, 4,
};

const s8 gUnk_080CB5E4[] = {
    -1, -2, -1, 0, 1, 2, 1, 0,
};
// clang-format on
