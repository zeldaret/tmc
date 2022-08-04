/**
 * @file houseSign.c
 * @ingroup Objects
 *
 * @brief HouseSign object
 */
#include "entity.h"
#include "asm.h"

/*
This object is created by HouseSignManager.
It checks whether the 0x10 x 0x10 rect at field_0x80, field_0x82 is still on the screen.
If not, then it deletes itself and unsets the this->type2 bit in the managers field_0x20 bitfield.
*/
void HouseSign(Entity* this) {
    if (this->action == 0) {
        this->action = 1;
    }
    if (CheckRectOnScreen((s16)this->field_0x80.HWORD, (s16)this->field_0x82.HWORD, 0x10, 0x10) == 0) {
        this->parent->zVelocity &= ~(1 << this->type2);
        DeleteThisEntity();
    }
}
