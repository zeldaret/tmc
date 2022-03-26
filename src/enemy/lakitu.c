/**
 * @file lakitu.c
 * @ingroup Enemies
 *
 * @brief Lakitu enemy
 */

#include "global.h"
#include "enemy.h"
#include "physics.h"
#include "player.h"

extern void (*const LakituActionFuncs[])(Entity*);

// Forward references to functions in lakitu.c
extern void sub_0803CAD0(Entity*);
extern void sub_0803CBAC(Entity*);
extern void sub_0803CA84(Entity*, u32);
extern bool32 sub_0803CA4C(Entity*);
extern bool32 sub_0803CB04(Entity*);
extern void Lakitu_SpawnLightning(Entity*);
extern void sub_0803CB34(Entity*);
extern void sub_0803CC08(Entity* this);

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
extern void (*const Lakitu_Functions[])(Entity*);
extern void (*const gUnk_080D0128[])(Entity*);
extern void (*const gUnk_080D0148[])(Entity*);
extern const OffsetCoords gUnk_080D0154[];

void Lakitu(Entity* this) {
    EnemyFunctionHandler(this, Lakitu_Functions);

    SetChildOffset(this, 0, 1, -16);
}

void Lakitu_OnTick(Entity* this) {
    if (this->action != 0 && this->action != 7) {
        sub_0803CAD0(this);
    }

    LakituActionFuncs[this->action](this);
}

