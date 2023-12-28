/**
 * @file peahat.c
 * @ingroup Enemies
 *
 * @brief Peahat enemy
 */

#include "enemy.h"
#include "room.h"
#include "physics.h"

extern void (*const Peahat_Functions[])(Entity*);
extern void (*const gPeahatPropellerFunctions[])(Entity*);
extern void (*const gPeahatActions[])(Entity*);
extern void (*const gUnk_080CA5BC[])(Entity*);

extern const s8 gPeahatFlightHeights[];
extern const s8 gUnk_080CA5D4[];

void sub_080205F8(Entity*);
void sub_08020604(Entity*);

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

void Peahat(Entity* this) {
    if (this->type == PeahatForm_Torso) {
        EnemyFunctionHandler(this, Peahat_Functions);
        SetChildOffset(this, 0, 1, -0x10);
    } else {
        gPeahatPropellerFunctions[this->action](this);
    }
}

void Peahat_OnTick(Entity* this) {
    gPeahatActions[this->action](this);
    if (this->field_0x80.HALF.HI)
        this->z.HALF.HI = gPeahatFlightHeights[(this->subtimer++ & 0x30) >> 4];
}

void Peahat_OnCollision(Entity* this) {
    if (this->field_0x82.HALF.LO) {
        if (this->contactFlags == 0x94) {
            Entity* ent = CreateEnemy(PEAHAT, PeahatForm_Propeller);
            if (ent != NULL) {
                CopyPosition(this, ent);
                ent->z.HALF.HI -= 8;
            }
            this->field_0x82.HALF.LO = 0;
            this->animationState = PeahatAnimation_SlicedPropeller;
            this->action = 5;
            this->speed = 0x80;
            this->iframes = -30;
            this->field_0x80.HALF.HI = 0;
            InitializeAnimation(this, this->animationState);
        } else if (this->contactFlags == 0x9b) {
            this->animationState = PeahatAnimation_BrokenPropeller;
            this->action = 5;
            this->speed = 0x80;
            this->iframes = -30;
            this->field_0x80.HALF.HI = 0;
            InitializeAnimation(this, this->animationState);
        } else if (this->contactFlags == 0x80) {
            if (this->animationState == PeahatAnimation_Flying) {
                this->action = 1;
                this->timer = 30;
                this->speed = 0x80;
                this->direction = -1;
                this->field_0x82.HALF.HI = 0x78;
                GetNextFrame(this);
            }
        }
    }

    if (this->confusedTime)
        Create0x68FX(this, FX_STARS);

    EnemyFunctionHandlerAfterCollision(this, Peahat_Functions);
}

void Peahat_OnGrabbed(Entity* this) {
    if (2 >= this->subAction && !sub_0806F520(this))
        return;

    gUnk_080CA5BC[this->subAction](this);
}

void sub_080200B4(Entity* this) {
    this->subAction = 1;
    this->gustJarTolerance = 60;
    if (this->animationState == PeahatAnimation_Flying) {
        this->animationState = PeahatAnimation_BrokenPropeller;
        this->action = 5;
        this->hitType = 0x71;
        this->field_0x80.HALF.HI = 0;
        InitializeAnimation(this, this->animationState);
    }
}

void sub_080200E4(Entity* this) {
    sub_0806F4E8(this);
}

void sub_080200EC(Entity* this) {
    sub_0806F3E4(this);
}

void sub_080200F4(Entity* this) {
    COLLISION_OFF(this);
}

void nullsub_5(Entity* this) {
}

void sub_08020104(Entity* this) {
    if (this->flags & ENT_COLLIDE) {
        COLLISION_ON(this);
        this->gustJarState &= 0xfb;
    } else {
        this->health = 0;
    }
}

void Peahat_Initialize(Entity* this) {
    sub_0804A720(this);
    this->action = 1;
    this->timer = 16;
    this->subtimer = Random();
    this->direction = Random() & 0x1f;
    this->gustJarFlags = 18;
    this->field_0x80.HALF.LO = (Random() & 1) ? 2 : -2;
    this->field_0x80.HALF.HI = 1;
    this->field_0x82.HALF.LO = 1;
    this->animationState = PeahatAnimation_Flying;
    InitializeAnimation(this, this->animationState);
}

void Peahat_Fly(Entity* this) {
    if (this->field_0x82.HALF.HI)
        this->field_0x82.HALF.HI--;

    if (sub_08049FDC(this, 1)) {
        if (this->field_0x82.HALF.HI == 0 && (this->subtimer & 0xf) == 0 && sub_08049F1C(this, gUnk_020000B0, 0x30)) {
            this->action = 2;
            this->subAction = Random() & 3;
            this->timer = 60;
            this->speed = 160;
        }
    }

    if (--this->timer == 0) {
        this->timer = 16;
        sub_08020604(this);
        if ((Random() & 3) == 0) {
            this->field_0x80.HALF.LO = (Random() & 1) ? 2 : -2;
        }
    }

    ProcessMovement2(this);
    GetNextFrame(this);
}

void Peahat_ChargeStart(Entity* this) {
    if (sub_08049FDC(this, 1)) {
        if (--this->timer) {
            UpdateAnimationVariableFrames(this, 4 - ((this->timer >> 4) & 0x3));
            return;
        } else {
            this->action = 3;
            this->timer = 120;
            this->speed = 192;
            this->direction =
                (GetFacingDirection(this, gUnk_020000B0) + gUnk_080CA5D4[Random() & 1]) & (0x3 | DirectionNorthWest);
        }
    } else {
        sub_080205F8(this);
    }

    UpdateAnimationVariableFrames(this, 4);
}

