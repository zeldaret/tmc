#include "entity.h"
#include "enemy.h"
#include "coord.h"
#include "player.h"
#include "audio.h"

extern void (*const gUnk_0812A9D8[])(Entity*);

extern void (*const gUnk_0812A9EC[])(Entity*);

void sub_080AC954(Entity*);

extern s32 sub_080AF090(Entity*);
extern s32 sub_080A7EB0(Entity*);

void Projectile23(Entity* this) {
    gUnk_0812A9D8[GetNextFunction(this)](this);
}

void sub_080AC8C4(Entity* this) {
    gUnk_0812A9EC[this->action](this);
}

ASM_FUNC("asm/non_matching/projectile23/sub_080AC8DC.inc", void sub_080AC8DC(Entity* this))

void sub_080AC928(Entity* this) {
    this->action = 1;
    this->actionDelay = 0x3c;
    this->collisionLayer = 2;
    UpdateSpriteForCollisionLayer(this);
    InitializeAnimation(this, 0);
    sub_080AC954(this);
}

void sub_080AC954(Entity* this) {
    u32 animationState;

    if (this->parent->next == NULL) {
        DeleteThisEntity();
    }
    animationState = this->parent->animationState;
    PositionRelative(this->parent, this, gSineTable[animationState] * 0x2800,
                     gSineTable[animationState + 0x40] * -0x2800);
    GetNextFrame(this);
    if (--this->actionDelay == 0) {
        this->action = 2;
        this->flags |= 0x80;
        this->direction = GetFacingDirection(this, &gPlayerEntity);
        SoundReq(SFX_12E);
    }
}

void sub_080AC9CC(Entity* this) {
    sub_080AF090(this);
    GetNextFrame(this);
    if (sub_080A7EB0(this) != 0) {
        DeleteThisEntity();
    }
    if (--this->actionDelay == 0) {
        this->action = 3;
        this->flags &= 0x7f;
        this->speed = this->speed >> 1;
        InitializeAnimation(this, 1);
    }
}

void sub_080ACA14(Entity* this) {
    sub_080AF090(this);
    GetNextFrame(this);
    if ((this->frames.all & 0x80) != 0) {
        DeleteThisEntity();
    }
}
