
#include "entity.h"

extern void (*const gUnk_081271D4[])(Entity*);

void PlayerItemShield(Entity* this) {
    if (*(int*)&this->field_0x6c != 0) {
        *(int*)&this->field_0x6c += -1;
    }
    gUnk_081271D4[this->action](this);
}

ASM_FUNC("asm/non_matching/playerItemShield/sub_080A2D98.inc", void sub_080A2D98(Entity* this))

ASM_FUNC("asm/non_matching/playerItemShield/sub_080A2E00.inc", void sub_080A2E00(Entity* this))
