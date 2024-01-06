/**
 * @file tektiteGolden.c
 * @ingroup Enemies
 *
 * @brief Golden Tektite enemy
 */
#include "collision.h"
#include "enemy.h"
#include "functions.h"
#include "item.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[24];
    /*0x80*/ u8 unk_80;
} TektiteGoldenEntity;

void sub_08038168(TektiteGoldenEntity*);
void TektiteGolden_OnTick(TektiteGoldenEntity*);
void TektiteGolden_OnCollision(TektiteGoldenEntity*);
void TektiteGolden_OnDeath(TektiteGoldenEntity*);
void TektiteGolden_OnConfused(TektiteGoldenEntity*);
void TektiteGolden_OnTick(TektiteGoldenEntity*);
void sub_08037FA0(TektiteGoldenEntity*);
void sub_08037Fe0(TektiteGoldenEntity*);
void sub_08038048(TektiteGoldenEntity*);
void sub_08038110(TektiteGoldenEntity*);

static void (*const TektiteGolden_Functions[])(TektiteGoldenEntity*) = {
    TektiteGolden_OnTick,  TektiteGolden_OnCollision, (void (*)(TektiteGoldenEntity*))GenericKnockback,
    TektiteGolden_OnDeath, TektiteGolden_OnConfused,  TektiteGolden_OnTick,
};

void TektiteGolden(TektiteGoldenEntity* this) {
    EnemyFunctionHandler(super, (EntityActionArray)TektiteGolden_Functions);
    EnemySetFXOffset(super, 0, 1, -0x10);
}

void TektiteGolden_OnTick(TektiteGoldenEntity* this) {
    static void (*const actionFuncs[])(TektiteGoldenEntity*) = {
        sub_08037FA0,
        sub_08037Fe0,
        sub_08038048,
        sub_08038110,
    };
    actionFuncs[super->action](this);
}

void TektiteGolden_OnCollision(TektiteGoldenEntity* this) {
    if (super->confusedTime != 0) {
        EnemyCreateFX(super, FX_STARS);
    }
    EnemyFunctionHandlerAfterCollision(super, TektiteGolden_Functions);
    if (super->contactFlags == (CONTACT_NOW | 0x14)) {
        super->action = 1;
        super->subAction = 0;
        super->timer = 20;
        super->subtimer = 0;
        this->unk_80 = 0;
        if (super->z.HALF.HI != 0) {
            super->zVelocity >>= 2;
        } else {
            super->zVelocity = 0;
        }

        InitializeAnimation(super, 0);
    }
}

void TektiteGolden_OnDeath(TektiteGoldenEntity* this) {
    u32 uVar1;

    if ((super->gustJarState & 2) == 0) {
        SetGlobalFlag(super->type2);
    }
    if (super->type != 0) {
        uVar1 = ITEM_RUPEE200;
    } else {
        uVar1 = ITEM_RUPEE100;
    }
    EnemyCreateDeathFX((Enemy*)super, 0xff, uVar1);
}

void TektiteGolden_OnConfused(TektiteGoldenEntity* this) {
    GenericConfused(super);
    if (super->z.HALF.HI != 0) {
        GravityUpdate(super, Q_8_8(48.0));
    }
}

void sub_08037FA0(TektiteGoldenEntity* this) {
    if (CheckGlobalFlag(super->type2)) {
        DeleteThisEntity();
    }
    sub_0804A720(super);
    super->action = 1;
    super->subAction = 0;
    super->timer = (Random() & 0x1f) + 32;
    super->subtimer = 0;
    this->unk_80 = 0;
    InitializeAnimation(super, 0);
}

void sub_08037Fe0(TektiteGoldenEntity* this) {
    UpdateAnimationVariableFrames(super, 2);
    if (super->timer != 0) {
        super->timer--;
    } else if (super->subtimer != 0) {
        if (super->frame & ANIM_DONE) {
            super->action = 2;
            super->timer = 6;
            super->subtimer = 0;
            super->zVelocity = Q_16_16(3.5);
            sub_08038168(this);
            InitializeAnimation(super, 2);
        }
    } else if (super->frame & ANIM_DONE) {
        super->subtimer = 64;
        InitializeAnimation(super, 1);
    }
}

void sub_08038048(TektiteGoldenEntity* this) {
    s32 temp;
    u32 rand;

    UpdateAnimationVariableFrames(super, 2);
    ProcessMovement0(super);
    temp = super->z.HALF.HI;
    rand = Random() & 0xf;

    if (BounceUpdate(super, Q_8_8(48.0)) == BOUNCE_INIT_NEXT) {
        super->action = 3;
        super->subAction = 0;
        super->timer = 20;
        InitializeAnimation(super, 3);
        return;
    } else if (super->collisions != COL_NONE) {
        sub_0800417E(super, super->collisions);
    } else if ((GetActTileAtEntity(super) & 0xf0) == 0x50) { // ACT_TILE_240 and ACT_TILE_241?
        super->direction = (super->direction + 0x10) & (0x3 | DirectionNorthWest);
    }

    if (--super->timer == 0) {
        super->timer = rand + 16;
        sub_08038168(this);
    }

    if ((super->subAction == 0) && (temp < super->z.HALF.HI)) {
        InitializeAnimation(super, 4);
        super->subAction = 1;
    }

    if (temp < -0xc) {
        super->spriteRendering.b3 = 1;
        super->spriteOrientation.flipY = 1;
    } else {
        super->spriteRendering.b3 = 2;
        super->spriteOrientation.flipY = 2;
    }
}

void sub_08038110(TektiteGoldenEntity* this) {
    UpdateAnimationVariableFrames(super, 2);
    if (super->frame & ANIM_DONE) {
        if (this->unk_80 < 5) {
            super->action = 2;
            super->timer = 8;
            super->zVelocity = Q_16_16(3.5);
            sub_08038168(this);
            InitializeAnimation(super, 2);
        } else {
            super->action = 1;
            this->unk_80 = 0;
            super->timer = 192;
            InitializeAnimation(super, 0);
        }
    }
}

void sub_08038168(TektiteGoldenEntity* this) {
    u32 temp;

    if (sub_08049FA0(super) == 0) {
        super->direction = sub_08049EE4(super);
    } else if (sub_08049FDC(super, 1) != 0) {
        super->direction = sub_08049F84(super, 1);
    } else {
        temp = (Random() & 0xf) + 0x18;
        super->direction = (temp + super->direction) & (0x3 | DirectionNorthWest);
    }
}
