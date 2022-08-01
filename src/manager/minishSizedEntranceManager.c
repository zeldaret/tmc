/**
 * @file minishSizedEntranceManager.c
 * @ingroup Managers
 *
 * @brief Spawns MINISH_SIZED_ENTRANCE at the locations in the room property super->unk_0a when they are visible on the
 * screen.
 */
#include "manager/minishSizedEntranceManager.h"
#include "functions.h"
#include "object.h"
#include "room.h"
#include "asm.h"

typedef struct {
    u16 x;
    u16 y;
    u16 field_0x4;
    u16 timer;
} MinishEntranceSpawnData;

bool32 sub_0805B8CC(u32);

void MinishSizedEntranceManager_Main(MinishSizedEntranceManager* this) {
    MinishEntranceSpawnData* spawnData;
    u32 count;
    if (super->action == 0) {
        super->action = 1;
        this->field_0x20 = 0;
    }
    spawnData = (MinishEntranceSpawnData*)GetCurrentRoomProperty(super->type);

    for (count = 0; (spawnData->x != 0) && (count < 0x20); ++count) {
        if (CheckRectOnScreen(spawnData->x, spawnData->y, 4, 4) != 0) {
            if (((this->field_0x20 & (1 << count)) == 0) && (sub_0805B8CC(spawnData->field_0x4) != 0)) {
                Entity* object = CreateObject(MINISH_SIZED_ENTRANCE, 1, 0);
                if (object != NULL) {
                    object->timer = spawnData->timer;
                    object->subtimer = count;
                    object->x.HALF.HI = gRoomControls.origin_x + spawnData->x;
                    object->y.HALF.HI = gRoomControls.origin_y + spawnData->y;
                    object->parent = (Entity*)this;
                    ResolveCollisionLayer(object);
                    this->field_0x20 |= 1 << count;
                }
            }
        } else {
            this->field_0x20 &= ~(1 << count);
        }
        spawnData++;
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
