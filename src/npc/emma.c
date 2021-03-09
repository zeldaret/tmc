#include "global.h"
#include "entity.h"
#include "functions.h"

extern u32 gUnk_0813AD10;
extern u32 gUnk_0813AD24;
extern u32 gUnk_0813AD38;

extern void sub_0807DD94(Entity*, u32);
extern void DoExitTransition(u32*);

void Emma(Entity* param_1) {
    if (param_1->action == 0) {
        param_1->action += 1;
        sub_0805E3A0(param_1, 2);
        sub_0807DD50(param_1);
    } else {
        sub_0807DD94(param_1, 0);
    }
}

void sub_0806C578(void) {
    DoExitTransition(&gUnk_0813AD10);
}

void sub_0806C588(void) {
    DoExitTransition(&gUnk_0813AD24);
}

void FUN_0806c598(void) {
    DoExitTransition(&gUnk_0813AD38);
}
