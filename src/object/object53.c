/**
 * @file object53.c
 * @ingroup Objects
 *
 * @brief Object53 object
 */
#include "asm.h"
#include "entity.h"
#include "functions.h"

void Object53_Init(Entity*);
void Object53_Action1(Entity*);

void Object53(Entity* this) {
    static void (*const Object53_Actions[])(Entity*) = {
        Object53_Init,
        Object53_Action1,
    };

    Object53_Actions[this->action]((Entity*)this);
}

typedef struct {
    u8 animationState;
    u8 palette;
    u8 spriteVramOffset;
    u8 spriteIndex;
} gUnk_08122288_struct;

void Object53_Init(Entity* this) {
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
    SnapToTile(this);
}

void Object53_Action1(Entity* this) {
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
