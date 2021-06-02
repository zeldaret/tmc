#include "entity.h"
#include "enemy.h"
#include "audio.h"
#include "functions.h"

extern void (*const gUnk_0812AA5C[])(Entity*);

extern void (*const gUnk_0812AA74[])(Entity*);

extern s32 sub_080AF090(Entity*);
extern s32 sub_080A7EB0(Entity*);

void sub_080ACB90(Entity*);

void Projectile24(Entity* this) {
    gUnk_0812AA5C[GetNextFunction(this)](this);
}

void sub_080ACA50(Entity* this) {
    gUnk_0812AA74[this->action](this);
}

ASM_FUNC("asm/non_matching/projectile24/sub_080ACA68.inc", void sub_080ACA68(Entity* this))

void sub_080ACAC8(Entity* this) {
    this->action = 1;
    this->direction = 0x10;
    this->height.HALF.HI = 0xfffc;
    this->attachedEntity = NULL;
    InitializeAnimation(this, 7);
    SoundReq(SFX_199);
}

void sub_080ACAF0(Entity* this) {
    sub_080AF090(this);
    GetNextFrame(this);
    if (sub_080A7EB0(this) != 0) {
        DeleteThisEntity();
    }
}

void sub_080ACB10(Entity* this) {
    sub_080AF090(this);
    if (this->collisions != 0) {
        DeleteThisEntity();
    }
    GetNextFrame(this);
    sub_080ACB90(this);
    if (sub_080A7EB0(this) != 0) {
        DeleteThisEntity();
    }
}

ASM_FUNC("asm/non_matching/projectile24/sub_080ACB40.inc", void sub_080ACB40(Entity* this))

void sub_080ACB90(Entity* this) {
    Entity* parent;

    parent = this->parent;
    if ((this->x.HALF.HI == parent->x.HALF.HI) && (this->y.HALF.HI <= parent->y.HALF.HI)) {
        parent->field_0xf = 1;
        CreateFx(this, 0x1f, 0x40);
        EnqueueSFX(SFX_ITEM_GLOVES_KNOCKBACK);
        DeleteThisEntity();
    }
}
