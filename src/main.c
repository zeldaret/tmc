#include "audio.h"
#include "functions.h"
#include "main.h"
#include "screen.h"
#include "utils.h"
#include "save.h"
#include "textbox.h"
#include "interrupts.h"

extern u32 gRand;

extern void HandleIntroScreen(void);
extern void HandleChooseFileScreen(void);
extern void HandleChooseDemoScreen(void);
extern void HandleGameplayScreen(void);
extern void HandleGameOverScreen(void);
extern void HandleCreditsScreen(void);
extern void HandleDebugTextScreen(void);

static void InitOverlays(void);
static bool32 SoftResetKeysPressed(void);
static u32 CheckHeaderValid(void);

void (*const sScreenHandlers[])(void) = {
    [SCREEN_INTRO] = HandleIntroScreen,
#ifdef DEMO_USA
    [SCREEN_CHOOSE_FILE] = HandleChooseDemoScreen,
#else
    [SCREEN_CHOOSE_FILE] = HandleChooseFileScreen,
#endif

    [SCREEN_GAMEPLAY] = HandleGameplayScreen,
    [SCREEN_GAME_OVER] = HandleGameOverScreen,
    [SCREEN_CREDITS] = HandleCreditsScreen,
    [SCREEN_DEBUG_TEXT] = HandleDebugTextScreen,
};

static void sub_080560B8(void);

