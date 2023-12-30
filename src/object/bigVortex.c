/**
 * @file bigVortex.c
 * @ingroup Objects
 *
 * @brief Big Vortex object
 */
#include "entity.h"
#include "flags.h"
#include "functions.h"
#include "object.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[30];
    /*0x86*/ u16 unk_86;
} BigVortexEntity;

void sub_08098E3C(Entity*);
void sub_08098E88(Entity*);
void BigVortex_Init(BigVortexEntity* this);
void BigVortex_Action1(BigVortexEntity* this);
void BigVortex_Action2(BigVortexEntity* this);
void BigVortex_Action3(BigVortexEntity* this);
void BigVortex_Action4(BigVortexEntity* this);

void BigVortex(BigVortexEntity* this) {
    static void (*const BigVortex_Actions[])(BigVortexEntity*) = {
        BigVortex_Init, BigVortex_Action1, BigVortex_Action2, BigVortex_Action3, BigVortex_Action4,
    };
    if (super->type == 0) {
        BigVortex_Actions[super->action](this);
    } else {
        sub_08098E3C(super);
    }
}

void BigVortex_Init(BigVortexEntity* this) {
    u32 temp;
    super->action = 1;
    super->z.HALF.HI = -0x10;

    temp = this->unk_86;

    if ((temp != 0) && !CheckFlags(temp)) {
        super->action = 1;
    } else {
        super->action = 3;
        super->spriteSettings.draw = TRUE;
        sub_08098E88(super);
    }
    SetEntityPriority(super, PRIO_PLAYER_EVENT);
    InitAnimationForceUpdate(super, 0);
}

void BigVortex_Action1(BigVortexEntity* this) {
    Entity* fx;

    if (CheckFlags(this->unk_86)) {
        super->action = 2;
        super->timer = 45;
        fx = CreateFx(super, FX_BIG_EXPLOSION2, 0);
        if (fx != NULL) {
            fx->y.HALF.HI += 8;
        }
    }
}

void BigVortex_Action2(BigVortexEntity* this) {
    if (--super->timer == 0) {
        super->action = 3;
        super->spriteSettings.draw = TRUE;
        sub_08098E88(super);
    }
}

void BigVortex_Action3(BigVortexEntity* this) {

    if (sub_0800419C(super, &gPlayerEntity.base, 8, 8) != 0) {
        CopyPosition(super, &gPlayerEntity.base);
        sub_08004542(super);
        sub_08004542(&gPlayerEntity.base);
        gPlayerEntity.base.collisionLayer = 1;
        SortEntityAbove(super, &gPlayerEntity.base);
        gPlayerState.queued_action = PLAYER_PARACHUTE;
        gPlayerState.field_0x38 = 1;
        gPlayerState.field_0x39 = super->type2;
        super->action = 4;
        if (super->type2 == 1) {
            SetGlobalFlag(TATSUMAKI);
        }
        PutAwayItems();
    }
    UpdateAnimationSingleFrame(super);
}

void BigVortex_Action4(BigVortexEntity* this) {
    UpdateAnimationSingleFrame(super);
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
