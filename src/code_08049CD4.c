#define NENT_DEPRECATED
#include "global.h"
#include "entity.h"
#include "room.h"

extern void MemFill32(u32, void*, u32);

void sub_08049DCC(RoomMemory*);
RoomMemory* sub_08049D88(void);

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


void UpdateRoomTracker(void) {
    gUnk_020354B0 = gRoomMemory;

    do {
        if (gUnk_020354B0->area == gRoomControls.area && gUnk_020354B0->room == gRoomControls.room) {
            sub_08049DCC(gUnk_020354B0);
            return;
        }
        gUnk_020354B0++;

    } while (gUnk_020354B0 < gRoomMemory + 8);
    gUnk_020354B0 = sub_08049D88();
}

RoomMemory* sub_08049D88(void) {
    RoomMemory* r4 = gRoomMemory;
    RoomMemory* r1 = r4 + 1;

    do {
        if (r1->unk_02 > r4->unk_02) {
            r4 = r1;
        }
        r1++;
    } while (r1 < gRoomMemory + 8);

    r4->area = gRoomControls.area;
    r4->room = gRoomControls.room;

    r4->unk_02 = 0xFFFF;
    r4->unk_04 = 0;

    sub_08049DCC(r4);

    return r4;
}

void sub_08049DCC(RoomMemory* rm) {
    RoomMemory* r1 = gRoomMemory;

    do {
        if (r1->unk_02 < rm->unk_02) {
            r1->unk_02++;
        }
        r1++;
    } while (r1 < gRoomMemory + 8);

    rm->unk_02 = 0;
}