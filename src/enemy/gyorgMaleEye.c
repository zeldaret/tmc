/**
 * @file gyorgMaleEye.c
 * @ingroup Enemies
 *
 * @brief GyorgMaleEye enemy
 */
#include "enemy.h"
#include "fade.h"
#include "functions.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[0x10];
    /*0x78*/ u8 unk_78;
} GyorgMaleEyeEntity;

extern void (*const GyorgMaleEye_Functions[])(GyorgMaleEyeEntity*);
extern void (*const GyorgMaleEye_Actions[])(GyorgMaleEyeEntity*);
extern const u8 gUnk_080D2300[];
extern const u8 gUnk_080D2348[];

void sub_08048F50(GyorgMaleEyeEntity*);
void sub_08048F74(GyorgMaleEyeEntity*);

void GyorgMaleEye(GyorgMaleEyeEntity* this) {
    Entity* parent = super->parent;
    if (parent->next == NULL) {
        DeleteThisEntity();
    }
    GyorgMaleEye_Functions[GetNextFunction(super)](this);
    super->spriteOrientation.flipY = parent->spriteOrientation.flipY;
    super->spriteRendering.b3 = parent->spriteRendering.b3;
    super->spritePriority.b0 = parent->spritePriority.b0 - 1;
}

void GyorgMaleEye_OnTick(GyorgMaleEyeEntity* this) {
    GyorgMaleEye_Actions[super->action](this);
}

void GyorgMaleEye_OnCollision(GyorgMaleEyeEntity* this) {
    u32 tmp;
    Entity* entity;

    tmp = 0xff - super->health;
    if (tmp != 0) {
        entity = super->parent;
        if (entity->health > tmp) {
            entity->health -= tmp;
            SoundReq(SFX_BOSS_HIT);
        } else {
            entity->health = 0;
            SoundReq(SFX_BOSS_DIE);
            InitScreenShake(40, 0);
        }
        if (super->iframes > 0) {
            entity->iframes = super->iframes;
            entity = entity->child;
            entity->iframes = super->iframes;
            entity = entity->child;
            entity->iframes = super->iframes;
            entity = entity->child;
            entity->iframes = super->iframes;
        }
        super->health = 0xff;
    }
    EnemyFunctionHandlerAfterCollision(super, GyorgMaleEye_Functions);
}

void GyorgMaleEye_Init(GyorgMaleEyeEntity* this) {
    super->action = 1;
    this->unk_78 = (((super->parent)->animationState & 0xe0) >> 3) + super->type;
    sub_08048F50(this);
    sub_08048F74(this);
}

void GyorgMaleEye_Action1(GyorgMaleEyeEntity* this) {
    sub_08048F50(this);
    GetNextFrame(super);
    if ((super->frame & ANIM_DONE) != 0) {
        super->action = 2;
        super->flags |= 0x80;
        super->timer = 45;
    }
}

void GyorgMaleEye_Action2(GyorgMaleEyeEntity* this) {
    sub_08048F50(this);
    if (--super->timer == 0) {
        super->action = 3;
        super->flags &= ~0x80;
        InitializeAnimation(super, super->animIndex + 4);
    }
}

void GyorgMaleEye_Action3(GyorgMaleEyeEntity* this) {
    sub_08048F50(this);
    GetNextFrame(super);
    if ((super->frame & ANIM_DONE) != 0) {
        DeleteThisEntity();
    }
}

void sub_08048F50(GyorgMaleEyeEntity* this) {
    const s8* ptr = &gUnk_080D2300[this->unk_78 * 2];
    sub_0806FA90(super->parent, super, ptr[0], ptr[1]);
}

void sub_08048F74(GyorgMaleEyeEntity* this) {
    InitializeAnimation(super, gUnk_080D2348[this->unk_78]);
}

void (*const GyorgMaleEye_Functions[])(GyorgMaleEyeEntity*) = {
    GyorgMaleEye_OnTick,
    GyorgMaleEye_OnCollision,
    (void (*)(GyorgMaleEyeEntity*))GenericKnockback,
    (void (*)(GyorgMaleEyeEntity*))GenericDeath,
    (void (*)(GyorgMaleEyeEntity*))GenericConfused,
    GyorgMaleEye_OnTick,
};
void (*const GyorgMaleEye_Actions[])(GyorgMaleEyeEntity*) = {
    GyorgMaleEye_Init,
    GyorgMaleEye_Action1,
    GyorgMaleEye_Action2,
    GyorgMaleEye_Action3,
};
const u8 gUnk_080D2300[] = {
    240, 240, 17, 240, 17, 16, 240, 16, 0,  232, 24, 0,   0,   24, 232, 0,   16, 240, 16, 17, 240, 17, 240, 240, 24,
    0,   0,   24, 232, 0,  0,  232, 16, 16, 239, 16, 239, 240, 16, 240, 0,   24, 232, 0,  0,  232, 24, 0,   240, 16,
    240, 239, 16, 239, 16, 16, 232, 0,  0,  232, 24, 0,   0,   24, 240, 240, 17, 240, 17, 16, 240, 16,
};
const u8 gUnk_080D2348[] = {
    0,  1,  2,  3,  8,  9,  10, 11, 16, 17, 18, 19, 24, 25, 26, 27,
    32, 33, 34, 35, 40, 41, 42, 43, 48, 49, 50, 51, 56, 57, 58, 59,
};
