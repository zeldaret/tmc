#include "global.h"
#include "entity.h"
#include "enemy.h"
#include "functions.h"
#include "coord.h"
#include "random.h"
#include "player.h"
#include "effects.h"

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
extern void (*const gUnk_080D0110[])(Entity*);
extern void (*const gUnk_080D0128[])(Entity*);
extern void (*const gUnk_080D0148[])(Entity*);
extern const OffsetCoords gUnk_080D0154[];

void Lakitu(Entity* this) {
    EnemyFunctionHandler(this, gUnk_080D0110);

    SetChildOffset(this, 0, 1, -16);
}

void Lakitu_DoAction(Entity* this) {
    if (this->action != 0 && this->action != 7) {
        sub_0803CAD0(this);
    }

    LakituActionFuncs[this->action](this);
}

void sub_0803C784(Entity* this) {
    if ((this->bitfield & 0x7f) == 0x1d) {
        this->hVelocity = 0x20000;

        sub_0803CBAC(this);
    } else {
        if (this->damageType == 0x43) {
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

    if (this->field_0x43) {
        sub_0804A9FC(this, 0x1c);
    }

    sub_0804AA30(this, gUnk_080D0110);
}

void sub_0803C820(Entity* this) {
    if (sub_0806F520(this)) {
        gUnk_080D0148[this->subAction](this);
    }
}

void sub_0803C844(Entity* this) {
    this->subAction = 1;
    this->field_0x1d = 0x3c;
}

void sub_0803C850(Entity* this) {
    Entity* cloud = this->attachedEntity;
    if (cloud != NULL) {
        cloud->spriteOffsetX = this->spriteOffsetX;
    }

    sub_0806F4E8(this);
}

void sub_0803C86C(Entity* this) {
    sub_0803CBAC(this);
    this->attachedEntity = NULL;
}

void Lakitu_Initialize(Entity* this) {
    Entity* cloud = CreateProjectileWithParent(this, 17, 0);
    if (cloud == NULL) {
        return;
    }

    cloud->parent = this;
    this->attachedEntity = cloud;

    sub_0804A720(this);

    this->action = HIDDEN;

    this->height.HALF.HI = -2;

    this->spriteOffsetY = 0xff;

    this->field_0x74.HWORD = this->x.HALF.HI;
    this->field_0x76.HWORD = this->y.HALF.HI;
}

void Lakitu_Hide(Entity* this) {
    sub_0803CA84(this, 0);

    if (sub_0803CA4C(this)) {
        this->action = 2;
        this->spriteSettings.b.draw = 1;
    }
}

void Lakitu_EndHide(Entity* this) {
    UpdateAnimationSingleFrame(this);

    if (this->frames.b.f3) {
        this->action = IDLE;
        this->actionDelay = 0x3c;

        this->damageType = 0x42;

        InitAnimationForceUpdate(this, this->animationState + 4);
    }
}

void Lakitu_Idle(Entity* this) {
    if (sub_0803CB04(this)) {
        return;
    }

    if (!sub_0803CA4C(this)) {
        this->action = BEGIN_HIDE;

        this->damageType = 0x43;
        InitAnimationForceUpdate(this, this->animationState + 0xc);
    } else {
        sub_0803CA84(this, 4);
    }
}

void Lakitu_BeginHide(Entity* this) {
    UpdateAnimationSingleFrame(this);

    if (this->frames.b.f3 != 0) {
        this->action = 1;
        this->spriteSettings.b.draw = 0;

        InitAnimationForceUpdate(this, this->animationState);
    }
}

void Lakitu_Lightning(Entity* this) {
    UpdateAnimationSingleFrame(this);

    if (this->frames.b.f3 == 0) {
        return;
    }

    Lakitu_SpawnLightning(this);

    this->action = LIGHTNING_DELAY;
    this->damageType = 0x42;

    if ((Random() & 1) && !this->field_0x78.HALF.HI) {
        this->actionDelay = 0xf;

        this->field_0x78.HALF.HI = TRUE;
    } else {
        this->actionDelay = 0x1e;

        this->field_0x78.HALF.HI = FALSE;

        InitAnimationForceUpdate(this->attachedEntity, this->animationState);
    }
}

void Lakitu_LightningDelay(Entity* this) {
    this->actionDelay--;

    if (this->actionDelay != 0) {
        return;
    }

    if (this->field_0x78.HALF.HI == 1) {
        sub_0803CB34(this);
    } else {
        this->action = IDLE;
        this->actionDelay = 0xb4;

        InitAnimationForceUpdate(this, this->animationState + 4);
    }
}

void Lakitu_Cloudless(Entity* this) {
    if (sub_08003FC4(this, 0x1800) == 0 && this->animIndex <= 19) {
        InitAnimationForceUpdate(this, this->animationState + 20);

        this->spritePriority.b1 = 0;
    }

    UpdateAnimationSingleFrame(this);
    sub_0803CC08(this);
}

bool32 sub_0803CA4C(Entity* this) {
    if (sub_0806FCB8(this, gPlayerEntity.x.HALF.HI, gPlayerEntity.y.HALF.HI, 0x28) == 0) {
        if (sub_080041A0(this, &gPlayerEntity, 0x70, 0x50)) {
            return 1;
        }
    }

    return 0;
}

void sub_0803CA84(Entity* this, u32 unkParameter) {
    u32 altAnimState = GetFacingDirection(this, &gPlayerEntity);

    if (((altAnimState - 3) & 7) > 2 || ((this->animationState - (altAnimState >> 3)) & 3) > 1) {
        altAnimState = DirectionRoundUp(altAnimState) >> 3;

        if (altAnimState != this->animationState) {
            this->animationState = altAnimState;

            InitAnimationForceUpdate(this, altAnimState + unkParameter);
            InitAnimationForceUpdate(this->attachedEntity, altAnimState);
        }
    }
}

void sub_0803CAD0(Entity* this) {
    if (sub_0806FCB8(this, this->field_0x74.HWORD, this->field_0x76.HWORD, 1) == 0) {
        this->direction =
            sub_080045D4(this->x.HALF.HI, this->y.HALF.HI, this->field_0x74.HWORD, this->field_0x76.HWORD);

        sub_080AEFE0(this);
    }
}

bool32 sub_0803CB04(Entity* this) {
    bool32 returnValue;
    u8 delay;

    delay = --this->actionDelay;
    if (delay != 0) {
        returnValue = 0;
    } else {
        sub_0803CB34(this);
        this->field_0x78.HALF.HI = delay;

        InitAnimationForceUpdate(this->attachedEntity, this->animationState + 4);
        returnValue = 1;
    }

    return returnValue;
}

void sub_0803CB34(Entity* this) {
    this->action = LIGHTNING_THROW;
    this->damageType = 0xa6;

    this->field_0x78.HALF.LO = GetFacingDirection(this, &gPlayerEntity);

    InitAnimationForceUpdate(this, this->animationState + 8);
}

void Lakitu_SpawnLightning(Entity* this) {
    Entity* lightning;
    const OffsetCoords* offset;

    lightning = CreateProjectileWithParent(this, 18, 0);

    if (lightning == NULL) {
        return;
    }

    offset = &gUnk_080D0154[this->animationState];

    lightning->direction = this->field_0x78.HALF.LO;

    PositionRelative(this, lightning, offset->x << 16, offset->y << 16);

    EnqueueSFX(0x193);
}

void sub_0803CBAC(Entity* this) {
    Entity* cloud;

    cloud = this->attachedEntity;
    if (cloud != NULL) {
        cloud->flags |= 0x80;
        cloud->damageType = 0x43;
    }

    this->action = CLOUDLESS;
    this->spriteSettings.b.draw = 1;

    this->spritePriority.b1 = 1;

    this->flags2 &= 0x7b;

    this->damageType = 0x42;

    InitAnimationForceUpdate(this, this->animationState + 16);
}

void sub_0803CC08(Entity* this) {
    Entity* cloud;
    Entity* fx;

    cloud = this->attachedEntity;
    if (cloud == NULL) {
        return;
    }

    if ((u32)(cloud->height.HALF.HI - this->height.HALF.HI) > 2) {
        return;
    }

    if (this->hVelocity >= 0) {
        return;
    }

    if (!sub_0806FCB8(this, cloud->x.HALF.HI, cloud->y.HALF.HI, 6)) {
        return;
    }

    fx = CreateFx(this, FX_DEATH, 0);
    if (fx != NULL) {
        fx->x.HALF.HI += 6;
        fx->y.HALF.HI += 6;
    }

    fx = CreateFx(this, FX_DEATH, 0);
    if (fx != NULL) {
        fx->x.HALF.HI -= 6;
        fx->y.HALF.HI += 6;
    }

    fx = CreateFx(this, FX_DEATH, 0);
    if (fx != NULL) {
        fx->x.HALF.HI += 6;
        fx->y.HALF.HI -= 6;
    }

    fx = CreateFx(this, FX_DEATH, 0);
    if (fx != NULL) {
        fx->x.HALF.HI -= 6;
        fx->y.HALF.HI -= 6;
    }

    this->attachedEntity = NULL;
    DeleteEntity(cloud);
}

void (*const gUnk_080D0110[])(Entity*) = {
    Lakitu_DoAction, sub_0803C784, sub_08001324, sub_0804A7D4, sub_08001242, sub_0803C820,
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
