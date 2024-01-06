/**
 * @file tileChangeObserveManager.c
 * @ingroup Managers
 *
 * @brief Loads entity lists when a tile changes
 *
 * e.g. Puffstools in DWS if you suck away the dirt
 * spawns the red portal in FoW if you move the stone
 */
#include "manager/tileChangeObserveManager.h"
#include "flags.h"
#include "functions.h"
#include "room.h"

void TileChangeObserveManager_Init(TileChangeObserveManager*);
void TileChangeObserveManager_Action1(TileChangeObserveManager*);
void TileChangeObserveManager_Action2(TileChangeObserveManager*);

void TileChangeObserveManager_Main(TileChangeObserveManager* this) {
    static void (*const TileChangeObserveManager_Actions[])(TileChangeObserveManager*) = {
        TileChangeObserveManager_Init,
        TileChangeObserveManager_Action1,
        TileChangeObserveManager_Action2,
    };
    TileChangeObserveManager_Actions[super->action](this);
}

void TileChangeObserveManager_Init(TileChangeObserveManager* this) {
    u16* tileIndex;
    if (CheckFlags(this->flag) != 0) {
        DeleteThisEntity();
    } else {
        super->action = 1;
        tileIndex = &GetLayerByIndex(this->field_0x3a)->mapData[this->tilePos];
        this->observedTile = tileIndex;
        this->initialTile = tileIndex[0];
    }
}

void TileChangeObserveManager_Action1(TileChangeObserveManager* this) {
    if (this->initialTile != this->observedTile[0]) {
        super->action++;
        super->timer = 15;
    }
}

void TileChangeObserveManager_Action2(TileChangeObserveManager* this) {
    if (--super->timer == 0) {
        SetFlag(this->flag);
        if (super->type != 0) {
            LoadRoomEntityList((EntityData*)GetCurrentRoomProperty(super->type));
        }
        DeleteManager(super);
    }
}
