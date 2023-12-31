/**
 * @file octorok.c
 * @ingroup Enemies
 *
 * @brief Octorok enemy
 */
#include "enemy.h"
#include "physics.h"

void Octorok_Pause(Entity*);
bool32 Octorok_FacesPlayer(Entity*);
void Octorok_Turn(Entity*);

extern void (*const Octorok_Functions[6])(Entity*);
extern void (*const gOctorokActions[4])(Entity*);
extern void (*const gUnk_080CA158[6])(Entity*);

extern Entity* gUnk_020000B0;
extern const u8 gOctorokWalkDuration[4];
extern const u8 gOctorokSpitChanceModifier[2];
extern const u8 gOctorokNutOffset[8];
extern const s8 gUnk_080CA17E[2];

// Main
void Octorok(Entity* this) {
    EnemyFunctionHandler(this, Octorok_Functions);
    EnemySetFXOffset(this, 0, 1, -16);
}

// Idle
void Octorok_OnTick(Entity* this) {
    gOctorokActions[this->action](this);
}

// Touch player
void Octorok_OnCollision(Entity* this) {
    if (this->confusedTime != 0) {
        EnemyCreateFX(this, FX_STARS);
    }
    EnemyFunctionHandlerAfterCollision(this, Octorok_Functions);
}

// Death
void Octorok_OnDeath(Entity* this) {
    if (this->type == 0) {
        GenericDeath(this);
    } else {
        EnemyCreateDeathFX((Enemy*)this, 241, 0);
    }
}

void Octorok_OnGrabbed(Entity* this) {
    if (this->subAction < 3 && !sub_0806F520(this)) {
        Octorok_Pause(this);
        InitializeAnimation(this, this->animationState);
    } else {
        gUnk_080CA158[this->subAction](this);
    }
}

void sub_0801EB68(Entity* this) {
    this->subAction = 1;
    this->gustJarTolerance = 60;
}

void sub_0801EB74(Entity* this) {
    sub_0806F4E8(this);
}

void sub_0801EB7C(Entity* this) {
    sub_0806F3E4(this);
}

void sub_0801EB84(Entity* this) {
    COLLISION_OFF(this);
    UpdateAnimationVariableFrames(this, 2);
}

void nullsub_3(Entity* this) {
    /* ... */
}

void sub_0801EB9C(Entity* this) {
    if (this->flags & ENT_COLLIDE) {
        COLLISION_ON(this);
        this->gustJarState &= 0xfb;
    } else {
        this->health = 0;
    }
}

// Init
void Octorok_Initialize(Entity* this) {
    sub_0804A720(this);
    if (this->type == 2) {
        this->animationState = 2;
    } else {
        this->animationState = Random() & 3;
    }
    this->gustJarFlags = 18;
    Octorok_Pause(this);
    InitializeAnimation(this, this->animationState);
}

void Octorok_Idle(Entity* this) {
    if (--this->timer == 0) {
        this->action = 2;
        this->timer = gOctorokWalkDuration[Random() & 3];
        Octorok_Turn(this);
    }
    GetNextFrame(this);
}

void Octorok_Move(Entity* this) {
    ProcessMovement0(this);
    GetNextFrame(this);
    if (--this->timer == 0) {
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
    if (this->frame & 1) {
        Entity* entity = EnemyCreateProjectile(this, ROCK_PROJECTILE, 0);
        if (entity != NULL) {
            const s8* off;
            entity->direction = this->direction;
            off = &gOctorokNutOffset[this->direction / 4];
            entity->x.HALF.HI += off[0];
            entity->y.HALF.HI += off[1];
            entity->z.HALF.HI = -3;
            this->frame &= 0xfe;
            EnqueueSFX(SFX_18D);
        }
    }

    if (this->frame & ANIM_DONE)
        Octorok_Pause(this);
}

void Octorok_Pause(Entity* this) {
    this->action = 1;
    this->timer = (Random() & 0x38) + 24;
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
    Entity* entity = sub_08049DF4(1);

    if (entity == NULL)
        return FALSE;

    if (DirectionRoundUp(GetFacingDirection(this, entity)) != this->direction)
        return FALSE;

    return TRUE;
}

// clang-format off
void (*const Octorok_Functions[])(Entity*) = {
    Octorok_OnTick,
    Octorok_OnCollision,
    GenericKnockback,
    Octorok_OnDeath,
    GenericConfused,
    Octorok_OnGrabbed,
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
