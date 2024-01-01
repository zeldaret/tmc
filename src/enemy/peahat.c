/**
 * @file peahat.c
 * @ingroup Enemies
 *
 * @brief Peahat enemy
 */
#include "enemy.h"
#include "physics.h"
#include "room.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[24];
    /*0x80*/ u8 unk_80;
    /*0x81*/ u8 unk_81;
    /*0x82*/ u8 unk_82;
    /*0x83*/ u8 unk_83;
} PeahatEntity;

extern void (*const Peahat_Functions[])(PeahatEntity*);
extern void (*const gPeahatPropellerFunctions[])(PeahatEntity*);
extern void (*const gPeahatActions[])(PeahatEntity*);
extern void (*const gUnk_080CA5BC[])(PeahatEntity*);

extern const s8 gPeahatFlightHeights[];
extern const s8 gUnk_080CA5D4[];

void sub_080205F8(PeahatEntity* this);
void sub_08020604(PeahatEntity* this);

extern Entity* gUnk_020000B0;

enum {
    PeahatForm_Torso,
    PeahatForm_Propeller,
};

enum {
    PeahatAnimation_Flying,
    PeahatAnimation_BrokenPropeller,
    PeahatAnimation_SlicedPropeller,
    PeahatAnimation_Propeller,
    PeahatAnimation_NewPropeller,
    PeahatAnimation_RepairPropeller,
};

void Peahat(PeahatEntity* this) {
    if (super->type == PeahatForm_Torso) {
        EnemyFunctionHandler(super, (EntityActionArray)Peahat_Functions);
        EnemySetFXOffset(super, 0, 1, -0x10);
    } else {
        gPeahatPropellerFunctions[super->action](this);
    }
}

void Peahat_OnTick(PeahatEntity* this) {
    gPeahatActions[super->action](this);
    if (this->unk_81)
        super->z.HALF.HI = gPeahatFlightHeights[(super->subtimer++ & 0x30) >> 4];
}

void Peahat_OnCollision(PeahatEntity* this) {
    if (this->unk_82) {
        if (super->contactFlags == (CONTACT_NOW | 0x14)) {
            Entity* entity = CreateEnemy(PEAHAT, PeahatForm_Propeller);
            if (entity != NULL) {
                CopyPosition(super, entity);
                entity->z.HALF.HI -= 8;
            }
            this->unk_82 = 0;
            super->animationState = PeahatAnimation_SlicedPropeller;
            super->action = 5;
            super->speed = 0x80;
            super->iframes = -30;
            this->unk_81 = 0;
            InitializeAnimation(super, super->animationState);
        } else if (super->contactFlags == (CONTACT_NOW | 0x1b)) {
            super->animationState = PeahatAnimation_BrokenPropeller;
            super->action = 5;
            super->speed = 0x80;
            super->iframes = -30;
            this->unk_81 = 0;
            InitializeAnimation(super, super->animationState);
        } else if (super->contactFlags == CONTACT_NOW) {
            if (super->animationState == PeahatAnimation_Flying) {
                super->action = 1;
                super->timer = 30;
                super->speed = 0x80;
                super->direction = -1;
                this->unk_83 = 0x78;
                GetNextFrame(super);
            }
        }
    }

    if (super->confusedTime)
        EnemyCreateFX(super, FX_STARS);

    EnemyFunctionHandlerAfterCollision(super, Peahat_Functions);
}

void Peahat_OnGrabbed(PeahatEntity* this) {
    if (2 >= super->subAction && !sub_0806F520(super))
        return;

    gUnk_080CA5BC[super->subAction](this);
}

void sub_080200B4(PeahatEntity* this) {
    super->subAction = 1;
    super->gustJarTolerance = 60;
    if (super->animationState == PeahatAnimation_Flying) {
        super->animationState = PeahatAnimation_BrokenPropeller;
        super->action = 5;
        super->hitType = 0x71;
        this->unk_81 = 0;
        InitializeAnimation(super, super->animationState);
    }
}

void sub_080200E4(PeahatEntity* this) {
    sub_0806F4E8(super);
}

void sub_080200EC(PeahatEntity* this) {
    sub_0806F3E4(super);
}

void sub_080200F4(PeahatEntity* this) {
    COLLISION_OFF(super);
}

void nullsub_5(PeahatEntity* this) {
}

