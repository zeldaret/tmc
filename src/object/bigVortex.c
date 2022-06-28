#include "global.h"
#include "entity.h"
#include "flags.h"
#include "object.h"
#include "functions.h"

void sub_08098E3C(Entity*);
void sub_08098E88(Entity*);
void sub_08098D1C(Entity*);
void sub_08098D6C(Entity*);
void sub_08098D9C(Entity*);
void sub_08098DC4(Entity*);
void sub_08098E34(Entity*);

void BigVortex(Entity* this) {
    static void (*const gUnk_0812367C[])(Entity*) = {
        sub_08098D1C, sub_08098D6C, sub_08098D9C, sub_08098DC4, sub_08098E34,
    };
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
    SetDefaultPriority(this, PRIO_PLAYER_EVENT);
    InitAnimationForceUpdate(this, 0);
}

void sub_08098D6C(Entity* this) {
    Entity* ent;

    if (CheckFlags(this->field_0x86.HWORD)) {
        this->action = 2;
        this->timer = 45;
        ent = CreateFx(this, FX_BIG_EXPLOSION2, 0);
        if (ent != NULL) {
            ent->y.HALF.HI += 8;
        }
    }
}

void sub_08098D9C(Entity* this) {
    if (--this->timer == 0) {
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
        SortEntityAbove(this, &gPlayerEntity);
        gPlayerState.queued_action = PLAYER_PARACHUTE;
        gPlayerState.field_0x38 = 1;
        gPlayerState.field_0x39 = this->type2;
        this->action = 4;
        if (this->type2 == 1) {
            SetGlobalFlag(TATSUMAKI);
        }
        PutAwayItems();
    }
    UpdateAnimationSingleFrame(this);
}

void sub_08098E34(Entity* this) {
    UpdateAnimationSingleFrame(this);
}

void sub_08098E3C(Entity* this) {
    static const u16 gUnk_08123690[] = {
        0x1c0,
        0x160,
        0x300,
        0x200,
    };
    const u16* temp;

    if (this->action == 0) {
        this->action = 1;
        this->spriteSettings.draw = TRUE;
        InitAnimationForceUpdate(this, this->type);
    }
    temp = &gUnk_08123690[this->type & 2];
    SetAffineInfo(this, temp[0], temp[1], 0);
    UpdateAnimationSingleFrame(this);
}

void sub_08098E88(Entity* this) {
    Entity* ent1;
    Entity* ent2;

    ent1 = CreateObject(BIG_VORTEX, 1, 0);
    if (ent1 != NULL) {
        PositionRelative(this, ent1, 0, Q_16_16(-1.0));
        ent1->spriteOffsetY = 8;
    }
    ent2 = CreateObject(BIG_VORTEX, 2, 0);
    if (ent2 != NULL) {
        PositionRelative(this, ent2, 0, Q_16_16(-2.0));
        ent2->spriteOffsetY = 0x10;
    }
}
