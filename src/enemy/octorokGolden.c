#include "entity.h"
#include "enemy.h"
#include "functions.h"

void (*const gUnk_080CF46C[])(Entity*);
void (*const gUnk_080CF484[])(Entity*);
extern void (*const gUnk_080012C8[])(Entity*);
const s8 gUnk_080CF490[];
const u8 gUnk_080CF498[];

extern u16* GetLayerByIndex(u32);
extern s32 sub_080012DC(Entity*);
extern bool32 sub_080AE4CC(Entity*, u32, u32, u32);
extern u32 sub_0804A044(Entity*, Entity*, u32);

void sub_08037E14(Entity* this);
bool32 sub_08037E90(Entity* this);

void OctorokGolden(Entity* this) {
    u32 index;
    if (sub_080012DC(this)) {
        //! @bug index (r4) is uninitialized
        gUnk_080012C8[index](this);
    } else {
        gUnk_080CF46C[GetNextFunction(this)](this);
        SetChildOffset(this, 0, 1, -0x10);
    }
}

void sub_08037C84(Entity* this) {
    gUnk_080CF484[this->action](this);
}

void sub_08037C9C(Entity* this) {
    if (this->field_0x43 != 0) {
        sub_0804A9FC(this, 0x1c);
    }

    sub_0804AA30(this, gUnk_080CF46C);
}

void sub_08037CC0(Entity* this) {
    if ((this->field_0x3a & 0x2) == 0) {
        SetGlobalFlag(this->type2);
    }

    CreateDeathFx(this, 0xff, 0x58);
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
    if (this->field_0xf) {
        this->field_0xf--;
    } else if (sub_08037E90(this)) {
        return;
    }

    UpdateAnimationVariableFrames(this, 2);
    if (ProcessMovement(this) == 0) {
        sub_08037E14(this);
    } else if (--this->actionDelay == 0) {
        sub_08037E14(this);
    }
}

void sub_08037D54(Entity* this) {
    UpdateAnimationVariableFrames(this, 2);

    if (this->frame & 0x1) {
        this->frame ^= 2;

        if (this->frame & 0x2) {
            Entity* proj = CreateProjectileWithParent(this, ROCK_PROJECTILE, 0);
            if (proj) {
                const s8* ptr;
                s32 dir;
                proj->direction = this->direction;
                ptr = gUnk_080CF490 + (this->direction >> 2);
                proj->x.HALF.HI += *ptr;
                proj->y.HALF.HI += *(ptr + 1);
                proj->z.HALF.HI = 0xfffd;
                EnqueueSFX(SFX_124);
            }
        }
    } else if (this->frame & 0x80) {
        if (--this->actionDelay == 0) {
            this->action = 1;
            this->field_0xf = 0x3c;
            this->animationState |= 0xff;
            sub_08037E14(this);
        } else {
            u32 dir = GetFacingDirection(this, &gPlayerEntity);
            this->direction = (dir + 4) & 0x18;
            this->animationState = this->direction >> 3;
            InitializeAnimation(this, this->animationState + 4);
        }
    }
}

void sub_08037E14(Entity* this) {
    u32 dir;
    u16* pLayer;
    const s8* ptr;
    s32 x, y;
    this->actionDelay = 0x8;
    dir = (GetFacingDirection(this, &gPlayerEntity) + 4) & 0x18;
    pLayer = GetLayerByIndex(this->collisionLayer) + 0x1002;
    ptr = gUnk_080CF498 + (dir >> 2);
    x = this->x.HALF.HI + *ptr;
    y = this->y.HALF.HI + *(ptr + 1);
    if (sub_080AE4CC((Entity*)pLayer, x, y, 0)) {
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
    u32 dir = sub_0804A044(this, &gPlayerEntity, 8);
    if (dir != 0xff) {
        this->action = 2;
        this->actionDelay = 3;
        this->direction = dir;
        this->animationState = dir >> 3;
        InitializeAnimation(this, this->animationState + 4);
        return 1;
    }

    return 0;
}

void (*const gUnk_080CF46C[])(Entity*) = {
    sub_08037C84, sub_08037C9C, sub_08001324, sub_08037CC0, sub_08001242, sub_08037C84,
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
