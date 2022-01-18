#include "entity.h"
#include "functions.h"
#include "projectile.h"

extern void (*const V1EyeLaser_Actions[])(Entity*);
extern const Hitbox* const gUnk_0812A5F4[];
extern const Hitbox gUnk_0812A614;
extern const Hitbox gUnk_0812A61C;

void sub_080AB758(Entity*);
void sub_080AB888(Entity*);
void sub_080AB844(Entity* this, s32 param_1, s32 param_2);

void V1EyeLaser(Entity* this) {
    if (this->parent->spriteSettings.draw == 0) {
        DeleteThisEntity();
    }
    V1EyeLaser_Actions[this->action](this);
}

void V1EyeLaser_Init(Entity* this) {
    *(u32*)&this->field_0x74 = this->parent->x.WORD;
    if (this->type == 0) {
        this->action = 1;
        COLLISION_OFF(this);
        this->hitbox = (Hitbox*)&gUnk_0812A614;
        InitializeAnimation(this, 0);
    } else {
        this->action = 2;
        this->field_0xf = 4;
        InitializeAnimation(this, this->actionDelay);
    }
}

void V1EyeLaser_Action1(Entity* this) {
    GetNextFrame(this);
    if ((this->frame & 0x80) != 0) {
        this->action = 2;
        InitializeAnimation(this, 1);
        sub_080AB758(this);
    }
}

void V1EyeLaser_Action2(Entity* this) {
    GetNextFrame(this);
    this->x.WORD += (this->parent->x.WORD - *(u32*)&this->field_0x74);
    *(u32*)&this->field_0x74 = this->parent->x.WORD;
    sub_080AB888(this);
    if (this->parent->field_0xf == 0) {
        DeleteThisEntity();
    }
}

NONMATCH("asm/non_matching/v1EyeLaser/sub_080AB758.inc", void sub_080AB758(Entity* this)) {
    s32 r6 = 6;
    u32 r7 = 0;
    u32 index = 0;
    if (((u32)this->y.HALF.HI) <= (u16)(gRoomControls.origin_y + 0xd4)) {
        u32 tmp = 7;
        do {
            if ((index & tmp) == 7) {
                sub_080AB844(this, 4, r6);
                r6 += 0x3e;
                r7 += 0x3e;
            }
            index = (index + 1) & tmp;
        } while (this->y.HALF.HI + r7 + (index << 3) <= (u16)(gRoomControls.origin_y + 0xd4));
    }
    index = 0;
    if (this->y.HALF.HI + r7 <= (u16)(gRoomControls.origin_y + 0xd4)) {
        u32 tmp = 3;
        do {
            if ((index & tmp) == 3) {
                sub_080AB844(this, 3, r6);
                r6 += 0x1e;
                r7 += 0x1e;
            }
            index = (index + 1) & tmp;
        } while (this->y.HALF.HI + r7 + (index << 3) <= (u16)(gRoomControls.origin_y + 0xd4));
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
END_NONMATCH

void sub_080AB844(Entity* this, s32 param_1, s32 param_2) {
    Entity* entity;

    entity = CreateProjectile(0x1c);
    if (entity != NULL) {
        entity->type = 1;
        entity->actionDelay = param_1;
        entity->parent = this->parent;
        PositionRelative(this, entity, 0, param_2 << 0x10);
        if (param_1 != 1) {
            entity->hitbox = (Hitbox*)&gUnk_0812A61C;
        } else {
            entity->hitbox = (Hitbox*)&gUnk_0812A614;
        }
    }
}

void sub_080AB888(Entity* this) {
    s32 index;

    this->field_0xf -= 1;
    index = 0;

    switch (this->actionDelay) {
        case 3:
            index = 1;
        case 4:
            this->hitbox = (Hitbox*)gUnk_0812A5F4[this->field_0xf * 2 + index];
            break;
        case 0:
        case 1:
        case 2:
        default:
            break;
    }

    if (this->field_0xf == 0) {
        this->field_0xf = 4;
    }
}

void (*const V1EyeLaser_Actions[])(Entity*) = {
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
