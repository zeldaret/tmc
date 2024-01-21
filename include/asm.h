#ifndef ASM_H
#define ASM_H

#include "global.h"

extern u32 Random(void);
extern u32 GetRandomByWeight(const u8*);
extern void CloneTile(u32, u32, u32);

extern void SetTile(u32 tileIndex, u32 tilePos, u32 layer);

extern void UpdateScrollVram(void);
extern u32 sub_080B1BA4(u32, u32, u32);
extern void LoadResourceAsync(const void* src, u32 dest, u32 size);
extern void GenericConfused(struct Entity_*);
extern void sub_08001290(struct Entity_*, u32);
extern void GenericKnockback(struct Entity_*);
extern u32 GetFuserId(struct Entity_*);
#define GetFuserIdAndFuserTextId(ent) ((union SplitDWord)(*(MultiReturnTypeSingleEntityArg)(&GetFuserId))(ent))
extern u32 CheckPlayerInRegion(u32 centerX, u32 centerY, u32 radiusX, u32 radiusY);
extern u32 GravityUpdate(struct Entity_* entity, u32 gravity);
enum {
    BOUNCE_DONE_ALL,
    BOUNCE_INIT_NEXT,
    BOUNCE_AIRBORNE,
};
u32 BounceUpdate(struct Entity_*, u32 acceleration);
extern u32 CheckOnScreen(struct Entity_*);
extern bool32 EntityInRectRadius(struct Entity_*, struct Entity_*, u32, u32);
extern void UpdateAnimationVariableFrames(struct Entity_*, u32);
extern u32 GetTileHazardType(struct Entity_*);
/**
 * Basic collision, only used between player and dazed enemies.
 * (Probablity leftover from Four Swords)
 */
extern void CalcCollisionStaticEntity(struct Entity_*, struct Entity_*);
extern void ResetCollisionLayer(struct Entity_*);
extern void sub_08004596(struct Entity_*, u32);
extern u32 sub_080045B4(struct Entity_*, u32, u32);
extern u32 CalculateDirectionTo(u32, u32, u32, u32);
extern u32 CalculateDirectionFromOffsets(s32, s32);
extern u32 sub_080086B4(u32, u32, const u8*);
extern u32 ResolveCollisionLayer(struct Entity_*);
extern void sub_0800417E(struct Entity_*, u32);
extern u32 sub_0800442E(struct Entity_*);
extern void SoundReqClipped(struct Entity_*, u32);
extern u32 sub_0800132C(struct Entity_*, struct Entity_*);

extern u32 sub_0800445C(struct Entity_*);
extern u32 CheckRectOnScreen(s32, s32, u32, u32);

extern u32 GetTileTypeRelativeToEntity(struct Entity_* entity, s32 xOffset, s32 yOffset);
extern u32 GetTileTypeAtEntity(struct Entity_* entity);
extern u32 GetTileTypeAtWorldCoords(s32 worldX, s32 worldY, u32 layer);
extern u32 GetTileTypeAtRoomCoords(u32 roomX, u32 roomY, u32 layer);
extern u32 GetTileTypeAtTilePos(u32 tilePos, u32 layer);

extern u32 GetActTileRelativeToEntity(struct Entity_* entity, s32 xOffset, s32 yOffset);
extern u32 GetActTileAtEntity(struct Entity_* entity);
extern u32 GetActTileAtWorldCoords(u32 worldX, u32 worldY, u32 layer);
extern u32 GetActTileAtRoomCoords(u32 roomX, u32 roomY, u32 layer);
extern u32 GetActTileAtRoomTile(u32 roomTileX, u32 roomTileY, u32 layer);
extern u32 GetActTileAtTilePos(u16 tilePos, u8 layer);

/**
 * Sets actTile for a tilePos.
 */
extern void SetActTileAtTilePos(u32 actTile, u32 tilePos, u32 layer);

// Get CollisionData for entity (relative to entity?)
extern u32 GetCollisionDataRelativeTo(struct Entity_* entity, s32 xOffset, s32 yOffset);

extern u32 GetCollisionDataAtEntity(struct Entity_* entity);
/**
 * Returns the collision data for one tile. (x, y in pixels relative to the world)
 */
extern u32 GetCollisionDataAtWorldCoords(u32 worldX, u32 worldY, u32 layer);
/**
 * Returns the collision data for one tile. (x, y in pixels relative to the room)
 */
extern u32 GetCollisionDataAtRoomCoords(u32 roomX, u32 roomY, u32 layer);
/**
 * Returns the collision data for one tile. (x, y in tiles relative to the room)
 */
extern u32 GetCollisionDataAtRoomTile(u32 roomTileX, u32 roomTileY, u32 layer);
/**
 * Returns the collision data for one tile.
 */
extern u32 GetCollisionDataAtTilePos(u32 tilePos, u32 layer);

/**
 * Sets the collision data for one tile.
 */
extern void SetCollisionData(u32 collisionData, u32 tilePos, u32 layer);

extern u32 GetActTileForTileType(u32 tileType);

typedef struct {
    u16 key;
    u16 value;
} KeyValuePair ALIGNED(2);

/**
 * Searches for a KeyValuePair with the key in the keyValuePairList and returns its value.
 * Returns 0 if the key is not found.
 */
extern u32 FindValueForKey(u32 key, const KeyValuePair* keyValuePairList);

#endif // ASM_H
