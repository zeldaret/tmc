#include "global.h"
#include "main.h"

#if 0

typedef struct {
    u8 interruptFlag;
    u8 field_0x1;
    u8 loadType;
    u8 funcIndex;
    u8 transition;
    u16 field_0x5;
    u8 muteAudio;
    u8 field_0x8;
    u8 countdown;
    u8 field_0xa;
    u8 field_0xb;
    u16 ticks;
    u8 field_0xe;
    u8 field_0xf;
} MainStruct;

extern void sub_08055F70(void);
extern void sub_080A3204(void);
extern void sub_0805616C(void);
extern void sub_0807CE90(void);
extern void sub_080560B8(void);
extern void sub_08056208(void);
extern void sub_0804FFE4(void);
extern void sub_0804FF84(u32);
extern void sub_08056418(void);
extern void sub_080ADD30(void);
extern void sub_0801D630(void*, u32);
extern void sub_08056010(u32);
extern void ReadKeyInput();
extern u32 sub_08055FF4();
extern void sub_080560A8(void);
extern void sub_08056458(void);
extern void sub_08050154(void);
extern void sub_080A3480(void);
extern void sub_08016E78(void);
extern void sub_08056260(void);

extern u8 gUnk_02000014;
extern u32 gUnk_020176A0;
extern u32 gRand;
extern MainStruct gUnk_03001000;
extern void (*gUnk_08100CBC[])();
extern void VBlankInterruptWait(void);

void MainLoop(void) {
    bool32 codeInputted;
    u8 cVar1;
    u32 uVar2;
    MainStruct *s;

    sub_08055F70();
    sub_080A3204();
    sub_0805616C();
    sub_0807CE90();
    sub_080560B8();
    sub_08056208();
    gUnk_02000014 = 193;
    sub_0804FFE4();
    DmaSet(3, 0x5000000U, &gUnk_020176A0, 0x84000080U);
    sub_0804FF84(1);
    sub_08056418();
    sub_080ADD30();
    gRand = 0x1234567;
    s = &gUnk_03001000;
    sub_0801D630(s, 16);
    sub_08056010(0);
    while (1) {
        ReadKeyInput();
        codeInputted = sub_08055FF4();
        if (codeInputted) {
            sub_080560A8();
        }
        if ((s->field_0x1 != 0) || (s->field_0x1 == 1)) {
            sub_08056260();
        } else if (s->field_0x8 != 0) {
                while (--s->field_0x8) {
                    VBlankInterruptWait();
                }
            }
            if (s->countdown != 0) {
                s->countdown--;
                uVar2 = s->field_0xa;
                while (uVar2 > 0) {
                    VBlankIntrWait();
                    uVar2--;
                }
            }
            s->ticks++;
            gUnk_08100CBC[s->loadType]();
            sub_08056458();
            sub_08050154();
            sub_080A3480();
        }
        sub_08016E78();
}

#endif

NAKED
void MainLoop(void) {
    asm(".include \"asm/non_matching/mainLoop.inc\"");
}
