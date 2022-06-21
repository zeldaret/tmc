/**
 * @file rope.c
 * @ingroup Enemies
 *
 * @brief Rope enemy
 */

#include "enemy.h"
#include "physics.h"

void Rope_OnTick(Entity*);
void Rope_OnCollision(Entity*);
void Rope_OnGrabbed(Entity*);
void sub_08031434(Entity*);
void sub_08031480(Entity*);
void sub_080314FC(Entity*);
void sub_080315BC(Entity*);
void sub_0803140C(Entity*);
void sub_08031418(Entity*);
void sub_08031420(Entity*);

static void (*const Rope_Functions[6])(Entity*) = {
    Rope_OnTick, Rope_OnCollision, GenericKnockback, GenericDeath, GenericConfused, Rope_OnGrabbed,
};

extern Entity* gUnk_020000B0;

void sub_08031600(Entity*);
u32 sub_0803163C(Entity*);

void Rope(Entity* this) {
    EnemyFunctionHandler(this, Rope_Functions);
    SetChildOffset(this, 0, 1, -16);
}

void Rope_OnTick(Entity* this) {
    static void (*const actionFuncs[4])(Entity*) = {
        sub_08031434,
        sub_08031480,
        sub_080314FC,
        sub_080315BC,
    };
    actionFuncs[this->action](this);
}

void Rope_OnCollision(Entity* this) {
    if (this->action == 3) {
        this->subtimer = 30;
        this->field_0x78.HALF.LO = 0x3c;
        sub_08031600(this);
    }
    if (this->confusedTime) {
        Create0x68FX(this, FX_STARS);
    }
    EnemyFunctionHandlerAfterCollision(this, Rope_Functions);
}

void Rope_OnGrabbed(Entity* this) {
    static void (*const subActionFuncs[3])(Entity*) = {
        sub_0803140C,
        sub_08031418,
        sub_08031420,
    };
    if (sub_0806F520(this)) {
        subActionFuncs[this->subAction](this);
    }
}

void sub_0803140C(Entity* this) {
    this->subAction = 1;
    this->gustJarTolerance = 0x3c;
}

void sub_08031418(Entity* this) {
    sub_0806F4E8(this);
}

void sub_08031420(Entity* this) {
    if (sub_0806F3E4(this)) {
        GenericDeath(this);
    }
}

void sub_08031434(Entity* this) {

    sub_0804A720(this);
    this->animationState = 0xff;
    this->gustJarFlags = 1;
    this->field_0x7a.HWORD = this->speed;
    if (!(this->type)) {
        sub_08031600(this);
    } else {
        this->action = 1;
        this->subAction = 0;
        this->spriteSettings.draw = (this->spriteSettings.draw & 0xfc);
        this->z.HALF.HI = -0x80;
        this->frameIndex = 0xff;
    }
}

void sub_08031480(Entity* this) {
    if (this->subAction == 0) {
        if (this->timer != 0) {
            this->timer--;
        } else {
            sub_08031600(this);
            this->action = 1;
            this->subAction = 1;
            this->spriteSettings.draw = 3;
            this->spriteRendering.b3 = 1;
            this->spriteOrientation.flipY = 1;
            SoundReq(SFX_12D);
        }
    } else {
        if (GravityUpdate(this, Q_8_8(24.0)) == 0) {
            this->action = 2;
            this->subtimer = 0xf;
            this->spriteSettings.draw = 1;
            UpdateSpriteForCollisionLayer(this);
            EnqueueSFX(SFX_WATER_SPLASH);
        }
    }
}
void sub_080314FC(Entity* this) {
    u32 u;

    GetNextFrame(this);
    if (this->subtimer) {
        this->subtimer--;
    } else {
        if (this->field_0x78.HALF.LO) {
            this->field_0x78.HALF.LO--;
        }
        if (sub_08049FA0(this)) {
            if (!(this->field_0x78.HALF.LO)) {
                if (sub_08049FDC(this, 1)) {
                    u = sub_0804A044(this, gUnk_020000B0, 0xc);
                    if (u != 0xff) {
                        this->action = 3;
                        this->timer = 30;
                        this->field_0x7a.HWORD = this->speed = 0x1a0;
                        this->direction = u;
                        this->animationState = this->direction >> 3;
                        InitializeAnimation(this, this->animationState + 4);
                        return;
                    }
                }
            }
        } else {
            if ((Random() & 1)) {
                this->direction = DirectionRoundUp(sub_08049EE4(this));
                u = this->direction >> 3;
                if (u != this->animationState) {
                    this->animationState = u;
                    InitializeAnimation(this, u);
                }
            }
        }
        if (--this->timer == 0) {
            sub_08031600(this);
        }
        sub_0803163C(this);
    }
}

void sub_080315BC(Entity* this) {
    if (this->timer != 0) {
        this->timer--;
        UpdateAnimationVariableFrames(this, 2);
    } else {
        if (sub_08049FA0(this)) {
            GetNextFrame(this);
            if (sub_0803163C(this)) {
                return;
            }
        }
        this->field_0x78.HALF.LO = 0x1e;
        sub_08031600(this);
    }
}

void sub_08031600(Entity* this) {
    u32 r;
    this->action = 2;
    this->timer = (Random() & 0x30) + 60;
    this->speed = 0x80;
    this->field_0x7a.HWORD = 0x80;
    r = Random() & 0x18;
    this->direction = r;
    r = r / 8;
    if (r != this->animationState) {
        this->animationState = r;
        InitializeAnimation(this, r);
    }
}

u32 sub_0803163C(Entity* this) {
    u32 h;
    if (GetTileUnderEntity(this) == 0x13) {
        h = this->field_0x7a.HWORD / 2;
    } else {
        h = this->field_0x7a.HWORD;
    }
    this->speed = h;
    return ProcessMovement0(this);
}
