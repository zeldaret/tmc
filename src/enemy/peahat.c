#include "entity.h"
#include "enemy.h"
#include "random.h"
#include "functions.h"

extern void (*const gPeahatFunctions[])(Entity*);
extern void (*const gPeahatPropellerFunctions[])(Entity*);
extern void (*const gPeahatActions[])(Entity*);
extern void (*const gUnk_080CA5BC[])(Entity*);

extern const s8 gPeahatFlightHeights[];
extern const s8 gUnk_080CA5D4[];

void sub_080205F8(Entity*);
void sub_08020604(Entity*);

extern u32 sub_08049F1C(Entity*, Entity*, u32);
extern void sub_0804AA1C(Entity*);

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
        EnemyFunctionHandler(this, gPeahatFunctions);
        SetChildOffset(this, 0, 1, -0x10);
    } else {
        gPeahatPropellerFunctions[this->action](this);
    }
}

void Peahat_OnTick(Entity* this) {
    gPeahatActions[this->action](this);
    if (this->field_0x80.HALF.HI)
        this->z.HALF.HI = gPeahatFlightHeights[(this->field_0xf++ & 0x30) >> 4];
}

void sub_0801FFDC(Entity* this) {
    if (this->field_0x82.HALF.LO) {
        if (this->bitfield == 0x94) {
            Entity* ent = CreateEnemy(PEAHAT, PeahatForm_Propeller);
            if (ent) {
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
        } else if (this->bitfield == 0x9b) {
            this->animationState = PeahatAnimation_BrokenPropeller;
            this->action = 5;
            this->speed = 0x80;
            this->iframes = -30;
            this->field_0x80.HALF.HI = 0;
            InitializeAnimation(this, this->animationState);
        } else if (this->bitfield == 0x80) {
            if (this->animationState == PeahatAnimation_Flying) {
                this->action = 1;
                this->actionDelay = 30;
                this->speed = 0x80;
                this->direction = -1;
                this->field_0x82.HALF.HI = 0x78;
                GetNextFrame(this);
            }
        }
    }

    if (this->field_0x43)
        sub_0804A9FC(this, 0x1c);

    sub_0804AA30(this, gPeahatFunctions);
}

void sub_08020088(Entity* this) {
    if (2 >= this->subAction && !sub_0806F520(this))
        return;

    gUnk_080CA5BC[this->subAction](this);
}

void sub_080200B4(Entity* this) {
    this->subAction = 1;
    this->field_0x1d = 60;
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
        this->field_0x3a &= 0xfb;
    } else {
        this->health = 0;
    }
}

void Peahat_Initialize(Entity* this) {
    sub_0804A720(this);
    this->action = 1;
    this->actionDelay = 16;
    this->field_0xf = Random();
    this->direction = Random() & 0x1f;
    this->field_0x1c = 18;
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
        if (this->field_0x82.HALF.HI == 0 && (this->field_0xf & 0xf) == 0 && sub_08049F1C(this, gUnk_020000B0, 0x30)) {
            this->action = 2;
            this->subAction = Random() & 3;
            this->actionDelay = 60;
            this->speed = 160;
        }
    }

    if (--this->actionDelay == 0) {
        this->actionDelay = 16;
        sub_08020604(this);
        if ((Random() & 3) == 0) {
            this->field_0x80.HALF.LO = (Random() & 1) ? 2 : -2;
        }
    }

    sub_080AEFE0(this);
    GetNextFrame(this);
}

void Peahat_ChargeStart(Entity* this) {
    if (sub_08049FDC(this, 1)) {
        if (--this->actionDelay) {
            UpdateAnimationVariableFrames(this, 4 - ((this->actionDelay >> 4) & 0x3));
            return;
        } else {
            this->action = 3;
            this->actionDelay = 120;
            this->speed = 192;
            this->direction = (GetFacingDirection(this, gUnk_020000B0) + gUnk_080CA5D4[Random() & 1]) & 0x1f;
        }
    } else {
        sub_080205F8(this);
    }

    UpdateAnimationVariableFrames(this, 4);
}

void Peahat_ChargeTarget(Entity* this) {
    if (sub_08049FDC(this, 1)) {
        if (--this->actionDelay == 0) {
            sub_080205F8(this);
        }
        if (60 < this->actionDelay) {
            if (this->actionDelay & 1)
                this->speed += 4;

            if ((gScreenTransition.frameCount & 3) == 0)
                sub_08004596(this, GetFacingDirection(this, gUnk_020000B0));
        }
        sub_080AEFE0(this);
    } else {
        sub_080205F8(this);
    }
    UpdateAnimationVariableFrames(this, 4);
}

