/**
 * @file v1EyeLaser.c
 * @ingroup Projectiles
 *
 * @brief V1 Eye Laser Projectile
 */
#include "entity.h"
#include "functions.h"
#include "projectile.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[12];
    /*0x74*/ u32 unk_74;
} V1EyeLaserEntity;

extern void (*const V1EyeLaser_Actions[])(V1EyeLaserEntity*);
extern const Hitbox* const gUnk_0812A5F4[];
extern const Hitbox gUnk_0812A614;
extern const Hitbox gUnk_0812A61C;

void sub_080AB758(Entity*);
void sub_080AB888(Entity*);
void sub_080AB844(Entity* this, s32 param_1, s32 param_2);

void V1EyeLaser(V1EyeLaserEntity* this) {
    if (super->parent->spriteSettings.draw == 0) {
        DeleteThisEntity();
    }
    V1EyeLaser_Actions[super->action](this);
}

void V1EyeLaser_Init(V1EyeLaserEntity* this) {
    this->unk_74 = super->parent->x.WORD;
    if (super->type == 0) {
        super->action = 1;
        COLLISION_OFF(super);
        super->hitbox = (Hitbox*)&gUnk_0812A614;
        InitializeAnimation(super, 0);
    } else {
        super->action = 2;
        super->subtimer = 4;
        InitializeAnimation(super, super->timer);
    }
}

void V1EyeLaser_Action1(V1EyeLaserEntity* this) {
    GetNextFrame(super);
    if ((super->frame & ANIM_DONE) != 0) {
        super->action = 2;
        InitializeAnimation(super, 1);
        sub_080AB758(super);
    }
}

void V1EyeLaser_Action2(V1EyeLaserEntity* this) {
    GetNextFrame(super);
    super->x.WORD += (super->parent->x.WORD - this->unk_74);
    this->unk_74 = super->parent->x.WORD;
    sub_080AB888(super);
    if (super->parent->subtimer == 0) {
        DeleteThisEntity();
    }
}

void sub_080AB758(Entity* this) {
    s32 r6 = 6;
    u32 r7 = 0;
    u32 index = 0;
    u32 tmp = this->y.HALF.HI + r7 + (index << 3);
    for (; tmp <= (u16)(gRoomControls.origin_y + 0xd4);
         index = (index + 1) & 7, tmp = this->y.HALF.HI + r7 + (index << 3)) {
        if ((index & 7) == 7) {
            sub_080AB844(this, 4, r6);
            r6 += 0x3e;
            r7 += 0x3e;
        }
    }

    index = 0;
    tmp = this->y.HALF.HI + r7 + (index << 3);
    for (; tmp <= (u16)(gRoomControls.origin_y + 0xd4);
         index = (index + 1) & 3, tmp = this->y.HALF.HI + r7 + (index << 3)) {
        if ((index & 3) == 3) {
            sub_080AB844(this, 3, r6);
            r6 += 0x1e;
            r7 += 0x1e;
        }
    }

    if (index & 0x2) {
        sub_080AB844(this, 2, r6);
        r6 += 0xe;
    } else if (index & 0x1) {
        sub_080AB844(this, 1, r6);
        r6 += 0x6;
    }

    sub_080AB844(this, 6, r6);
}

void sub_080AB844(Entity* this, s32 param_1, s32 param_2) {
    Entity* entity;

    entity = CreateProjectile(V1_EYE_LASER);
    if (entity != NULL) {
        entity->type = 1;
        entity->timer = param_1;
        entity->parent = this->parent;
        PositionRelative(this, entity, 0, Q_16_16(param_2));
        if (param_1 != 1) {
            entity->hitbox = (Hitbox*)&gUnk_0812A61C;
        } else {
            entity->hitbox = (Hitbox*)&gUnk_0812A614;
        }
    }
}

void sub_080AB888(Entity* this) {
    s32 index;

    this->subtimer--;
    index = 0;

    switch (this->timer) {
        case 3:
            index = 1;
        case 4:
            this->hitbox = (Hitbox*)gUnk_0812A5F4[this->subtimer * 2 + index];
            break;
        case 0:
        case 1:
        case 2:
        default:
            break;
    }

    if (this->subtimer == 0) {
        this->subtimer = 4;
    }
}

void (*const V1EyeLaser_Actions[])(V1EyeLaserEntity*) = {
    V1EyeLaser_Init,
    V1EyeLaser_Action1,
    V1EyeLaser_Action2,
};

extern const Hitbox gUnk_0812A624;
extern const Hitbox gUnk_0812A62C;
extern const Hitbox gUnk_0812A634;

const Hitbox* const gUnk_0812A5F4[] = {
    &gUnk_0812A61C, &gUnk_0812A61C, &gUnk_0812A624, &gUnk_0812A61C,
    &gUnk_0812A62C, &gUnk_0812A624, &gUnk_0812A634, &gUnk_0812A624,
};

const Hitbox gUnk_0812A614 = { 0, 4, { 0, 0, 0, 0 }, 1, 3 };
const Hitbox gUnk_0812A61C = { 0, 8, { 0, 0, 0, 0 }, 1, 6 };
const Hitbox gUnk_0812A624 = { 0, 24, { 0, 0, 0, 0 }, 1, 6 };
const Hitbox gUnk_0812A62C = { 0, 40, { 0, 0, 0, 0 }, 1, 6 };
const Hitbox gUnk_0812A634 = { 0, 56, { 0, 0, 0, 0 }, 1, 6 };