void Lakitu_OnCollision(Entity* this) {
    if ((this->contactFlags & 0x7f) == 0x1d) {
        this->zVelocity = Q_16_16(2.0);

        sub_0803CBAC(this);
    } else {
        if (this->hitType == 0x43) {
            Entity* fx = CreateFx(this, FX_DEATH, 0);

            if (fx != NULL) {
                u32 angle = (this->knockbackDirection ^ 0x10) << 3;
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

    if (this->confusedTime) {
        Create0x68FX(this, FX_STARS);
    }

    EnemyFunctionHandlerAfterCollision(this, Lakitu_Functions);
}

void Lakitu_OnGrabbed(Entity* this) {
    if (sub_0806F520(this)) {
        gUnk_080D0148[this->subAction](this);
    }
}

void sub_0803C844(Entity* this) {
    this->subAction = 1;
    this->gustJarTolerance = 0x3c;
}

void sub_0803C850(Entity* this) {
    Entity* cloud = this->child;
    if (cloud != NULL) {
        cloud->spriteOffsetX = this->spriteOffsetX;
    }

    sub_0806F4E8(this);
}

void sub_0803C86C(Entity* this) {
    sub_0803CBAC(this);
    this->child = NULL;
}

void Lakitu_Initialize(Entity* this) {
    Entity* cloud = CreateProjectileWithParent(this, 17, 0);
    if (cloud == NULL) {
        return;
    }

    cloud->parent = this;
    this->child = cloud;

    sub_0804A720(this);

    this->action = HIDDEN;

    this->z.HALF.HI = -2;

    this->spriteOffsetY = 0xff;

    this->field_0x74.HWORD = this->x.HALF.HI;
    this->field_0x76.HWORD = this->y.HALF.HI;
}

void Lakitu_Hide(Entity* this) {
    sub_0803CA84(this, 0);

    if (sub_0803CA4C(this)) {
        this->action = END_HIDE;
        this->spriteSettings.draw = 1;
    }
}

void Lakitu_EndHide(Entity* this) {
    UpdateAnimationSingleFrame(this);

    if (this->frame & ANIM_DONE) {
        this->action = IDLE;
        this->timer = 60;

        this->hitType = 0x42;

        InitAnimationForceUpdate(this, this->animationState + 4);
    }
}

void Lakitu_Idle(Entity* this) {
    if (sub_0803CB04(this)) {
        return;
    }

    if (!sub_0803CA4C(this)) {
        this->action = BEGIN_HIDE;

        this->hitType = 0x43;
        InitAnimationForceUpdate(this, this->animationState + 0xc);
    } else {
        sub_0803CA84(this, 4);
    }
}

void Lakitu_BeginHide(Entity* this) {
    UpdateAnimationSingleFrame(this);

    if (this->frame & ANIM_DONE) {
        this->action = HIDDEN;
        this->spriteSettings.draw = 0;

        InitAnimationForceUpdate(this, this->animationState);
    }
}

void Lakitu_Lightning(Entity* this) {
    UpdateAnimationSingleFrame(this);

    if (!(this->frame & ANIM_DONE)) {
        return;
    }

    Lakitu_SpawnLightning(this);

    this->action = LIGHTNING_DELAY;
    this->hitType = 0x42;

    if ((Random() & 1) && !this->field_0x78.HALF.HI) {
        this->timer = 15;

        this->field_0x78.HALF.HI = TRUE;
    } else {
        this->timer = 30;

        this->field_0x78.HALF.HI = FALSE;

        InitAnimationForceUpdate(this->child, this->animationState);
    }
}

void Lakitu_LightningDelay(Entity* this) {
    this->timer--;

    if (this->timer != 0) {
        return;
    }

    if (this->field_0x78.HALF.HI == 1) {
        sub_0803CB34(this);
    } else {
        this->action = IDLE;
        this->timer = 180;

        InitAnimationForceUpdate(this, this->animationState + 4);
    }
}

void Lakitu_Cloudless(Entity* this) {
    if (GravityUpdate(this, Q_8_8(24.0)) == 0 && this->animIndex <= 19) {
        InitAnimationForceUpdate(this, this->animationState + 20);

        this->spritePriority.b1 = 0;
    }

    UpdateAnimationSingleFrame(this);
    sub_0803CC08(this);
}

bool32 sub_0803CA4C(Entity* this) {
    if (EntityWithinDistance(this, gPlayerEntity.x.HALF.HI, gPlayerEntity.y.HALF.HI, 0x28) == 0) {
        if (EntityInRectRadius(this, &gPlayerEntity, 0x70, 0x50)) {
            return TRUE;
        }
    }

    return FALSE;
}

void sub_0803CA84(Entity* this, u32 unkParameter) {
    u32 altAnimState = GetFacingDirection(this, &gPlayerEntity);

    if (((altAnimState - 3) & 7) > 2 || ((this->animationState - (altAnimState >> 3)) & 3) > 1) {
        altAnimState = DirectionRoundUp(altAnimState) >> 3;

        if (altAnimState != this->animationState) {
            this->animationState = altAnimState;

            InitAnimationForceUpdate(this, altAnimState + unkParameter);
            InitAnimationForceUpdate(this->child, altAnimState);
        }
    }
}

void sub_0803CAD0(Entity* this) {
    if (!EntityWithinDistance(this, this->field_0x74.HWORD, this->field_0x76.HWORD, 1)) {
        this->direction =
            CalculateDirectionTo(this->x.HALF.HI, this->y.HALF.HI, this->field_0x74.HWORD, this->field_0x76.HWORD);

        ProcessMovement2(this);
    }
}

bool32 sub_0803CB04(Entity* this) {
    bool32 ret;
    u8 delay;

    delay = --this->timer;
    if (delay != 0) {
        ret = FALSE;
    } else {
        sub_0803CB34(this);
        this->field_0x78.HALF.HI = delay;

        InitAnimationForceUpdate(this->child, this->animationState + 4);
        ret = TRUE;
    }

    return ret;
}

void sub_0803CB34(Entity* this) {
    this->action = LIGHTNING_THROW;
    this->hitType = 0xa6;

    this->field_0x78.HALF.LO = GetFacingDirection(this, &gPlayerEntity);

    InitAnimationForceUpdate(this, this->animationState + 8);
}

void Lakitu_SpawnLightning(Entity* this) {
    Entity* lightning;
    const OffsetCoords* offset;

    lightning = CreateProjectileWithParent(this, LAKITU_LIGHTNING, 0);

    if (lightning == NULL) {
        return;
    }

    offset = &gUnk_080D0154[this->animationState];

    lightning->direction = this->field_0x78.HALF.LO;

    PositionRelative(this, lightning, Q_16_16(offset->x), Q_16_16(offset->y));

    EnqueueSFX(SFX_193);
}

void sub_0803CBAC(Entity* this) {
    Entity* cloud;

    cloud = this->child;
    if (cloud != NULL) {
        cloud->flags |= ENT_COLLIDE;
        cloud->hitType = 0x43;
    }

    this->action = CLOUDLESS;
    this->spriteSettings.draw = 1;

    this->spritePriority.b1 = 1;

    this->flags2 &= 0x7b;

    this->hitType = 0x42;

    InitAnimationForceUpdate(this, this->animationState + 16);
}

void sub_0803CC08(Entity* this) {
    Entity* cloud;
    Entity* fx;

    const s32 diff = Q_8_8(3.0 / 128.0);

    cloud = this->child;
    if (cloud == NULL) {
        return;
    }

    if ((u32)(cloud->z.HALF.HI - this->z.HALF.HI) > 2) {
        return;
    }

    if (this->zVelocity >= 0) {
        return;
    }

    if (!EntityWithinDistance(this, cloud->x.HALF.HI, cloud->y.HALF.HI, 6)) {
        return;
    }

    fx = CreateFx(this, FX_DEATH, 0);
    if (fx != NULL) {
        fx->x.HALF.HI += diff;
        fx->y.HALF.HI += diff;
    }

    fx = CreateFx(this, FX_DEATH, 0);
    if (fx != NULL) {
        fx->x.HALF.HI -= diff;
        fx->y.HALF.HI += diff;
    }

    fx = CreateFx(this, FX_DEATH, 0);
    if (fx != NULL) {
        fx->x.HALF.HI += diff;
        fx->y.HALF.HI -= diff;
    }

    fx = CreateFx(this, FX_DEATH, 0);
    if (fx != NULL) {
        fx->x.HALF.HI -= diff;
        fx->y.HALF.HI -= diff;
    }

    this->child = NULL;
    DeleteEntity(cloud);
}

void (*const Lakitu_Functions[])(Entity*) = {
    Lakitu_OnTick, Lakitu_OnCollision, GenericKnockback, GenericDeath, GenericConfused, Lakitu_OnGrabbed,
};

void (*const LakituActionFuncs[])(Entity*) = {
    Lakitu_Initialize, Lakitu_Hide,      Lakitu_EndHide,        Lakitu_Idle,
    Lakitu_BeginHide,  Lakitu_Lightning, Lakitu_LightningDelay, Lakitu_Cloudless,
};

void (*const gUnk_080D0148[])(Entity*) = {
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
