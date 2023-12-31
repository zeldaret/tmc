/**
 * @file parallaxRoomView.c
 * @ingroup Objects
 *
 * @brief Parallax Room View object
 */
#include "entity.h"
#include "room.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u16 unk_68;
    /*0x6a*/ u16 unk_6a;
} ParallaxRoomViewEntity;

void ParallaxRoomView(ParallaxRoomViewEntity* this) {
    s32 iVar1;
    s32 diffY;
    s32 diffX;
    s32 iVar4;
    s32 temp;

    if (super->action == 0) {
        super->action = 1;
        super->spriteSettings.draw = 3;
        super->frameIndex = super->type2;
        super->spriteOrientation.flipY = 3;
        super->spriteRendering.b3 = 3;
        if (super->type == 3) {
            super->spritePriority.b0 = 6;
        } else {
            super->spritePriority.b0 = 7;
        }
        this->unk_68 = super->x.HALF.HI;
        this->unk_6a = super->y.HALF.HI;
        SetEntityPriority(super, 6);
    }
    if ((super->flags & 0x10) == 0) {
        iVar4 = super->x.HALF.HI - gRoomControls.scroll_x;
        diffX = iVar4 - 0x78;
        iVar1 = super->y.HALF.HI - gRoomControls.scroll_y;
        diffY = iVar1 - 0x50;
        if (diffX < 0) {
            temp = (iVar4 - 0x75);
        } else {
            temp = diffX;
        }
        diffX = temp >> 2;

        if (diffY < 0) {
            temp = iVar1 - 0x4d;
        } else {
            temp = diffY;
        }
        diffY = temp >> 2;

        if (diffX < -0x10) {
            diffX = -0x10;
        }
        if (diffX > 0x10) {
            diffX = 0x10;
        }

        if (diffY < -0x10) {
            diffY = -0x10;
        }
        if (diffY > 0x10) {
            diffY = 0x10;
        }

        super->x.HALF.HI = this->unk_68 + diffX;
        super->y.HALF.HI = this->unk_6a + diffY;
    }
}
