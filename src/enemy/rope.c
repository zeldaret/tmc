/**
 * @file rope.c
 * @ingroup Enemies
 *
 * @brief Rope enemy
 */
#include "enemy.h"
#include "physics.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[16];
    /*0x78*/ u8 unk_78;
    /*0x79*/ u8 unused2[1];
    /*0x7a*/ u16 unk_7a;
} RopeEntity;

void Rope_OnTick(RopeEntity* this);
void Rope_OnCollision(RopeEntity* this);
void Rope_OnGrabbed(RopeEntity* this);
void sub_08031434(RopeEntity* this);
void sub_08031480(RopeEntity* this);
void sub_080314FC(RopeEntity* this);
void sub_080315BC(RopeEntity* this);
void sub_0803140C(RopeEntity* this);
void sub_08031418(RopeEntity* this);
void sub_08031420(RopeEntity* this);

static void (*const Rope_Functions[6])(RopeEntity*) = {
    Rope_OnTick,
    Rope_OnCollision,
    (void (*)(RopeEntity*))GenericKnockback,
    (void (*)(RopeEntity*))GenericDeath,
    (void (*)(RopeEntity*))GenericConfused,
    Rope_OnGrabbed,
};

extern Entity* gUnk_020000B0;

void sub_08031600(RopeEntity* this);
u32 sub_0803163C(RopeEntity* this);

void Rope(RopeEntity* this) {
    EnemyFunctionHandler(super, (EntityActionArray)Rope_Functions);
    EnemySetFXOffset(super, 0, 1, -16);
}

void Rope_OnTick(RopeEntity* this) {
    static void (*const actionFuncs[4])(RopeEntity*) = {
        sub_08031434,
        sub_08031480,
        sub_080314FC,
        sub_080315BC,
    };
    actionFuncs[super->action](this);
}

void Rope_OnCollision(RopeEntity* this) {
    if (super->action == 3) {
        super->subtimer = 30;
        this->unk_78 = 0x3c;
        sub_08031600(this);
    }
    if (super->confusedTime) {
        EnemyCreateFX(super, FX_STARS);
    }
    EnemyFunctionHandlerAfterCollision(super, Rope_Functions);
}

void Rope_OnGrabbed(RopeEntity* this) {
    static void (*const subActionFuncs[3])(RopeEntity*) = {
        sub_0803140C,
        sub_08031418,
        sub_08031420,
    };
    if (sub_0806F520(super)) {
        subActionFuncs[super->subAction](this);
    }
}

void sub_0803140C(RopeEntity* this) {
    super->subAction = 1;
    super->gustJarTolerance = 0x3c;
}

void sub_08031418(RopeEntity* this) {
    sub_0806F4E8(super);
}

void sub_08031420(RopeEntity* this) {
    if (sub_0806F3E4(super)) {
        GenericDeath(super);
    }
}

void sub_08031434(RopeEntity* this) {

    sub_0804A720(super);
    super->animationState = 0xff;
    super->gustJarFlags = 1;
    this->unk_7a = super->speed;
    if (!(super->type)) {
        sub_08031600(this);
    } else {
        super->action = 1;
        super->subAction = 0;
        super->spriteSettings.draw = (super->spriteSettings.draw & 0xfc);
        super->z.HALF.HI = -0x80;
        super->frameIndex = 0xff;
    }
}

void sub_08031480(RopeEntity* this) {
    if (super->subAction == 0) {
        if (super->timer != 0) {
            super->timer--;
        } else {
            sub_08031600(this);
            super->action = 1;
            super->subAction = 1;
            super->spriteSettings.draw = 3;
            super->spriteRendering.b3 = 1;
            super->spriteOrientation.flipY = 1;
            SoundReq(SFX_12D);
        }
    } else {
        if (GravityUpdate(super, Q_8_8(24.0)) == 0) {
            super->action = 2;
            super->subtimer = 15;
            super->spriteSettings.draw = 1;
            UpdateSpriteForCollisionLayer(super);
            EnqueueSFX(SFX_WATER_SPLASH);
        }
    }
}
void sub_080314FC(RopeEntity* this) {
    u32 u;

    GetNextFrame(super);
    if (super->subtimer) {
        super->subtimer--;
    } else {
        if (this->unk_78) {
            this->unk_78--;
        }
        if (sub_08049FA0(super)) {
            if (!(this->unk_78)) {
                if (sub_08049FDC(super, 1)) {
                    u = sub_0804A044(super, gUnk_020000B0, 0xc);
                    if (u != 0xff) {
                        super->action = 3;
                        super->timer = 30;
                        this->unk_7a = super->speed = 0x1a0;
                        super->direction = u;
                        super->animationState = super->direction >> 3;
                        InitializeAnimation(super, super->animationState + 4);
                        return;
                    }
                }
            }
        } else {
            if ((Random() & 1)) {
                super->direction = DirectionRoundUp(sub_08049EE4(super));
                u = super->direction >> 3;
                if (u != super->animationState) {
                    super->animationState = u;
                    InitializeAnimation(super, u);
                }
            }
        }
        if (--super->timer == 0) {
            sub_08031600(this);
        }
        sub_0803163C(this);
    }
}

void sub_080315BC(RopeEntity* this) {
    if (super->timer != 0) {
        super->timer--;
        UpdateAnimationVariableFrames(super, 2);
    } else {
        if (sub_08049FA0(super)) {
            GetNextFrame(super);
            if (sub_0803163C(this)) {
                return;
            }
        }
        this->unk_78 = 0x1e;
        sub_08031600(this);
    }
}

void sub_08031600(RopeEntity* this) {
    u32 r;
    super->action = 2;
    super->timer = (Random() & 0x30) + 60;
    super->speed = 0x80;
    this->unk_7a = 0x80;
    r = Random() & 0x18;
    super->direction = r;
    r = r / 8;
    if (r != super->animationState) {
        super->animationState = r;
        InitializeAnimation(super, r);
    }
}

u32 sub_0803163C(RopeEntity* this) {
    u32 h;
    if (GetActTileAtEntity(super) == ACT_TILE_19) {
        h = this->unk_7a / 2;
    } else {
        h = this->unk_7a;
    }
    super->speed = h;
    return ProcessMovement0(super);
}
