#include "entity.h"

void sub_080451CC(GenericEntity* this, GenericEntity* other) {
    u8* pThis;
    u8* pOther;
    other->base.flags = this->base.flags & ~ENT_DID_INIT;
    other->base.x.WORD = this->base.x.WORD;
    other->base.y.WORD = this->base.y.WORD;
    other->base.z.WORD = this->base.z.WORD;

    pThis = (u8*)&this->field_0x68;
    pOther = (u8*)&other->field_0x68;
    pOther[4] = pThis[4];
    pOther[5] = pThis[5];
    pOther[6] = pThis[6];
    pOther[7] = pThis[7];
    ((u16*)(pOther))[4] = ((u16*)(pThis))[4];
    ((u16*)(pOther))[5] = ((u16*)(pThis))[5];
}
