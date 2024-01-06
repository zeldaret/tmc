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
#include "hitbox.h"
#include "object.h"
#include "room.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[8];
    /*0x70*/ u16 unk_70;
    /*0x72*/ u8 unused2[20];
    /*0x86*/ u16 unk_86;
} ObjectAEntity;

extern u8 gUpdateVisibleTiles;

void ObjectA(ObjectAEntity* this) {
    u32 uVar2;

    if (super->action == 0) {
        super->action = 1;
        super->hitbox = (Hitbox*)&gHitbox_2;
        if (super->collisionLayer == LAYER_BOTTOM) {
            uVar2 = TILE_TYPE_38;
        } else {
            uVar2 = TILE_TYPE_52;
        }
        this->unk_70 = uVar2;
        if (CheckFlags(this->unk_86) != 0) {
            SetTileType(this->unk_70, COORD_TO_TILE(super), super->collisionLayer);
            if ((gRoomControls.reload_flags & 1) != 0) {
                gUpdateVisibleTiles = 0;
            }
            DeleteThisEntity();
        } else {
            AddInteractableSmallKeyLock(super);
        }
    } else if (super->interactType != INTERACTION_NONE) {
        SetTileType(this->unk_70, COORD_TO_TILE(super), super->collisionLayer);
        SetFlag(this->unk_86);
        CreateDust(super);
        ModDungeonKeys(-1);
        DeleteThisEntity();
    }
}
