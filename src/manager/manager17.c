#include "manager.h"
#include "flags.h"
#include "room.h"

typedef struct {
    Manager manager;
    u8 field_0x20[0x15];
    u8 field_0x35;
    u8 field_0x36;
    u8 field_0x37;
    s16 field_0x38;
    s16 field_0x3a;
    u16 field_0x3c;
    u16 field_0x3e;
} Manager17;

extern void (*const gUnk_08108654[])(Manager17*);

void sub_0805AD80(Manager17*);

void Manager17_Main(Manager17* manager) {
    gUnk_08108654[manager->manager.action](manager);
}

void sub_0805AD60(Manager17* manager) {
    manager->manager.action = 1;
    if (CheckFlags(manager->field_0x3c) != 0) {
        DeleteThisEntity();
    }
    sub_0805AD80(manager);
}

void sub_0805AD80(Manager17* manager) {
    if (CheckFlags(manager->field_0x3e) != 0) {
        Entity* object = CreateObject(0, manager->manager.unk_0a, manager->manager.unk_0b);
        if (object != NULL) {
            object->actionDelay = manager->field_0x35;
            object->collisionLayer = manager->field_0x36;
            object->x.HALF.HI = manager->field_0x38 + gRoomControls.roomOriginX;
            object->y.HALF.HI = manager->field_0x3a + gRoomControls.roomOriginY;
            object->field_0x86.HWORD = manager->field_0x3c;
        }
        DeleteThisEntity();
    }
}
