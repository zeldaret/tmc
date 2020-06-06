
#include "global.h"
#include "entity.h"
void PositionRelative(Entity *, Entity *, s32, s32);

void CopyPosition(Entity *param_1,Entity *param_2)

{
    PositionRelative(param_1, param_2, 0, 0);
}