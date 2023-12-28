#ifndef ASM_H
#define ASM_H

#include "global.h"

extern u32 Random(void);
extern u32 GetRandomByWeight(const u8*);
extern void CloneTile(u32, u32, u32);
extern u32 GetMetaTileTypeByEntity(struct Entity_*);
extern u32 GetMetaTileTypeByPos(s32 x, s32 y, u32 layer);
extern u32 GetMetaTileType(u32 metaTilePos, u32 layer);

extern void SetMetaTile(u32 metaTile, u32 metaTilePos, u32 layer);

extern void UpdateScrollVram(void);
extern u32 sub_080B1BA4(u32, u32, u32);
extern void LoadResourceAsync(const void* src, u32 dest, u32 size);
extern void GenericConfused(struct Entity_*);
extern void sub_08001290(struct Entity_*, u32);
extern void GenericKnockback(struct Entity_*);
extern u32 GetFuserId(struct Entity_*);
extern u32 CheckPlayerInRegion(u32 centerX, u32 centerY, u32 radiusX, u32 radiusY);
extern u32 GravityUpdate(struct Entity_* entity, u32 gravity);
extern u32 CheckOnScreen(struct Entity_*);
extern bool32 EntityInRectRadius(struct Entity_*, struct Entity_*, u32, u32);
extern void UpdateAnimationVariableFrames(struct Entity_*, u32);
extern u32 sub_080043E8(struct Entity_*);
extern void sub_08004484(struct Entity_*, struct Entity_*);
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

extern u32 sub_080B1A48(u32, u32, u32);
extern u32 sub_0800445C(struct Entity_*);
extern bool32 GetVvvForMetaTileType(u32);
extern u32 CheckRectOnScreen(s32, s32, u32, u32);

extern u32 GetVvvRelativeToEntity(struct Entity_* entity, s32 xOffset, s32 yOffset);
extern u32 GetVvvAtEntity(struct Entity_* entity);
extern u32 GetVvvAtWorldCoords(u32 worldX, u32 worldY, u32 layer);
extern u32 GetVvvAtRoomCoords(u32 roomX, u32 roomY, u32 layer);
extern u32 GetVvvAtRoomTile(u32 roomTileX, u32 roomTileY, u32 layer);
extern u32 GetVvvAtMetaTilePos(u16 metaTilePos, u8 layer);

/**
 * Sets vvv for a metaTilePos.
 */
extern void SetVvvAtMetaTilePos(u32 vvv, u32 metaTilePos, u32 layer);

// Get CollisionData for entity (relative to entity?)
extern u32 GetCollisionDataRelativeTo(struct Entity_* entity, s32 xOffset, s32 yOffset);

extern u32 GetCollisionDataAtEntity(struct Entity_* entity);
/**
 * Returns the collision data for one metatile. (x, y in pixels relative to the world)
 */
extern u32 GetCollisionDataAtWorldCoords(u32 worldX, u32 worldY, u32 layer);
/**
 * Returns the collision data for one metatile. (x, y in pixels relative to the room)
 */
extern u32 GetCollisionDataAtRoomCoords(u32 roomX, u32 roomY, u32 layer);
/**
 * Returns the collision data for one metatile. (x, y in metatiles relative to the room)
 */
extern u32 GetCollisionDataAtRoomTile(u32 roomTileX, u32 roomTileY, u32 layer);
/**
 * Returns the collision data for one metatile.
 */
extern u32 GetCollisionDataAtMetaTilePos(u32 metaTilePos, u32 layer);

/**
 * Sets the collision data for one metatile.
 */
extern void SetCollisionData(u32 collisionData, u32 metaTilePos, u32 layer);

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
