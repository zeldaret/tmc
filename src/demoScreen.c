#include "global.h"
#include "functions.h"
#include "main.h"
#include "utils.h"
#include "textbox.h"
#include "fileScreen.h"
#include "screen.h"

extern void (*const demoFunctions[])(void);
void sub_080A30AC();

extern u8 gUnk_02000004;
void sub_080A3198(u32, u32);

extern u8 gUnk_02017760[];
extern u8 gUnk_08A05751[];

// sprite_table
extern void gUnk_089FD1B4;
extern void gUnk_089FD2F4;

extern u8 gUnk_02000006;

void HandleChooseDemoScreen(void) {
    FlushSprites();
    demoFunctions[gMain.funcIndex]();
    sub_080A30AC();
    sub_080AD918();
}

void sub_080A2E40(void) {
    DispReset(1);
    InitSoundPlayingInfo();
    MemClear((void*)VRAM, 0x80);
    MessageInitialize();
    EraseAllEntities();
    ResetPalettes();
    sub_0801CFA8(0);
    MemClear(&gUnk_02032EC0, sizeof gUnk_02032EC0);
    MemClear(&gChooseFileState, sizeof gChooseFileState);
    MemClear(&gBG0Buffer, sizeof gBG0Buffer);
    sub_08053320();
    LoadPaletteGroup(0xb5);
    LoadGfxGroup(0x56);
    MemCopy(&gUnk_089FD1B4, &gUnk_02017760[0], 0x100);
    MemCopy(&gUnk_089FD1B4, &gUnk_02017760[0x200], 0x100);
    MemCopy(&gUnk_089FD2F4, (void*)0x6000000, 0x8000);
    MemCopy(&gUnk_089FD2F4, (void*)0x6010000, 0x8000);
    MemCopy(&gUnk_08A05751, &gBG1Buffer, 0x800);
    MemCopy(&gUnk_08A05751[0x800], &gBG2Buffer, 0x800);
    gScreen.lcd.displayControl = 0x1f00;
    gScreen.bg1.control = 0x1c81;
    gScreen.bg2.control = 0x1d82;
    gScreen.bg3.control = 0x1e0b;
    gScreen.bg1.updated = 1;
    gScreen.bg2.updated = 1;
    gScreen.bg3.updated = 1;
    gScreen.controls.layerFXControl = 0x1044;
    gScreen.controls.alphaBlend = 0xb04;
    {
        // TODO write to 0x2000004
        u32 addr = (0x80 << 0x12);
        *(u8*)(addr + 4) = 0;
    }
    sub_080A3198(0, 0);
    gMain.funcIndex = 1;
    SoundReq(BGM_FILE_SELECT);
    DoFade(4, 8);
}

void sub_080A2F8C(void) {
    if (gFadeControl.active == 0) {
        switch (gMain.transition) {
            case 0:
                gMain.transition = 1;
                {
                    // TODO write to 0x2000005
                    u32 addr = (0x80 << 0x12);
                    *(u8*)(addr + 5) = 1;
                    *(u8*)(addr + 6) = 1;
                }
                gMain.funcIndex = 2;
                DoFade(5, 8);
                break;
            case 1:
                InitScreen(2);
                break;
        }
    }
}

ASM_FUNC("asm/non_matching/demoScreen/sub_080A2FD0.inc", void sub_080A2FD0(void))

ASM_FUNC("asm/non_matching/demoScreen/sub_080A30AC.inc", void sub_080A30AC(void))

ASM_FUNC("asm/non_matching/demoScreen/sub_080A3198.inc", void sub_080A3198(u32 param_1, u32 param_2))
