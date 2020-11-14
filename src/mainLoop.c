#include "global.h"
#include "functions.h"
#include "main.h"
#include "random.h"
#include "readKeyInput.h"

extern void sub_0804FF84(u32);
extern u16 gPaletteBuffer[];
extern void VBlankInterruptWait(void);
extern void DisableInterruptsAndDMA(void);
extern void _DmaCopy(void*, u8*, int);
extern void sub_08016B34(void);

static void sub_08055F70(void);
static bool32 SoftResetKeysPressed(void);

static void (*const sScreenHandlers[])(void) = {
    [SCREEN_INTRO] = HandleIntroScreen,       [SCREEN_CHOOSE_FILE] = HandleChooseFileScreen,
    [SCREEN_GAMEPLAY] = HandleGameplayScreen, [SCREEN_GAME_OVER] = HandleGameOverScreen,
    [SCREEN_CREDITS] = HandleCreditsScreen,   [SCREEN_DEBUG_TEXT] = HandleDebugTextScreen,
};

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
    DmaCopy32(3, BG_PLTT, gPaletteBuffer, BG_PLTT_SIZE);
    sub_0804FF84(1);
    sub_08056418();
    sub_080ADD30();
    gRand = 0x1234567;
    _DmaZero(&gUnk_03001000, sizeof(gUnk_03001000));
    InitScreen(SCREEN_INTRO);
    while (1) {
        ReadKeyInput();
        if (SoftResetKeysPressed()) {
            DoSoftReset();
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
                sScreenHandlers[gUnk_03001000.screen]();
                sub_08056458();
                sub_08050154();
                sub_080A3480();
                break;
        }

        sub_08016E78();
    }
}

// Interrupt handlers that are loaded into RAM.
extern u8 sub_080B197C[];
extern u8 gUnk_030056F0[];
extern u8 gUnk_02038560[];
extern u8 gUnk_080B2CD8[];
extern u8 gUnk_080B2CD8_2[];
extern u8 gUnk_080B2CD8_3[];
extern u8 gUnk_02000030[];

static void sub_08055F70(void) {
    u32 size;

    DisableInterruptsAndDMA();
    RegisterRamReset(RESET_ALL & ~RESET_EWRAM);
    *(vu16*)BG_PLTT = 0x7FFF;
    REG_WAITCNT = WAITCNT_PREFETCH_ENABLE | WAITCNT_WS0_S_1 | WAITCNT_WS0_N_3;
    size = 0x3FFD0;
    _DmaZero(gUnk_02000030, size);
    size = (u32)gUnk_080B2CD8 - (u32)sub_080B197C;
    if (size != 0) {
        _DmaCopy(sub_080B197C, gUnk_030056F0, size);
    }

    size = (u32)gUnk_080B2CD8_2 - (u32)gUnk_080B2CD8_3;
    if (size != 0) {
        _DmaCopy(gUnk_080B2CD8_3, gUnk_02038560, size);
    }

    sub_0801DA90(0);
    sub_08016B34();
}

#define SOFT_RESET_KEYS (A_BUTTON | B_BUTTON | SELECT_BUTTON | START_BUTTON)

static bool32 SoftResetKeysPressed(void) {
    return (gUnk_03000FF0.heldKeys & SOFT_RESET_KEYS) == SOFT_RESET_KEYS;
}

void InitScreen(u32 screen) {
    gUnk_03001000.screen = screen;
    gUnk_03001000.funcIndex = 0;
    gUnk_03001000.transition = 0;
}

void DisableInterruptsAndDMA(void) {
    REG_IME = 0;
    REG_IE = 0;
    REG_DISPSTAT = 0;
    REG_IF = 0;
    REG_IME = 0;

    DmaStop(0);
    DmaStop(1);
    DmaStop(2);
    DmaStop(3);
}

void DoSoftReset(void) {
    DisableInterruptsAndDMA();
    SoftReset(RESET_ALL & ~(RESET_EWRAM | RESET_SIO_REGS));
}
