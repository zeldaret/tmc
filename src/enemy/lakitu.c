/**
 * @file lakitu.c
 * @ingroup Enemies
 *
 * @brief Lakitu enemy
 */
#include "enemy.h"
#include "physics.h"
#include "player.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[12];
    /*0x74*/ u16 unk_74;
    /*0x76*/ u16 unk_76;
    /*0x78*/ u8 unk_78;
    /*0x79*/ u8 unk_79;
} LakituEntity;

extern void (*const LakituActionFuncs[])(LakituEntity*);

// Forward references to functions in lakitu.c
extern void sub_0803CAD0(LakituEntity* this);
extern void sub_0803CBAC(LakituEntity* this);
extern void sub_0803CA84(LakituEntity* this, u32);
extern bool32 sub_0803CA4C(LakituEntity* this);
extern bool32 sub_0803CB04(LakituEntity* this);
extern void Lakitu_SpawnLightning(LakituEntity* this);
extern void sub_0803CB34(LakituEntity* this);
extern void sub_0803CC08(LakituEntity* this);

enum {
    INIT,
    HIDDEN,
    END_HIDE,
    IDLE,
    BEGIN_HIDE,
    LIGHTNING_THROW,
    LIGHTNING_DELAY,
    CLOUDLESS,
};

typedef struct {
    s8 x;
    s8 y;
} PACKED OffsetCoords;

// Variables
extern void (*const Lakitu_Functions[])(LakituEntity*);
extern void (*const gUnk_080D0128[])(LakituEntity*);
extern void (*const gUnk_080D0148[])(LakituEntity*);
extern const OffsetCoords gUnk_080D0154[];

void Lakitu(LakituEntity* this) {
    EnemyFunctionHandler(super, (EntityActionArray)Lakitu_Functions);

    EnemySetFXOffset(super, 0, 1, -16);
}

void Lakitu_OnTick(LakituEntity* this) {
    if (super->action != 0 && super->action != 7) {
        sub_0803CAD0(this);
    }

    LakituActionFuncs[super->action](this);
}

void Lakitu_OnCollision(LakituEntity* this) {
    if ((super->contactFlags & 0x7f) == 0x1d) {
        super->zVelocity = Q_16_16(2.0);

        sub_0803CBAC(this);
    } else {
        if (super->hitType == 0x43) {
            Entity* fx = CreateFx(super, FX_DEATH, 0);

            if (fx != NULL) {
                u32 angle = (super->knockbackDirection ^ 0x10) << 3;
                s32 sine;

                sine = gSineTable[angle];
                if (sine < 0) {
                    sine += 0x1f;
                }

                fx->x.HALF.HI += sine >> 5;

                sine = gSineTable[angle + 0x40];
                if (sine < 0) {
                    sine += 0x1f;
                }

                fx->y.HALF.HI -= sine >> 5;
            }
        }
    }

    if (super->confusedTime) {
        EnemyCreateFX(super, FX_STARS);
    }

    EnemyFunctionHandlerAfterCollision(super, Lakitu_Functions);
}

void Lakitu_OnGrabbed(LakituEntity* this) {
    if (sub_0806F520(super)) {
        gUnk_080D0148[super->subAction](this);
    }
}

void sub_0803C844(LakituEntity* this) {
    super->subAction = 1;
    super->gustJarTolerance = 0x3c;
}

void sub_0803C850(LakituEntity* this) {
    Entity* cloud = super->child;
    if (cloud != NULL) {
        cloud->spriteOffsetX = super->spriteOffsetX;
    }

    sub_0806F4E8(super);
}

void sub_0803C86C(LakituEntity* this) {
    sub_0803CBAC(this);
    super->child = NULL;
}

void Lakitu_Initialize(LakituEntity* this) {
    Entity* cloud = EnemyCreateProjectile(super, 17, 0);
    if (cloud == NULL) {
        return;
    }

    cloud->parent = super;
    super->child = cloud;

    sub_0804A720(super);

    super->action = HIDDEN;

    super->z.HALF.HI = -2;

    super->spriteOffsetY = 0xff;

    this->unk_74 = super->x.HALF.HI;
    this->unk_76 = super->y.HALF.HI;
}

