/**
 * @file elementsBackground.c
 * @ingroup Objects
 *
 * @brief Elements Background object
 */
#include "entity.h"
#include "functions.h"
#include "screen.h"

void ElementsBackground_Init(Entity*);
void ElementsBackground_Action1(Entity*);
void sub_080A04E8();

void ElementsBackground(Entity* this) {
    static void (*const ElementsBackground_Actions[])(Entity*) = {
        ElementsBackground_Init,
        ElementsBackground_Action1,
    };

    ElementsBackground_Actions[this->action]((Entity*)this);
}

void ElementsBackground_Init(Entity* this) {
    this->action = 1;
    this->frameIndex = 4;
    this->timer = 0;
    this->spriteRendering.b3 = 3;
    this->spritePriority.b0 = 7;
    this->z.WORD = 0;
    this->spriteRendering.alphaBlend = 1;
    sub_080A04E8();
}

void ElementsBackground_Action1(Entity* this) {
    sub_080A04E8();
}

void sub_080A04E8(Entity* this) {
    int iVar2;
    u32 uVar3;

    iVar2 = (this->parent->z.HALF.HI < 0 ? -this->parent->z.HALF.HI : this->parent->z.HALF.HI) + 0x100;
    SetAffineInfo(this, iVar2, iVar2, 0);
    iVar2 = ((0x1c0 - iVar2) * 10) / iVar2;
    if (this->parent->type == 0x41) {
        uVar3 = iVar2 * 2;
        if (0xc < uVar3) {
            uVar3 = 0xc;
        }
        iVar2 = (0x10 - iVar2) * 0x100;
        iVar2 |= uVar3;
        iVar2 &= 0xffff;
    } else {
        iVar2 |= (0x10 - iVar2) * 0x100;
        iVar2 &= 0xffff;
    }
    gScreen.controls.alphaBlend = iVar2;
}