void Peahat_ChargeEnd(Entity* this) {
    if (--this->actionDelay == 0) {
        this->action = 1;
        this->actionDelay = 1;
        this->speed = 128;
        this->field_0x82.HALF.HI = 120;
        GetNextFrame(this);
    } else {
        if (this->actionDelay & 1)
            this->speed -= 8;

        sub_080AEFE0(this);
        UpdateAnimationVariableFrames(this, 4);
    }
}

void Peahat_Stunned(Entity* this) {
    switch (this->animationState) {
        default:
            if (sub_080044EC(this, 0x1800) == 0) {
                this->action = 6;
                this->actionDelay = 240;
                this->field_0xf = 10;
                this->hitType = 0x71;
            }

            if (this->direction == 0xff)
                this->direction = this->knockbackDirection;

            ProcessMovement(this);
            GetNextFrame(this);
            break;
        case PeahatAnimation_SlicedPropeller:
            sub_08003FC4(this, 0x1c00);
            if (this->z.HALF.HI == 0) {
                this->action = 7;
                this->actionDelay = 150;
                this->field_0xf = 10;
                this->hitType = 0x71;
            }
            break;
    };
}

void Peahat_RepairPropeller(Entity* this) {
    if (this->field_0xf)
        if (--this->field_0xf == 0)
            sub_0804A9FC(this, 0x1c);

    if (!sub_0800442E(this) && --this->actionDelay)
        return;

    this->action = 9;
    this->zVelocity = 0x18000;
    this->direction = Random() & 0x1f;
    sub_0804AA1C(this);
    this->animationState = PeahatAnimation_RepairPropeller;
    InitializeAnimation(this, this->animationState);
}

void Peahat_Recover(Entity* this) {
    if (this->field_0xf)
        if (--this->field_0xf == 0)
            sub_0804A9FC(this, 0x1c);

    if (!sub_0800442E(this) && --this->actionDelay)
        return;

    this->action = 8;
    this->actionDelay = 240;
    this->direction = Random() & 0x1f;
    sub_0804AA1C(this);
}

void Peahat_Hop(Entity* this) {
    GetNextFrame(this);
    if (--this->actionDelay == 0) {
        if (this->frame & 0x80) {
            this->action = 9;
            this->zVelocity = 0x18000;
            this->animationState = PeahatAnimation_NewPropeller;
            InitializeAnimation(this, this->animationState);
        } else {
            this->actionDelay = 1;
        }
    }

    if (this->frame & 2) {
        this->frame &= ~2;
        this->direction = Random() & 0x1f;
    }

    if (this->frame & 1) {
        sub_0800442E(this);
    } else {
        ProcessMovement(this);
    }
}

void Peahat_Takeoff(Entity* this) {
    GetNextFrame(this);
    if (this->frame & 0x80) {
        this->action = 1;
        this->hitType = 0x70;
        this->field_0x82.HALF.LO = 1;
        this->field_0x80.HALF.HI = 1;
        this->animationState = PeahatAnimation_Flying;
        InitializeAnimation(this, this->animationState);
    } else if (this->frame & 1) {
        sub_0800442E(this);
    } else {
        sub_08003FC4(this, 0x1c00);
        ProcessMovement(this);
    }
}

void PeahatPropeller_Initialize(Entity* this) {
    this->action = 1;
    this->actionDelay = 240;
    this->field_0xf = 40;
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
    if (--this->actionDelay == 0) {
        DeleteEntity(this);
    } else {
        if (this->actionDelay < 60)
            this->spriteSettings.draw ^= 1;

        this->z.WORD -= 0xc000;
        sub_0806F69C(this);
        if (--this->field_0xf == 0) {
            this->field_0xf = 40;
            this->direction = (Random() & 0x10) + 8;
        }
    }
}

void sub_080205F8(Entity* this) {
    this->action = 4;
    this->actionDelay = 60;
}

void sub_08020604(Entity* this) {
    if (!sub_08049FA0(this) && (Random() & 3)) {
        this->direction = sub_08049EE4(this);
    } else {
        this->direction += this->field_0x80.HALF.LO;
        this->direction &= 0x1f;
    }
}

// clang-format off
void (*const gPeahatFunctions[])(Entity*) = {
    Peahat_OnTick,
    sub_0801FFDC,
    sub_08001324,
    sub_0804A7D4,
    sub_08001242,
    sub_08020088,
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
