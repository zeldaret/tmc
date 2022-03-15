#define NENT_DEPRECATED
#include "entity.h"

extern void sub_0808C964(Entity*);
extern void sub_0808CA10(Entity*);

void Object76(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_0808C964,
        sub_0808CA10,
    };

    actionFuncs[this->action](this);
}
