#include "global.h"
#include "entity.h"

Entity* CreateEnemy(u32 subtype, u32 form) {
    Entity* enemy;

    enemy = GetEmptyEntity();
    if (enemy != NULL) {
        enemy->kind = 3;
        enemy->id = subtype;
        enemy->type = form;
        AppendEntityToList(enemy, 4);
    }
    return enemy;
}
