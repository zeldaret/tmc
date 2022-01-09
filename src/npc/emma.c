#include "entity.h"
#include "script.h"
#include "functions.h"

extern ScreenTransitionData gUnk_0813AD10;
extern ScreenTransitionData gUnk_0813AD24;
extern ScreenTransitionData gUnk_0813AD38;

void Emma(Entity* this) {
    if (this->action == 0) {
        this->action += 1;
        SetDefaultPriority(this, PRIO_MESSAGE);
        sub_0807DD50(this);
    } else {
        sub_0807DD94(this, 0);
    }
}

void sub_0806C578(void) {
    DoExitTransition(&gUnk_0813AD10);
}

void sub_0806C588(void) {
    DoExitTransition(&gUnk_0813AD24);
}

void sub_0806C598(void) {
    DoExitTransition(&gUnk_0813AD38);
}
