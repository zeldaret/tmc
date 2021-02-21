#include "global.h"
#include "entity.h"

extern u32 CheckRectOnScreen(s16, s16, u32, u32);
extern void DeleteThisEntity();

void Object1C(Entity* this) {
    s32 iVar1;

    if (this->action == 0) {
        this->action = 1;
    }
    iVar1 = CheckRectOnScreen(this->field_0x80.HWORD, this->field_0x82.HWORD, 0x10, 0x10);
    if (iVar1 == 0) {
        this->parent->field_0x20 &= ~(1 << this->entityType.parameter);
        DeleteThisEntity();
    }
}