void Lakitu_Hide(LakituEntity* this) {
    sub_0803CA84(this, 0);

    if (sub_0803CA4C(this)) {
        super->action = END_HIDE;
        super->spriteSettings.draw = 1;
    }
}

void Lakitu_EndHide(LakituEntity* this) {
    UpdateAnimationSingleFrame(super);

    if (super->frame & ANIM_DONE) {
        super->action = IDLE;
        super->timer = 60;

        super->hitType = 0x42;

        InitAnimationForceUpdate(super, super->animationState + 4);
    }
}

void Lakitu_Idle(LakituEntity* this) {
    if (sub_0803CB04(this)) {
        return;
    }

    if (!sub_0803CA4C(this)) {
        super->action = BEGIN_HIDE;

        super->hitType = 0x43;
        InitAnimationForceUpdate(super, super->animationState + 0xc);
    } else {
        sub_0803CA84(this, 4);
    }
}

void Lakitu_BeginHide(LakituEntity* this) {
    UpdateAnimationSingleFrame(super);

    if (super->frame & ANIM_DONE) {
        super->action = HIDDEN;
        super->spriteSettings.draw = 0;

        InitAnimationForceUpdate(super, super->animationState);
    }
}

void Lakitu_Lightning(LakituEntity* this) {
    UpdateAnimationSingleFrame(super);

    if (!(super->frame & ANIM_DONE)) {
        return;
    }

    Lakitu_SpawnLightning(this);

    super->action = LIGHTNING_DELAY;
    super->hitType = 0x42;

    if ((Random() & 1) && !this->unk_79) {
        super->timer = 15;

        this->unk_79 = TRUE;
    } else {
        super->timer = 30;

        this->unk_79 = FALSE;

        InitAnimationForceUpdate(super->child, super->animationState);
    }
}

void Lakitu_LightningDelay(LakituEntity* this) {
    super->timer--;

    if (super->timer != 0) {
        return;
    }

    if (this->unk_79 == 1) {
        sub_0803CB34(this);
    } else {
        super->action = IDLE;
        super->timer = 180;

        InitAnimationForceUpdate(super, super->animationState + 4);
    }
}

void Lakitu_Cloudless(LakituEntity* this) {
    if (GravityUpdate(super, Q_8_8(24.0)) == 0 && super->animIndex <= 19) {
        InitAnimationForceUpdate(super, super->animationState + 20);

        super->spritePriority.b1 = 0;
    }

    UpdateAnimationSingleFrame(super);
    sub_0803CC08(this);
}

bool32 sub_0803CA4C(LakituEntity* this) {
    if (EntityWithinDistance(super, gPlayerEntity.base.x.HALF.HI, gPlayerEntity.base.y.HALF.HI, 0x28) == 0) {
        if (EntityInRectRadius(super, &gPlayerEntity.base, 0x70, 0x50)) {
            return TRUE;
        }
    }

    return FALSE;
}

void sub_0803CA84(LakituEntity* this, u32 unkParameter) {
    u32 altAnimState = GetFacingDirection(super, &gPlayerEntity.base);

    if (((altAnimState - 3) & 7) > 2 || ((super->animationState - (altAnimState >> 3)) & 3) > 1) {
        altAnimState = DirectionRoundUp(altAnimState) >> 3;

        if (altAnimState != super->animationState) {
            super->animationState = altAnimState;

            InitAnimationForceUpdate(super, altAnimState + unkParameter);
            InitAnimationForceUpdate(super->child, altAnimState);
        }
    }
}

void sub_0803CAD0(LakituEntity* this) {
    if (!EntityWithinDistance(super, this->unk_74, this->unk_76, 1)) {
        super->direction = CalculateDirectionTo(super->x.HALF.HI, super->y.HALF.HI, this->unk_74, this->unk_76);

        ProcessMovement2(super);
    }
}

