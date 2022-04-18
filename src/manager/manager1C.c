#include "manager.h"
#include "asm.h"
#include "room.h"
#include "enemy.h"

void sub_0805B554(Manager*);
void sub_0805B55C(Manager*);

void Manager1C_Main(Manager* manager) {
    static void (*const actionFuncs[])(Manager*) = {
        sub_0805B554,
        sub_0805B55C,
    };
    actionFuncs[manager->action](manager);
}

// Initial setup
void sub_0805B554(Manager* manager) {
    manager->action = 1;
    manager->unk_0e = 1;
}

// Spawn water drops every 0xf frames
void sub_0805B55C(Manager* manager) {
    static const s16 gUnk_08108C6C[] = { -0x64, -0x3c, -0x14, 0x14, 0x3c, 0x64, 0x8c, 0xb4 };
    static const s8 gUnk_08108C7C[] = { -0x32, -0x19, 0x0, 0x19 };

    if (--manager->unk_0e == 0) {
        Entity* waterDrop;
        manager->unk_0e = 0xf;
        waterDrop = CreateEnemy(WATER_DROP, 0);
        if (waterDrop != NULL) {
            waterDrop->x.HALF.HI = gRoomControls.scroll_x + 0x78 + gUnk_08108C6C[Random() & 7];
            waterDrop->y.HALF.HI = gRoomControls.scroll_y + 0x50 + gUnk_08108C7C[Random() & 3];
            waterDrop->z.HALF.HI = 0xff38;
        }
    }
}
