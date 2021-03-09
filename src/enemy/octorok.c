#include "global.h"
#include "entity.h"
#include "functions.h"

extern Entity* sub_08049DF4(u32);

void Octorok_Pause();
bool32 Octorok_FacesPlayer();
void Octorok_Turn();

extern void (*const gOctorok[6])(Entity*);
extern void (*const gOctorokActions[4])(Entity*);
extern void (*const gUnk_080CA158[6])(Entity*);

extern Entity* gUnk_020000B0;
extern const u8 gOctorokWalkDuration[4];
extern const u8 gOctorokSpitChanceModifier[2];
extern const u8 gOctorokNutOffset[8];
extern const s8 gUnk_080CA17E[2];

// Main
void Octorok(Entity* this) {
    EnemyFunctionHandler(this, gOctorok);
    SetChildOffset(this, 0, 1, -16);
}

// Idle
void Octorok_OnTick(Entity* this) {
    gOctorokActions[this->action](this);
}

// Touch player
void sub_0801EAE8(Entity* this) {
    if (this->field_0x43 != 0) {
        sub_0804A9FC(this, 28);
    }
    sub_0804AA30(this, gOctorok);
}

// Death
void sub_0801EB0C(Entity* this) {
    if (this->type == 0) {
        sub_0804A7D4(this);
    } else {
        CreateDeathFx(this, 241, 0);
    }
}

void sub_0801EB2C(Entity* this) {
    if (this->previousActionFlag < 3 && !sub_0806F520(this)) {
        Octorok_Pause(this);
        InitializeAnimation(this, this->animationState);
    } else {
        gUnk_080CA158[this->previousActionFlag](this);
    }
}

void sub_0801EB68(Entity* this) {
    this->previousActionFlag = 1;
    this->field_0x1d = 60;
}

void sub_0801EB74(Entity* this) {
    sub_0806F4E8(this);
}

void sub_0801EB7C(Entity* this) {
    sub_0806F3E4(this);
}

void sub_0801EB84(Entity* this) {
    this->flags &= 0x7f;
    UpdateAnimationVariableFrames(this, 2);
}

void nullsub_3(Entity* this) {
    /* ... */
}

void sub_0801EB9C(Entity* this) {
    if (this->flags & 0x80) {
        this->flags |= 0x80;
        this->field_0x3a &= 0xfb;
    } else {
        this->currentHealth = 0;
    }
}

// Init
void Octorok_Initialize(Entity* this) {
    sub_0804A720(this);
    if (this->type == 2) {
        this->animationState = this->type;
    } else {
        this->animationState = Random() & 3;
    }
    this->field_0x1c = 18;
    Octorok_Pause(this);
    InitializeAnimation(this, this->animationState);
}

void Octorok_Idle(Entity* this) {
    if (--this->actionDelay == 0) {
        this->action = 2;
        this->actionDelay = gOctorokWalkDuration[Random() & 3];
        Octorok_Turn(this);
    }
    GetNextFrame(this);
}

void Octorok_Move(Entity* this) {
    ProcessMovement(this);
    GetNextFrame(this);
    if (--this->actionDelay == 0) {
        if (Octorok_FacesPlayer(this) && gOctorokSpitChanceModifier[this->type] <= (Random() & 3)) {
            this->action = 3;
            InitializeAnimation(this, this->animationState + 4);
        } else {
            Octorok_Pause(this);
        }
    }
}

void Octorok_ShootNut(Entity* this) {
    GetNextFrame(this);
    if (this->frames.all & 1) {
        Entity* ent = sub_0804A98C(this, 1, 0);
        if (ent) {
            const s8* off;
            ent->direction = this->direction;
            off = &gOctorokNutOffset[this->direction / 4];
            ent->x.HALF.HI += off[0];
            ent->y.HALF.HI += off[1];
            ent->height.HALF.HI = -3;
            this->frames.all &= 0xfe;
            EnqueueSFX(0x18d);
        }
    }

    if (this->frames.all & 0x80)
        Octorok_Pause(this);
}

void Octorok_Pause(Entity* this) {
    this->action = 1;
    this->actionDelay = (Random() & 0x38) + 0x18;
}

void Octorok_Turn(Entity* this) {
    if (this->type != 2) {
        if (sub_08049FA0(this)) {
            if (this->type == 1 && (Random() & 3) == 0 && sub_08049FDC(this, 1)) {
                this->direction = DirectionRoundUp(GetFacingDirection(this, gUnk_020000B0));
            } else {
                this->direction = DirectionRound(Random());
            }
        } else if (Random() & 3) {
            this->direction = DirectionRound(sub_08049EE4(this) + gUnk_080CA17E[Random() & 1]);
        } else {
            this->direction = DirectionRound(Random());
        }
    } else {
        if (sub_08049FDC(this, 1) == 0) {
            if (sub_08049FA0(this)) {
                this->direction = DirectionRound(Random());
            } else if (Random() & 3) {
                this->direction = DirectionRound(sub_08049EE4(this) + gUnk_080CA17E[Random() & 1]);
            } else {
                this->direction = DirectionRoundUp(GetFacingDirection(this, gUnk_020000B0));
            }
        } else {
            this->direction = DirectionRoundUp(GetFacingDirection(this, gUnk_020000B0));
        }
    }

    this->animationState = this->direction >> 3;
    InitializeAnimation(this, this->animationState);
}

bool32 Octorok_FacesPlayer(Entity* this) {
    Entity* ent = sub_08049DF4(1);

    if (ent == NULL)
        return FALSE;

    if (DirectionRoundUp(GetFacingDirection(this, ent)) != this->direction)
        return FALSE;

    return TRUE;
}

// clang-format off
void (*const gOctorok[])(Entity*) = {
    Octorok_OnTick,
    sub_0801EAE8,
    sub_08001324,
    sub_0801EB0C,
    sub_08001242,
    sub_0801EB2C,
};

void (*const gOctorokActions[])(Entity*) = {
    Octorok_Initialize,
    Octorok_Idle,
    Octorok_Move,
    Octorok_ShootNut,
};

void (*const gUnk_080CA158[])(Entity*) = {
    sub_0801EB68,
    sub_0801EB74,
    sub_0801EB7C,
    sub_0801EB84,
    nullsub_3,
    sub_0801EB9C,
};

const u8 gOctorokWalkDuration[] = {
    30, 60, 60, 90,
};

const u8 gOctorokSpitChanceModifier[] = {
    1, 0,
};

const u8 gOctorokNutOffset[] = {
     0, -3,
     4,  0,
     0,  2,
    -4,  0,
};

const s8 gUnk_080CA17E[] = {
    4, -4,
};
// clang-format on
