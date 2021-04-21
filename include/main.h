#ifndef MAIN_H
#define MAIN_H

typedef struct { // 0x03001000
    u8 field_0x0;
    u8 field_0x1;
    u8 field_0x2;
    u8 field_0x3;
    u8 field_0x4;
    u16 field_0x6;
    u8 field_0x8;
    u8 field_0x9;
    u8 field_0xa;
    u8 field_0xb;
    u32 spritePriority;
} MainStruct;

#define SIGNATURE 'MCZ3'
#define MAX_MSG_SPEED 3
#define NUM_SAVE_SLOTS 3
#define MAX_BRIGHTNESS 3

typedef enum {
    LANGUAGE_JP,
    LANGUAGE_EN,
    LANGUAGE_FR,
    LANGUAGE_DE,
    LANGUAGE_ES,
    LANGUAGE_IT,
    NUM_LANGUAGES,
} Language;

#ifdef ENGLISH
#define GAME_LANGUAGE LANGUAGE_EN
#else
#define GAME_LANGUAGE LANGUAGE_JP
#endif

enum {
    SCREEN_INTRO,
    SCREEN_CHOOSE_FILE,
    SCREEN_GAMEPLAY,
    SCREEN_GAME_OVER,
    SCREEN_CREDITS,
    SCREEN_DEBUG_TEXT,
};

typedef struct {
    vu8 interruptFlag;
    u8 field_0x1;
    u8 screen;
    u8 funcIndex;
    u8 transition;
    u8 field_0x5;
    u8 muteAudio;
    u8 field_0x7;
    u8 countdown;
    u8 field_0x9;
    u8 field_0xa;
    u16 ticks;
} Main;

typedef struct {
    /*0x00*/ u16 nextToLoad;
    /*0x02*/ u8 lastState;
    /*0x03*/ u8 field_0x3;
    /*0x04*/ u8 state;
    /*0x05*/ u8 field_0x5;
    /*0x06*/ u8 field_0x6;
    /*0x07*/ u8 pauseFadeIn;
    /*0x08*/ u16 isLoading;
    /*0x0A*/ u16 fadeInTime;
    /*0x0C*/ u8 fillerC[0x3A8];
} UI;
static_assert(sizeof(UI) == 0x3b4);

extern Main gMain;
extern UI gUnk_02032EC0;

void InitScreen(u32 screen);

extern void sub_08056208(void);
extern void sub_0804FFE4(void);
extern void sub_080ADD30(void);

extern void DoSoftReset(void);
extern void sub_08056260(void);
extern void VBlankIntrWait();
extern void MessageUpdate(void);
extern void sub_08050154(void);

extern u8 gUnk_03003DE4;

extern void sub_0804FF84(u32);
extern u16 gPaletteBuffer[];
extern void VBlankInterruptWait(void);
extern void DisableInterruptsAndDMA(void);
extern void sub_08016B34(void);

static void sub_08055F70(void);
static bool32 SoftResetKeysPressed(void);
#endif
