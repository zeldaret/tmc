#include "global.h"
#include "entity.h"
#include "flags.h"
#include "object.h"
#include "functions.h"
#include "effects.h"

extern void sub_08098E3C(Entity*);
extern void sub_08098E88(Entity*);

extern void (*const gUnk_0812367C[])(Entity*);

extern u16 gUnk_08123690[];

void BigVortex(Entity* this) {
    if (this->type == 0) {
        gUnk_0812367C[this->action](this);
    } else {
        sub_08098E3C(this);
    }
}

void sub_08098D1C(Entity* this) {
    u32 temp;
    this->action = 1;
    this->z.HALF.HI = -0x10;

    temp = this->field_0x86.HWORD;

    if ((temp != 0) && !CheckFlags(temp)) {
        this->action = 1;
    } else {
        this->action = 3;
        this->spriteSettings.draw = TRUE;
        sub_08098E88(this);
    }
    SetDefaultPriority(this, 6);
    InitAnimationForceUpdate(this, 0);
}

void sub_08098D6C(Entity* this) {
    Entity* ent;

    if (CheckFlags(this->field_0x86.HWORD)) {
        this->action = 2;
        this->actionDelay = 0x2d;
        ent = CreateFx(this, FX_BIG_EXPLOSION2, 0);
        if (ent != NULL) {
            ent->y.HALF.HI += 8;
        }
    }
}

void sub_08098D9C(Entity* this) {
    if (--this->actionDelay == 0) {
        this->action = 3;
        this->spriteSettings.draw = TRUE;
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
        gPlayerState.field_0x34[5] = this->type2;
        this->action = 4;
        if (this->type2 == 1) {
            SetGlobalFlag(TATSUMAKI);
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
        this->spriteSettings.draw = TRUE;
        InitAnimationForceUpdate(this, this->type);
    }
    temp = &gUnk_08123690[this->type & 2];
    sub_0805EC9C(this, temp[0], temp[1], 0);
    UpdateAnimationSingleFrame(this);
}

void sub_08098E88(Entity* this) {
    Entity* ent1;
    Entity* ent2;

    ent1 = CreateObject(BIG_VORTEX, 1, 0);
    if (ent1 != NULL) {
        PositionRelative(this, ent1, 0, -0x10000);
        ent1->spriteOffsetY = 8;
    }
    ent2 = CreateObject(BIG_VORTEX, 2, 0);
    if (ent2 != NULL) {
        PositionRelative(this, ent2, 0, -0x20000);
        ent2->spriteOffsetY = 0x10;
    }
}
