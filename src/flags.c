#include "global.h"
#include "room.h"
#include "flags.h"
#include "area.h"

const u16 gLocalFlagBanks[] = {
    FLAG_BANK_G, FLAG_BANK_0, FLAG_BANK_1, FLAG_BANK_2, FLAG_BANK_3,  FLAG_BANK_4,  FLAG_BANK_5,
    FLAG_BANK_6, FLAG_BANK_7, FLAG_BANK_8, FLAG_BANK_9, FLAG_BANK_10, FLAG_BANK_11, FLAG_BANK_12,
};

u32 CheckLocalFlag(u32 flag) {
    return CheckLocalFlagByBank(gArea.localFlagOffset, flag);
}

u32 CheckFlags(u32 flags) {
    s32 type;
    s32 index;
    s32 length;
    index = flags & 0x3ff;
    length = (((flags & (0xf0) << 0x6) >> 0xa) + 1);
    type = (flags & 0xc000) >> 0xe;
    switch ((u32)type) {
        case 2:
            return CheckRoomFlags(index, length);
        case 0:
            return CheckLocalFlags(index, length);
        case 1:
            return CheckGlobalFlags(index, length);
        default:
            return 0;
    }
}

u32 CheckGlobalFlag(u32 flag) {
    return CheckLocalFlagByBank(0, flag);
}

u32 CheckRoomFlag(u32 flag) {
    return ReadBit(&gRoomVars.flags, flag);
}

u32 CheckLocalFlagsByBank(u32 offset, u32 flag, u32 length) {

    return CheckBits(&gGlobalFlags, offset + flag, length);
}

u32 CheckLocalFlags(u32 flag, u32 length) {
    return CheckLocalFlagsByBank(gArea.localFlagOffset, flag, length);
}

u32 CheckGlobalFlags(u32 flag, u32 length) {
    return CheckLocalFlagsByBank(0, flag, length);
}

u32 CheckRoomFlags(u32 flag, u32 length) {
    return CheckBits(&gRoomVars.flags, flag, length);
}

void SetLocalFlagByBank(u32 offset, u32 flag) {
    if (flag != 0) {
        WriteBit(&gGlobalFlags, offset + flag);
    }
}

void SetLocalFlag(u32 flag) {
    SetLocalFlagByBank(gArea.localFlagOffset, flag);
}

void SetFlag(u32 flag) {
    s32 uVar1;
    s32 index;

    if (flag != 0) {
        index = flag & 0x3ff;
        uVar1 = (flag & 0xc000) >> 0xe;
        switch ((u32)uVar1) {
            case 2:
                SetRoomFlag(index);
                return;
            case 0:
                SetLocalFlag(index);
                return;
            case 1:
                SetGlobalFlag(index);
                return;
        }
    }
}

void SetGlobalFlag(u32 flag) {
    SetLocalFlagByBank(0, flag);
}

void SetRoomFlag(u32 flag) {
    WriteBit(&gRoomVars.flags, flag);
}

void ClearLocalFlagByBank(u32 offset, u32 flag) {
    ClearBit(&gGlobalFlags, offset + flag);
}

void ClearLocalFlag(u32 flag) {
    ClearLocalFlagByBank(gArea.localFlagOffset, flag);
}

void ClearFlag(u32 flag) {
    s32 uVar1;
    s32 index;

    index = flag & 0x3ff;
    uVar1 = (flag & 0xc000) >> 0xe;
    switch ((u32)uVar1) {
        case 2:
            ClearRoomFlag(index);
            return;
        case 0:
            ClearLocalFlag(index);
            return;
        case 1:
            ClearGlobalFlag(index);
            return;
    }
}

void ClearGlobalFlag(u32 flag) {
    ClearLocalFlagByBank(0, flag);
}

void ClearRoomFlag(u32 flag) {
    ClearBit(&gRoomVars.flags, flag);
}
