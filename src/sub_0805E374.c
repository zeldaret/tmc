#include "entity.h"
extern Entity* sub_0805E3A0(Entity*, u32);
extern u8 gUnk_030010A0[];
extern u8 gUnk_081091F8[];
extern u8 gUnk_081091EE[];
Entity* sub_0805E374(Entity* param_1) {
    u8 r3 = gUnk_030010A0[0x2C];
    u8* array = gUnk_081091F8;

    if (r3 != '\x02') {
        array = gUnk_081091EE;
    }
    return sub_0805E3A0(param_1, array[(param_1->entityType).type]);
}
