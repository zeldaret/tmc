/**
 * @file houseSign.c
 * @ingroup Objects
 *
 * @brief HouseSign object
 */
#include "object/houseSign.h"

#include "asm.h"

/*
This object is created by HouseSignManager.
It checks whether the 0x10 x 0x10 rect at field_0x80, field_0x82 is still on the screen.
If not, then it deletes itself and unsets the super->type2 bit in the managers field_0x20 bitfield.
*/
void HouseSign(HouseSignEntity* this) {
    if (super->action == 0) {
        super->action = 1;
    }
    if (CheckRectOnScreen(this->unk_80, this->unk_82, 0x10, 0x10) == 0) {
        super->parent->zVelocity &= ~(1 << super->type2);
        DeleteThisEntity();
    }
}
