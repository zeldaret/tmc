#include "global.h"
#include "entity.h"
#include "area.h"
#include "main.h"
#include "functions.h"
#include "screen.h"

typedef struct {
    u8 filler[18];
    u32 unk;
} struct_02018EB0;

extern void sub_0805E5A8();

extern void (*const gUnk_080D4120[])();
extern void (*const gUnk_080D412C[])();

extern struct_02018EB0 gUnk_02018EB0;

u32 sub_0804AA84(void) {
    if (gArea.fadeOut != 0) {
        gUnk_03001000.transition = 4;
        gArea.filler[8] = 0;
        gArea.filler[9] = 0;
        *(u16*)&gArea.filler[10] = 0;
        sub_0805E5A8();
        return 1;
    } else {
        gArea.filler[18] = gArea.fadeOut;
        *(vu8*)&gArea.fadeOut = gArea.fadeOut;
        return 0;
    }
}

void sub_0804AAB8(void) {
    gUnk_080D4120[gArea.filler[8]]();
}

void sub_0804AAD4(void) {
    _DmaZero((void*)&gUnk_02018EB0, 0x28);
    gUnk_02018EB0.unk = 0;
    EraseAllEntities();
    CreateObject(0x3d, gArea.field_0x17, 0);
    gArea.filler[8]++;
}

void sub_0804AB04(void) {
    sub_0805E5C0();
    if (gArea.field_0x10 != 0) {
        sub_080AD90C();
        sub_080AD9B0();
        sub_080AD918();
    }
}

void sub_0804AB24(void) {
    if (!gFadeControl.active) {
        gScreen.lcd.displayControl = 0;
        sub_0801E104();
        gArea.filler[8] = 0;
        MenuFadeIn(6, 0);
        gFadeControl.active = 0;
    }
}

void sub_0804AB54(void) {
    gUnk_080D412C[gArea.filler[8]]();
}
