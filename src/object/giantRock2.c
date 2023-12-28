/**
 * @file giantRock2.c
 * @ingroup Objects
 *
 * @brief Giant Rock 2 object
 */
#define NENT_DEPRECATED
#include "asm.h"
#include "entity.h"
#include "room.h"
#include "tiles.h"

typedef struct {
    Entity base;
    u8 filler[0xC];
    u16 metaTilePos;
} GiantRock2Entity;

void GiantRock2_Init(GiantRock2Entity* this);
void GiantRock2_Idle(GiantRock2Entity* this);

void GiantRock2(Entity* this) {
    static void (*const GiantRock2_Action[])(GiantRock2Entity*) = {
        GiantRock2_Init,
        GiantRock2_Idle,
    };
    GiantRock2_Action[this->action]((GiantRock2Entity*)this);
}

void GiantRock2_Init(GiantRock2Entity* this) {
    u32 collisionLayer;
    u16 metaTilePos;
    int index;
    u32 tileIndex;

    super->action = 1;
    this->metaTilePos = COORD_TO_TILE(super);
    collisionLayer = super->collisionLayer;
    super->spritePriority.b0 = 7;
    metaTilePos = (this->metaTilePos - TILE_POS(0, 2));
    tileIndex = SPECIAL_META_TILE_34;
    for (index = 4; index > -1; index--) {
        SetMetaTile(tileIndex, metaTilePos - 2, collisionLayer);
        SetMetaTile(tileIndex, metaTilePos - 1, collisionLayer);
        SetMetaTile(tileIndex, metaTilePos, collisionLayer);
        SetMetaTile(tileIndex, metaTilePos + 1, collisionLayer);
        metaTilePos += TILE_POS(0, 1);
    }
}

void GiantRock2_Idle(GiantRock2Entity* this) {
}
