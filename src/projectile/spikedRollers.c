#include "entity.h"

extern void (*const SpikedRollers_Actions[])(Entity*);
extern const u8 gUnk_0812A6D4[];

void SpikedRollers(Entity* this) {
    SpikedRollers_Actions[this->action](this);
}

ASM_FUNC("asm/non_matching/spikedRollers/sub_080ABA74.inc", void sub_080ABA74(Entity* this))

ASM_FUNC("asm/non_matching/spikedRollers/sub_080ABAE0.inc", void sub_080ABAE0(Entity* this))

void (*const SpikedRollers_Actions[])(Entity*) = {
    sub_080ABA74,
    sub_080ABAE0,
};
const u8 gUnk_0812A6D4[] = {
    8, 16, 24, 32, 40, 48, 56, 16, 24, 32, 40, 48, 56, 64,
};
