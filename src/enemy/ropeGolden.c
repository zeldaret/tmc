/**
 * @file ropeGolden.c
 * @ingroup Enemies
 *
 * @brief Golden Rope enemy
 */

#include "global.h"
#include "entity.h"
#include "enemy.h"
#include "physics.h"
#include "player.h"
#include "item.h"

void RopeGolden_OnTick(Entity*);
void RopeGolden_OnCollision(Entity*);
void RopeGolden_OnDeath(Entity*);
void sub_08038258(Entity*);
void sub_0803827C(Entity*);
void sub_080382EC(Entity*);
void sub_08038304(Entity*);

static void (*const RopeGolden_Functions[6])(Entity*) = {
    RopeGolden_OnTick, RopeGolden_OnCollision, GenericKnockback, RopeGolden_OnDeath, GenericConfused, RopeGolden_OnTick,
};

void sub_080383AC(Entity*);
void sub_080383E4(Entity*);

void RopeGolden(Entity* this) {
    u32 x;
    x = sub_080012DC(this);
    if (x != 0) {
        gUnk_080012C8[x](this);
    } else {
        RopeGolden_Functions[GetNextFunction(this)](this);
        SetChildOffset(this, 0, 1, -0x10);
    }
}

void RopeGolden_OnTick(Entity* this) {
    static void (*const actionFuncs[4])(Entity*) = {
        sub_08038258,
        sub_0803827C,
        sub_080382EC,
        sub_08038304,
    };
    actionFuncs[this->action](this);
}

void RopeGolden_OnCollision(Entity* this) {
    if (this->confusedTime != 0) {
        Create0x68FX(this, FX_STARS);
    }
    EnemyFunctionHandlerAfterCollision(this, RopeGolden_Functions);
}

void RopeGolden_OnDeath(Entity* this) {
    if ((this->gustJarState & 2) == 0) {
        SetGlobalFlag(this->type2);
    }
    CreateDeathFx(this, 0xff, ITEM_RUPEE100);
}

void sub_08038258(Entity* this) {
    if (CheckGlobalFlag(this->type2) != 0) {
        DeleteThisEntity();
    }
    sub_0804A720(this);
    this->animationState = 0xff;
    sub_080383AC(this);
}

void sub_0803827C(Entity* this) {
    if (this->subtimer != 0) {
        this->subtimer--;
    } else {
        if ((sub_0804A044(this, &gPlayerEntity, 0x8) != 0xff) ||
            (EntityWithinDistance(this, gPlayerEntity.x.HALF.HI, gPlayerEntity.y.HALF.HI, 0x24) != 0)) {
            sub_080383E4(this);
            return;
        }
    }
    UpdateAnimationVariableFrames(this, 0x2);
    if (!ProcessMovement0(this)) {
        sub_080383AC(this);
    } else {
        if (--this->timer == 0) {
            sub_080383AC(this);
        }
    }
}

void sub_080382EC(Entity* this) {
    if (--this->timer == 0) {
        this->action = 3;
    }
}

void sub_08038304(Entity* this) {
    u32 cVar2;
    s32 tmp;
    u32 tmp3;
    u32 h;

    UpdateAnimationVariableFrames(this, 2);
    if (!ProcessMovement0(this)) {
        if (this->field_0x78.HALF.LO == this->direction) {
#ifdef EU
            this->subtimer = 30;
#else
            this->subtimer = 90;
#endif
            sub_080383AC(this);
        } else {
            this->direction = this->field_0x78.HALF.LO;
        }
    } else {
        tmp = 10;
        if ((u8)((++this->timer) % tmp) == 0) {
            this->timer = 0;
            if (this->field_0x78.HALF.LO == this->direction) {
                cVar2 = ((Random() & 2) - 1) << 27;
                cVar2 = cVar2 >> 24;
                h = this->field_0x78.HALF.HI;
                tmp3 = (u8)cVar2 << 24;
                if (tmp3 >> 24 == h) {
                    if (h == this->field_0x7a.HALF.LO) {
                        cVar2 = -tmp3 >> 24;
                    }
                }
                this->field_0x7a.HALF.LO = this->field_0x78.HALF.HI;
                this->field_0x78.HALF.HI = cVar2;
                this->direction = (this->direction + cVar2) & 0x18;
            } else {
                this->direction = this->field_0x78.HALF.LO;
            }
            this->animationState = this->direction >> 3;
            InitializeAnimation(this, this->animationState + 4);
        }
    }
}

void sub_080383AC(Entity* this) {
    u32 v;
    this->action = 1;
    this->timer = 8;
    this->speed = 0x100;
    this->direction = DirectionRoundUp(GetFacingDirection(this, &gPlayerEntity));
    v = this->direction >> 3;
    if (v != this->animationState) {
        this->animationState = v;
        InitializeAnimation(this, v);
    }
}

void sub_080383E4(Entity* this) {
    u32 v;
    this->action = 2;
    this->timer = 8;
    this->speed = 0x280;
    v = DirectionRoundUp(GetFacingDirection(this, &gPlayerEntity));
    this->direction = v;
    this->field_0x78.HALF.LO = v;
    this->animationState = this->direction >> 3;
    this->field_0x78.HALF.HI = 0xff;
    this->field_0x7a.HALF.LO = -1;
    InitializeAnimation(this, this->animationState + 4);
}
