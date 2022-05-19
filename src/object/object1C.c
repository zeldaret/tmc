#include "global.h"
#include "entity.h"

extern u32 CheckRectOnScreen(s16, s16, u32, u32);

/*
This object is created by HouseSignManager.
It checks whether the 0x10 x 0x10 rect at field_0x80, field_0x82 is still on the screen.
If not, then it deletes itselfs and unsets the this->type2 bit in the managers field_0x20 bitfield.
*/
void Object1C(Entity* this) {
    if (this->action == 0) {
        this->action = 1;
    }
    if (CheckRectOnScreen(this->field_0x80.HWORD, this->field_0x82.HWORD, 0x10, 0x10) == 0) {
        this->parent->zVelocity &= ~(1 << this->type2);
        DeleteThisEntity();
    }
}
