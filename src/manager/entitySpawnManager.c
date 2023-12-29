/**
 * @file entitySpawnManager.c
 * @ingroup Managers
 *
 * @brief Load a entity list when a flag is set.
 *
 * e.g. spawns the heart container and teleporter after getting the element in DWS
 */
#include "manager/entitySpawnManager.h"
#include "entity.h"
#include "flags.h"
#include "functions.h"
#include "room.h"
#include "sound.h"

void EntitySpawnManager_Main(EntitySpawnManager* this) {
    if (super->action == 0) {
        super->action = 1;
        if (CheckFlags(this->flag)) {
            DeleteManager(super);
            return;
        }
    }
    if (!CheckFlags(this->flag))
        return;
    if (super->type2 != 0) {
        super->type2 = 0;
        SetPlayerControl(0xff);
        PausePlayer();
    }
    if (this->spawnTimer == 0) {
        if (this->sound != 0) {
            SoundReq(this->sound);
        }
        LoadRoomEntityList(GetCurrentRoomProperty(super->type));
        DeleteThisEntity();
    } else {
        this->spawnTimer--;
    }
}
