#include "entity.h"
#include "enemy.h"

extern void (*const gUnk_08129650[])(Entity*);

extern void (*const gUnk_08129664[])(Entity*);

extern bool32 AllocMutableHitbox(Entity*);

typedef struct {
    u8 offsetX;
    u8 offsetY;
    u8 width;
    u8 height;
} Test;

extern Test gUnk_0812966C[];

void Projectile3(Entity* this) {
    gUnk_08129650[GetNextFunction(this)](this);
}

void sub_080A8314(Entity* this) {
    gUnk_08129664[this->action](this);
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

void sub_080A83A0(Entity* this) {
    if (AllocMutableHitbox(this) != 0) {
        this->action = 1;
    }
}

NONMATCH("asm/non_matching/projectile3/sub_080A83B4.inc", void sub_080A83B4(Entity* this)) {
    u8 frames;
    Entity* parent;
    u32 tmp;
    Test* a;

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
    // TODO offset used to increate a pointer is already increated here?
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
