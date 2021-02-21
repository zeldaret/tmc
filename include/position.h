#ifndef POSITION_H
#define POSITION_H

#include "global.h"
#include "entity.h"

void CopyPosition(Entity*, Entity*);
void PositionEntityOnTop(Entity*, Entity*);
void PositionRelative(Entity*, Entity*, s32, s32);
void sub_0806FA90(Entity*, Entity*, s32, s32);
void ResolveEntityOnTop(Entity*, Entity*);
void sub_0806FAD8(Entity*, Entity*);

#endif