bool32 sub_0803CB04(LakituEntity* this) {
    bool32 ret;
    u8 delay;

    delay = --super->timer;
    if (delay != 0) {
        ret = FALSE;
    } else {
        sub_0803CB34(this);
        this->unk_79 = delay;

        InitAnimationForceUpdate(super->child, super->animationState + 4);
        ret = TRUE;
    }

    return ret;
}

void sub_0803CB34(LakituEntity* this) {
    super->action = LIGHTNING_THROW;
    super->hitType = 0xa6;

    this->unk_78 = GetFacingDirection(super, &gPlayerEntity.base);

    InitAnimationForceUpdate(super, super->animationState + 8);
}

void Lakitu_SpawnLightning(LakituEntity* this) {
    Entity* lightning;
    const OffsetCoords* offset;

    lightning = EnemyCreateProjectile(super, LAKITU_LIGHTNING, 0);

    if (lightning == NULL) {
        return;
    }

    offset = &gUnk_080D0154[super->animationState];

    lightning->direction = this->unk_78;

    PositionRelative(super, lightning, Q_16_16(offset->x), Q_16_16(offset->y));

    EnqueueSFX(SFX_193);
}

void sub_0803CBAC(LakituEntity* this) {
    Entity* cloud;

    cloud = super->child;
    if (cloud != NULL) {
        cloud->flags |= ENT_COLLIDE;
        cloud->hitType = 0x43;
    }

    super->action = CLOUDLESS;
    super->spriteSettings.draw = 1;

    super->spritePriority.b1 = 1;

    super->collisionMask &= 0x7b;

    super->hitType = 0x42;

    InitAnimationForceUpdate(super, super->animationState + 16);
}

void sub_0803CC08(LakituEntity* this) {
    Entity* cloud;
    Entity* fx;

    const s32 diff = Q_8_8(3.0 / 128.0);

    cloud = super->child;
    if (cloud == NULL) {
        return;
    }

    if ((u32)(cloud->z.HALF.HI - super->z.HALF.HI) > 2) {
        return;
    }

    if (super->zVelocity >= 0) {
        return;
    }

    if (!EntityWithinDistance(super, cloud->x.HALF.HI, cloud->y.HALF.HI, 6)) {
        return;
    }

    fx = CreateFx(super, FX_DEATH, 0);
    if (fx != NULL) {
        fx->x.HALF.HI += diff;
        fx->y.HALF.HI += diff;
    }

    fx = CreateFx(super, FX_DEATH, 0);
    if (fx != NULL) {
        fx->x.HALF.HI -= diff;
        fx->y.HALF.HI += diff;
    }

    fx = CreateFx(super, FX_DEATH, 0);
    if (fx != NULL) {
        fx->x.HALF.HI += diff;
        fx->y.HALF.HI -= diff;
    }

    fx = CreateFx(super, FX_DEATH, 0);
    if (fx != NULL) {
        fx->x.HALF.HI -= diff;
        fx->y.HALF.HI -= diff;
    }

    super->child = NULL;
    DeleteEntity(cloud);
}

void (*const Lakitu_Functions[])(LakituEntity*) = {
    Lakitu_OnTick,
    Lakitu_OnCollision,
    (void (*)(LakituEntity*))GenericKnockback,
    (void (*)(LakituEntity*))GenericDeath,
    (void (*)(LakituEntity*))GenericConfused,
    Lakitu_OnGrabbed,
};

void (*const LakituActionFuncs[])(LakituEntity*) = {
    Lakitu_Initialize, Lakitu_Hide,      Lakitu_EndHide,        Lakitu_Idle,
    Lakitu_BeginHide,  Lakitu_Lightning, Lakitu_LightningDelay, Lakitu_Cloudless,
};

void (*const gUnk_080D0148[])(LakituEntity*) = {
    sub_0803C844,
    sub_0803C850,
    sub_0803C86C,
};

const OffsetCoords gUnk_080D0154[] = {
    { 0x00, 0xEE },
    { 0x12, 0x00 },
    { 0x00, 0x08 },
    { 0xEE, 0x00 },
};
