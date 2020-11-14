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

enum {
    SCREEN_INTRO,
    SCREEN_CHOOSE_FILE,
    SCREEN_GAMEPLAY,
    SCREEN_GAME_OVER,
    SCREEN_CREDITS,
    SCREEN_DEBUG_TEXT,
};

typedef struct {
    u8 interruptFlag;
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
    /*0x02*/ u8 transitionType;
    /*0x03*/ u8 field_0x3;
    /*0x04*/ u8 state;
    /*0x05*/ u8 field_0x5;
    /*0x06*/ u8 field_0x6;
    /*0x07*/ u8 pauseFadeIn;
    /*0x08*/ u16 isLoading;
    /*0x0A*/ u16 fadeInTime;
    /*0x0C*/ u8 fillerC[0x3A8];
} UI;

extern Main gUnk_03001000;
extern UI gUnk_02032EC0;

extern void sub_080A3204(void);
extern void sub_0807CE90(void);
extern void sub_080560B8(void);
extern void sub_08056208(void);
extern void sub_0804FFE4(void);
extern void sub_08056418(void);
extern void sub_080ADD30(void);

extern void InitScreen(u32);
extern void sub_08016E78(void);
extern void ReadKeyInput(void);
extern void DoSoftReset(void);
extern void sub_08056260(void);
extern void VBlankIntrWait();
extern s32 _call_via_r0(s32);
extern void sub_08056458(void);
extern void sub_08050154(void);
extern void sub_080A3480(void);

#endif
