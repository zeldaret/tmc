#include "global.h"
#include "entity.h"
#include "flags.h"
#include "functions.h"

extern void (*const gUnk_08123EC0[])(Entity*);
extern void (*const gUnk_08123EEC[])(Entity*);
extern void (*const gUnk_08123EF4[])(Entity*);
extern void (*const gUnk_08123EFC[])(Entity*);
extern void (*const gUnk_08123F04[])(Entity*);

void Bird(Entity* this) {
    gUnk_08123EC0[this->entityType.form](this);
}

void sub_0809CF3C(Entity* this) {
    gUnk_08123EEC[this->action](this);
}

void sub_0809CF54(Entity* this) {
    Entity* target;

    this->action++;
    this->spriteSettings.b.draw = TRUE;
    this->actionDelay = 0x31;
    this->field_0xf = 1;
    this->field_0x20 = -0x18000;
    this->height.WORD = -0x38C000;
    this->field_0x68.HWORD = -0x800;
    this->nonPlanarMovement = 0x280;
    this->direction = 8;
    this->collisionLayer = 2;
    this->x.HALF.HI = gRoomControls.roomScrollX;
    PlaySFX(0x123);
    UpdateSpriteForCollisionLayer(this);
    InitAnimationForceUpdate(this, 0);
    target = CreateObject(0x95, 1, 0);
    if (target != NULL) {
        target->parent = this;
        PositionRelative(this, target, 0, 0x80000);
        ResolveEntityOnTop(this, target);
    }
}

void sub_0809CFEC(Entity* this) {

    sub_0806F69C(this);
    sub_08003FC4(this, *(s16*)&this->field_0x68.HWORD);
    if (this->actionDelay != 0) {
        if (--this->actionDelay == 0) {
            this->field_0xf = 0;
        }
    } else if (sub_080040A8(this) == 0) {
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
    gUnk_08123EFC[this->previousActionFlag](this);
}

void sub_0809D084(Entity* this) {
    u32 temp;

    if (this->parent != NULL) {
        temp = this->parent->field_0xf;
        if (temp != 0) {
            PositionRelative(this->parent, this, 0, 0x80000);
        } else {
            this->previousActionFlag++;
            this->field_0x20 = temp;
        }
    }
}

void sub_0809D0AC(Entity* this) {
    Entity* fx;

    if (sub_080044EC(this, 0x1800) < 2) {
        (this->entityType).form = 2;
        this->action = 1;
        this->height.WORD = 0;
        this->collisionLayer = 1;
        SetLocalFlag(0x45);
        PlaySFX(0x72);
        fx = CreateFx(this, 0x11, 0);
        if (fx != NULL) {
            sub_0806FAD8(this, fx);
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
    if ((gPlayerState.flags.all & 0x80) != 0) {
        sub_0800445C(this);
    } else if (sub_08017850(this) != 0) {
        CreateItemEntity(0x17, 0, 0);
        gUnk_02002A40.windcrests |= 0x10000000;
        DeleteThisEntity();
    }
}

void sub_0809D178(Entity* this) {

    if (this->action == 0) {
        this->action++;
        this->collisionLayer = 2;
        UpdateSpriteForCollisionLayer(this);
        this->frames.all = 0x80;
    }
    if ((this->frames.all & 0x80) != 0) {
        InitializeAnimation(this, Random() & 3);
        this->frameDuration = (Random() & 0xf) + 0x10;
        this->spriteSettings.b.flipX = FALSE;
        if ((Random() & 1) != 0) {
            this->spriteSettings.b.flipX = TRUE;
        }
    } else {
        GetNextFrame(this);
    }
}
