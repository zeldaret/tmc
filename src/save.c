#include "save.h"
#include "gba/eeprom.h"

typedef struct Thing {
    u16 unk_1;
    u16 unk_2;
    u32 unk_3;
} Thing;

const u16 gUnk_0811E454[] = { 0x0,   0x0,   0x100, 0x200, 0x300, 0x400, 0x500,
                              0x5C0, 0x680, 0x740, 0x800, 0x8C0, 0x9C0, 0xA80 };

const char gUnk_0811E470[6] = "LINK";

static SaveResult HandleSaveInit(u32);
static SaveResult HandleSaveInProgress(u32);
static SaveResult HandleSaveDone(u32);
static SaveResult (*const sSaveHandlers[])(u32) = { HandleSaveInit, HandleSaveInProgress, HandleSaveDone };

u32 sub_0807D008(u32, SaveFile*);
u32 sub_0807D0A0(u16*, u16*, u32);
u32 sub_0807D0EC(u32, const char*);
u32 sub_0807D128(const Thing*);
u16 sub_0807D1A4(u16*, u32);
u32 sub_0807D1D8(u32, const char*, u32);

static const char sSignatureLong[32] = "AGBZELDA:THE MINISH CAP:ZELDA 5";

// Save file is untouched
static const char sSaveDescInit[8] = "\xFF\xFF\xFF\xFF"
                                     "INIT";
// Save file is deleted
static const char sSaveDescDeleted[8] = "\xFF\xFF\xFF\xFF"
                                        "DelF";

const char gUnk_0811E4B4[8] = "DAMEDAME";
extern struct_0807D1C4 gUnk_0811E4BC[];

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

    EEPROMConfigure(0x40);
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

u32 sub_0807CF88(u32 arg0, u8* arg1) {
    Thing thing;

    u32 retval;
    struct_0807D1C4* ptr;
    u32 e0, e1;
    u16 l1prep;

    ptr = sub_0807D1C4(arg0);

    thing.unk_3 = 'MCZ3';
    l1prep = sub_0807D1A4((u16*)&thing.unk_3, 4);
    l1prep += sub_0807D1A4((u16*)arg1, ptr->field_0x0);
    thing.unk_1 = l1prep;
    thing.unk_2 = -(u32)l1prep;
    e0 = sub_0807D20C(ptr->field_0x6, (const char*)arg1, ptr->field_0x0);
    if (e0) {
        e0 = sub_0807D184(ptr->field_0x2, (const char*)&thing.unk_1);
    }
    e1 = sub_0807D20C(ptr->field_0x8, (const char*)arg1, ptr->field_0x0);
    if (e1) {
        e1 = sub_0807D184(ptr->field_0x4, (const char*)&thing.unk_1);
    }

    retval = 0;
    if (e0 || e1) {
        retval = 1;
    }
    return retval;
}

NONMATCH("asm/non_matching/save/sub_0807D008.inc", u32 sub_0807D008(u32 param_1, SaveFile* saveFile)) {
        u32 set_0;
        char auStack32[8];

        struct_0807D1C4* unk_s;
        u32 t1;
        u32 t2;
        u32 ret;
        u32 temp;

        unk_s = sub_0807D1C4(param_1);
        t1 = sub_0807D0EC(unk_s->field_0x2, auStack32);
        if (t1 == 2) {
            if ((sub_0807D1D8(unk_s->field_0x6, (char*)saveFile, unk_s->field_0x0) == 0) ||
                (sub_0807D0A0((u16*)auStack32, (u16*)saveFile, (u32)unk_s->field_0x0) == 0)) {
                t1 = 0;
            } else {
                return 1;
            }
        }
        t2 = sub_0807D0EC(unk_s->field_0x4, auStack32);
        if (t2 == 2) {
            if ((sub_0807D1D8(unk_s->field_0x8, (char*)saveFile, unk_s->field_0x0) != 0) &&
                (sub_0807D0A0((u16*)auStack32, (u16*)saveFile, (u32)unk_s->field_0x0) != 0)) {
                return 1;
            }
            t2 = 0;
        }
        set_0 = 0;
        CpuSet(&set_0, saveFile, unk_s->field_0x0 >> 2 | CPU_SET_SRC_FIXED | CPU_SET_32BIT);
        temp = t1 | t2;
        ret = 0;
        if (temp == 0) {
            ret = -1;
        }
        return ret;
    }
