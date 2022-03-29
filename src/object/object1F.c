#define NENT_DEPRECATED
#include "entity.h"
#include "player.h"
#include "functions.h"
#include "asm.h"
#include "effects.h"

typedef struct {
    Entity base;
    u8 filler[0x4];
    u32 unk6c;
} Object1FEntity;

void Object1F_Init(Object1FEntity*);
void Object1F_Action1(Object1FEntity*);
void Object1F_Action2(Object1FEntity*);

void Object1F(Entity* this) {
    static void (*const actionFuncs[])(Object1FEntity*) = {
        Object1F_Init,
        Object1F_Action1,
        Object1F_Action2,
    };

    actionFuncs[this->action]((Object1FEntity*)this);
}

typedef struct {
    u8 animationState;
    u8 unk1;
    u8 unk2;
    u8 spriteVramOffset;
} gUnk_08120A18_struct;

void Object1F_Init(Object1FEntity* this) {
    static const gUnk_08120A18_struct gUnk_08120A18[] = {
        { 0x0, 0x2, 0xA, 0xE8 },
        { 0x0, 0x5, 0x20, 0xE0 },
    };
    static const s8 gUnk_08120A20[] = { 0, -18, 16, 0, 0, 12, -16, 0 };

    u32 temp;
    super->action = 1;
    super->zVelocity = 0x2c000;
    super->direction = super->animationState << 2 ^ 0x10;
    if (super->animationState == 0) {
        super->spritePriority.b0--;
    }
    super->x.HALF.HI = gUnk_08120A20[super->animationState] + super->x.HALF.HI;
    super->y.HALF.HI = gUnk_08120A20[super->animationState + 1] + super->y.HALF.HI;

    super->spriteVramOffset = gUnk_08120A18[super->subtimer].spriteVramOffset;
    temp = gUnk_08120A18[super->subtimer].unk1;
    super->palette.b.b0 = temp;
    this->unk6c = gUnk_08120A18[super->subtimer].unk2;
    super->collisionLayer = gPlayerEntity.collisionLayer;
    super->speed = 0x100;
    InitializeAnimation(super, gUnk_08120A18[super->subtimer].animationState);
}

void Object1F_Action1(Object1FEntity* this) {
    u32 uVar1;

    if (this->unk6c) {
        this->unk6c--;
        uVar1 = gPlayerState.field_0x3c[1];
    } else {
        ProcessMovement2(super);
        uVar1 = GravityUpdate(super, 0x2800);
    }

    if (uVar1 == 0) {
        super->action = 2;
    }
}

void Object1F_Action2(Object1FEntity* this) {
    u8 bVar1;

    bVar1 = sub_080B1B0C(super);
    switch (bVar1) {
        case 0x21:
            CreateFx(super, FX_FALL_DOWN, 0);
            break;
        case 0x25:
            CreateFx(super, FX_LAVA_SPLASH, 0);
            break;
        case 0x24:
        case 0x30:
            CreateFx(super, FX_WATER_SPLASH, 0);
            break;
        default:
            if (super->type2 != 0) {
                if (super->type2 == 15) {
                    CreateFx(super, super->timer, 0x80);
                } else {
                    CreateObjectWithParent(super, super->type2, super->timer, 0);
                }
            }
    }
    DeleteThisEntity();
}
