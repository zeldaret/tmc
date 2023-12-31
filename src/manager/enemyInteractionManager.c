/**
 * @file enemyInteractionManager.c
 * @ingroup Managers
 *
 * @brief Interaction between enemies. Makes them not overlap.
 */
#include "manager/enemyInteractionManager.h"
#include "asm.h"
#include "room.h"

void EnemyInteractionManager_Init(EnemyInteractionManager*);
void EnemyInteractionManager_Action1(EnemyInteractionManager*);
u32 EnemyInteractionManager_FindMatchingEntities(EnemyInteractionManager*);
Entity* EnemyInteractionManager_FindMatchingEntity(EntityData*);
void EnemyInteractionManager_RemoveDeletedEntities(EnemyInteractionManager*);

enum EnemyInteractionManager_Action { Init = 0, Main = 1 };

enum EnemyInteractionManager_InitState { DoInit = 0, DoNotInit = 1 };

void EnemyInteractionManager_Main(EnemyInteractionManager* this) {
    static void (*const EnemyInteractionManager_Actions[])(EnemyInteractionManager*) = {
        EnemyInteractionManager_Init,
        EnemyInteractionManager_Action1,
    };
    EnemyInteractionManager_Actions[super->action](this);
}

void EnemyInteractionManager_Init(EnemyInteractionManager* this) {
    if (super->type == DoInit) {
        s32 entityCount;
        int tmp4;
        for (tmp4 = 0; tmp4 < 8; tmp4++) {
            this->d.enemies[tmp4] = 0;
        }
        entityCount = EnemyInteractionManager_FindMatchingEntities(this);
        if (entityCount > 1) {
            EnemyInteractionManager* tmp3 = (EnemyInteractionManager*)GetEmptyManager();
            if (tmp3) {
                tmp3->base.kind = MANAGER;
                tmp3->base.id = ENEMY_INTERACTION_MANAGER;
                tmp3->base.type = DoNotInit;
                tmp3->base.timer = entityCount;
                /* for (tmp4 = 0; tmp4 < 8; tmp4++) { */
                /*     tmp3->enemies[tmp4] = this->enemies[tmp4]; */
                /* } */
                tmp3->d = this->d;
                AppendEntityToList((Entity*)tmp3, 6);
            }
        }
        DeleteManager(super);
    } else {
        super->action = Main;
        super->subtimer = 0;
    }
}

void EnemyInteractionManager_Action1(EnemyInteractionManager* this) {
    s32 n;
    s32 i;
    s32 j;
    Entity* tmp;
    EnemyInteractionManager_RemoveDeletedEntities(this);
    n = super->timer - 1;
    if ((super->subtimer++) & 1) {
        for (i = 0; i < n; i++) {
            tmp = this->d.enemies[i];
            for (j = i + 1; j < super->timer; j++) {
                CalcCollisionStaticEntity(tmp, this->d.enemies[j]);
            }
        }
    } else {
        for (i = 0; i < n; i++) {
            tmp = this->d.enemies[i];
            for (j = i + 1; j < super->timer; j++) {
                CalcCollisionStaticEntity(this->d.enemies[j], tmp);
            }
        }
    }
}

u32 EnemyInteractionManager_FindMatchingEntities(EnemyInteractionManager* this) {
    u32 re = 0;
    EntityData* tmp = GetCurrentRoomProperty(super->type2);
    if (!tmp)
        return 0;
    for (; *((u8*)tmp) != 0xFF && !((tmp->kind & 0xf) == 9 && tmp->id == 0x28); tmp++) {
        Entity* tmp2;
        u32 i;
        if ((tmp->kind & 0xf) != 3)
            continue;
        tmp2 = EnemyInteractionManager_FindMatchingEntity(tmp);
        if (!tmp2)
            continue;
        for (i = 0; i < re; i++) {
            if (this->d.enemies[i] == tmp2)
                break;
        }
        if (i != re)
            continue;
        this->d.enemies[re++] = tmp2;
        if (re == 8)
            return 8;
    }
    return re;
}

Entity* EnemyInteractionManager_FindMatchingEntity(EntityData* unk1) {
    u32 x, y;
    Entity* i;
    LinkedList* tmp;
    x = unk1->xPos + gRoomControls.origin_x;
    y = unk1->yPos + gRoomControls.origin_y;
    tmp = &gEntityLists[4];
    for (i = tmp->first; (u32)i != (u32)tmp; i = i->next) {
        if (x == i->x.HALF.HI && y == i->y.HALF.HI && unk1->id == i->id && ENEMY == i->kind && unk1->type == i->type) {
            return i;
        }
    }
    return 0;
}

void EnemyInteractionManager_RemoveDeletedEntities(EnemyInteractionManager* this) {
    s32 i;
    for (i = 0; i < super->timer; i++) {
        if (this->d.enemies[i]->next == 0) {
            if (super->timer - 1 == i) {
                this->d.enemies[i] = 0;
            } else {
                this->d.enemies[i] = this->d.enemies[super->timer - 1];
            }
            super->timer--;
        }
    }
    if (super->timer <= 1)
        DeleteThisEntity();
}
