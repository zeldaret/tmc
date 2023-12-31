#include "global.h"
#include "room.h"

extern void MemFill32(u32, void*, u32);

void UpdateCurrentRoom(RoomMemory*);
RoomMemory* AddCurrentRoom(void);

void ClearRoomMemory(void) {
    MemFill32(0xFFFFFFFF, gRoomMemory, 0x40);
    gRoomMemoryPtr = gRoomMemory;
}

void SetRoomTrackerFlag(GenericEntity* ent) {
    u8 field_0x6c = ent->field_0x6c.HALF.LO;
    if (field_0x6c & 0x80) {
        gRoomMemoryPtr->flags |= 1 << (field_0x6c & 0x1f);
    }
}

bool32 IsRoomTrackerFlagSet(u32 arg0) {
    u32 bitmask = gRoomMemoryPtr->flags >> arg0;
    u32 output = 1;
    output &= ~bitmask;
    return output;
}

void UpdateRoomTracker(void) {
    gRoomMemoryPtr = gRoomMemory;

    do {
        if (gRoomMemoryPtr->area == gRoomControls.area && gRoomMemoryPtr->room == gRoomControls.room) {
            UpdateCurrentRoom(gRoomMemoryPtr);
            return;
        }
        gRoomMemoryPtr++;

    } while (gRoomMemoryPtr < gRoomMemory + 8);
    gRoomMemoryPtr = AddCurrentRoom();
}

RoomMemory* AddCurrentRoom(void) {
    RoomMemory* rm = gRoomMemory;
    RoomMemory* r1 = rm + 1;

    do {
        if (r1->unk_02 > rm->unk_02) {
            rm = r1;
        }
        r1++;
    } while (r1 < gRoomMemory + 8);

    rm->area = gRoomControls.area;
    rm->room = gRoomControls.room;

    rm->unk_02 = 0xFFFF;
    rm->flags = 0;

    UpdateCurrentRoom(rm);

    return rm;
}

void UpdateCurrentRoom(RoomMemory* rm) {
    RoomMemory* r1 = gRoomMemory;

    do {
        if (r1->unk_02 < rm->unk_02) {
            r1->unk_02++;
        }
        r1++;
    } while (r1 < gRoomMemory + 8);

    rm->unk_02 = 0;
}
