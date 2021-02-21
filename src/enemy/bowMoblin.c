#include "global.h"
#include "entity.h"

extern void EnemyFunctionHandler(Entity*, void (*const funcs[])(Entity*));
extern void SetChildOffset(Entity*, u32, u32, u32);
extern void sub_0804A9FC(Entity*, u32);
extern void sub_0804AA30(Entity*, void (*const funcs[][])(Entity*));
extern void sub_0803C5F0(Entity*);

extern void (*const gUnk_080CFF78[])(Entity*);
extern void (*const gUnk_080CFF90[])(Entity*);

void BowMoblin(Entity* this) {
    EnemyFunctionHandler(this, gUnk_080CFF78);
    SetChildOffset(this, 0, 1, -0x18);
}

void sub_0803C180(Entity* this) {
    gUnk_080CFF90[this->action](this);
}

void sub_0803C198(Entity* this) {
    Entity* pEVar1;

    if (this->field_0x43 != 0) {
        sub_0804A9FC(this, 0x1c);
    }
    sub_0804AA30(this, &gUnk_080CFF78);
    if ((this->bitfield & 0x80) != 0) {
        sub_0803C5F0(this);
        pEVar1 = this->attachedEntity;
        if (pEVar1 != NULL) {
            pEVar1->field_0xf++;
        }
    }
}

void nullsub_168(Entity* this) {
}
