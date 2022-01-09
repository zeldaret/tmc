#include "enemy.h"

void sub_0804AA30(Entity* entity, void (*fntable[])()) {
    u32 idx;
    entity->bitfield &= ~0x80;
    idx = GetNextFunction(entity);
    entity->bitfield |= 0x80;
    fntable[idx](entity);
}

Entity* CreateEnemy(u32 subtype, u32 form) {
    Entity* enemy;

    enemy = GetEmptyEntity();
    if (enemy != NULL) {
        enemy->kind = ENEMY;
        enemy->id = subtype;
        enemy->type = form;
        AppendEntityToList(enemy, 4);
    }
    return enemy;
}
