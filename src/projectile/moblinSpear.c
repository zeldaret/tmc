#include "entity.h"
#include "enemy.h"

extern bool32 AllocMutableHitbox(Entity*);
typedef struct {
    s8 offsetX;
    s8 offsetY;
    u8 width;
    u8 height;
} HitboxChange;

extern void (*const MoblinSpear_Functions[])(Entity*);
extern void (*const MoblinSpear_Actions[])(Entity*);

extern const HitboxChange gUnk_0812966C[];

void MoblinSpear(Entity* this) {
    MoblinSpear_Functions[GetNextFunction(this)](this);
}

void MoblinSpear_OnTick(Entity* this) {
    MoblinSpear_Actions[this->action](this);
}

void sub_080A832C(Entity* this) {
    u8 tmp;

    if (this->bitfield == 0x80) {
        this->iframes = 0x10;
        this->field_0x42 = 0xc;
        this->field_0x46 = 0x180;
        this->parent->bitfield = this->bitfield;
    }
    tmp = this->iframes;
    if ((tmp & 0x80) != 0) {
        this->parent->iframes = tmp;
    } else {
        this->parent->iframes = -tmp;
    }
    this->parent->field_0x42 = this->field_0x42;
    this->parent->field_0x46 = this->field_0x46;
    this->parent->field_0x3e = this->field_0x3e;
    this->field_0x42 = 0;
}

void MoblinSpear_Init(Entity* this) {
    if (AllocMutableHitbox(this) != 0) {
        this->action = 1;
    }
}

NONMATCH("asm/non_matching/moblinSpear/MoblinSpear_Action1.inc", void MoblinSpear_Action1(Entity* this)) {
    u8 frames;
    Entity* parent;
    u32 tmp;
    const HitboxChange* a;

    parent = this->parent;
    if (parent == NULL) {
        DeleteThisEntity();
    }
    if (parent->next == NULL) {
        DeleteThisEntity();
    }
    frames = parent->frames.all * 4;
    a = &gUnk_0812966C[frames / 4];
    this->hitbox->offset_x = a->offsetX;
    // TODO offset used to increase a pointer is already increated here?
    if (parent->frameSpriteSettings == 0x40) {
        this->hitbox->offset_x = -this->hitbox->offset_x;
    }
    this->hitbox->offset_y = a->offsetY;
    this->hitbox->width = a->width;
    this->hitbox->height = a->height;
    if (parent->field_0x43 != 0) {
        if ((this->flags & 0x80) != 0) {
            this->flags &= 0x7f;
        }
    } else {
        if ((this->flags & 0x80) == 0) {
            this->flags |= 0x80;
        }
    }
}
END_NONMATCH

void (*const MoblinSpear_Functions[])(Entity*) = {
    MoblinSpear_OnTick, sub_080A832C, DeleteEntity, DeleteEntity, DeleteEntity,
};
void (*const MoblinSpear_Actions[])(Entity*) = {
    MoblinSpear_Init,
    MoblinSpear_Action1,
};

const HitboxChange gUnk_0812966C[] = {
    { 6, 11, 2, 4 },   { -12, 2, 3, 3 },   { -13, -15, 1, 2 }, { 5, 12, 1, 3 },    { 7, 10, 1, 2 },   { 8, 9, 1, 3 },
    { 7, 10, 1, 2 },   { -22, 1, 4, 2 },   { -12, 1, 3, 2 },   { -6, 2, 4, 2 },    { -12, 1, 3, 2 },  { -1, -19, 1, 1 },
    { -4, -19, 1, 1 }, { -4, -20, 1, 1 },  { -4, -19, 1, 1 },  { 6, 9, 1, 2 },     { 6, 10, 1, 2 },   { 6, 9, 1, 2 },
    { 6, 10, 1, 2 },   { -29, -11, 3, 2 }, { -29, -9, 3, 2 },  { -29, -11, 3, 2 }, { -29, -9, 3, 2 }, { -5, -25, 1, 2 },
    { -5, -24, 1, 2 }, { -5, -25, 1, 2 },  { -5, -24, 1, 2 },  { 7, 12, 1, 2 },    { 7, 11, 1, 2 },   { -12, 3, 3, 1 },
    { -12, 2, 3, 1 },  { -13, -16, 1, 2 }, { -13, -15, 1, 2 },
};
