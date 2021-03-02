#include "entity.h"
#include "global.h"

extern Entity* GetEmptyEntity();
extern void AppendEntityToList(Entity*, u8);

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
