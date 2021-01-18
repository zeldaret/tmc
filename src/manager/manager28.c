#include "global.h"
#include "manager.h"
#include "entity.h"
#include "room.h"
#include "functions.h"

typedef struct {
    Manager manager;
    Entity* unk_20[8];
} Manager28;

extern void (* const gUnk_08108D28[])(Manager28*);

void sub_0805C934(Manager28*);
void sub_0805C94C(Manager28*);
void sub_0805C9BC(Manager28*);
u32 sub_0805CA6C(Manager28*);
Entity* sub_0805CAF0(EntityData*);
void sub_0805CB48(Manager28*);

void sub_0805C934(Manager28* this) {
    gUnk_08108D28[this->manager.action](this);
}

NONMATCH("asm/non_matching/manager28/sub_0805C94C.inc", void sub_0805C94C(Manager28* this)) {
    if (!this->manager.unk_0a) {
        s32 tmp2;
        int tmp4;
        for (tmp4 = 0; tmp4 < 8; tmp4++) {
            this->unk_20[tmp4] = 0;
        }
        tmp2 = sub_0805CA6C(this);//maybe 2 params?
        if (tmp2 > 1) {
            Manager28* tmp3 = (Manager28*) GetEmptyManager();
            if (tmp3) {
                tmp3->manager.type = 9;
                tmp3->manager.subtype = 0x28;
                tmp3->manager.unk_0a = 1;
                tmp3->manager.unk_0e = tmp2;
                for (tmp4 = 0; tmp4 < 8; tmp4++) {
                    tmp3->unk_20[tmp4] = this->unk_20[tmp4];
                }
                AppendEntityToList(tmp3, 6);
            }
        }
        DeleteManager(&this->manager);
    } else {
        this->manager.action = 1;
        this->manager.unk_0f = 0;
    }
}
END_NONMATCH

void sub_0805C9BC(Manager28* this) {
    s32 n;
    s32 i;
    s32 j;
    Entity* tmp;
    sub_0805CB48(this);
    n = this->manager.unk_0e - 1;
    if ((this->manager.unk_0f++) & 1) {
        for (i = 0; i < n; i++) {
            tmp = this->unk_20[i];
            for (j = i + 1; j < this->manager.unk_0e; j++) {
                sub_08004484(tmp, this->unk_20[j]);
            }
        }
    } else {
        for (i = 0; i < n; i++) {
            tmp = this->unk_20[i];
            for (j = i + 1; j < this->manager.unk_0e; j++) {
                sub_08004484(this->unk_20[j], tmp);
            }
        }
    }
}

u32 sub_0805CA6C(Manager28* this) {
    u32 re = 0;
    EntityData * tmp = GetCurrentRoomProperty(this->manager.unk_0b);
    if (!tmp) return 0;
    for (; *((u8*) tmp) != 0xFF && !(tmp->type == 9 && tmp->subtype == 0x28); tmp++) {
        Entity* tmp2;
        u32 i;
        if (tmp->type != 3) continue;
        tmp2 = sub_0805CAF0(tmp);
        if (!tmp2) continue;
        for (i = 0; i < re; i++) {
            if (this->unk_20[i] == tmp2) break;
        }
        if (i != re) continue;
        this->unk_20[re++] = tmp2;
        if (re == 8) return 8;
    }
    return re;
}

Entity* sub_0805CAF0(EntityData* unk1) {
    u32 x, y;
    Entity* i;
    LinkedList* tmp;
    x = unk1->xPos + gRoomControls.roomOriginX;
    y = unk1->yPos + gRoomControls.roomOriginY; 
    tmp =  &gUnk_03003D90;
    for (i = tmp->first; (u32) i != (u32) tmp; i = i->next) {
        if (x == i->x.HALF.HI
         && y == i->y.HALF.HI
         && unk1->subtype == i->entityType.subtype
         && 3 == i->entityType.type
         && unk1->form == i->entityType.form) {
             return i;
        }
    }
    return 0;
}

void sub_0805CB48(Manager28* this) {
    s32 i;
    for (i = 0; i < this->manager.unk_0e; i++) {
        if (this->unk_20[i]->next == 0) {
            if (this->manager.unk_0e-1 == i) {
                this->unk_20[i] = this->unk_20[i]->next;
            } else {
                this->unk_20[i] = this->unk_20[this->manager.unk_0e-1];
            }
            this->manager.unk_0e--;
        }
    }
    if (this->manager.unk_0e <= 1) DeleteThisEntity();
}
