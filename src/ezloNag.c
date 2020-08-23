#include "global.h"
#include "entity.h"
#include "functions.h"
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

///////////////////////////////////////////////////////////////

extern void sub_0805ECEC(u32, u32, u32, u32);
extern void sub_0801CAD0(Element*);

extern void (*const gUnk_080C904C[])(Element*);

extern u16 gUnk_080C9058[];

void EzloNag(Element* arg0) {
    gUnk_080C904C[arg0->unk4](arg0);
}

#ifdef NON_MATCHING // REG SWAP
extern u32 gUnk_080C9094;

void sub_0801CED8(Element* arg0) {
    if (gUnk_0200AF00.ezloNagFuncIndex == 1) {
        gUnk_0200AF00.ezloNagFuncIndex = 2;
        arg0->unkC = 0x10;
        arg0->unkE = 0x90;
        arg0->unk6 = 0;
        arg0->unk1 = 7;
        arg0->unk4 = 1;
        arg0->unk0 |= 2;
        sub_0801CAB8(arg0, &gUnk_080C9094);
    }
}
#else
NAKED
void sub_0801CED8(Element* arg0) {
    asm_unified("\
        push {r4, lr}\n\
        adds r3, r0, #0\n\
        ldr r0, _0801CF10 @ =gUnk_0200AF00\n\
        adds r1, r0, #0\n\
        adds r1, #0x24\n\
        ldrb r4, [r1]\n\
        cmp r4, #1\n\
        bne _0801CF0E\n\
        movs r2, #2\n\
        movs r0, #2\n\
        strb r0, [r1]\n\
        movs r1, #0\n\
        movs r0, #0x10\n\
        strh r0, [r3, #0xc]\n\
        movs r0, #0x90\n\
        strh r0, [r3, #0xe]\n\
        strb r1, [r3, #6]\n\
        movs r0, #7\n\
        strb r0, [r3, #1]\n\
        strb r4, [r3, #4]\n\
        ldrb r0, [r3]\n\
        orrs r0, r2\n\
        strb r0, [r3]\n\
        ldr r1, _0801CF14 @ =gUnk_080C9094\n\
        adds r0, r3, #0\n\
        bl sub_0801CAB8\n\
    _0801CF0E:\n\
        pop {r4, pc}\n\
        .align 2, 0\n\
    _0801CF10: .4byte gUnk_0200AF00\n\
    _0801CF14: .4byte gUnk_080C9094");
}
#endif

void sub_0801CF18(Element* arg0) {
    u32 temp;

    temp = gUnk_080C9058[arg0->unk6++];
    sub_0805ECEC(0, temp, temp, 0);
    if (temp == 0) {
        arg0->unk4 = 2;
        arg0->unk1 = 8;
        gUnk_0200AF00.ezloNagFuncIndex = 3;
        PlaySFX(0x173);
    }
}

void sub_0801CF60(Element* arg0) {

    if ((gUnk_0200AF00.ezloNagFuncIndex >= 5) || (gTextBox.doTextBox & 0x7f)) {
        arg0->unk4 = 0;
        arg0->unk0 &= -3;
        return;
    }
    sub_0801CAD0(arg0);
    if (arg0->unk13 == 1) {
        gUnk_0200AF00.ezloNagFuncIndex = 4;
    }
}
