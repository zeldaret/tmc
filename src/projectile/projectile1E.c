#include "entity.h"

extern void (*const gUnk_0812A6CC[])(Entity*);

void Projectile1E(Entity* this) {
    gUnk_0812A6CC[this->action](this);
}

ASM_FUNC("asm/non_matching/projectile1E/sub_080ABA74.inc", void sub_080ABA74(Entity* this))

ASM_FUNC("asm/non_matching/projectile1E/sub_080ABAE0.inc", void sub_080ABAE0(Entity* this))
