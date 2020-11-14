#include "global.h"
#include "entity.h"
#include "functions.h"

// extern void DmaZero(void*, u32);

typedef struct {
    u16 unk0;
    u16 filler2[32];
    u16 unk66;
} struct_0300110C;

extern struct_0300110C gUnk_0300110C;

void sub_080300AC(void) {
    _DmaZero(&gUnk_0300110C.unk0, 0x44);
    gUnk_0300110C.unk66 = 0xff;
}

void sub_080300C4(void) {
    if (gScreenTransition.field_0xae == 0xff) {
        gScreenTransition.field_0xac = 0;
        _DmaZero(&gScreenTransition.field_0x4c[32], 0x40);
    }
}
