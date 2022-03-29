#include "enemy.h"

/** Unsets bitfield 0x80 before calling GetNextFunction, so that the enemyFunction 1 is not called. */
void EnemyFunctionHandlerAfterCollision(Entity* entity, void (*fntable[])()) {
    u32 idx;
    entity->contactFlags &= ~0x80;
    idx = GetNextFunction(entity);
    entity->contactFlags |= 0x80;
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
