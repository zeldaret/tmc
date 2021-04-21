#include "save.h"
#include "gba/eeprom.h"
#include "audio.h"
#include "menu.h"
#include "functions.h"

typedef struct SaveFileStatus {
    u16 checksum1;
    u16 checksum2;
    u32 status;
} SaveFileStatus;

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
u32 DataDoubleReadWithStatus(u32, void* data);
u32 DataDoubleWriteWithStatus(u32, const void* data);
u32 VerifyChecksum(SaveFileStatus* fileStatus, u16* data, u32 size);
u16 CalculateChecksum(u16* data, u32);
u32 WriteSaveFile(u32 index, SaveFile* saveFile);
void SetFileStatusInit(u32 index);

u32 ReadSaveFileStatus(u32 address, SaveFileStatus* fileStatus);
u32 ParseSaveFileStatus(const SaveFileStatus* fileStatus);
u32 WriteSaveFileStatus(u32 address, const SaveFileStatus* fileStatus);

u32 DataRead(u32 address, void* data, u32 size);
u32 DataWrite(u32 address, const void* data, u32 size);
u32 DataCompare(u32 address, const void* data, u32 size);

const u16 gUnk_0811E454[] = { 0x0,   0x0,   0x100, 0x200, 0x300, 0x400, 0x500,
                              0x5C0, 0x680, 0x740, 0x800, 0x8C0, 0x9C0, 0xA80 };

const char gUnk_0811E470[6] = "LINK";

static SaveResult (*const sSaveHandlers[])(u32) = { HandleSaveInit, HandleSaveInProgress, HandleSaveDone };

static const char sSignatureLong[32] = "AGBZELDA:THE MINISH CAP:ZELDA 5";

// Save file is untouched
static const SaveFileStatus sSaveDescInit = { 0xffff, 0xffff, 'TINI' };
// Save file is deleted
static const SaveFileStatus sSaveDescDeleted = { 0xffff, 0xffff, 'FleD' };

const char gUnk_0811E4B4[8] = "DAMEDAME";
const SaveFileEEPROMAddresses gSaveFileEEPROMAddresses[] = { { 0x500, 0x30, 0x1030, 0x80, 0x1080 },
                                                             { 0x500, 0x40, 0x1040, 0x580, 0x1580 },
                                                             { 0x500, 0x50, 0x1050, 0xa80, 0x1a80 },
                                                             { 0x10, 0x20, 0x1020, 0x70, 0x1070 },
                                                             { 0x20, 0, 0, 0, 0x1000 },
                                                             { 0x20, 0x60, 0x1060, 0xf80, 0x1f80 },
                                                             { 0x8, 0xfa0, 0x1fa0, 0xfa0, 0x1fa0 } };

void sub_0807CD9C() {
    sub_080530C8();
}

SaveResult HandleSave(u32 arg0) {
    return sSaveHandlers[gMenu.storyPanelIndex](arg0);
}

SaveResult HandleSaveInit(u32 arg0) {
    gSoundPlayingInfo.volumeMasterTarget -= 8;
    if (gSoundPlayingInfo.volumeMaster <= 0) {
        gMenu.field_0xa = 8;
        gMenu.storyPanelIndex = SAVE_IN_PROGRESS;
    }
    return SAVE_BUSY;
}

SaveResult HandleSaveInProgress(u32 arg0) {
    u32 temp;

    if (gMenu.field_0xa == 0) {
        InitDMA();
        switch (arg0) {
            case 0:
                temp = WriteSaveFile(gUnk_02000000->saveFileId, &gSave);
                break;
            case 1:
                SetFileStatusDeleted(gUnk_02000000->saveFileId);
                temp = 1;
                break;
            case 2:
                temp = Write_02000000(gUnk_02000000);
                break;
        }
        gMenu.field_0xa = temp;
        gMenu.storyPanelIndex = SAVE_DONE;
        sub_08056208();
    } else {
        gMenu.field_0xa--;
    }
    return SAVE_BUSY;
}

