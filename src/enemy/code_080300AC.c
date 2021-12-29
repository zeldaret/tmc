#include "global.h"
#include "utils.h"
#include "functions.h"

void sub_080300AC(void) {
    MemClear(&gScreenTransition.armos_data, sizeof(gScreenTransition.armos_data));
    gScreenTransition.armos_data.field_0xae = 0xff;
}

void sub_080300C4(void) {
    if (gScreenTransition.armos_data.field_0xae == 0xff) {
        gScreenTransition.armos_data.field_0xac = 0;
        MemClear(&gScreenTransition.armos_data.data, sizeof(gScreenTransition.armos_data.data));
    }
}
