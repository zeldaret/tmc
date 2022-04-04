#define NENT_DEPRECATED
#include "entity.h"
#include "functions.h"
#include "asm.h"

void sub_08091120(Entity*);
void sub_08091198(Entity*);

void Object53(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_08091120,
        sub_08091198,
    };

    actionFuncs[this->action]((Entity*)this);
}

typedef struct {
    u8 animationState;
    u8 palette;
    u8 spriteVramOffset;
    u8 spriteIndex;
} gUnk_08122288_struct;

void sub_08091120(Entity* this) {
    static const gUnk_08122288_struct gUnk_08122288[] = { { 0x0, 0x2, 0xe8, 0xa7 },
                                                          { 0x0, 0x5, 0xe0, 0xa7 },
                                                          { 0x0, 0x5, 0xf2, 0xa7 } };
    u32 temp;
    this->action++;
    this->spriteVramOffset = gUnk_08122288[this->type].spriteVramOffset;
    temp = gUnk_08122288[this->type].palette;
    this->palette.b.b0 = temp;
    this->spriteIndex = gUnk_08122288[this->type].spriteIndex;
    this->spriteSettings.draw = 1;
    this->spriteRendering.b3 = 2;
    this->zVelocity = Q_16_16(2.625);
    InitializeAnimation(this, gUnk_08122288[this->type].animationState);
    sub_08004168(this);
}

void sub_08091198(Entity* this) {
    if (this->zVelocity < 0) {
        this->spriteSettings.flipY = 1;
    }

    if (GravityUpdate(this, Q_8_8(32.0))) {
        return;
    }

    switch ((u8)this->type2) {
        case 0:
        case 0xff:
            break;
        case 0xf:
            CreateFx(this, this->timer, 0x80);
            break;
        default:
            CreateObjectWithParent(this, this->type2, this->timer, 0);
            break;
    }

    DeleteThisEntity();
}
