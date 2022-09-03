#ifndef COLLISION_H
#define COLLISION_H

#include "global.h"
#include "entity.h"

/** Collisions. */

typedef enum {
    COL_NONE = 0x0,
    COL_NORTH_WEST = 0x2,
    COL_NORTH_EAST = 0x4,
    COL_NORTH_FULL = 0x6,
    COL_NORTH_ANY = 0xe,
    COL_SOUTH_WEST = 0x20,
    COL_SOUTH_EAST = 0x40,
    COL_SOUTH_FULL = 0x60,
    COL_SOUTH_ANY = 0xe0,
    COL_WEST_SOUTH = 0x200,
    COL_WEST_NORTH = 0x400,
    COL_WEST_FULL = 0x600,
    COL_WEST_ANY = 0xe00,
    COL_EAST_SOUTH = 0x2000,
    COL_EAST_NORTH = 0x4000,
    COL_EAST_FULL = 0x6000,
    COL_EAST_ANY = 0xe000,
} Collisions;

typedef enum {
    RESULT_NO_COLLISION = 0,
    RESULT_COLLISION = 1,
    RESULT_COLLISION_WITHOUT_SET = 2,
} CollisionResult;

bool32 IsTileCollision(const u8*, s32, s32, u32);
bool32 IsColliding(Entity*, Entity*);
bool32 IsCollidingPlayer(Entity*);
void CalculateEntityTileCollisions(Entity*, u32, u32);
bool32 ProcessMovementInternal(Entity*, s32, s32, u32);
u32 sub_080176E4(Entity*);

extern const u8 gUnk_080B37A0[]; // unkData3 for tileType?

#endif // COLLISION_H
