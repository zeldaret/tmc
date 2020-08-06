#include "global.h"
#include "entity.h"
#include "functions.h"
#include "trig.h"
#include "random.h"
#include "link.h"

// Lakitu
extern void EnemyFunctionHandler(Entity *, void (*const funcs[])(Entity*));

// sub_0803C758
extern void sub_0803CAD0(Entity *);

// sub_0803C784
extern void sub_0803CBAC(Entity *); // Also used in sub_0803C86C
extern Entity *CreateFx(Entity*, u32, u32);
extern void sub_0804A9FC(Entity *, u32);
extern void sub_0804AA30(Entity *, void (*const funcs[])(Entity *));

// sub_0803C820
extern u32 sub_0806F520(Entity *);

// sub_0803C850
extern void sub_0806F4E8(Entity *);

// sub_0803C87C
extern Entity *sub_0804A98C(Entity *, u32, u32);
extern void sub_0804A720(Entity *);

// sub_0803C8BC and sub_0803C918
extern void sub_0803CA84(Entity *, u32);
extern bool32 sub_0803CA4C(Entity *);

// sub_0803C918
extern u32 sub_0803CB04(Entity *);

// sub_0803C97C
extern void sub_0803CB64(Entity *);

// sub_0803C9D4 and sub_0803CB04
extern void sub_0803CB34(Entity *);

// sub_0803CA0C
extern void sub_0803CC08(Entity *this);

// sub_0803CA4C
extern u32 sub_0806FCB8(Entity *, u32, u32, u32);
extern u32 sub_080041A0(Entity *, Entity *, u32, u32);

// sub_0803CA84
extern u32 GetFacingDirection(Entity *, Entity *);

// sub_0803CB64
extern void sub_08004488(u32);

typedef struct {
    s8 x;
    s8 y;
} PACKED OffsetCoords;

// sub_0803CC08
extern void DeleteEntity(Entity *);

// Variables
extern void (*const gUnk_080D0110[])(Entity *);
extern void (*const gUnk_080D0128[])(Entity *);
extern void (*const gUnk_080D0148[])(Entity *);
extern const OffsetCoords gUnk_080D0154[];

void Lakitu(Entity *this) {
    EnemyFunctionHandler(this, gUnk_080D0110);

    SetChildOffset(this, 0, 1, -16);
}

void sub_0803C758(Entity *this) {
    if (this->action != 0 && this->action != 7) {
        sub_0803CAD0(this);
    }

    gUnk_080D0128[this->action](this);
}

void sub_0803C784(Entity *this) {
    if ((this->bitfield & 0x7f) == 0x1d) {
        this->field_0x20 = 0x20000;

        sub_0803CBAC(this);
    }
    else {
        if (this->damageType == 0x43) {
            Entity *sound = CreateFx(this, 2, 0);

            if (sound != 0) {
                u32 angle = (this->field_0x3e ^ 0x10) << 3;
                s32 sine;

                sine = gSineTable[angle];
                if (sine < 0) {
                    sine += 0x1f;
                }

                sound->x.HALF.HI += sine >> 5;

                sine = gSineTable[angle + 0x40];
                if (sine < 0) {
                    sine += 0x1f;
                }

                sound->y.HALF.HI -= sine >> 5;
            }
        }
    }

    if (this->field_0x43) {
        sub_0804A9FC(this, 0x1c);
    }

    sub_0804AA30(this, gUnk_080D0110);
}

void sub_0803C820(Entity *this) {
    if (sub_0806F520(this)) {
        gUnk_080D0148[this->previousActionFlag](this);
    }
}

void sub_0803C844(Entity *this) {
    this->previousActionFlag = 1;
    this->field_0x1d = 0x3c;
}

void sub_0803C850(Entity *this) {
    Entity *cloud = this->attachedEntity;
    if (cloud != 0) {
        cloud->spriteOffsetX = this->spriteOffsetX;
    }

    sub_0806F4E8(this);
}

void sub_0803C86C(Entity *this) {
    sub_0803CBAC(this);
    this->attachedEntity = 0;
}

void sub_0803C87C(Entity *this) {
    Entity *cloud = sub_0804A98C(this, 17, 0);
    if (cloud == 0) {
        return;
    }

    cloud->parent = this;
    this->attachedEntity = cloud;

    sub_0804A720(this);

    this->action = 1;

    this->height.HALF.HI = -2;

    this->spriteOffsetY = 0xff;

    this->field_0x74 = this->x.HALF.HI;
    this->field_0x76 = this->y.HALF.HI;
}

void sub_0803C8BC(Entity *this) {
    sub_0803CA84(this, 0);

    if (sub_0803CA4C(this)) {
        this->action = 2;
        this->spriteSettings.b.draw = 1;
    }
}

void sub_0803C8E4(Entity *this) {
    UpdateAnimationSingleFrame(this);

    if (this->frames.b.f3) {
        this->action = 3;
        this->actionDelay = 0x3c;

        this->damageType = 0x42;

        InitAnimationForceUpdate(this, this->animationState + 4);
    }
}

void sub_0803C918(Entity *this) {
    if (sub_0803CB04(this) != 0) {
        return;
    }

    if (sub_0803CA4C(this) == 0) {
        this->action = 4;

        this->damageType = 0x43;
        InitAnimationForceUpdate(this, this->animationState + 0xc);
    }
    else {
        sub_0803CA84(this, 4);
    }
}

void sub_0803C950(Entity *this) {
    UpdateAnimationSingleFrame(this);

    if (this->frames.b.f3 != 0) {
        this->action = 1;
        this->spriteSettings.b.draw = 0;

        InitAnimationForceUpdate(this, this->animationState);
    }
}

