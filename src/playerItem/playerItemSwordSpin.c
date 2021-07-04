#include "entity.h"

extern void (*const gUnk_080B7870[])(Entity*);

void sub_0801BE38(Entity*);

void PlayerItemSwordSpin(Entity* this) {
    gUnk_080B7870[this->action](this);
}

ASM_FUNC("asm/non_matching/playerItemSwordSpin/sub_0801BA18.inc", void sub_0801BA18(Entity* this))

ASM_FUNC("asm/non_matching/playerItemSwordSpin/sub_0801BB2C.inc", void sub_0801BB2C(Entity* this))

void sub_0801BC0C(Entity* this) {
    sub_0801BE38(this);
}

ASM_FUNC("asm/non_matching/playerItemSwordSpin/sub_0801BC14.inc", void sub_0801BC14(Entity* this))

ASM_FUNC("asm/non_matching/playerItemSwordSpin/sub_0801BCB4.inc", void sub_0801BCB4(Entity* this))

ASM_FUNC("asm/non_matching/playerItemSwordSpin/sub_0801BDE8.inc", void sub_0801BDE8(Entity* this))

ASM_FUNC("asm/non_matching/playerItemSwordSpin/sub_0801BE38.inc", void sub_0801BE38(Entity* this))
