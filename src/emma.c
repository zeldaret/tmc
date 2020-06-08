#include "global.h"
#include "entity.h"

extern u32 gUnk_0813AD10;
extern u32 gUnk_0813AD24;
extern u32 gUnk_0813AD38;

extern void sub_0805E3A0(Entity *, u32);
extern void sub_0807DD50(Entity *);
extern void sub_0807DD94(Entity *, u32);
extern void sub_08080840(u32 *);

void sub_0806C550(Entity *param_1)

{
    if (param_1->action == 0) {
        param_1->action += 1;
        sub_0805E3A0(param_1,2);
        sub_0807DD50(param_1);
    }
    else {
        sub_0807DD94(param_1,0);
    }
    return;
}

void sub_0806C578(void)

{
    sub_08080840(&gUnk_0813AD10);
    return;
}

void sub_0806C588(void)

{
    sub_08080840(&gUnk_0813AD24);
    return;
}

void FUN_0806c598(void)

{
    sub_08080840(&gUnk_0813AD38);
    return;
}