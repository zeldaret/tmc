/**
 * @file regionTriggerManager.c
 * @ingroup Managers
 *
 * @brief Set a flag if the player moves into a region.
 */
#include "manager/regionTriggerManager.h"
#include "asm.h"
#include "flags.h"

enum RegionTriggerManager_State { Init, ObserveRegion };

void RegionTriggerManager_Init(RegionTriggerManager*);
void RegionTriggerManager_ObserveRegion(RegionTriggerManager*);

void RegionTriggerManager_Main(RegionTriggerManager* this) {
    static void (*const RegionTriggerManager_Actions[2])(RegionTriggerManager*) = {
        RegionTriggerManager_Init,
        RegionTriggerManager_ObserveRegion,
    };
    RegionTriggerManager_Actions[super->action](this);
}

void RegionTriggerManager_Init(RegionTriggerManager* this) {
    super->action = ObserveRegion;
    this->radiusX >>= 1;
    this->posX += this->radiusX;
    this->radiusY >>= 1;
    this->posY += this->radiusY;
    if (!super->type) {
        if (CheckFlags(this->playerInRegionFlag)) {
            DeleteManager(super);
            return;
        }
    }
    RegionTriggerManager_ObserveRegion(this);
}

void RegionTriggerManager_ObserveRegion(RegionTriggerManager* this) {
    if (CheckPlayerInRegion(this->posX, this->posY, this->radiusX, this->radiusY)) {
        SetFlag(this->playerInRegionFlag);
        if (!super->type) {
            DeleteManager(super);
            return;
        }
    } else {
        ClearFlag(this->playerInRegionFlag);
    }
}
