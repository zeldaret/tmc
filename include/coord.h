#ifndef POSITION_H
#define POSITION_H

#include "global.h"
#include "entity.h"

s16 FixedMul(s16 r0, s16 r1);
s16 FixedDiv(s16 r0, s16 r1);

void CopyPosition(Entity*, Entity*);
void PositionEntityOnTop(Entity*, Entity*);
void PositionRelative(Entity*, Entity*, s32, s32);
void CopyPositionAndSpriteOffset(Entity* param_1, Entity* param_2);
void sub_0806FA90(Entity*, Entity*, s32, s32);
void ResolveEntityOnTop(Entity*, Entity*);
void sub_0806FAD8(Entity*, Entity*);

extern const s16 gSineTable[64];
extern const s16 gCosineTable[256];

#endif
