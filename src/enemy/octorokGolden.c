/**
 * @file octorokGolden.c
 * @ingroup Enemies
 *
 * @brief Golden Octorock enemy
 */
#include "collision.h"
#include "enemy.h"
#include "map.h"
#include "player.h"
#include "item.h"

void (*const OctorokGolden_Functions[])(Entity*);
void (*const gUnk_080CF484[])(Entity*);
const s8 gUnk_080CF490[];
const u8 gUnk_080CF498[];

void sub_08037E14(Entity* this);
bool32 sub_08037E90(Entity* this);
static void sub_08037D54(Entity* this);

void OctorokGolden(Entity* this) {
    u32 index;
    if (sub_080012DC(this)) {
        //! @bug index (r4) is uninitialized
        gUnk_080012C8[index](this);
    } else {
        OctorokGolden_Functions[GetNextFunction(this)](this);
        EnemySetFXOffset(this, 0, 1, -0x10);
    }
}

void OctorokGolden_OnTick(Entity* this) {
    gUnk_080CF484[this->action](this);
}

void OctorokGolden_OnCollision(Entity* this) {
    if (this->confusedTime != 0) {
        EnemyCreateFX(this, FX_STARS);
    }

    EnemyFunctionHandlerAfterCollision(this, OctorokGolden_Functions);
}

void OctorokGolden_OnDeath(Entity* this) {
    if ((this->gustJarState & 0x2) == 0) {
        SetGlobalFlag(this->type2);
    }

    EnemyCreateDeathFX((Enemy*)this, 0xff, ITEM_RUPEE100);
}

void sub_08037CE4(Entity* this) {
    if (CheckGlobalFlag(this->type2)) {
        DeleteThisEntity();
    }

    sub_0804A720(this);
    this->action = 1;
    this->animationState = 0xff;
    sub_08037E14(this);
}

void sub_08037D0C(Entity* this) {
    if (this->subtimer) {
        this->subtimer--;
    } else if (sub_08037E90(this)) {
        return;
    }

    UpdateAnimationVariableFrames(this, 2);
    if (ProcessMovement0(this) == 0) {
        sub_08037E14(this);
    } else if (--this->timer == 0) {
        sub_08037E14(this);
    }
}

static void sub_08037D54(Entity* this) {
    UpdateAnimationVariableFrames(this, 2);

    if (this->frame & 0x1) {
        this->frame ^= 2;

        if (this->frame & 0x2) {
            Entity* proj = EnemyCreateProjectile(this, ROCK_PROJECTILE, 0);
            if (proj) {
                const s8* ptr;
                s32 dir;
                proj->direction = this->direction;
                ptr = gUnk_080CF490 + (this->direction >> 2);
                proj->x.HALF.HI += *ptr;
                proj->y.HALF.HI += *(ptr + 1);
                proj->z.HALF.HI = -3;
                EnqueueSFX(SFX_124);
            }
        }
    } else if (this->frame & ANIM_DONE) {
        if (--this->timer == 0) {
            this->action = 1;
            this->subtimer = 60;
            this->animationState |= 0xff;
            sub_08037E14(this);
        } else {
            u32 dir = GetFacingDirection(this, &gPlayerEntity.base);
            this->direction = (dir + 4) & 0x18;
            this->animationState = this->direction >> 3;
            InitializeAnimation(this, this->animationState + 4);
        }
    }
}

void sub_08037E14(Entity* this) {
    u32 dir;
    u8* collisionData;
    const s8* ptr;
    s32 x, y;
    this->timer = 8;
    dir = (GetFacingDirection(this, &gPlayerEntity.base) + 4) & 0x18;
    collisionData = GetLayerByIndex(this->collisionLayer)->collisionData;
    ptr = gUnk_080CF498 + (dir >> 2);
    x = this->x.HALF.HI + *ptr;
    y = this->y.HALF.HI + *(ptr + 1);
    if (IsTileCollision(collisionData, x, y, 0)) {
        this->direction = Random() & 0x18;
    } else {
        this->direction = dir;
    }

    dir = this->direction >> 3;
    if ((dir) != this->animationState) {
        this->animationState = dir;
        InitializeAnimation(this, dir);
    }
}

bool32 sub_08037E90(Entity* this) {
    u32 dir = sub_0804A044(this, &gPlayerEntity.base, 8);
    if (dir != 0xff) {
        this->action = 2;
        this->timer = 3;
        this->direction = dir;
        this->animationState = dir >> 3;
        InitializeAnimation(this, this->animationState + 4);
        return 1;
    }

    return 0;
}

void (*const OctorokGolden_Functions[])(Entity*) = {
    OctorokGolden_OnTick,  OctorokGolden_OnCollision, GenericKnockback,
    OctorokGolden_OnDeath, GenericConfused,           OctorokGolden_OnTick,
};

void (*const gUnk_080CF484[])(Entity*) = {
    sub_08037CE4,
    sub_08037D0C,
    sub_08037D54,
};

const s8 gUnk_080CF490[] = {
    0, -3, 4, 0, 0, 2, -4, 0,
};

const u8 gUnk_080CF498[] = {
    0, -12, 12, 0, 0, 12, -12, 0,
};
