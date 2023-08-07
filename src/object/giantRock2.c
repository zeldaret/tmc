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

typedef struct {
    Entity base;
    u8 filler[0xC];
    u16 tile;
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
    u16 position;
    int index;
    u32 tileIndex;

    super->action = 1;
    this->tile = COORD_TO_TILE(super);
    collisionLayer = super->collisionLayer;
    super->spritePriority.b0 = 7;
    position = (this->tile - 0x80);
    tileIndex = 0x4022;
    for (index = 4; index > -1; index--) {
        SetTile(tileIndex, position - 2, collisionLayer);
        SetTile(tileIndex, position - 1, collisionLayer);
        SetTile(tileIndex, position, collisionLayer);
        SetTile(tileIndex, position + 1, collisionLayer);
        position += 0x40;
    }
}

void GiantRock2_Idle(GiantRock2Entity* this) {
}
