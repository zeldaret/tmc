#include "global.h"
#include "entity.h"
#include "functions.h"
#include "menu.h"
#include "structures.h"

extern void (*const gUnk_0811E478[])(u32);

extern s16 gUnk_02021EE0[6];
extern char gUnk_0811E484[];
extern char gUnk_0811E4AC[];
extern char gUnk_0811E4A4[];

void sub_0807CD9C() {
    sub_080530C8();
}

void sub_0807CDA4(u32 arg0) {
    gUnk_0811E478[gMenu.storyPanelIndex](arg0);
}

u32 sub_0807CDC0(void) {
    gUnk_02021EE0[5] -= 8;
    if (gUnk_02021EE0[4] <= 0) {
        gMenu.field_0xa = 8;
        gMenu.storyPanelIndex = 1;
    }
    return 0;
}

u32 sub_0807CDE8(u32 arg0) {
    u32 temp;

    if (gMenu.field_0xa == 0) {
        sub_0805616C();
        switch (arg0) {
            case 0:
                temp = sub_0807CF08(gUnk_02000000->saveFileId, gUnk_02002A40.filler0);
                break;
            case 1:
                sub_0807CF48(gUnk_02000000->saveFileId);
                temp = 1;
                break;
            case 2:
                temp = sub_0807CF10((u8*)gUnk_02000000->header);
                break;
        }
        gMenu.field_0xa = temp;
        gMenu.storyPanelIndex = 2;
        sub_08056208();
    } else {
        gMenu.field_0xa--;
    }
    return 0;
}

s32 sub_0807CE54(void) {
    u32 uVar1;

    uVar1 = 0;
    gUnk_02021EE0[5] += 8;
    if (gUnk_02021EE0[3] <= gUnk_02021EE0[5]) {
        gUnk_02021EE0[5] = gUnk_02021EE0[3];
        sub_08050384();
        gMenu.storyPanelIndex = 0;
        if (gMenu.field_0xa == 1) {
            uVar1 = 1;
        } else {
            uVar1 = -1;
        }
    }
    return uVar1;
}

u32 sub_0807CE90(void) {
    struct_0807D1C4* puVar1;
    int iVar2;
    int iVar3;

    sub_080B1520(0x40);
    puVar1 = sub_0807D1C4(4);
    iVar3 = 0;
    if (sub_0807D24C(puVar1->field_0x6, gUnk_0811E484, puVar1->field_0x0) == 0) {
        iVar3 += 1;
    }
    if (sub_0807D24C(puVar1->field_0x8, gUnk_0811E484, puVar1->field_0x0) == 0) {
        iVar3 += 2;
    }
    if (iVar3 != 0) {
        if (iVar3 == 3) {
            sub_0807CF68(5);
            sub_0807CF68(3);
            sub_0807CF68(2);
            sub_0807CF68(1);
            sub_0807CF68(0);
        }
        sub_0807D20C(puVar1->field_0x8, gUnk_0811E484, puVar1->field_0x0);
        sub_0807D20C(puVar1->field_0x6, gUnk_0811E484, puVar1->field_0x0);
    }
    return 1;
}

u32 sub_0807CF08(u32 arg0, u8* arg1) {
    return sub_0807CF88(arg0, arg1);
}

u32 sub_0807CF10(u8* arg0) {
    return sub_0807CF88(3, arg0);
}

u32 sub_0807CF1C(u8* arg0) {
    return sub_0807CF88(5, arg0);
}

int sub_0807CF28(u32 arg0, SaveFile* arg1) {
    return sub_0807D008(arg0, arg1);
}

u32 sub_0807CF30(void* arg0) {
    return sub_0807D008(3, arg0);
}

u32 sub_0807CF3C(void* arg0) {
    return sub_0807D008(5, arg0);
}

void sub_0807CF48(u32 arg0) {
    struct_0807D1C4* temp;

    temp = sub_0807D1C4(arg0);
    sub_0807D184(temp->field_0x4, gUnk_0811E4AC);
    sub_0807D184(temp->field_0x2, gUnk_0811E4AC);
}

void sub_0807CF68(u32 arg0) {
    struct_0807D1C4* temp;
    char* str;

    temp = sub_0807D1C4(arg0);
    str = gUnk_0811E4A4;
    sub_0807D184(temp->field_0x4, str);
    sub_0807D184(temp->field_0x2, str);
}
