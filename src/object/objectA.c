/**
 * @file objectA.c
 * @ingroup Objects
 *
 * @brief ObjectA object
 */
#include "entity.h"
#include "flags.h"
#include "functions.h"
#include "game.h"
#include "global.h"
#include "hitbox.h"
#include "object.h"
#include "room.h"

extern u8 gUpdateVisibleTiles;

void ObjectA(Entity* this) {
    u32 uVar2;

    if (this->action == 0) {
        this->action = 1;
        this->hitbox = (Hitbox*)&gHitbox_2;
        if (this->collisionLayer == 1) {
            uVar2 = 0x26;
        } else {
            uVar2 = 0x34;
        }
        this->field_0x70.HALF.LO = uVar2;
        if (CheckFlags(this->field_0x86.HWORD) != 0) {
            SetTileType(*(u16*)&this->field_0x70.HALF.LO, COORD_TO_TILE(this), this->collisionLayer);
            if ((gRoomControls.reload_flags & 1) != 0) {
                gUpdateVisibleTiles = 0;
            }
            DeleteThisEntity();
        } else {
            AddInteractableSmallKeyLock(this);
        }
    } else if (this->interactType != 0) {
        SetTileType(*(u16*)&this->field_0x70.HALF.LO, COORD_TO_TILE(this), this->collisionLayer);
        SetFlag(this->field_0x86.HWORD);
        CreateDust(this);
        ModDungeonKeys(-1);
        DeleteThisEntity();
    }
}
