/**
 * @file ropeGolden.c
 * @ingroup Enemies
 *
 * @brief Golden Rope enemy
 */
#include "enemy.h"
#include "entity.h"
#include "physics.h"
#include "player.h"
#include "item.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[16];
    /*0x78*/ u8 unk_78;
    /*0x79*/ u8 unk_79;
    /*0x7a*/ u8 unk_7a;
} RopeGoldenEntity;

void RopeGolden_OnTick(RopeGoldenEntity* this);
void RopeGolden_OnCollision(RopeGoldenEntity* this);
void RopeGolden_OnDeath(RopeGoldenEntity* this);
void sub_08038258(RopeGoldenEntity* this);
void sub_0803827C(RopeGoldenEntity* this);
void sub_080382EC(RopeGoldenEntity* this);
void sub_08038304(RopeGoldenEntity* this);

static void (*const RopeGolden_Functions[6])(RopeGoldenEntity*) = {
    RopeGolden_OnTick,
    RopeGolden_OnCollision,
    (void (*)(RopeGoldenEntity*))GenericKnockback,
    RopeGolden_OnDeath,
    (void (*)(RopeGoldenEntity*))GenericConfused,
    RopeGolden_OnTick,
};

void sub_080383AC(RopeGoldenEntity* this);
void sub_080383E4(RopeGoldenEntity* this);

void RopeGolden(RopeGoldenEntity* this) {
    u32 x;
    x = sub_080012DC(super);
    if (x != 0) {
        gUnk_080012C8[x](super);
    } else {
        RopeGolden_Functions[GetNextFunction(super)](this);
        EnemySetFXOffset(super, 0, 1, -0x10);
    }
}

void RopeGolden_OnTick(RopeGoldenEntity* this) {
    static void (*const actionFuncs[4])(RopeGoldenEntity*) = {
        sub_08038258,
        sub_0803827C,
        sub_080382EC,
        sub_08038304,
    };
    actionFuncs[super->action](this);
}

void RopeGolden_OnCollision(RopeGoldenEntity* this) {
    if (super->confusedTime != 0) {
        EnemyCreateFX(super, FX_STARS);
    }
    EnemyFunctionHandlerAfterCollision(super, RopeGolden_Functions);
}

void RopeGolden_OnDeath(RopeGoldenEntity* this) {
    if ((super->gustJarState & 2) == 0) {
        SetGlobalFlag(super->type2);
    }
    EnemyCreateDeathFX((Enemy*)super, 0xff, ITEM_RUPEE100);
}

void sub_08038258(RopeGoldenEntity* this) {
    if (CheckGlobalFlag(super->type2) != 0) {
        DeleteThisEntity();
    }
    sub_0804A720(super);
    super->animationState = 0xff;
    sub_080383AC(this);
}

void sub_0803827C(RopeGoldenEntity* this) {
    if (super->subtimer != 0) {
        super->subtimer--;
    } else {
        if ((sub_0804A044(super, &gPlayerEntity.base, 0x8) != 0xff) ||
            (EntityWithinDistance(super, gPlayerEntity.base.x.HALF.HI, gPlayerEntity.base.y.HALF.HI, 0x24) != 0)) {
            sub_080383E4(this);
            return;
        }
    }
    UpdateAnimationVariableFrames(super, 0x2);
    if (!ProcessMovement0(super)) {
        sub_080383AC(this);
    } else {
        if (--super->timer == 0) {
            sub_080383AC(this);
        }
    }
}

void sub_080382EC(RopeGoldenEntity* this) {
    if (--super->timer == 0) {
        super->action = 3;
    }
}

void sub_08038304(RopeGoldenEntity* this) {
    u32 cVar2;
    s32 tmp;
    u32 tmp3;
    u32 h;

    UpdateAnimationVariableFrames(super, 2);
    if (!ProcessMovement0(super)) {
        if (this->unk_78 == super->direction) {
#ifdef EU
            super->subtimer = 30;
#else
            super->subtimer = 90;
#endif
            sub_080383AC(this);
        } else {
            super->direction = this->unk_78;
        }
    } else {
        tmp = 10;
        if ((u8)((++super->timer) % tmp) == 0) {
            super->timer = 0;
            if (this->unk_78 == super->direction) {
                cVar2 = ((Random() & 2) - 1) << 27;
                cVar2 = cVar2 >> 24;
                h = this->unk_79;
                tmp3 = (u8)cVar2 << 24;
                if (tmp3 >> 24 == h) {
                    if (h == this->unk_7a) {
                        cVar2 = -tmp3 >> 24;
                    }
                }
                this->unk_7a = this->unk_79;
                this->unk_79 = cVar2;
                super->direction = (super->direction + cVar2) & DirectionWest;
            } else {
                super->direction = this->unk_78;
            }
            super->animationState = super->direction >> 3;
            InitializeAnimation(super, super->animationState + 4);
        }
    }
}

void sub_080383AC(RopeGoldenEntity* this) {
    u32 v;
    super->action = 1;
    super->timer = 8;
    super->speed = 0x100;
    super->direction = DirectionRoundUp(GetFacingDirection(super, &gPlayerEntity.base));
    v = super->direction >> 3;
    if (v != super->animationState) {
        super->animationState = v;
        InitializeAnimation(super, v);
    }
}

void sub_080383E4(RopeGoldenEntity* this) {
    u32 v;
    super->action = 2;
    super->timer = 8;
    super->speed = 0x280;
    v = DirectionRoundUp(GetFacingDirection(super, &gPlayerEntity.base));
    super->direction = v;
    this->unk_78 = v;
    super->animationState = super->direction >> 3;
    this->unk_79 = 0xff;
    this->unk_7a = -1;
    InitializeAnimation(super, super->animationState + 4);
}