void sub_0803C97C(Entity *this) {
    UpdateAnimationSingleFrame(this);

    if (this->frames.b.f3 == 0) {
        return;
    }

    sub_0803CB64(this);
    this->action = 6;
    this->damageType = 0x42;

    
    if ((Random() & 1) && this->field_0x78.HALF.HI == 0) {
        this->actionDelay = 0xf;
        this->field_0x78.HALF.HI = 1;
    }
    else {
        this->actionDelay = 0x1e;
        this->field_0x78.HALF.HI = 0;

        InitAnimationForceUpdate(this->attachedEntity, this->animationState);
    }
}

void sub_0803C9D4(Entity *this) {
    this->actionDelay--;

    if (this->actionDelay != 0) {
        return;
    }
    
    if (this->field_0x78.HALF.HI == 1) {
        sub_0803CB34(this);
    }
    else {
        this->action = 3;
        this->actionDelay = 0xb4;

        InitAnimationForceUpdate(this, this->animationState + 4);
    }
}

void sub_0803CA0C(Entity *this) {
    if (sub_08003FC4(this, 0x1800) == 0 && this->animIndex <= 19) {
        InitAnimationForceUpdate(this, this->animationState + 20);

        this->spritePriority.b1 = 0;
    }

    UpdateAnimationSingleFrame(this);
    sub_0803CC08(this);
}

bool32 sub_0803CA4C(Entity *this) {
    if (sub_0806FCB8(this, gLinkEntity.x.HALF.HI, gLinkEntity.y.HALF.HI, 0x28) == 0) {
        if (sub_080041A0(this, &gLinkEntity, 0x70, 0x50)) {
            return 1;
        }
    }

    return 0;
}

void sub_0803CA84(Entity *this, u32 unkParameter) {
    u32 altAnimState = GetFacingDirection(this, &gLinkEntity);

    if (((altAnimState - 3) & 7) > 2 || ((this->animationState  - (altAnimState >> 3)) & 3) > 1) {
        u32 intermediate = (altAnimState + 4) & 0x18;
        altAnimState = intermediate >> 3;

        if (altAnimState != this->animationState) {
            this->animationState = altAnimState;

            InitAnimationForceUpdate(this, altAnimState + unkParameter);
            InitAnimationForceUpdate(this->attachedEntity, altAnimState);
        }
    }
}

void sub_0803CAD0(Entity *this) {
    if (sub_0806FCB8(this, this->field_0x74, this->field_0x76, 1) == 0) {
        this->direction = sub_080045D4(this->x.HALF.HI, this->y.HALF.HI, this->field_0x74, this->field_0x76);

        sub_080AEFE0(this);
    }
}

bool32 sub_0803CB04(Entity *this) {
    bool32 returnValue;
    u8 delay;

    delay = --this->actionDelay;
    if (delay != 0) {
        returnValue = 0;
    }
    else {
        sub_0803CB34(this);
        this->field_0x78.HALF.HI = delay;

        InitAnimationForceUpdate(this->attachedEntity, this->animationState + 4);
        returnValue = 1;
    }

    return returnValue;
}

void sub_0803CB34(Entity *this) {
    this->action = 5;
    this->damageType = 0xa6;

    this->field_0x78.HALF.LO = GetFacingDirection(this, &gLinkEntity);

    InitAnimationForceUpdate(this, this->animationState + 8);
}

void sub_0803CB64(Entity *this) {
    Entity *cloud;
    const OffsetCoords *offset;

    cloud = sub_0804A98C(this, 18, 0);

    if (cloud == 0) {
        return;
    }

    offset = &gUnk_080D0154[this->animationState];

    cloud->direction = this->field_0x78.HALF.LO;

    PositionRelative(this, cloud, offset->x << 16, offset->y << 16);

    sub_08004488(0x193);
}

void sub_0803CBAC(Entity *this) {
    Entity *cloud;

    cloud = this->attachedEntity;
    if (cloud != 0) {
        cloud->flags |= 0x80;
        cloud->damageType = 0x43;
    }

    this->action = 7;
    this->spriteSettings.b.draw = 1;

    this->spritePriority.b1 = 1;

    this->flags2 &= 0x7b;

    this->damageType = 0x42;

    InitAnimationForceUpdate(this, this->animationState + 16);
}

void sub_0803CC08(Entity *this) {
    Entity *cloud;
    Entity *sound;

    cloud = this->attachedEntity;
    if (cloud == 0) {
        return;
    }

    if ((u32)(cloud->height.HALF.HI - this->height.HALF.HI) > 2) {
        return;
    }

    if (this->field_0x20 >= 0) {
        return;
    }

    if (!sub_0806FCB8(this, cloud->x.HALF.HI, cloud->y.HALF.HI, 6)) {
        return;
    }

    sound = CreateFx(this, 2, 0);
    if (sound != 0) {
        sound->x.HALF.HI += 6;
        sound->y.HALF.HI += 6;
    }

    sound = CreateFx(this, 2, 0);
    if (sound != 0) {
        sound->x.HALF.HI -= 6;
        sound->y.HALF.HI += 6;
    }

    sound = CreateFx(this, 2, 0);
    if (sound != 0) {
        sound->x.HALF.HI += 6;
        sound->y.HALF.HI -= 6;
    }

    sound = CreateFx(this, 2, 0);
    if (sound != 0) {
        sound->x.HALF.HI -= 6;
        sound->y.HALF.HI -= 6;
    }

    this->attachedEntity = 0;
    DeleteEntity(cloud);
}