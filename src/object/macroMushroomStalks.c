#include "entity.h"

void sub_0808C964(Entity*);
void sub_0808CA10(Entity*);

void MacroMushromStalks(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_0808C964,
        sub_0808CA10,
    };
    actionFuncs[this->action](this);
}
