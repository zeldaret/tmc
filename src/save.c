#include "save.h"

extern u32 sub_0807D008(u32, SaveFile*);

const u16 gUnk_0811E454[] = { 0x0,   0x0,   0x100, 0x200, 0x300, 0x400, 0x500,
                              0x5C0, 0x680, 0x740, 0x800, 0x8C0, 0x9C0, 0xA80 };

const char gUnk_0811E470[6] = "LINK";

static SaveResult HandleSaveInit(u32);
static SaveResult HandleSaveInProgress(u32);
static SaveResult HandleSaveDone(u32);
static SaveResult (*const sSaveHandlers[])(u32) = { HandleSaveInit, HandleSaveInProgress, HandleSaveDone };

static const char sSignatureLong[32] = "AGBZELDA:THE MINISH CAP:ZELDA 5";

// Save file is untouched
static const char sSaveDescInit[8] = "\xFF\xFF\xFF\xFF"
                                     "INIT";
// Save file is deleted
static const char sSaveDescDeleted[8] = "\xFF\xFF\xFF\xFF"
                                        "DelF";

const char gUnk_0811E4B4[8] = "DAMEDAME";

extern s16 gUnk_02021EE0[6];

void sub_0807CD9C() {
    sub_080530C8();
}

SaveResult sub_0807CDA4(u32 arg0) {
    return sSaveHandlers[gMenu.storyPanelIndex](arg0);
}

SaveResult HandleSaveInit(u32 arg0) {
    gUnk_02021EE0[5] -= 8;
    if (gUnk_02021EE0[4] <= 0) {
        gMenu.field_0xa = 8;
        gMenu.storyPanelIndex = 1;
    }
    return SAVE_BUSY;
}

SaveResult HandleSaveInProgress(u32 arg0) {
    u32 temp;

    if (gMenu.field_0xa == 0) {
        InitDMA();
        switch (arg0) {
            case 0:
                temp = sub_0807CF08(gUnk_02000000->saveFileId, gSave.filler0);
                break;
            case 1:
                sub_0807CF48(gUnk_02000000->saveFileId);
                temp = 1;
                break;
            case 2:
                temp = sub_0807CF10((u8*)&gUnk_02000000->signature);
                break;
        }
        gMenu.field_0xa = temp;
        gMenu.storyPanelIndex = 2;
        sub_08056208();
    } else {
        gMenu.field_0xa--;
    }
    return SAVE_BUSY;
}

SaveResult HandleSaveDone(u32 arg0) {
    SaveResult result;

    result = SAVE_BUSY;
    gUnk_02021EE0[5] += 8;
    if (gUnk_02021EE0[3] <= gUnk_02021EE0[5]) {
        gUnk_02021EE0[5] = gUnk_02021EE0[3];
        sub_08050384();
        gMenu.storyPanelIndex = 0;
        if (gMenu.field_0xa == 1) {
            result = SAVE_OK;
        } else {
            result = SAVE_ERROR;
        }
    }
    return result;
}

u32 sub_0807CE90(void) {
    struct_0807D1C4* puVar1;
    int iVar2;
    int iVar3;

    sub_080B1520(0x40);
    puVar1 = sub_0807D1C4(4);
    iVar3 = 0;
    if (sub_0807D24C(puVar1->field_0x6, sSignatureLong, puVar1->field_0x0) == 0) {
        iVar3 += 1;
    }
    if (sub_0807D24C(puVar1->field_0x8, sSignatureLong, puVar1->field_0x0) == 0) {
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
        sub_0807D20C(puVar1->field_0x8, sSignatureLong, puVar1->field_0x0);
        sub_0807D20C(puVar1->field_0x6, sSignatureLong, puVar1->field_0x0);
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

s32 sub_0807CF28(u32 arg0, SaveFile* arg1) {
    return sub_0807D008(arg0, arg1);
}

u32 sub_0807CF30(SaveFile* arg0) {
    return sub_0807D008(3, arg0);
}

u32 sub_0807CF3C(SaveFile* arg0) {
    return sub_0807D008(5, arg0);
}

void sub_0807CF48(u32 arg0) {
    struct_0807D1C4* temp;

    temp = sub_0807D1C4(arg0);
    sub_0807D184(temp->field_0x4, sSaveDescDeleted);
    sub_0807D184(temp->field_0x2, sSaveDescDeleted);
}

void sub_0807CF68(u32 arg0) {
    struct_0807D1C4* temp;
    const char* str;

    temp = sub_0807D1C4(arg0);
    str = sSaveDescInit;
    sub_0807D184(temp->field_0x4, str);
    sub_0807D184(temp->field_0x2, str);
}
