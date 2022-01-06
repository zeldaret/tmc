#include "entity.h"
#include "enemy.h"

extern s32 sub_080AF090(Entity*);
extern s32 IsProjectileOffScreen(Entity*);

extern void (*const V3TennisBallProjectile_Functions[])(Entity*);
extern void (*const V3TennisBallProjectile_Actions[])(Entity*);

void sub_080ACB90(Entity*);
bool32 sub_080ACB40(Entity* this);

void V3TennisBallProjectile(Entity* this) {
    V3TennisBallProjectile_Functions[GetNextFunction(this)](this);
}

void V3TennisBallProjectile_OnTick(Entity* this) {
    V3TennisBallProjectile_Actions[this->action](this);
}

void sub_080ACA68(Entity* this) {
    switch (this->bitfield & 0x7f) {
        case 0x1a:
        case 0xa:
        case 0xb:
        case 0xc:
        case 0x6: {
            this->action = 2;
            this->flags &= 0x7f;
            this->speed += 0x80 * 2;
            this->child = this->field_0x4c;
            if (sub_080ACB40(this)) {
                this->direction = 0;
            } else {
                this->direction = this->knockbackDirection;
            }

            SoundReq(SFX_ITEM_SWORD_CHARGE_FINISH);
            break;
        }
        default: {
            DeleteThisEntity();
            break;
        }
    }
}

void V3TennisBallProjectile_Init(Entity* this) {
    this->action = 1;
    this->direction = 0x10;
    this->z.HALF.HI = 0xfffc;
    this->child = NULL;
    InitializeAnimation(this, 7);
    SoundReq(SFX_199);
}

void V3TennisBallProjectile_Action1(Entity* this) {
    sub_080AF090(this);
    GetNextFrame(this);
    if (IsProjectileOffScreen(this) != 0) {
        DeleteThisEntity();
    }
}

void V3TennisBallProjectile_Action2(Entity* this) {
    sub_080AF090(this);
    if (this->collisions != 0) {
        DeleteThisEntity();
    }
    GetNextFrame(this);
    sub_080ACB90(this);
    if (IsProjectileOffScreen(this) != 0) {
        DeleteThisEntity();
    }
}

bool32 sub_080ACB40(Entity* this) {
    Entity* r1_grandparent = this->parent->parent;
    Entity* child = this->child;
    Entity* tmp = ((Entity*)(r1_grandparent->myHeap[7]))->child;

    if (tmp != this && child == tmp->child) {
        return 0;
    }

    tmp = ((Entity*)(r1_grandparent->myHeap[8]))->child;

    if (tmp != this && child == tmp->child) {
        return 0;
    }

    tmp = ((Entity*)(r1_grandparent->myHeap[9]))->child;

    if (tmp != this && child == tmp->child) {
        return 0;
    }

    tmp = ((Entity*)(r1_grandparent->myHeap[10]))->child;

    if (tmp != this && child == tmp->child) {
        return 0;
    }

    return 1;
}

void sub_080ACB90(Entity* this) {
    Entity* parent = this->parent;
    if ((this->x.HALF.HI == parent->x.HALF.HI) && (this->y.HALF.HI <= parent->y.HALF.HI)) {
        parent->field_0xf = 1;
        CreateFx(this, FX_REFLECT2, 0x40);
        EnqueueSFX(SFX_ITEM_GLOVES_KNOCKBACK);
        DeleteThisEntity();
    }
}

void (*const V3TennisBallProjectile_Functions[])(Entity*) = {
    V3TennisBallProjectile_OnTick, sub_080ACA68, DeleteEntity, DeleteEntity, DeleteEntity,
    V3TennisBallProjectile_OnTick,
};
void (*const V3TennisBallProjectile_Actions[])(Entity*) = {
    V3TennisBallProjectile_Init,
    V3TennisBallProjectile_Action1,
    V3TennisBallProjectile_Action2,
};
