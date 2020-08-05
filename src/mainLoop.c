#include "global.h"
#include "functions.h"
#include "main.h"
#include "random.h"

extern void sub_0804FF84(u32);
extern void _DmaZero(void*, u32);

extern u32 gUnk_020176A0;
extern const void (*gUnk_08100CBC[])();
extern void VBlankInterruptWait(void);

void MainLoop(void) {
    int var0;

    sub_08055F70();
    sub_080A3204();
    sub_0805616C();
    sub_0807CE90();
    sub_080560B8();
    sub_08056208();
    gUnk_02000010.field_0x4 = 193;
    sub_0804FFE4();
    DmaSet(3, 0x5000000U, &gUnk_020176A0, 0x84000080U);
    sub_0804FF84(1);
    sub_08056418();
    sub_080ADD30();
    gRand = 0x1234567;
    _DmaZero(&gUnk_03001000, 16);
    sub_08056010(0);
    while (1) {
        ReadKeyInput();
        if (sub_08055FF4()) {
            sub_080560A8();
        }

        switch (gUnk_03001000.field_0x1) {
            case 1:
                sub_08056260();
                break;
            case 0:
            default:
                if (gUnk_03001000.countdown != 0) {
                    do {
                        VBlankIntrWait();
                    } while (--gUnk_03001000.countdown);
                }

                if (gUnk_03001000.field_0x9 != 0) {
                    gUnk_03001000.field_0x9--;
                    var0 = gUnk_03001000.field_0xa;
                    while (var0-- > 0) {
                        VBlankIntrWait();
                    }
                }

                gUnk_03001000.ticks++;
                gUnk_08100CBC[gUnk_03001000.loadType]();
                sub_08056458();
                sub_08050154();
                sub_080A3480();
                break;
        }

        sub_08016E78();
    }
}
