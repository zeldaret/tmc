/**
 * @file object1E.c
 * @ingroup Objects
 *
 * @brief Object1E object
 */

#define NENT_DEPRECATED
#include "global.h"
#include "object.h"
#include "functions.h"
#include "area.h"


void sub_08087528(Entity*);
void sub_080875F4(Entity*);
void sub_08087640(Entity*);

void Object1E(Entity* this) {
    static void (*const gUnk_081208B8[])(Entity*) = {sub_08087528, sub_080875F4, };
    if (!EntityIsDeleted(this)) {
        gUnk_081208B8[this->action](this);
    }
}

NONMATCH("asm/non_matching/object1E/sub_08087528.inc", void sub_08087528(Entity* this)) {
    u32 palette;

    this->action = 1;
    this->animationState = gPlayerEntity.animationState >> 1;
    this->spriteRendering.b3 = 2;
    this->spritePriority.b0 = 3;
    this->spriteOrientation.flipY--;
    if (this->type2 != 0) {
        this->palette.b.b0 = 1;
        if (this->animationState == 1) {
            this->spriteSettings.flipX = 1;
        }
        sub_08087640(this);
    } else {
        if (gArea.locationIndex == 0x10) {
            palette = 0x16a;
        } else {
            palette = 4;
        }
        ChangeObjPalette(this, palette);
        switch (this->animationState) {
            case 1:
                this->spriteSettings.flipX = 1;
                if (this->type == 0x40) {
                    this->y.HALF.HI += 4;
                }
                break;
            case 3:
                if (this->type == 0x40) {
                    this->y.HALF.HI += 4;
                }
                break;
            default:
                if (this->type == 0x40) {
                    this->spriteSettings.flipX = 1;
                }
            break;
        }
    }
    SetDefaultPriority(this, 3);
    InitializeAnimation(this, this->type2 * 4 + this->animationState);
}
END_NONMATCH

void sub_080875F4(Entity* this) {
    GetNextFrame(this);
    if ((this->frame & 0x80) != 0) {
        DeleteThisEntity();
    }
    if (this->type2 != 0) {
        this->spritePriority.b0 =gPlayerEntity.spritePriority.b0 + 1 - this->frame;
    }
}

void sub_08087640(Entity* this) {
    static const s8 gUnk_081208C0[] = { 0, -12, 16, 0, 0, 15, -16, 0 };
    s32 oldX;
    s32 oldY;
    u32 tmp;
    const s8* ptr;

    oldX = this->x.HALF.HI;
    oldY = this->y.HALF.HI;
    ptr = &gUnk_081208C0[this->animationState * 2];
    this->x.HALF.HI += ptr[0];
    this->y.HALF.HI += ptr[1];
    if (gRoomControls.area == 3 && gRoomControls.room == 4) {
#ifdef EU
        tmp = 0x18;
    } else {
        tmp = 0x17;
#else
        tmp = 0x17;
    } else {
        tmp = 0x16;
#endif
    }
    CreateRandomItemDrop(this, tmp);
    this->x.HALF.HI = oldX;
    this->y.HALF.HI = oldY;
}