SaveResult HandleSaveDone(u32 arg0) {
    SaveResult result;

    result = SAVE_BUSY;
    gSoundPlayingInfo.volumeMasterTarget += 8;
    if (gSoundPlayingInfo.volumeMasterUnk <= gSoundPlayingInfo.volumeMasterTarget) {
        gSoundPlayingInfo.volumeMasterTarget = gSoundPlayingInfo.volumeMasterUnk;
        sub_08050384();
        gMenu.storyPanelIndex = SAVE_INIT;
        if (gMenu.field_0xa == 1) {
            result = SAVE_OK;
        } else {
            result = SAVE_ERROR;
        }
    }
    return result;
}

u32 InitSaveData(void) {
    const SaveFileEEPROMAddresses* eepromAddresses;
    u32 error;

    EEPROMConfigure(0x40);
    eepromAddresses = GetSaveFileEEPROMAddresses(4);
    error = 0;
    if (DataCompare(eepromAddresses->address1, sSignatureLong, eepromAddresses->size) == 0) {
        error += 1;
    }
    if (DataCompare(eepromAddresses->address2, sSignatureLong, eepromAddresses->size) == 0) {
        error += 2;
    }
    if (error != 0) {
        if (error == 3) {
            SetFileStatusInit(5);
            SetFileStatusInit(3);
            SetFileStatusInit(2);
            SetFileStatusInit(1);
            SetFileStatusInit(0);
        }
        DataWrite(eepromAddresses->address2, sSignatureLong, eepromAddresses->size);
        DataWrite(eepromAddresses->address1, sSignatureLong, eepromAddresses->size);
    }
    return 1;
}

u32 WriteSaveFile(u32 index, SaveFile* saveFile) {
    return DataDoubleWriteWithStatus(index, saveFile);
}

u32 Write_02000000(struct_02000000* arg0) {
    return DataDoubleWriteWithStatus(3, arg0);
}

u32 sub_0807CF1C(u8* arg0) {
    return DataDoubleWriteWithStatus(5, arg0);
}

s32 ReadSaveFile(u32 index, SaveFile* saveFile) {
    return DataDoubleReadWithStatus(index, saveFile);
}

u32 Read_02000000(struct_02000000* arg0) {
    return DataDoubleReadWithStatus(3, arg0);
}

u32 sub_0807CF3C(u8* arg0) {
    return DataDoubleReadWithStatus(5, arg0);
}

void SetFileStatusDeleted(u32 index) {
    const SaveFileEEPROMAddresses* eepromAddresses;

    eepromAddresses = GetSaveFileEEPROMAddresses(index);
    WriteSaveFileStatus(eepromAddresses->checksum2, &sSaveDescDeleted);
    WriteSaveFileStatus(eepromAddresses->checksum1, &sSaveDescDeleted);
}

void SetFileStatusInit(u32 index) {
    const SaveFileEEPROMAddresses* eepromAddresses;
    const SaveFileStatus* fileStatus;

    eepromAddresses = GetSaveFileEEPROMAddresses(index);
    fileStatus = &sSaveDescInit;
    WriteSaveFileStatus(eepromAddresses->checksum2, fileStatus);
    WriteSaveFileStatus(eepromAddresses->checksum1, fileStatus);
}

u32 DataDoubleWriteWithStatus(u32 arg0, const void* data) {
    SaveFileStatus fileStatus;

    u32 ret;
    const SaveFileEEPROMAddresses* eepromAddresses;
    bool32 write1success, write2success;
    u16 checksum;

    eepromAddresses = GetSaveFileEEPROMAddresses(arg0);

    fileStatus.status = 'MCZ3';
    checksum = CalculateChecksum((u16*)&fileStatus.status, 4);
    checksum += CalculateChecksum((u16*)data, eepromAddresses->size);
    fileStatus.checksum1 = checksum;
    fileStatus.checksum2 = -(u32)checksum;
    write1success = DataWrite(eepromAddresses->address1, data, eepromAddresses->size);
    if (write1success) {
        write1success = WriteSaveFileStatus(eepromAddresses->checksum1, &fileStatus);
    }
    write2success = DataWrite(eepromAddresses->address2, data, eepromAddresses->size);
    if (write2success) {
        write2success = WriteSaveFileStatus(eepromAddresses->checksum2, &fileStatus);
    }

    ret = 0;
    if (write1success || write2success) {
        ret = 1;
    }
    return ret;
}

