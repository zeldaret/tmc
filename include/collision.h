#ifndef COLLISION_H
#define COLLISION_H

#include "global.h"
#include "entity.h"

/** Collisions. */

enum {
    COL_LANTERN = 0x7,
    COL_SMALL_GUST = 0x13,
    COL_BOOMERANG = 0x14,
    COL_ARROW = 0x15,
    COL_BIG_GUST = 0x1b,
    COL_PACCI = 0x1d,
    COL_SWORD_BEAM = 0x21,
};

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

/**
 * @brief
 *
 * @param collisionData
 * @param x x world coordinate
 * @param y y world coordinate
 * @param collisionType @see CollisionType
 * @return bool32
 */
bool32 IsTileCollision(const u8* collisionData, s32 x, s32 y, u32 collisionType);
bool32 IsColliding(Entity*, Entity*);
bool32 IsCollidingPlayer(Entity*);
/**
 * @brief Calculates the collisions with the tiles around the entity and stores the result in Entity.collisions.
 *
 * @param this
 * @param direction
 * @param collisionType @see CollisionType
 */
void CalculateEntityTileCollisions(Entity* this, u32 direction, u32 collisionType);
bool32 ProcessMovementInternal(Entity*, s32, s32, u32);
u32 sub_080176E4(Entity*);

extern const u8 gMapTileTypeToActTile[]; // actTile for tileType?

#endif // COLLISION_H