void Peahat_ChargeTarget(Entity* this) {
    if (sub_08049FDC(this, 1)) {
        if (--this->timer == 0) {
            sub_080205F8(this);
        }
        if (this->timer > 60) {
            if (this->timer & 1)
                this->speed += 4;

            if ((gRoomTransition.frameCount & 3) == 0)
                sub_08004596(this, GetFacingDirection(this, gUnk_020000B0));
        }
        ProcessMovement2(this);
    } else {
        sub_080205F8(this);
    }
    UpdateAnimationVariableFrames(this, 4);
}

void Peahat_ChargeEnd(Entity* this) {
    if (--this->timer == 0) {
        this->action = 1;
        this->timer = 1;
        this->speed = 128;
        this->field_0x82.HALF.HI = 120;
        GetNextFrame(this);
    } else {
        if (this->timer & 1)
            this->speed -= 8;

        ProcessMovement2(this);
        UpdateAnimationVariableFrames(this, 4);
    }
}

#define DIR_NONE 0xff

void Peahat_Stunned(Entity* this) {
    switch (this->animationState) {
        default:
            if (sub_080044EC(this, 0x1800) == 0) {
                this->action = 6;
                this->timer = 240;
                this->subtimer = 10;
                this->hitType = 0x71;
            }

            if (this->direction == DIR_NONE)
                this->direction = this->knockbackDirection;

            ProcessMovement0(this);
            GetNextFrame(this);
            break;
        case PeahatAnimation_SlicedPropeller:
            GravityUpdate(this, Q_8_8(28.0));
            if (this->z.HALF.HI == 0) {
                this->action = 7;
                this->timer = 150;
                this->subtimer = 10;
                this->hitType = 0x71;
            }
            break;
    };
}

void Peahat_RepairPropeller(Entity* this) {
    if ((this->subtimer != 0) && (--this->subtimer == 0)) {
        Create0x68FX(this, FX_STARS);
    }

    if (sub_0800442E(this) || (--this->timer == 0)) {
        this->action = 9;
        this->zVelocity = Q_16_16(1.5);
        this->direction = Random() & 0x1f;
        sub_0804AA1C(this);
        this->animationState = PeahatAnimation_RepairPropeller;
        InitializeAnimation(this, this->animationState);
    }
}

void Peahat_Recover(Entity* this) {
    if ((this->subtimer != 0) && (--this->subtimer == 0)) {
        Create0x68FX(this, FX_STARS);
    }

    if (sub_0800442E(this) || (--this->timer == 0)) {
        this->action = 8;
        this->timer = 240;
        this->direction = Random() & 0x1f;
        sub_0804AA1C(this);
    }
}

void Peahat_Hop(Entity* this) {
    GetNextFrame(this);
    if (--this->timer == 0) {
        if (this->frame & ANIM_DONE) {
            this->action = 9;
            this->zVelocity = Q_16_16(1.5);
            this->animationState = PeahatAnimation_NewPropeller;
            InitializeAnimation(this, this->animationState);
        } else {
            this->timer = 1;
        }
    }

    if (this->frame & 2) {
        this->frame &= ~2;
        this->direction = Random() & 0x1f;
    }

    if (this->frame & 1) {
        sub_0800442E(this);
    } else {
        ProcessMovement0(this);
    }
}

void Peahat_Takeoff(Entity* this) {
    GetNextFrame(this);
    if (this->frame & ANIM_DONE) {
        this->action = 1;
        this->hitType = 0x70;
        this->field_0x82.HALF.LO = 1;
        this->field_0x80.HALF.HI = 1;
        this->animationState = PeahatAnimation_Flying;
        InitializeAnimation(this, this->animationState);
    } else if (this->frame & 1) {
        sub_0800442E(this);
    } else {
        GravityUpdate(this, Q_8_8(28.0));
        ProcessMovement0(this);
    }
}

void PeahatPropeller_Initialize(Entity* this) {
    this->action = 1;
    this->timer = 240;
    this->subtimer = 40;
    this->spriteSettings.draw = 1;
    this->spriteRendering.b3 = 1;
    this->spriteOrientation.flipY = 1;
    this->spriteSettings.shadow = 0;
    this->speed = 0x20;
    this->direction = (Random() & 0x10) + 8;
    InitializeAnimation(this, PeahatAnimation_Propeller);
}

void PeahatPropeller_Fly(Entity* this) {
    GetNextFrame(this);
    if (--this->timer == 0) {
        DeleteEntity(this);
    } else {
        if (this->timer < 60)
            this->spriteSettings.draw ^= 1;

        this->z.WORD -= Q_16_16(0.75);
        LinearMoveUpdate(this);
        if (--this->subtimer == 0) {
            this->subtimer = 40;
            this->direction = (Random() & 0x10) + 8;
        }
    }
}

void sub_080205F8(Entity* this) {
    this->action = 4;
    this->timer = 60;
}

void sub_08020604(Entity* this) {
    if (!sub_08049FA0(this) && (Random() & 3)) {
        this->direction = sub_08049EE4(this);
    } else {
        this->direction += this->field_0x80.HALF.LO;
        this->direction &= (0x3 | DirectionNorthWest);
    }
}

// clang-format off
void (*const Peahat_Functions[])(Entity*) = {
    Peahat_OnTick,
    Peahat_OnCollision,
    GenericKnockback,
    GenericDeath,
    GenericConfused,
    Peahat_OnGrabbed,
};

void (*const gPeahatPropellerFunctions[])(Entity*) = {
    PeahatPropeller_Initialize,
    PeahatPropeller_Fly,
};

void (*const gPeahatActions[])(Entity*) = {
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

void (*const gUnk_080CA5BC[])(Entity*) = {
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
