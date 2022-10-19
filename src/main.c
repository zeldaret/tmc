/**
 * @file main.c
 *
 * @brief Contains the main game loop.
 */
#include "main.h"

#include "common.h"
#include "functions.h"
#include "game.h"
#include "interrupts.h"
#include "message.h"
#include "save.h"
#include "screen.h"
#include "sound.h"

extern u32 gRand;

static void InitOverlays(void);
static bool32 SoftResetKeysPressed(void);
/*static*/ u32 CheckHeaderValid(void);
/*static*/ void InitSaveHeader(void);

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

void AgbMain(void) {
    // Initialization
    InitOverlays();
    InitSound();
    InitDMA();
    InitSaveData();
    InitSaveHeader();
    InitVBlankDMA();
    gUnk_02000010.field_0x4 = 0xc1;
    InitFade();
    DmaCopy32(3, BG_PLTT, gPaletteBuffer, BG_PLTT_SIZE);
    SetBrightness(1);
    MessageInitialize();
    ResetPalettes();
    gRand = 0x1234567;
    MemClear(&gMain, sizeof(gMain));
    SetTask(TASK_TITLE);

    // Game Loop
    while (TRUE) {
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
                sTaskHandlers[gMain.task]();
                MessageMain();
                FadeMain();
                AudioMain();
                break;
        }
        WaitForNextFrame();
    }
}

extern u8 gUnk_02000030[];
// Interrupt handlers that are loaded into RAM.
extern u8 sub_080B197C[];
extern u8 ram_sub_080B197C[];
extern u8 RAMFUNCS_END[];

extern u8 gCopyToEndOfEwram_Start[];
extern u8 gCopyToEndOfEwram_End[];
extern u8 gEndOfEwram[];

static void InitOverlays(void) {
    u32 size;

    DisableInterruptsAndDMA();
    RegisterRamReset(RESET_ALL & ~RESET_EWRAM);
    *(vu16*)BG_PLTT = 0x7FFF;
    REG_WAITCNT = WAITCNT_PREFETCH_ENABLE | WAITCNT_WS0_S_1 | WAITCNT_WS0_N_3;
    size = 0x3FFD0;
    MemClear(gUnk_02000030, size);
    size = (u32)RAMFUNCS_END - (u32)sub_080B197C;
    if (size != 0) {
        MemCopy(sub_080B197C, ram_sub_080B197C, size);
    }

    size = (u32)gCopyToEndOfEwram_End - (u32)gCopyToEndOfEwram_Start;
    if (size != 0) {
        MemCopy(gCopyToEndOfEwram_Start, gEndOfEwram, size);
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
    gMain.state = GAMETASK_TRANSITION;
    gMain.substate = GAMEMAIN_INITROOM;
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

const SaveHeader sDefaultSettings = {
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

void InitSaveHeader(void) {
    u32 b;

    if (!CheckHeaderValid()) {
        switch ((s32)ReadSaveHeader(gSaveHeader)) {
            case 1:
                if (CheckHeaderValid())
                    break;
            case 0:
            case -1:
            default:
                MemCopy(&sDefaultSettings, gSaveHeader, sizeof(SaveHeader));
                WriteSaveHeader(gSaveHeader);
                break;
        }
    }

    if (gUnk_02000010.signature ^ SIGNATURE) {
        b = TRUE;
    } else {
        b = FALSE;
    }

    if ((gUnk_02000010.field_0x4 != 0) && (gUnk_02000010.field_0x4 != 0xc1)) {
        b = TRUE;
    }
    if (b) {
        FORCE_REGISTER(struct_02000010 * ptr, r4) = &gUnk_02000010;
        MemClear(ptr, sizeof gUnk_02000010);
        ptr->signature = SIGNATURE;
    }
}

/*static*/ u32 CheckHeaderValid(void) {
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
    gScreen.vBlankDMA.readyBackup = gScreen.vBlankDMA.ready;
    gScreen.vBlankDMA.ready = FALSE;

    DmaStop(0);

    DmaWait(0);
    DmaWait(1);
    DmaWait(2);
    DmaWait(3);
}

void InitVBlankDMA(void) {
    SoundReq(SONG_VSYNC_ON);
    gScreen.vBlankDMA.ready = gScreen.vBlankDMA.readyBackup;
    gScreen.vBlankDMA.readyBackup = FALSE;
}

void SetVBlankDMA(u16* src, u16* dest, u32 size) {
    gScreen.vBlankDMA.src = src;
    gScreen.vBlankDMA.dest = dest;
    gScreen.vBlankDMA.size = size;
    gScreen.vBlankDMA.ready = TRUE;
    gUnk_03003DE4[0] ^= 1;
}

void DisableVBlankDMA(void) {
    gScreen.vBlankDMA.ready = FALSE;
}

void SetSleepMode(void) {
    u32 restore;
    Main* main;

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
    main = &gMain;
    *(vu8*)&main->sleepStatus; // force a read
    main->sleepStatus = 0;
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

/**
 * Iterate over array of AABBs and check if any fit on screen
 */
u32 CheckRegionsOnScreen(const u16* arr) {
    const u16* i;
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
