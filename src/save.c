#include "save.h"
#include "gba/eeprom.h"

typedef struct Thing {
    u16 unk_1;
    u16 unk_2;
    u32 unk_3;
} Thing;

typedef struct {
    u16 size;
    u16 checksum1;
    u16 checksum2;
    u16 address1;
    u16 address2;
} SaveFileEEPROMAddresses;

static SaveResult HandleSaveInit(u32);
static SaveResult HandleSaveInProgress(u32);
static SaveResult HandleSaveDone(u32);

const SaveFileEEPROMAddresses* GetSaveFileEEPROMAddresses(u32);
u32 sub_0807D008(u32, SaveFile*);
u32 sub_0807D0A0(Thing*, u16*, u32);
u32 sub_0807D128(const Thing*);
u16 sub_0807D1A4(u16*, u32);

u32 sub_0807D0EC(u32 address, char* data);
u32 sub_0807D184(u32 address, const u8* data);

u32 DataRead(u32 address, void* data, u32 size);
u32 DataWrite(u32 address, const void* data, u32 size);
u32 DataCompare(u32 address, const void* data, u32 size);

const u16 gUnk_0811E454[] = { 0x0,   0x0,   0x100, 0x200, 0x300, 0x400, 0x500,
                              0x5C0, 0x680, 0x740, 0x800, 0x8C0, 0x9C0, 0xA80 };

const char gUnk_0811E470[6] = "LINK";

static SaveResult (*const sSaveHandlers[])(u32) = { HandleSaveInit, HandleSaveInProgress, HandleSaveDone };

static const char sSignatureLong[32] = "AGBZELDA:THE MINISH CAP:ZELDA 5";

// Save file is untouched
static const char sSaveDescInit[8] = "\xFF\xFF\xFF\xFF"
                                     "INIT";
// Save file is deleted
static const char sSaveDescDeleted[8] = "\xFF\xFF\xFF\xFF"
                                        "DelF";

const char gUnk_0811E4B4[8] = "DAMEDAME";
const SaveFileEEPROMAddresses gSaveFileEEPROMAddresses[] = { { 0x500, 0x30, 0x1030, 0x80, 0x1080 },
                                                             { 0x500, 0x40, 0x1040, 0x580, 0x1580 },
                                                             { 0x500, 0x50, 0x1050, 0xa80, 0x1a80 },
                                                             { 0x10, 0x20, 0x1020, 0x70, 0x1070 },
                                                             { 0x20, 0, 0, 0, 0x1000 },
                                                             { 0x20, 0x60, 0x1060, 0xf80, 0x1f80 },
                                                             { 0x8, 0xfa0, 0x1fa0, 0xfa0, 0x1fa0 } };

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
    const SaveFileEEPROMAddresses* eepromAddresses;
    int iVar2;
    int iVar3;

    EEPROMConfigure(0x40);
    eepromAddresses = GetSaveFileEEPROMAddresses(4);
    iVar3 = 0;
    if (DataCompare(eepromAddresses->address1, sSignatureLong, eepromAddresses->size) == 0) {
        iVar3 += 1;
    }
    if (DataCompare(eepromAddresses->address2, sSignatureLong, eepromAddresses->size) == 0) {
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
        DataWrite(eepromAddresses->address2, sSignatureLong, eepromAddresses->size);
        DataWrite(eepromAddresses->address1, sSignatureLong, eepromAddresses->size);
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
    const SaveFileEEPROMAddresses* eepromAddresses;

    eepromAddresses = GetSaveFileEEPROMAddresses(arg0);
    sub_0807D184(eepromAddresses->checksum2, sSaveDescDeleted);
    sub_0807D184(eepromAddresses->checksum1, sSaveDescDeleted);
}

void sub_0807CF68(u32 arg0) {
    const SaveFileEEPROMAddresses* eepromAddresses;
    const char* str;

    eepromAddresses = GetSaveFileEEPROMAddresses(arg0);
    str = sSaveDescInit;
    sub_0807D184(eepromAddresses->checksum2, str);
    sub_0807D184(eepromAddresses->checksum1, str);
}

