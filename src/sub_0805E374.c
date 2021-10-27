#include "entity.h"
#include "structures.h"

extern Entity* sub_0805E3A0(Entity*, u32);
extern u8 gUnk_081091F8[];
extern u8 gUnk_081091EE[];

Entity* sub_0805E374(Entity* param_1) {
    u8 r3 = gScreenTransition.field_0x24[8];
    u8* array = gUnk_081091F8;

    if (r3 != 2) {
        array = gUnk_081091EE;
    }
    return sub_0805E3A0(param_1, array[param_1->kind]);
}
