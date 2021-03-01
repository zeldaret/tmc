#include "global.h"
#include "entity.h"
#include "screen.h"

extern void sub_080576A0();
extern void sub_08052D74();
extern void sub_0805754C(Entity*);

void Manager2(Entity* this) {
    if (this->action == 0) {
        this->action = 1;
        gScreen.affine.bg3Updated = 0;
        gScreen.bg.bg1Updated = 0;
        sub_08052D74(this, sub_080576A0, 0);
    }
    sub_0805754C(this);
}
