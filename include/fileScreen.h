#ifndef FILESELECT_H
#define FILESELECT_H

#include "global.h"
#include "save.h"

typedef struct {
    u8 filler0[0x5];
    u8 state;
    u8 subState;
    u16 timer;
    u8 fillerA[0x26];
} ChooseFileState;

// TODO: This occupies the same memory region as gMenu
extern ChooseFileState gChooseFileState;

typedef struct {
    u8 filler0[0x1];
    u8 unk1;
    u8 charColor;
    u8 bgColor;
    u16 unk4;
    u16 unk6;
    u8* unk8;
} struct_02036540;

typedef struct {
    u8 filler0[0x10];
    u16 unk10;
    u8 filler12[0x6];
} struct_080FC844;

typedef struct {
    union SplitWord _0[8];
} struct_020227E8;

extern struct_020227E8 gUnk_020227E8;

typedef struct {
    /*0x00*/ u8 isTransitioning;
    /*0x01*/ u8 unk1;
    /*0x02*/ u8 unk2;
    /*0x03*/ u8 unk3;
    /*0x04*/ u8 unk4;
    /*0x05*/ u8 unk5;
    /*0x06*/ u8 unk6;
    /*0x07*/ u8 unk7;
    /*0x08*/ s8 saveStatus[3];
    /*0x0b*/ SaveFile saves[3];
} struct_02019EE0;
extern struct_02019EE0 gUnk_02019EE0;

extern void sub_08056FEC(u32, struct_020227E8*);
extern void sub_0805F46C(u32, void*);
extern void sub_0801C4A0(u32, u32);
extern void sub_08080668(void);
extern void sub_0805194C(u32);
extern void LoadPalettes(const u8*, int, int);
extern struct_02036540* sub_0805F2C8(void);
extern void sub_0805F7DC(u32, struct_02036540*);
extern void sub_0805F300(struct_02036540*);
extern void sub_08050A64(u32);
extern void sub_08050AFC(u32);

extern const struct_080FC844 gUnk_080FC844;
extern const u16 gUnk_080FC85C[][3];
extern void (*const gUnk_080FC908[])(void);
extern const u8 gGlobalGfxAndPalettes[];
extern void (*const gUnk_080FC93C[])();
extern u32 gUsedPalettes;
extern u8 gUnk_02000D00[];
extern u8 gUnk_02001B40;
extern u8 gUnk_02022030;

#endif