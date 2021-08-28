#include "global.h"
#include "entity.h"

extern void (*const gUnk_08108D3C[])(Entity*);
extern void (*const gUnk_08108D44[])(Entity*);

void Manager2E_Main(Entity* this) {
    gUnk_08108D3C[this->type](this);
}

void sub_0805D268(Entity* this) {
    gUnk_08108D44[this->action](this);
}

ASM_FUNC("asm/non_matching/manager2E/sub_0805D280.inc", void sub_0805D280())

ASM_FUNC("asm/non_matching/manager2E/sub_0805D2C0.inc", void sub_0805D2C0())

ASM_FUNC("asm/non_matching/manager2E/sub_0805D2F4.inc", void sub_0805D2F4())

ASM_FUNC("asm/non_matching/manager2E/sub_0805D32C.inc", void sub_0805D32C())

ASM_FUNC("asm/non_matching/manager2E/sub_0805D344.inc", void sub_0805D344())

ASM_FUNC("asm/non_matching/manager2E/sub_0805D36C.inc", void sub_0805D36C())

ASM_FUNC("asm/non_matching/manager2E/sub_0805D384.inc", void sub_0805D384())