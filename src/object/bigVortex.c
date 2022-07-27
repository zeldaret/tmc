/**
 * @file bigVortex.c
 * @ingroup Objects
 *
 * @brief Big Vortex object
 */
#include "entity.h"
#include "flags.h"
#include "functions.h"
#include "global.h"
#include "object.h"

void sub_08098E3C(Entity*);
void sub_08098E88(Entity*);
void BigVortex_Init(Entity*);
void BigVortex_Action1(Entity*);
void BigVortex_Action2(Entity*);
void BigVortex_Action3(Entity*);
void BigVortex_Action4(Entity*);

void BigVortex(Entity* this) {
    static void (*const BigVortex_Actions[])(Entity*) = {
        BigVortex_Init, BigVortex_Action1, BigVortex_Action2, BigVortex_Action3, BigVortex_Action4,
    };
    if (this->type == 0) {
        BigVortex_Actions[this->action](this);
    } else {
        sub_08098E3C(this);
    }
}

void BigVortex_Init(Entity* this) {
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

void BigVortex_Action1(Entity* this) {
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

void BigVortex_Action2(Entity* this) {
    if (--this->timer == 0) {
        this->action = 3;
        this->spriteSettings.draw = TRUE;
        sub_08098E88(this);
    }
}

void BigVortex_Action3(Entity* this) {

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

void BigVortex_Action4(Entity* this) {
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