void AgbMain(void) {
    InitOverlays();
    InitSound();
    InitDMA();
    InitSaveData();
    sub_080560B8();
    sub_08056208();
    gUnk_02000010.field_0x4 = 193;
    InitFade();
    DmaCopy32(3, BG_PLTT, gPaletteBuffer, BG_PLTT_SIZE);
    SetBrightness(1);
    MessageInitialize();
    ResetPalettes();
    gRand = 0x1234567;
    MemClear(&gMain, sizeof(gMain));
    InitScreen(SCREEN_INTRO);
    while (1) {
        ReadKeyInput();
        if (SoftResetKeysPressed()) {
            DoSoftReset();
        }

        switch (gMain.sleepStatus) {
            case SLEEP:
                SetSleepMode();
                break;
            case DEFAULT:
            default:
                if (gMain.pauseFrames != 0) {
                    do {
                        VBlankIntrWait();
                    } while (--gMain.pauseFrames);
                }

                if (gMain.pauseCount != 0) {
                    int cnt;
                    gMain.pauseCount--;
                    cnt = gMain.pauseInterval;
                    while (cnt-- > 0) {
                        VBlankIntrWait();
                    }
                }

                gMain.ticks++;
                sScreenHandlers[gMain.screen]();
                MessageMain();
                FadeMain();
                AudioMain();
                break;
        }
        WaitForNextFrame();
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

static void InitOverlays(void) {
    u32 size;

    DisableInterruptsAndDMA();
    RegisterRamReset(RESET_ALL & ~RESET_EWRAM);
    *(vu16*)BG_PLTT = 0x7FFF;
    REG_WAITCNT = WAITCNT_PREFETCH_ENABLE | WAITCNT_WS0_S_1 | WAITCNT_WS0_N_3;
    size = 0x3FFD0;
    MemClear(gUnk_02000030, size);
    size = (u32)gUnk_080B2CD8 - (u32)sub_080B197C;
    if (size != 0) {
        MemCopy(sub_080B197C, gUnk_030056F0, size);
    }

    size = (u32)gUnk_080B2CD8_2 - (u32)gUnk_080B2CD8_3;
    if (size != 0) {
        MemCopy(gUnk_080B2CD8_3, gUnk_02038560, size);
    }

    DispReset(0);
    EnableVBlankIntr();
}

#define SOFT_RESET_KEYS (A_BUTTON | B_BUTTON | SELECT_BUTTON | START_BUTTON)

static bool32 SoftResetKeysPressed(void) {
    return (gInput.heldKeys & SOFT_RESET_KEYS) == SOFT_RESET_KEYS;
}

void InitScreen(u32 screen) {
    gMain.screen = screen;
    gMain.funcIndex = 0;
    gMain.transition = 0;
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

typedef struct {
    int signature;
    u8 saveFileId;
    u8 messageSpeed;
    u8 brightnessPref;
    u8 gameLanguage;
    u8 name[6];
    u8 _e;
    u8 _f;
} Defaults;

const Defaults sDefaultSettings = {
    .signature = SIGNATURE,
    .saveFileId = 0,
    .messageSpeed = 1,
    .brightnessPref = 1,
#ifdef EU
    .gameLanguage = 2, // TODO in EU 2 is english?
#else
    .gameLanguage = GAME_LANGUAGE,
#endif
    .name = "LINK",
    ._e = 0,
    ._f = 0,
};

// single misplaced ldr
NONMATCH("asm/non_matching/sub_080560B8.inc", static void sub_080560B8(void)) {
    u32 temp;
    u32 b;

    if (!CheckHeaderValid()) {
        switch ((s32)Read_02000000(gSaveHeader)) {
            case 1:
                if (CheckHeaderValid())
                    break;
            case 0:
            case -1:
            default:
                MemCopy(&sDefaultSettings, gSaveHeader, sizeof *gSaveHeader);
                Write_02000000(gSaveHeader);
                break;
        }
    }

    temp = gUnk_02000010.signature ^ SIGNATURE;
    b = BOOLCAST(temp);

    if ((gUnk_02000010.field_0x4 != 0) && (gUnk_02000010.field_0x4 != 0xc1)) {
        b = TRUE;
    }
    if (b) {
        MemClear(&gUnk_02000010, sizeof gUnk_02000010);
        gUnk_02000010.signature = SIGNATURE;
    }
}
END_NONMATCH

static u32 CheckHeaderValid(void) {
    if ((gSaveHeader->signature != SIGNATURE) || (gSaveHeader->saveFileId >= NUM_SAVE_SLOTS) ||
        (gSaveHeader->messageSpeed >= MAX_MSG_SPEED) || (gSaveHeader->brightnessPref >= MAX_BRIGHTNESS)
#ifdef EU
        || (gSaveHeader->gameLanguage <= GAME_LANGUAGE) || (gSaveHeader->gameLanguage > NUM_LANGUAGES)
#else
        || (gSaveHeader->gameLanguage != GAME_LANGUAGE)
#endif
        || (gSaveHeader->_e != 0))
        return FALSE;

    return TRUE;
}

void InitDMA() {
    SoundReq(SONG_VSYNC_OFF);
    gScreen._6d = gScreen._6c;
    gScreen._6c = 0;

    DmaStop(0);

    DmaWait(0);
    DmaWait(1);
    DmaWait(2);
    DmaWait(3);
}

void sub_08056208() {
    SoundReq(SONG_VSYNC_ON);
    gScreen._6c = gScreen._6d;
    gScreen._6d = 0;
}

void sub_0805622C(u32 a1, u32 a2, u32 a3) {
    gScreen._70 = a1;
    gScreen._74 = a2;
    gScreen._78 = a3;
    gScreen._6c = 1;
    gUnk_03003DE4 ^= 1;
}

void sub_08056250() {
    gScreen._6c = 0;
}

void SetSleepMode(void) {
    u32 restore;
    Main* m;

    REG_DISPCNT = DISPCNT_FORCED_BLANK;
    REG_KEYCNT = KEY_AND_INTR | L_BUTTON | R_BUTTON | SELECT_BUTTON;
    REG_IME = 0;
    restore = REG_IE;
    REG_IE = INTR_FLAG_KEYPAD | INTR_FLAG_GAMEPAK;
    REG_IME = 1;
    Stop();
    REG_IME = 0;
    REG_IE = restore;
    REG_IME = 1;
    m = &gMain;
    *(vu8*)&m->sleepStatus; // force a read
    m->sleepStatus = 0;
}

// Convert AABB to screen coordinates and check if it's within the viewport
u32 CheckRegionOnScreen(u32 x0, u32 y0, u32 x1, u32 y1) {
    u32 result;
    u32 x = ((gRoomControls.roomScrollX - gRoomControls.roomOriginX) - x0 + DISPLAY_WIDTH);
    u32 y = ((gRoomControls.roomScrollY - gRoomControls.roomOriginY) - y0 + DISPLAY_HEIGHT);
    u32 a = x1 + DISPLAY_WIDTH;
    u32 b = y1 + DISPLAY_HEIGHT;
    if ((x < a) && (y < b))
        result = TRUE;
    else
        result = FALSE;
    return result;
}

// Iterate over array of AABBs and check if any fit on screen
u16 CheckRegionsOnScreen(u16* arr) {
    u16* i;
    for (i = arr; *i != 0xff; i += 5) {
        if (CheckRegionOnScreen(i[1], i[2], i[3], i[4]))
            return *i;
    }
    return 0xff;
}

void PlayerItemNulled2() {
    DeleteThisEntity();
}

void PlayerItemNulled() {
    DeleteThisEntity();
}