void sub_08020104(PeahatEntity* this) {
    if (super->flags & ENT_COLLIDE) {
        COLLISION_ON(super);
        super->gustJarState &= 0xfb;
    } else {
        super->health = 0;
    }
}

void Peahat_Initialize(PeahatEntity* this) {
    sub_0804A720(super);
    super->action = 1;
    super->timer = 16;
    super->subtimer = Random();
    super->direction = Random() & 0x1f;
    super->gustJarFlags = 18;
    this->unk_80 = (Random() & 1) ? 2 : -2;
    this->unk_81 = 1;
    this->unk_82 = 1;
    super->animationState = PeahatAnimation_Flying;
    InitializeAnimation(super, super->animationState);
}

void Peahat_Fly(PeahatEntity* this) {
    if (this->unk_83)
        this->unk_83--;

    if (sub_08049FDC(super, 1)) {
        if (this->unk_83 == 0 && (super->subtimer & 0xf) == 0 && sub_08049F1C(super, gUnk_020000B0, 0x30)) {
            super->action = 2;
            super->subAction = Random() & 3;
            super->timer = 60;
            super->speed = 160;
        }
    }

    if (--super->timer == 0) {
        super->timer = 16;
        sub_08020604(this);
        if ((Random() & 3) == 0) {
            this->unk_80 = (Random() & 1) ? 2 : -2;
        }
    }

    ProcessMovement2(super);
    GetNextFrame(super);
}

void Peahat_ChargeStart(PeahatEntity* this) {
    if (sub_08049FDC(super, 1)) {
        if (--super->timer) {
            UpdateAnimationVariableFrames(super, 4 - ((super->timer >> 4) & 0x3));
            return;
        } else {
            super->action = 3;
            super->timer = 120;
            super->speed = 192;
            super->direction =
                (GetFacingDirection(super, gUnk_020000B0) + gUnk_080CA5D4[Random() & 1]) & (0x3 | DirectionNorthWest);
        }
    } else {
        sub_080205F8(this);
    }

    UpdateAnimationVariableFrames(super, 4);
}

void Peahat_ChargeTarget(PeahatEntity* this) {
    if (sub_08049FDC(super, 1)) {
        if (--super->timer == 0) {
            sub_080205F8(this);
        }
        if (super->timer > 60) {
            if (super->timer & 1)
                super->speed += 4;

            if ((gRoomTransition.frameCount & 3) == 0)
                sub_08004596(super, GetFacingDirection(super, gUnk_020000B0));
        }
        ProcessMovement2(super);
    } else {
        sub_080205F8(this);
    }
    UpdateAnimationVariableFrames(super, 4);
}

void Peahat_ChargeEnd(PeahatEntity* this) {
    if (--super->timer == 0) {
        super->action = 1;
        super->timer = 1;
        super->speed = 128;
        this->unk_83 = 120;
        GetNextFrame(super);
    } else {
        if (super->timer & 1)
            super->speed -= 8;

        ProcessMovement2(super);
        UpdateAnimationVariableFrames(super, 4);
    }
}

#define DIR_NONE 0xff

void Peahat_Stunned(PeahatEntity* this) {
    switch (super->animationState) {
        default:
            if (BounceUpdate(super, Q_8_8(24.0)) == BOUNCE_DONE_ALL) {
                super->action = 6;
                super->timer = 240;
                super->subtimer = 10;
                super->hitType = 0x71;
            }

            if (super->direction == DIR_NONE)
                super->direction = super->knockbackDirection;

            ProcessMovement0(super);
            GetNextFrame(super);
            break;
        case PeahatAnimation_SlicedPropeller:
            GravityUpdate(super, Q_8_8(28.0));
            if (super->z.HALF.HI == 0) {
                super->action = 7;
                super->timer = 150;
                super->subtimer = 10;
                super->hitType = 0x71;
            }
            break;
    };
}

void Peahat_RepairPropeller(PeahatEntity* this) {
    if ((super->subtimer != 0) && (--super->subtimer == 0)) {
        EnemyCreateFX(super, FX_STARS);
    }

    if (sub_0800442E(super) || (--super->timer == 0)) {
        super->action = 9;
        super->zVelocity = Q_16_16(1.5);
        super->direction = Random() & 0x1f;
        EnemyDetachFX(super);
        super->animationState = PeahatAnimation_RepairPropeller;
        InitializeAnimation(super, super->animationState);
    }
}

