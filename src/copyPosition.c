#include "global.h"
#include "entity.h"

extern void PositionRelative();

void CopyPosition(Entity *param_1,Entity *param_2)

{
    PositionRelative(param_1,param_2,0,0);
    return;
}