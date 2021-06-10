#include "entity.h"
#include "player.h"
#include "coord.h"

void sub_080A7F80(Entity*);
void sub_080A7F9C(Entity*);

extern u8 gUnk_081293B8[];

extern void (*const gUnk_081293CC[])(Entity*);

extern Hitbox** gUnk_081293E0[];

extern Hitbox* gUnk_081293F0[];

extern Hitbox* gUnk_08129400[];
extern Hitbox* gUnk_08129410[];

extern Hitbox* gUnk_08129420[];

void Projectile0(Entity* this) {
    if (this->action == 0) {
        this->action = 1;
        sub_080A7F80(this);
        if (this->type == 3) {
            InitAnimationForceUpdate(this, this->parent->animationState + 0x18);
        }
    }
    if ((this->parent == NULL) || (this->parent->currentHealth == 0)) {
        DeleteThisEntity();
    }
    if (((this->bitfield & 0x80) != 0) && (this->field_0x4c == &gPlayerEntity)) {
        this->iframes = -0x2d;
    }
    this->bitfield = 0;
    CopyPositionAndSpriteOffset(this->parent, this);
    sub_080A7F9C(this);
    if (this->type == 3) {
        this->y.HALF.HI += 1;
        UpdateAnimationSingleFrame(this);
    }
}

void sub_080A7F80(Entity* this) {
    this->damageType = gUnk_081293B8[this->parent->type + this->type * 4];
}

void sub_080A7F9C(Entity* this) {
    gUnk_081293CC[this->type](this);
}

void sub_080A7FB4(Entity* this) {
    Entity* parent = this->parent;
    this->hitbox = gUnk_081293E0[parent->animationState][(parent->frames.all & 0xf) - 1];
}

void sub_080A7FD8(Entity* this) {
    Entity* parent = this->parent;
    this->hitbox = gUnk_081293F0[parent->animationState];
}

void sub_080A7FEC(Entity* this) {
    if ((this->parent->frames.all & 0x10) != 0) {
        this->hitbox = gUnk_08129410[this->parent->animationState];
    } else {
        this->hitbox = gUnk_08129400[this->parent->animationState];
    }
}

void sub_080A801C(Entity* this) {
    Entity* parent = this->parent;
    this->hitbox = gUnk_08129420[parent->animationState];
}
