#include "entity.h"

extern u8 gUnk_03000000;

bool32 sub_0805EC04(Entity* this) {
    u32 i = 1;
    u8* l = &gUnk_03000000;
    u32 j = 1;
    for (; i < 0x20; i++) {
        if (l[(i * 8) + 0x426] == 0) {
            l[(i * 8) + 0x426] = j;
            this->spriteSet.b1 = i;
            this->spriteSet.b0 |= j;
            return TRUE;
        }
    }
    return FALSE;
}
