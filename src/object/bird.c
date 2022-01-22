#include "save.h"
#include "object.h"
#include "functions.h"
#include "item.h"

extern void (*const gUnk_08123EC0[])(Entity*);
extern void (*const gUnk_08123EEC[])(Entity*);
extern void (*const gUnk_08123EF4[])(Entity*);
extern void (*const gUnk_08123EFC[])(Entity*);
extern void (*const gUnk_08123F04[])(Entity*);

void Bird(Entity* this) {
    gUnk_08123EC0[this->type](this);
}

void sub_0809CF3C(Entity* this) {
    gUnk_08123EEC[this->action](this);
}

void sub_0809CF54(Entity* this) {
    Entity* target;

    this->action++;
    this->spriteSettings.draw = TRUE;
    this->actionDelay = 0x31;
    this->field_0xf = 1;
    this->zVelocity = Q_16_16(-1.5);
    this->z.WORD = Q_16_16(-56.75);
    this->field_0x68.HWORD = Q_16_16(-0.03125);
    this->speed = 0x280;
    this->direction = 8;
    this->collisionLayer = 2;
    this->x.HALF.HI = gRoomControls.scroll_x;
    SoundReq(SFX_123);
    UpdateSpriteForCollisionLayer(this);
    InitAnimationForceUpdate(this, 0);
    target = CreateObject(BIRD, 1, 0);
    if (target != NULL) {
        target->parent = this;
        PositionRelative(this, target, 0, Q_16_16(8.0));
        SortEntityAbove(this, target);
    }
}

void sub_0809CFEC(Entity* this) {

    LinearMoveUpdate(this);
    GravityUpdate(this, *(s16*)&this->field_0x68.HWORD);
    if (this->actionDelay != 0) {
        if (--this->actionDelay == 0) {
            this->field_0xf = 0;
        }
    } else if (CheckOnScreen(this) == 0) {
        DeleteThisEntity();
    }
    UpdateAnimationSingleFrame(this);
}

void sub_0809D030(Entity* this) {
    gUnk_08123EF4[this->action](this);
}

void sub_0809D048(Entity* this) {
    this->action++;
    this->collisionLayer = 1;
    UpdateSpriteForCollisionLayer(this);
    InitAnimationForceUpdate(this, 0x17);
}

void sub_0809D06C(Entity* this) {
    gUnk_08123EFC[this->subAction](this);
}

void sub_0809D084(Entity* this) {
    u32 temp;

    if (this->parent != NULL) {
        temp = this->parent->field_0xf;
        if (temp != 0) {
            PositionRelative(this->parent, this, 0, Q_16_16(8.0));
        } else {
            this->subAction++;
            this->zVelocity = temp;
        }
    }
}

void sub_0809D0AC(Entity* this) {
    Entity* fx;

    if (sub_080044EC(this, 0x1800) < 2) {
        this->type = 2;
        this->action = 1;
        this->z.WORD = 0;
        this->collisionLayer = 1;
        SetLocalFlag(LV3_OCARINA_FALL);
        SoundReq(SFX_SECRET);
        fx = CreateFx(this, FX_DASH, 0);
        if (fx != NULL) {
            SortEntityBelow(this, fx);
        }
    }
}

void sub_0809D0F4(Entity* this) {
    gUnk_08123F04[this->action](this);
}

void sub_0809D10C(Entity* this) {
    this->action++;
    this->collisionLayer = 1;
    UpdateSpriteForCollisionLayer(this);
    InitAnimationForceUpdate(this, 0x17);
}

void sub_0809D130(Entity* this) {
    if ((gPlayerState.flags & PL_MINISH) != 0) {
        sub_0800445C(this);
    } else if (sub_08017850(this) != 0) {
        CreateItemEntity(0x17, 0, 0);
        gSave.windcrests |= 0x10000000;
        DeleteThisEntity();
    }
}

void sub_0809D178(Entity* this) {

    if (this->action == 0) {
        this->action++;
        this->collisionLayer = 2;
        UpdateSpriteForCollisionLayer(this);
        this->frame = 0x80;
    }
    if ((this->frame & 0x80) != 0) {
        InitializeAnimation(this, Random() & 3);
        this->frameDuration = (Random() & 0xf) + 0x10;
        this->spriteSettings.flipX = FALSE;
        if ((Random() & 1) != 0) {
            this->spriteSettings.flipX = TRUE;
        }
    } else {
        GetNextFrame(this);
    }
}
