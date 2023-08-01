/**
 * @file tektiteGolden.c
 * @ingroup Enemies
 *
 * @brief Golden Tektite enemy
 */

#include "collision.h"
#include "enemy.h"
#include "item.h"
#include "functions.h"

void sub_08038168(Entity*);
void TektiteGolden_OnTick(Entity*);
void TektiteGolden_OnCollision(Entity*);
void TektiteGolden_OnDeath(Entity*);
void TektiteGolden_OnConfused(Entity*);
void TektiteGolden_OnTick(Entity*);
void sub_08037FA0(Entity*);
void sub_08037Fe0(Entity*);
void sub_08038048(Entity*);
void sub_08038110(Entity*);

static void (*const TektiteGolden_Functions[])(Entity*) = {
    TektiteGolden_OnTick,  TektiteGolden_OnCollision, GenericKnockback,
    TektiteGolden_OnDeath, TektiteGolden_OnConfused,  TektiteGolden_OnTick,
};

void TektiteGolden(Entity* this) {
    EnemyFunctionHandler(this, TektiteGolden_Functions);
    SetChildOffset(this, 0, 1, -0x10);
}

void TektiteGolden_OnTick(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_08037FA0,
        sub_08037Fe0,
        sub_08038048,
        sub_08038110,
    };
    actionFuncs[this->action](this);
}

void TektiteGolden_OnCollision(Entity* this) {
    u32 uVar1;

    if (this->confusedTime != 0) {
        Create0x68FX(this, FX_STARS);
    }
    EnemyFunctionHandlerAfterCollision(this, TektiteGolden_Functions);
    if (this->contactFlags == 0x94) {
        this->action = 1;
        this->subAction = 0;
        this->timer = 20;
        this->subtimer = 0;
        this->field_0x80.HALF.LO = 0;
        if (this->z.HALF.HI != 0) {
            this->zVelocity >>= 2;
        } else {
            this->zVelocity = 0;
        }

        InitializeAnimation(this, 0);
    }
}

void TektiteGolden_OnDeath(Entity* this) {
    u32 uVar1;

    if ((this->gustJarState & 2) == 0) {
        SetGlobalFlag(this->type2);
    }
    if (this->type != 0) {
        uVar1 = ITEM_RUPEE200;
    } else {
        uVar1 = ITEM_RUPEE100;
    }
    CreateDeathFx(this, 0xff, uVar1);
}

void TektiteGolden_OnConfused(Entity* this) {
    GenericConfused(this);
    if (this->z.HALF.HI != 0) {
        GravityUpdate(this, Q_8_8(48.0));
    }
}

void sub_08037FA0(Entity* this) {

    if (CheckGlobalFlag(this->type2)) {
        DeleteThisEntity();
    }
    sub_0804A720(this);
    this->action = 1;
    this->subAction = 0;
    this->timer = (Random() & 0x1f) + 32;
    this->subtimer = 0;
    this->field_0x80.HALF.LO = 0;
    InitializeAnimation(this, 0);
}

void sub_08037Fe0(Entity* this) {
    UpdateAnimationVariableFrames(this, 2);
    if (this->timer != 0) {
        this->timer--;
    } else if (this->subtimer != 0) {
        if (this->frame & ANIM_DONE) {
            this->action = 2;
            this->timer = 6;
            this->subtimer = 0;
            this->zVelocity = Q_16_16(3.5);
            sub_08038168(this);
            InitializeAnimation(this, 2);
        }
    } else if (this->frame & ANIM_DONE) {
        this->subtimer = 64;
        InitializeAnimation(this, 1);
    }
}

void sub_08038048(Entity* this) {
    s32 temp;
    u32 rand;

    UpdateAnimationVariableFrames(this, 2);
    ProcessMovement0(this);
    temp = this->z.HALF.HI;
    rand = Random() & 0xf;

    if (sub_080044EC(this, 0x3000) == 1) {
        this->action = 3;
        this->subAction = 0;
        this->timer = 20;
        InitializeAnimation(this, 3);
        return;
    } else if (this->collisions != COL_NONE) {
        sub_0800417E(this, this->collisions);
    } else if ((GetTileUnderEntity(this) & 0xf0) == 0x50) {
        this->direction = (this->direction + 0x10) & 0x1f;
    }

    if (--this->timer == 0) {
        this->timer = rand + 16;
        sub_08038168(this);
    }

    if ((this->subAction == 0) && (temp < this->z.HALF.HI)) {
        InitializeAnimation(this, 4);
        this->subAction = 1;
    }

    if (temp < -0xc) {
        this->spriteRendering.b3 = 1;
        this->spriteOrientation.flipY = 1;
    } else {
        this->spriteRendering.b3 = 2;
        this->spriteOrientation.flipY = 2;
    }
}

void sub_08038110(Entity* this) {
    UpdateAnimationVariableFrames(this, 2);
    if (this->frame & ANIM_DONE) {
        if (this->field_0x80.HALF.LO < 5) {
            this->action = 2;
            this->timer = 8;
            this->zVelocity = Q_16_16(3.5);
            sub_08038168(this);
            InitializeAnimation(this, 2);
        } else {
            this->action = 1;
            this->field_0x80.HALF.LO = 0;
            this->timer = 192;
            InitializeAnimation(this, 0);
        }
    }
}

void sub_08038168(Entity* this) {
    u32 temp;

    if (sub_08049FA0(this) == 0) {
        this->direction = sub_08049EE4(this);
    } else if (sub_08049FDC(this, 1) != 0) {
        this->direction = sub_08049F84(this, 1);
    } else {
        temp = (Random() & 0xf) + 0x18;
        this->direction = (temp + this->direction) & 0x1f;
    }
}
