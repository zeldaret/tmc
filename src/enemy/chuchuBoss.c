#include "entity.h"
#include "functions.h"
#include "enemy.h"

extern void (*const gUnk_080CC19C[])(Entity*);

extern void sub_08001324(Entity*);
void sub_08027870(Entity*);

void ChuchuBoss(Entity* this) {
    gUnk_080CC19C[GetNextFunction(this)]((Entity*)this);
}

void sub_08025CBC(Entity* this) {
    sub_08001324(this);
    if (this->entityType.form == 0) {
        sub_08027870(this);
    }
}
