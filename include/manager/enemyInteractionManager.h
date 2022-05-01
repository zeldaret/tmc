#ifndef ENEMYINTERACTIONMANAGER_H
#define ENEMYINTERACTIONMANAGER_H

#include "manager.h"

typedef struct {
    Manager base;
    struct {
        Entity* enemies[8];
    } d;
} EnemyInteractionManager;

#endif // ENEMYINTERACTIONMANAGER_H
