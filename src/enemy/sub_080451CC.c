#include "entity.h"

void sub_080451CC(Entity* this, Entity* other) {
    u8* pThis;
    u8* pOther;
    other->flags = this->flags & 0xfe;
    other->x.WORD = this->x.WORD;
    other->y.WORD = this->y.WORD;
    other->z.WORD = this->z.WORD;

    pThis = (u8*)&this->field_0x68;
    pOther = (u8*)&other->field_0x68;
    pOther[4] = pThis[4];
    pOther[5] = pThis[5];
    pOther[6] = pThis[6];
    pOther[7] = pThis[7];
    ((u16*)(pOther))[4] = ((u16*)(pThis))[4];
    ((u16*)(pOther))[5] = ((u16*)(pThis))[5];
}
