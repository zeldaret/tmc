#include "entity.h"
#include "global.h"

extern Entity* GetEmptyEntity();
extern void sub_0805EA2C(Entity*, u8);

Entity* CreateEnemy(u32 subtype, u32 form) {
    Entity* enemy;

    enemy = GetEmptyEntity();
    if (enemy != NULL) {
        (enemy->entityType).type = 3;
        (enemy->entityType).subtype = subtype;
        (enemy->entityType).form = form;
        sub_0805EA2C(enemy, 4);
    }
    return enemy;
}
