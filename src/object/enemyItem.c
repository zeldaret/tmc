/**
 * @file enemyItem.c
 * @ingroup Objects
 *
 * @brief Enemy Item object
 */
#include "functions.h"
#include "object.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[0x1e];
    /*0x86*/ u16 unk_86;
} EnemyItemEntity;

void sub_080A2500(EnemyItemEntity*);
void sub_080A2534(EnemyItemEntity*);
void sub_080A2508(EnemyItemEntity*);

void EnemyItem(EnemyItemEntity* this) {
    Entity* entity;
    LinkedList* list;

    if (CheckFlags(this->unk_86)) {
        sub_080A2500(this);
    }
    if (super->action == 0) {
        super->action++;
        super->type = super->timer;
        super->child = NULL;
        list = &gEntityLists[4];
        for (entity = list->first; entity != (Entity*)list; entity = entity->next) {
            if ((((entity->kind == 3) && (super->type2 == entity->id)) &&
                 (((entity->x.HALF.HI - super->x.HALF.HI) + 0x10U) << 0x10 >> 0x10 < 0x20)) &&
                (((entity->y.HALF.HI - super->y.HALF.HI) + 0x10U) << 0x10 >> 0x10 < 0x20)) {
                super->child = entity;
                break;
            }
        }
        if (super->child == NULL) {
            sub_080A2534(this);
        }
        DisableRandomDrops();
    }
    entity = super->child;
    if (entity != NULL) {
        PositionRelative(entity, super, 0x40000, 0x10000);
        super->z.HALF.HI -= 4;
        if (entity->next == NULL) {
            sub_080A2508(this);
        }
    }
    sub_08080CB4(super);
}

void sub_080A2500(EnemyItemEntity* this) {
    DeleteThisEntity();
}

void sub_080A2508(EnemyItemEntity* this) {
    EnemyItemEntity* entity;

    entity = (EnemyItemEntity*)CreateObjectWithParent(super, GROUND_ITEM, super->type, 0);
    if (entity != NULL) {
        (entity->base).timer = 5;
        entity->unk_86 = this->unk_86;
    }
    sub_080A2500(this);
}

void sub_080A2534(EnemyItemEntity* this) {
    EnemyItemEntity* entity;

    entity = (EnemyItemEntity*)CreateObjectWithParent(super, GROUND_ITEM, super->type, 0);
    if (entity != NULL) {
        (entity->base).timer = 4;
        entity->unk_86 = this->unk_86;
    }
    sub_080A2500(this);
}
