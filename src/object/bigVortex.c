#include "global.h"
#include "entity.h"
#include "functions.h"
#include "flags.h"

extern void sub_08098E3C(Entity*);
extern void sub_08098E88(Entity*);

extern void (*const gUnk_0812367C[])(Entity*);

extern u16 gUnk_08123690[];

void BigVortex(Entity* this) {
    if ((this->entityType).form == 0) {
        gUnk_0812367C[this->action](this);
    } else {
        sub_08098E3C(this);
    }
}

void sub_08098D1C(Entity* this) {
    u32 temp;
    this->action = 1;
    this->height.HALF.HI = -0x10;

    temp = this->field_0x86;

    if ((temp != 0) && !CheckFlags(temp)) {
        this->action = 1;
    } else {
        this->action = 3;
        this->spriteSettings.b.draw = TRUE;
        sub_08098E88(this);
    }
    sub_0805E3A0(this, 6);
    InitAnimationForceUpdate(this, 0);
}

void sub_08098D6C(Entity* this) {
    Entity* ent;

    if (CheckFlags(this->field_0x86)) {
        this->action = 2;
        this->actionDelay = 0x2d;
        ent = CreateFx(this, 0x43, 0);
        if (ent != NULL) {
            ent->y.HALF.HI += 8;
        }
    }
}

void sub_08098D9C(Entity* this) {
    if (--this->actionDelay == 0) {
        this->action = 3;
        this->spriteSettings.b.draw = TRUE;
        sub_08098E88(this);
    }
}

void sub_08098DC4(Entity* this) {

    if (sub_0800419C(this, &gPlayerEntity, 8, 8) != 0) {
        CopyPosition(this, &gPlayerEntity);
        sub_08004542(this);
        sub_08004542(&gPlayerEntity);
        gPlayerEntity.collisionLayer = 1;
        ResolveEntityOnTop(this, &gPlayerEntity);
        gPlayerState.playerAction = 0x1f;
        gPlayerState.field_0x34[4] = 1;
        gPlayerState.field_0x34[5] = this->entityType.parameter;
        this->action = 4;
        if (this->entityType.parameter == 1) {
            SetGlobalFlag(0x23);
        }
        sub_08077B20();
    }
    UpdateAnimationSingleFrame(this);
}

void sub_08098E34(Entity* this) {
    UpdateAnimationSingleFrame(this);
}

void sub_08098E3C(Entity* this) {
    u16* temp;

    if (this->action == 0) {
        this->action = 1;
        this->spriteSettings.b.draw = TRUE;
        InitAnimationForceUpdate(this, this->entityType.form);
    }
    temp = &gUnk_08123690[this->entityType.form & 2];
    sub_0805EC9C(this, temp[0], temp[1], 0);
    UpdateAnimationSingleFrame(this);
}

void sub_08098E88(Entity* this) {
    Entity* ent1;
    Entity* ent2;

    ent1 = CreateObject(0x82, 1, 0);
    if (ent1 != NULL) {
        PositionRelative(this, ent1, 0, -0x10000);
        ent1->spriteOffsetY = 8;
    }
    ent2 = CreateObject(0x82, 2, 0);
    if (ent2 != NULL) {
        PositionRelative(this, ent2, 0, -0x20000);
        ent2->spriteOffsetY = 0x10;
    }
}