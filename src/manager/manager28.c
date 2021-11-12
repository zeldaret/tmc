#include "global.h"
#include "manager.h"
#include "entity.h"
#include "room.h"
#include "functions.h"

typedef struct {
    Manager manager;
    struct {
        Entity* enemies[8];
    } d;
} Manager28;

void Manager28_Init(Manager28*);
void Manager28_Main2(Manager28*);
u32 Manager28_FindMatchingEntities(Manager28*);
Entity* Manager28_FindMatchingEntity(EntityData*);
void Manager28_RemoveDeletedEntities(Manager28*);

void (*const Manager28_ActionFuncs[])(Manager28*) = { Manager28_Init, Manager28_Main2 };

enum Manager28_Action { Init = 0, Main = 1 };

enum Manager28_InitState { DoInit = 0, DoNotInit = 1 };

void Manager28_Main(Manager28* this) {
    Manager28_ActionFuncs[this->manager.action](this);
}

void Manager28_Init(Manager28* this) {
    if (this->manager.unk_0a == DoInit) {
        s32 tmp2;
        int tmp4;
        for (tmp4 = 0; tmp4 < 8; tmp4++) {
            this->d.enemies[tmp4] = 0;
        }
        tmp2 = Manager28_FindMatchingEntities(this);
        if (tmp2 > 1) {
            Manager28* tmp3 = (Manager28*)GetEmptyManager();
            if (tmp3) {
                tmp3->manager.type = 9;
                tmp3->manager.subtype = 0x28;
                tmp3->manager.unk_0a = DoNotInit;
                tmp3->manager.unk_0e = tmp2;
                /* for (tmp4 = 0; tmp4 < 8; tmp4++) { */
                /*     tmp3->enemies[tmp4] = this->enemies[tmp4]; */
                /* } */
                tmp3->d = this->d;
                AppendEntityToList((Entity*)tmp3, 6);
            }
        }
        DeleteManager(&this->manager);
    } else {
        this->manager.action = Main;
        this->manager.unk_0f = 0;
    }
}

void Manager28_Main2(Manager28* this) {
    s32 n;
    s32 i;
    s32 j;
    Entity* tmp;
    Manager28_RemoveDeletedEntities(this);
    n = this->manager.unk_0e - 1;
    if ((this->manager.unk_0f++) & 1) {
        for (i = 0; i < n; i++) {
            tmp = this->d.enemies[i];
            for (j = i + 1; j < this->manager.unk_0e; j++) {
                sub_08004484(tmp, this->d.enemies[j]);
            }
        }
    } else {
        for (i = 0; i < n; i++) {
            tmp = this->d.enemies[i];
            for (j = i + 1; j < this->manager.unk_0e; j++) {
                sub_08004484(this->d.enemies[j], tmp);
            }
        }
    }
}

u32 Manager28_FindMatchingEntities(Manager28* this) {
    u32 re = 0;
    EntityData* tmp = GetCurrentRoomProperty(this->manager.unk_0b);
    if (!tmp)
        return 0;
    for (; *((u8*)tmp) != 0xFF && !((tmp->kind & 0xf) == 9 && tmp->id == 0x28); tmp++) {
        Entity* tmp2;
        u32 i;
        if ((tmp->kind & 0xf) != 3)
            continue;
        tmp2 = Manager28_FindMatchingEntity(tmp);
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

Entity* Manager28_FindMatchingEntity(EntityData* unk1) {
    u32 x, y;
    Entity* i;
    LinkedList* tmp;
    x = unk1->xPos + gRoomControls.roomOriginX;
    y = unk1->yPos + gRoomControls.roomOriginY;
    tmp = &gUnk_03003D90;
    for (i = tmp->first; (u32)i != (u32)tmp; i = i->next) {
        if (x == i->x.HALF.HI && y == i->y.HALF.HI && unk1->id == i->id && 3 == i->kind && unk1->type == i->type) {
            return i;
        }
    }
    return 0;
}

void Manager28_RemoveDeletedEntities(Manager28* this) {
    s32 i;
    for (i = 0; i < this->manager.unk_0e; i++) {
        if (this->d.enemies[i]->next == 0) {
            if (this->manager.unk_0e - 1 == i) {
                this->d.enemies[i] = 0;
            } else {
                this->d.enemies[i] = this->d.enemies[this->manager.unk_0e - 1];
            }
            this->manager.unk_0e--;
        }
    }
    if (this->manager.unk_0e <= 1)
        DeleteThisEntity();
}