void Peahat_Recover(PeahatEntity* this) {
    if ((super->subtimer != 0) && (--super->subtimer == 0)) {
        EnemyCreateFX(super, FX_STARS);
    }

    if (sub_0800442E(super) || (--super->timer == 0)) {
        super->action = 8;
        super->timer = 240;
        super->direction = Random() & 0x1f;
        EnemyDetachFX(super);
    }
}

void Peahat_Hop(PeahatEntity* this) {
    GetNextFrame(super);
    if (--super->timer == 0) {
        if (super->frame & ANIM_DONE) {
            super->action = 9;
            super->zVelocity = Q_16_16(1.5);
            super->animationState = PeahatAnimation_NewPropeller;
            InitializeAnimation(super, super->animationState);
        } else {
            super->timer = 1;
        }
    }

    if (super->frame & 2) {
        super->frame &= ~2;
        super->direction = Random() & 0x1f;
    }

    if (super->frame & 1) {
        sub_0800442E(super);
    } else {
        ProcessMovement0(super);
    }
}

void Peahat_Takeoff(PeahatEntity* this) {
    GetNextFrame(super);
    if (super->frame & ANIM_DONE) {
        super->action = 1;
        super->hitType = 0x70;
        this->unk_82 = 1;
        this->unk_81 = 1;
        super->animationState = PeahatAnimation_Flying;
        InitializeAnimation(super, super->animationState);
    } else if (super->frame & 1) {
        sub_0800442E(super);
    } else {
        GravityUpdate(super, Q_8_8(28.0));
        ProcessMovement0(super);
    }
}

void PeahatPropeller_Initialize(PeahatEntity* this) {
    super->action = 1;
    super->timer = 240;
    super->subtimer = 40;
    super->spriteSettings.draw = 1;
    super->spriteRendering.b3 = 1;
    super->spriteOrientation.flipY = 1;
    super->spriteSettings.shadow = 0;
    super->speed = 0x20;
    super->direction = (Random() & 0x10) + 8;
    InitializeAnimation(super, PeahatAnimation_Propeller);
}

void PeahatPropeller_Fly(PeahatEntity* this) {
    GetNextFrame(super);
    if (--super->timer == 0) {
        DeleteEntity(super);
    } else {
        if (super->timer < 60)
            super->spriteSettings.draw ^= 1;

        super->z.WORD -= Q_16_16(0.75);
        LinearMoveUpdate(super);
        if (--super->subtimer == 0) {
            super->subtimer = 40;
            super->direction = (Random() & 0x10) + 8;
        }
    }
}

void sub_080205F8(PeahatEntity* this) {
    super->action = 4;
    super->timer = 60;
}

void sub_08020604(PeahatEntity* this) {
    if (!sub_08049FA0(super) && (Random() & 3)) {
        super->direction = sub_08049EE4(super);
    } else {
        super->direction += this->unk_80;
        super->direction &= (0x3 | DirectionNorthWest);
    }
}

// clang-format off
void (*const Peahat_Functions[])(PeahatEntity*) = {
    Peahat_OnTick,
    Peahat_OnCollision,
    (void (*)(PeahatEntity*))GenericKnockback,
    (void (*)(PeahatEntity*))GenericDeath,
    (void (*)(PeahatEntity*))GenericConfused,
    Peahat_OnGrabbed,
};

void (*const gPeahatPropellerFunctions[])(PeahatEntity*) = {
    PeahatPropeller_Initialize,
    PeahatPropeller_Fly,
};

void (*const gPeahatActions[])(PeahatEntity*) = {
    Peahat_Initialize,
    Peahat_Fly,
    Peahat_ChargeStart,
    Peahat_ChargeTarget,
    Peahat_ChargeEnd,
    Peahat_Stunned,
    Peahat_RepairPropeller,
    Peahat_Recover,
    Peahat_Hop,
    Peahat_Takeoff,
};

const s8 gPeahatFlightHeights[] = {
    -5, -6, -7, -6,
};

void (*const gUnk_080CA5BC[])(PeahatEntity*) = {
    sub_080200B4,
    sub_080200E4,
    sub_080200EC,
    sub_080200F4,
    nullsub_5,
    sub_08020104,
};

/* Alignment issue
const s8 gUnk_080CA5D4[] = {
    4, -4,
};
*/
// clang-format on
