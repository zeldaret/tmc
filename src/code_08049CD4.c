#include "global.h"
#include "room.h"
#include "enemy.h"

extern void MemFill32(u32, void*, u32);

void sub_08049DCC(RoomMemory*);
RoomMemory* sub_08049D88(void);

void ClearRoomMemory(void) {
    MemFill32(0xFFFFFFFF, gRoomMemory, 0x40);
    gCurrentRoomMemory = gRoomMemory;
}

void EnemyDisableRespawn(Enemy* ent) {
    u8 idx = ent->idx;
    if (idx & 0x80) {
        gCurrentRoomMemory->enemyBits |= 1 << (idx & 0x1f);
    }
}

u32 EnemyEnableRespawn(u32 arg0) {
    u32 bitmask = gCurrentRoomMemory->enemyBits >> arg0;
    u32 output = 1;
    output &= ~bitmask;
    return output;
}

void UpdateRoomTracker(void) {
    gCurrentRoomMemory = gRoomMemory;

    do {
        if (gCurrentRoomMemory->area == gRoomControls.area && gCurrentRoomMemory->room == gRoomControls.room) {
            sub_08049DCC(gCurrentRoomMemory);
            return;
        }
        gCurrentRoomMemory++;

    } while (gCurrentRoomMemory < gRoomMemory + 8);
    gCurrentRoomMemory = sub_08049D88();
}

RoomMemory* sub_08049D88(void) {
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
    rm->enemyBits = 0;

    sub_08049DCC(rm);

    return rm;
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
