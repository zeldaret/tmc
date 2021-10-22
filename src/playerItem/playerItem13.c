#include "entity.h"

extern void (*const gUnk_081320A8[])(Entity*);

void PlayerItem13(Entity* this) {
    gUnk_081320A8[this->subAction](this);
}

ASM_FUNC("asm/non_matching/playerItem13/sub_080ACF2C.inc", void sub_080ACF2C(Entity* this))

ASM_FUNC("asm/non_matching/playerItem13/sub_080ACFCC.inc", void sub_080ACFCC(Entity* this))

ASM_FUNC("asm/non_matching/playerItem13/sub_080AD040.inc", void sub_080AD040(Entity* this))

void sub_080AD274(Entity* this) {
    DeleteThisEntity();
}

ASM_FUNC("asm/non_matching/playerItem13/sub_080AD27C.inc", void sub_080AD27C(Entity* this))

bool32 sub_080AD32C(Entity* this) {
    bool32 result = FALSE;
    if (((this->field_0x16 & 0xf0) == 0x10) || ((this->kind == 6 && ((this->id == 5 || (this->id == 0x7d)))))) {
        result = TRUE;
    }
    return result;
}
