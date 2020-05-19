#include "entity.h"
#include "global.h"

extern Entity * sub_0805E678();
extern void sub_0805EA2C(Entity *, u8);

Entity * CreateEnemy(u32 subtype, u32 param1)
{
    Entity *enemy;
    
    enemy = sub_0805E678();
    if (enemy != NULL) {
        (enemy->entityType).type = 3;
        (enemy->entityType).subtype = subtype;
        (enemy->entityType).parameter1 = param1;
        sub_0805EA2C(enemy,4);
    }
    return enemy;
}