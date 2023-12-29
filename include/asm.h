#ifndef ASM_H
#define ASM_H

#include "global.h"

extern u32 Random(void);
extern u32 GetRandomByWeight(const u8*);
extern void CloneTile(u32, u32, u32);
extern u32 GetTileTypeByEntity(struct Entity_*);
extern u32 GetTileTypeByPos(s32 x, s32 y, u32 layer);
extern u32 GetTileType(u32 position, u32 layer);
extern void SetTile(u32 index, u32 position, u32 layer);
extern void UpdateScrollVram(void);
extern u32 sub_080B1B0C(struct Entity_*);
extern u32 sub_080B1BA4(u32, u32, u32);
extern void LoadResourceAsync(const void*, u32, u32);
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
extern u32 sub_080045DA(s32, s32);
extern u32 sub_080086B4(u32, u32, const u8*);
extern u32 ResolveCollisionLayer(struct Entity_*);
extern void sub_0800417E(struct Entity_*, u32);
extern u32 sub_0800442E(struct Entity_*);
extern u32 sub_08007DD6(u32, const u16*);
extern void SoundReqClipped(struct Entity_*, u32);
extern u32 sub_0800132C(struct Entity_*, struct Entity_*);
extern u32 sub_080B1B44(u32, u32);
extern u32 sub_080B1A48(u32, u32, u32);
extern u32 sub_080B1B18(s32, s32, u32);
extern u32 sub_080B1AE0(u16, u8);
extern u32 GetTileUnderEntity(struct Entity_*);
extern u32 sub_0800445C(struct Entity_*);
extern u32 sub_080B1AF0(struct Entity_*, s32, s32);
extern u32 GetRelativeCollisionTile(struct Entity_*, u32, u32);
extern bool32 sub_080B1B54(u32);
extern u32 CheckRectOnScreen(s32, s32, u32, u32);

#endif // ASM_H
