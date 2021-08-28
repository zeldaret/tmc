#include "global.h"
#include "entity.h"
#include "screen.h"
#include "functions.h"

extern void sub_080576A0();
extern void sub_0805754C(Entity*);

void Manager2_Main(Entity* this) {
    if (this->action == 0) {
        this->action = 1;
        gScreen.affine.bg3Updated = 0;
        gScreen.bg.bg1Updated = 0;
        sub_08052D74(this, sub_080576A0, 0);
    }
    sub_0805754C(this);
}

ASM_FUNC("asm/non_matching/manager2/sub_0805754C.inc", void sub_0805754C(Entity* this))

ASM_FUNC("asm/non_matching/manager2/sub_080575C8.inc", void sub_080575C8(u32 param))

ASM_FUNC("asm/non_matching/manager2/sub_08057688.inc", void sub_08057688())

ASM_FUNC("asm/non_matching/manager2/sub_080576A0.inc", void sub_080576A0())