#include "manager.h"
#include "random.h"
#include "room.h"
#include "enemy.h"

extern void (*const gUnk_08108C64[])(Manager*);

extern u16 gUnk_08108C6C[];
extern s8 gUnk_08108C7C[];

void Manager1C_Main(Manager* manager) {
    gUnk_08108C64[manager->action](manager);
}

// Initial setup
void sub_0805B554(Manager* manager) {
    manager->action = 1;
    manager->unk_0e = 1;
}

// Spawn water drops every 0xf frames
void sub_0805B55C(Manager* manager) {
    if (--manager->unk_0e == 0) {
        Entity* waterDrop;
        manager->unk_0e = 0xf;
        waterDrop = CreateEnemy(WATER_DROP, 0);
        if (waterDrop != NULL) {
            waterDrop->x.HALF.HI = gRoomControls.roomScrollX + 0x78 + gUnk_08108C6C[Random() & 7];
            waterDrop->y.HALF.HI = gRoomControls.roomScrollY + 0x50 + gUnk_08108C7C[Random() & 3];
            waterDrop->z.HALF.HI = 0xff38;
        }
    }
}