END_NONMATCH

NONMATCH("asm/non_matching/save/sub_0807D0A0.inc", u32 sub_0807D0A0(u16* unk_1, u16* unk_2, u32 unk_3)) {
        u32 r0;

        u32* u32_1 = (u32*)unk_1;

        u16 u0;
        u32 u1;

        u0 = sub_0807D1A4(unk_1 + 2, 4);
        u0 = u0 + sub_0807D1A4(unk_2, unk_3);

        u1 = unk_1[0];
        if (u1 != u0) {
            r0 = 0;
        } else {
            if (unk_1[1] == (-(u1 << 0x10) >> 0x10)) {
                if (*(u32_1 + 1) != 'MCZ3') {
                    r0 = 0;
                } else {
                    r0 = 1;
                }
            } else {
                r0 = 0;
            }
        }
        return r0;
    }
END_NONMATCH

u32 sub_0807D0EC(u32 unk_1, const char* unk_2) {
    u32 ret;

    if (!sub_0807D1D8(unk_1, unk_2, 8)) {
        ret = 0;
    } else {
        ret = sub_0807D128((Thing*)unk_2);
    }
    if (!ret && sub_0807D1D8(unk_1 + 8, unk_2, 8)) {
        ret = sub_0807D128((Thing*)unk_2);
    }
    return ret;
}

u32 sub_0807D128(const Thing* thing) {
    u32 ret;
    switch (thing->unk_3) {
        case 'MCZ3':
            if (thing->unk_1 + thing->unk_2 == 0x10000) {
                ret = 2;
            } else {
                ret = 0;
            }
            break;
        case 'FleD':
        case 'TINI':
            ret = 0;
            if ((thing->unk_1 & thing->unk_2) == 0xffff) {
                ret = 1;
            }
            break;
        default:
            ret = 0;
            break;
    }
    return ret;
}

u32 sub_0807D184(u32 param_1, const char* param_2) {
    u32 uVar1;

    uVar1 = sub_0807D20C(param_1, param_2, 8);
    if (uVar1 == 0) {
        uVar1 = sub_0807D20C(param_1 + 8, param_2, 8);
    }
    return uVar1;
}

u16 sub_0807D1A4(u16* unk_1, u32 unk_2) {
    u32 uVar1;

    uVar1 = 0;
    while (unk_2 != 0) {
        uVar1 = uVar1 + (*unk_1 ^ unk_2);
        unk_1 = unk_1 + 1;
        unk_2 = unk_2 - 2;
    }
    return uVar1;
}

struct_0807D1C4* sub_0807D1C4(u32 unk_1) {
    return &gUnk_0811E4BC[unk_1];
}

// these three are basically the same and wrong by basically one instruction in the wrong place
NONMATCH("asm/non_matching/save/sub_0807D1D8.inc", u32 sub_0807D1D8(u32 unk_1, const char* unk_2, u32 unk_3)) {
    }
END_NONMATCH

NONMATCH("asm/non_matching/save/sub_0807D20C.inc", u32 sub_0807D20C(u32 unk_1, const char* unk_2, u32 unk_3)) {
        unk_3 >>= 3;
        unk_1 >>= 3;
        while (unk_3-- > 0) {
            if (EEPROMWrite0_8k_Check(unk_1, (u16*)unk_2)) {
                EEPROMWrite0_8k_Check(unk_1, (u16*)gUnk_0811E4B4);
                return 0;
            }
            unk_1++;
            unk_2 += 8;
        }
        return 1;
    }
END_NONMATCH

NONMATCH("asm/non_matching/save/sub_0807D24C.inc", u32 sub_0807D24C(u32 unk_1, const char* unk_2, u32 unk_3)) {
        unk_3 >>= 3;
        unk_1 >>= 3;
        while (unk_3-- > 0) {
            if (EEPROMCompare(unk_1, (u16*)unk_2))
                return 0;
            unk_1++;
            unk_2 += 8;
        }
        return 1;
    }
END_NONMATCH
