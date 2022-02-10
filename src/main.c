#include "sound.h"
#include "functions.h"
#include "main.h"
#include "screen.h"
#include "common.h"
#include "save.h"
#include "message.h"
#include "interrupts.h"

extern u32 gRand;

static void InitOverlays(void);
static bool32 SoftResetKeysPressed(void);
static u32 CheckHeaderValid(void);

void (*const sTaskHandlers[])(void) = {
    [TASK_TITLE] = TitleTask,
#ifdef DEMO_USA
    [TASK_FILE_SELECT] = DemoTask,
#else
    [TASK_FILE_SELECT] = FileSelectTask,
#endif

    [TASK_GAME] = GameTask,           [TASK_GAMEOVER] = GameOverTask,
    [TASK_STAFFROLL] = StaffrollTask, [TASK_DEBUG] = DebugTask,
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
    SetTask(TASK_TITLE);
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

                gMain.ticks.HWORD++;
                sTaskHandlers[gMain.task]();
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

void SetTask(u32 task) {
    gMain.task = task;
    gMain.state = 0;
    gMain.substate = 0;
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
    u8 msg_speed;
    u8 brightness;
    u8 language;
    u8 name[6];
    u8 invalid;
    u8 initialized;
} Defaults;

const Defaults sDefaultSettings = {
    .signature = SIGNATURE,
    .saveFileId = 0,
    .msg_speed = 1,
    .brightness = 1,
#ifdef EU
    .language = 2, // TODO in EU 2 is english?
#else
    .language = GAME_LANGUAGE,
#endif
    .name = "LINK",
    .invalid = 0,
    .initialized = 0,
};

// single misplaced ldr
NONMATCH("asm/non_matching/sub_080560B8.inc", static void sub_080560B8(void)) {
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

    b = (gUnk_02000010.signature ^ SIGNATURE) != 0;

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
        (gSaveHeader->msg_speed >= MAX_MSG_SPEED) || (gSaveHeader->brightness >= MAX_BRIGHTNESS)
#ifdef EU
        || (gSaveHeader->language <= GAME_LANGUAGE) || (gSaveHeader->language > NUM_LANGUAGES)
#else
        || (gSaveHeader->language != GAME_LANGUAGE)
#endif
        || (gSaveHeader->invalid))
        return FALSE;

    return TRUE;
}

void InitDMA(void) {
    SoundReq(SONG_VSYNC_OFF);
    gScreen._6d = gScreen._6c;
    gScreen._6c = 0;

    DmaStop(0);

    DmaWait(0);
    DmaWait(1);
    DmaWait(2);
    DmaWait(3);
}

void sub_08056208(void) {
    SoundReq(SONG_VSYNC_ON);
    gScreen._6c = gScreen._6d;
    gScreen._6d = 0;
}

void sub_0805622C(void* a1, u32 a2, u32 a3) {
    gScreen._70 = a1;
    gScreen._74 = a2;
    gScreen._78 = a3;
    gScreen._6c = 1;
    gUnk_03003DE4 ^= 1;
}

void sub_08056250(void) {
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
    u32 x = ((gRoomControls.scroll_x - gRoomControls.origin_x) - x0 + DISPLAY_WIDTH);
    u32 y = ((gRoomControls.scroll_y - gRoomControls.origin_y) - y0 + DISPLAY_HEIGHT);
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

void PlayerItemNulled2(void) {
    DeleteThisEntity();
}

void PlayerItemNulled(void) {
    DeleteThisEntity();
}