u32 DataDoubleReadWithStatus(u32 param_1, void* data) {
    vu32 set_0;
    SaveFileStatus fileStatus;

    const SaveFileEEPROMAddresses* eepromAddresses;
    u32 read1status;
    u32 read2status;
    u32 ret;
    u32 temp;

    eepromAddresses = GetSaveFileEEPROMAddresses(param_1);
    read1status = ReadSaveFileStatus(eepromAddresses->checksum1, &fileStatus);
    if (read1status == 2) {
        if ((DataRead(eepromAddresses->address1, data, eepromAddresses->size) == 0) ||
            (VerifyChecksum(&fileStatus, (u16*)data, eepromAddresses->size) == 0)) {
            // read 1 failed
            read1status = 0;
        } else {
            return 1;
        }
    }
    read2status = ReadSaveFileStatus(eepromAddresses->checksum2, &fileStatus);
    if (read2status == 2) {
        if ((DataRead(eepromAddresses->address2, data, eepromAddresses->size) != 0) &&
            (VerifyChecksum(&fileStatus, (u16*)data, (u32)eepromAddresses->size) != 0)) {
            return 1;
        }
        // read 2 failed
        read2status = 0;
    }
    set_0 = 0;
    CpuSet((u16*)&set_0, data, eepromAddresses->size >> 2 | CPU_SET_SRC_FIXED | CPU_SET_32BIT);
    temp = read1status | read2status;
    ret = 0;
    if (temp == 0) {
        ret = -1; // both reads failed
    }
    return ret;
}

u32 VerifyChecksum(SaveFileStatus* fileStatus, u16* data, u32 size) {
    u32 temp;
    u16 checksum;

    checksum = CalculateChecksum((u16*)&fileStatus->status, 4);
    checksum += CalculateChecksum(data, size);

    if ((fileStatus->checksum1 != checksum) ||
        (temp = fileStatus->checksum1 << 0x10, fileStatus->checksum2 != (-temp >> 0x10)) ||
        (fileStatus->status != 'MCZ3')) {
        return 0;
    } else
        return 1;
}

u32 ReadSaveFileStatus(u32 address, SaveFileStatus* fileStatus) {
    u32 ret;

    if (!DataRead(address, fileStatus, 8)) {
        ret = 0;
    } else {
        ret = ParseSaveFileStatus(fileStatus);
    }
    if (!ret && DataRead(address + 8, fileStatus, 8)) {
        ret = ParseSaveFileStatus(fileStatus);
    }
    return ret;
}

/**
 * 2 for valid existing file
 * 1 for valid empty file
 * 0 for bad file
 * @param fileStatus
 * @return
 */
u32 ParseSaveFileStatus(const SaveFileStatus* fileStatus) {
    u32 ret;
    switch (fileStatus->status) {
        case 'MCZ3':
            if (fileStatus->checksum1 + fileStatus->checksum2 == 0x10000) {
                ret = 2;
            } else {
                ret = 0;
            }
            break;
        case 'FleD':
        case 'TINI':
            ret = 0;
            if ((fileStatus->checksum1 & fileStatus->checksum2) == 0xffff) {
                ret = 1;
            }
            break;
        default:
            ret = 0;
            break;
    }
    return ret;
}

bool32 WriteSaveFileStatus(u32 address, const struct SaveFileStatus* fileStatus) {
    bool32 success;

    success = DataWrite(address, fileStatus, 8);
    if (!success) {
        success = DataWrite(address + 8, fileStatus, 8);
    }
    return success;
}

u16 CalculateChecksum(u16* data, u32 size) {
    u32 checksum;

    checksum = 0;
    while (size != 0) {
        checksum += (*data ^ size);
        data++;
        size = size - 2;
    }
    return checksum;
}

const SaveFileEEPROMAddresses* GetSaveFileEEPROMAddresses(u32 unk_1) {
    return &gSaveFileEEPROMAddresses[unk_1];
}

/**
 * read arbitrary data from EEPROM
 * @param address EEPROM address
 * @param data buffer to read into
 * @param size size in bytes to read
 * @return TRUE on success
 */
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

/**
 * write arbitrary data to EEPROM
 * @param address EEPROM address
 * @param data buffer to write from
 * @param size size in bytes to write
 * @return TRUE on success
 */
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

/**
 * compare arbitrary data with EEPROM
 * @param address EEPROM address
 * @param data buffer to compare to
 * @param size size in bytes to compare
 * @return TRUE on success
 */
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
