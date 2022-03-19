#define NENT_DEPRECATED
#include "global.h"
#include "entity.h"
#include "room.h"

extern void MemFill32(u32, void*, u32);

void ClearRoomMemory(void) {
    MemFill32(0xFFFFFFFF, gRoomMemory, 0x40);
    gUnk_020354B0 = gRoomMemory;
}

void sub_08049CF4(GenericEntity* ent) {
    u8 field_0x6c = ent->field_0x6c.HALF.LO;
    if (field_0x6c & 0x80) {
        gUnk_020354B0->unk_04 |= 1 << (field_0x6c & 0x1f);
    }
}

u32 sub_08049D1C(u32 arg0) {
    u32 bitmask = gUnk_020354B0->unk_04 >> arg0;
    u32 output = 1;
    output &= ~bitmask;
    return output;
}