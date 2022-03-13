#include "entity.h"
#include "room.h"

void Object28(Entity* this) {
    int iVar1;
    int diffY;
    int diffX;
    int iVar4;
    int temp;

    if (this->action == 0) {
        this->action = 1;
        this->spriteSettings.draw = 3;
        this->frameIndex = this->type2;
        this->spriteOrientation.flipY = 3;
        this->spriteRendering.b3 = 3;
        if (this->type == 3) {
            this->spritePriority.b0 = 6;
        } else {
            this->spritePriority.b0 = 7;
        }
        this->field_0x68.HWORD = this->x.HALF.HI;
        this->field_0x6a.HWORD = this->y.HALF.HI;
        SetDefaultPriority(this, 6);
    }
    if ((this->flags & 0x10) == 0) {
        iVar4 = (int)this->x.HALF.HI - (int)gRoomControls.scroll_x;
        diffX = iVar4 - 0x78;
        iVar1 = (int)this->y.HALF.HI - (int)gRoomControls.scroll_y;
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
        if (0x10 < diffX) {
            diffX = 0x10;
        }

        if (diffY < -0x10) {
            diffY = -0x10;
        }
        if (0x10 < diffY) {
            diffY = 0x10;
        }

        this->x.HALF.HI = this->field_0x68.HWORD + diffX;
        this->y.HALF.HI = this->field_0x6a.HWORD + diffY;
    }
}
