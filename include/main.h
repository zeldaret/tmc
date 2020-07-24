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

typedef struct {
    u8 interruptFlag;
    u8 field_0x1;
    u8 funcIndex;
    u8 field_0x3;
    u8 transition;
    u8 field_0x5;
    u8 muteAudio;
    u8 field_0x8;
    u8 countdown;
} Main;

typedef struct {
    u16 nextToLoad;
    u8 transitionType;
    u8 field_0x3;
    u8 state;
    u8 field_0x5;
    u8 field_0x6;
    u8 pauseFadeIn;
    u16 isLoading;
    u16 fadeInTime;
} UI;

extern Main gUnk_03001000;
extern UI gUnk_02032EC0;



extern s32 sub_08055F70();
extern s32 sub_080A3204(s32);
extern s32 sub_0805616C(s32);
extern s32 sub_0807CE90(s32);
extern s32 sub_080560B8(s32);
extern void sub_08056208(s32);
extern void sub_0804FFE4();
extern s32 sub_08056418();
extern void sub_080ADD30(s32);

extern s32 sub_08056010(s32);
extern s32 sub_08016E78(s32);
extern s32 ReadKeyInput();
extern s32 sub_08055FF4(u8);
extern void sub_080560A8();
extern s32 sub_08056260();
extern void VBlankIntrWait();
extern s32 _call_via_r0(s32);
extern s32 sub_08056458(s32);
extern s32 sub_08050154(s32);
extern s32 sub_080A3480(s32);

extern s32 gRand;
extern s32 gUnk_08100CBC;
#endif