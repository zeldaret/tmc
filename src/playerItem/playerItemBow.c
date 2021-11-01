#include "global.h"
#include "entity.h"
#include "functions.h"
#include "effects.h"

extern void (*const gUnk_080B3E30[])(Entity*);

void PlayerItemBow(Entity* this) {
    gUnk_080B3E30[(this->action)](this);
}

ASM_FUNC("asm/non_matching/playerItemBow/sub_08018FE4.inc", void sub_08018FE4(Entity* this))

ASM_FUNC("asm/non_matching/playerItemBow/sub_0801917C.inc", void sub_0801917C(Entity* this))

void sub_08019410(Entity* this) {
    if (this->actionDelay < 0xf) {
        InitializeAnimation(this, this->animIndex);
    } else {
        GetNextFrame(this);
    }
    if (this->actionDelay-- == 0) {
        DeleteThisEntity();
    }
}

void sub_08019444(Entity* this) {
    GetNextFrame(this);
    sub_0806F69C(this);
    if (sub_08003FC4(this, 0x2000) == 0) {
        DeleteThisEntity();
    }
}

void sub_08019468(Entity* this) {
    if (this->field_0x40 == 0x0e) {
        CreateFx(this, FX_REFLECT5, 0);
    }
}
