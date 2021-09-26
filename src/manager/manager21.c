
#include "manager.h"
#include "room.h"
#include "object.h"
#include "functions.h"
#include "flags.h"

extern bool32 CheckRectOnScreen(u16, u16, u32, u32);

typedef struct {
    Manager manager;
    u32 field_0x20;
} Manager21;

typedef struct {
    u16 x;
    u16 y;
    u16 field_0x4;
    u16 actionDelay;
} MinishEntranceSpawnData;

bool32 sub_0805B8CC(u32);

/*
Spawns MINISH_SIZED_ENTRANCE at the locations in the room property this->manager.unk_0a when they are visible on the
screen.
*/
void Manager21_Main(Manager21* this) {
    MinishEntranceSpawnData* spawnData;
    u32 count;
    if (this->manager.action == 0) {
        this->manager.action = 1;
        this->field_0x20 = 0;
    }
    spawnData = (MinishEntranceSpawnData*)GetCurrentRoomProperty(this->manager.unk_0a);

    for (count = 0; (spawnData->x != 0) && (count < 0x20); ++count) {
        if (CheckRectOnScreen(spawnData->x, spawnData->y, 4, 4) != 0) {
            if (((this->field_0x20 & (1 << count)) == 0) && (sub_0805B8CC(spawnData->field_0x4) != 0)) {
                Entity* object = CreateObject(MINISH_SIZED_ENTRANCE, 1, 0);
                if (object != NULL) {
                    object->actionDelay = spawnData->actionDelay;
                    object->field_0xf = count;
                    object->x.HALF.HI = gRoomControls.roomOriginX + spawnData->x;
                    object->y.HALF.HI = gRoomControls.roomOriginY + spawnData->y;
                    object->parent = (Entity*)this;
                    sub_08016A30(object);
                    this->field_0x20 |= 1 << count;
                }
            }
        } else {
            this->field_0x20 &= ~(1 << count);
        }
        spawnData += 1;
    }
}

bool32 sub_0805B8CC(u32 param_1) {
    if (param_1 == 4) {
        return CheckGlobalFlag(TATEKAKE_HOUSE);
    }
    if (param_1 < 5) {
        return TRUE;
    }
    if (param_1 > 6) {
        return TRUE;
    }
    return FALSE;
}