u32 sub_0807CF88(u32 arg0, u8* arg1) {
    Thing thing;

    u32 retval;
    const SaveFileEEPROMAddresses* eepromAddresses;
    u32 e0, e1;
    u16 l1prep;

    eepromAddresses = GetSaveFileEEPROMAddresses(arg0);

    thing.unk_3 = 'MCZ3';
    l1prep = sub_0807D1A4((u16*)&thing.unk_3, 4);
    l1prep += sub_0807D1A4((u16*)arg1, eepromAddresses->size);
    thing.unk_1 = l1prep;
    thing.unk_2 = -(u32)l1prep;
    e0 = DataWrite(eepromAddresses->address1, (const char*)arg1, eepromAddresses->size);
    if (e0) {
        e0 = sub_0807D184(eepromAddresses->checksum1, (const char*)&thing.unk_1);
    }
    e1 = DataWrite(eepromAddresses->address2, (const char*)arg1, eepromAddresses->size);
    if (e1) {
        e1 = sub_0807D184(eepromAddresses->checksum2, (const char*)&thing.unk_1);
    }

    retval = 0;
    if (e0 || e1) {
        retval = 1;
    }
    return retval;
}

u32 sub_0807D008(u32 param_1, SaveFile* saveFile) {
    vu32 set_0;
    Thing auStack32;

    const SaveFileEEPROMAddresses* eepromAddresses;
    u32 t1;
    u32 t2;
    u32 ret;
    u32 temp;

    eepromAddresses = GetSaveFileEEPROMAddresses(param_1);
    t1 = sub_0807D0EC(eepromAddresses->checksum1, (char*)&auStack32);
    if (t1 == 2) {
        if ((DataRead(eepromAddresses->address1, (char*)saveFile, eepromAddresses->size) == 0) ||
            (sub_0807D0A0(&auStack32, (u16*)saveFile, (u32)eepromAddresses->size) == 0)) {
            t1 = 0;
        } else {
            return 1;
        }
    }
    t2 = sub_0807D0EC(eepromAddresses->checksum2, (char*)&auStack32);
    if (t2 == 2) {
        if ((DataRead(eepromAddresses->address2, (char*)saveFile, eepromAddresses->size) != 0) &&
            (sub_0807D0A0(&auStack32, (u16*)saveFile, (u32)eepromAddresses->size) != 0)) {
            return 1;
        }
        t2 = 0;
    }
    set_0 = 0;
    CpuSet((u16*)&set_0, saveFile, eepromAddresses->size >> 2 | CPU_SET_SRC_FIXED | CPU_SET_32BIT);
    temp = t1 | t2;
    ret = 0;
    if (temp == 0) {
        ret = -1;
    }
    return ret;
}

NONMATCH("asm/non_matching/save/sub_0807D0A0.inc", u32 sub_0807D0A0(Thing* unk_1, u16* unk_2, u32 unk_3)) {
    u32 r0;

    u16 u0;

    u0 = sub_0807D1A4((u16*)&unk_1->unk_3, 4);
    u0 = u0 + sub_0807D1A4(unk_2, unk_3);

    if (unk_1->unk_1 != u0) {
        r0 = 0;
    } else {
        if (unk_1->unk_2 == -unk_1->unk_1) {
            if (unk_1->unk_3 != 'MCZ3') {
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

u32 sub_0807D0EC(u32 address, char* data) {
    u32 ret;

    if (!DataRead(address, data, 8)) {
        ret = 0;
    } else {
        ret = sub_0807D128((Thing*)data);
    }
    if (!ret && DataRead(address + 8, data, 8)) {
        ret = sub_0807D128((Thing*)data);
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

u32 sub_0807D184(u32 address, const u8* data) {
    u32 uVar1;

    uVar1 = DataWrite(address, data, 8);
    if (uVar1 == 0) {
        uVar1 = DataWrite(address + 8, data, 8);
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

const SaveFileEEPROMAddresses* GetSaveFileEEPROMAddresses(u32 unk_1) {
    return &gSaveFileEEPROMAddresses[unk_1];
}

bool32 DataRead(u32 address, void* data, u32 size) {
    size /= 8;
    address /= 8;
    while (size-- > 0) {
        if (EEPROMRead(address, data))
            return FALSE;
        address++;
        data += 8;
    }
    return TRUE;
}

bool32 DataWrite(u32 address, const void* data, u32 size) {
    size /= 8;
    address /= 8;
    while (size-- > 0) {
        if (EEPROMWrite0_8k_Check(address, data)) {
            EEPROMWrite0_8k_Check(address, (const u16*)gUnk_0811E4B4);
            return FALSE;
        }
        address++;
        data += 8;
    }
    return TRUE;
}

bool32 DataCompare(u32 address, const void* data, u32 size) {
    size /= 8;
    address /= 8;
    while (size-- > 0) {
        if (EEPROMCompare(address, data))
            return FALSE;
        address++;
        data += 8;
    }
    return TRUE;
}
