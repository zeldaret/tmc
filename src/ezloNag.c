#include "global.h"
#include "audio.h"
#include "textbox.h"
#include "structures.h"

typedef struct {
    s8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 unk4;
    u8 unk5;
    u8 unk6;
    u8 unk7;
    u8 unk8;
    u8 unk9;
    u8 unkA;
    u8 unkB;
    u16 unkC;
    u16 unkE;
    u16 unk10;
    u8 unk12;
    u8 unk13;
} Element;

extern void sub_0805ECEC(u32, u32, u32, u32);
extern void sub_0801CAD0(Element*);

extern void (*const gUnk_080C904C[])(Element*);

extern u16 gUnk_080C9058[];

void EzloNag(Element* arg0) {
    gUnk_080C904C[arg0->unk4](arg0);
}

extern u32 gUnk_080C9094;
extern void sub_0801CAB8(Element*, u32*);

void sub_0801CED8(Element* arg0) {
    register struct_0200AF00* ptr asm("r0") = &gUnk_0200AF00;
    register u8* pFuncIndex asm("r1") = &(ptr->ezloNagFuncIndex);
    if (*pFuncIndex == 1) {
        register u8 constant_2 asm("r2") = 2; 
        *pFuncIndex = 2;
        arg0->unkC = 0x10;
        arg0->unkE = 0x90;
        arg0->unk6 = 0;
        arg0->unk1 = 7;
        arg0->unk4 = 1;
        {
            register u8 tmp3 asm("r0") = arg0->unk0 | constant_2;
            arg0->unk0 = tmp3;
        }
        sub_0801CAB8(arg0, &gUnk_080C9094);
    }
}

void sub_0801CF18(Element* arg0) {
    u32 temp;

    temp = gUnk_080C9058[arg0->unk6++];
    sub_0805ECEC(0, temp, temp, 0);
    if (temp == 0) {
        arg0->unk4 = 2;
        arg0->unk1 = 8;
        gUnk_0200AF00.ezloNagFuncIndex = 3;
        SoundReq(SFX_EZLO_UI);
    }
}

void sub_0801CF60(Element* arg0) {

    if ((gUnk_0200AF00.ezloNagFuncIndex >= 5) || (gMessage.doTextBox & 0x7f)) {
        arg0->unk4 = 0;
        arg0->unk0 &= -3;
        return;
    }
    sub_0801CAD0(arg0);
    if (arg0->unk13 == 1) {
        gUnk_0200AF00.ezloNagFuncIndex = 4;
    }
}
