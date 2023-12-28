#ifndef PHYSICS_H
#define PHYSICS_H

#include "global.h"
#include "entity.h"

s16 FixedMul(s16 r0, s16 r1);
s16 FixedDiv(s16 r0, s16 r1);

void* AllocMutableHitbox(Entity*);
void UnloadHitbox(Entity*);

void CopyPosition(Entity*, Entity*);
void PositionEntityOnTop(Entity*, Entity*);
void PositionRelative(Entity*, Entity*, s32, s32);
void CopyPositionAndSpriteOffset(Entity* param_1, Entity* param_2);
void sub_0806FA90(Entity*, Entity*, s32, s32);
void SortEntityAbove(Entity* below_ent, Entity* above_ent);
void SortEntityBelow(Entity* above_ent, Entity* below_ent);

void LinearMoveDirection(Entity* ent, u32 a, u32 b);
void LinearMoveAngle(Entity* ent, u32 a, u32 b);

bool32 EntityWithinDistance(Entity* entity, s32 x, s32 y, s32 distance);
u32 sub_0806FCA0(Entity*, Entity*);
u32 sub_0806F58C(Entity*, Entity*);
u32 PointInsideRadius(s32 x, s32 y, s32 radius);
bool32 sub_0806F3E4(Entity*);
void LinearMoveUpdate(Entity*);
bool32 sub_0806FD54(Entity*);
u32 sub_0806FCAC(Entity*, Entity*);
u32 sub_0806F854(Entity*, s32, s32);
u32 sub_0806F730(Entity*);
bool32 sub_0806F520(Entity*);
void sub_0806F4E8(Entity*);
bool32 sub_0806FC80(Entity*, Entity*, s32);
/** Maps the direction to an animation state 0 to 3. */
u32 GetAnimationStateForDirection4(u32 direction);
/** Maps the direction to an animation state 0 to 8. */
u32 GetAnimationStateForDirection8(u32 direction);
u32 sub_0806F824(Entity*, Entity*, s32, s32);
u32 sub_0806F948(Entity*);
void sub_0806FBB4(Entity*);
void sub_0806FF48(Entity*, u32, u32);
void sub_0806FCF4(Entity*, s32, s32, s32);
void sub_0806FD3C(Entity*);
bool32 sub_0806FDA0(Entity*);
bool32 sub_0806F8DC(Entity*);
void sub_0806FEBC(Entity*, u32, Entity*);
extern bool32 ProcessMovement1(Entity*);
extern bool32 ProcessMovement12(Entity*);
extern bool32 ProcessMovement2(Entity*);
extern bool32 ProcessMovement3(Entity*);
extern bool32 ProcessMovement4(Entity*);
extern bool32 ProcessMovement5(Entity*);
extern bool32 ProcessMovement6(Entity*);
extern bool32 ProcessMovementInternal(Entity*, s32, s32, u32);

extern const s16 gSineTable[64];
extern const s16 gCosineTable[256];

#endif // PHYSICS_H
