#include "global.h"
#include "room.h"
#include "flags.h"
#include "area.h"
#include "room.h"

extern u32 ReadBit(u32*, u32);
extern u32 CheckBits(u32*, u32, u32);
extern void WriteBit(u32*, u32);
extern void ClearBit(u32*, u32);

u32 CheckLocalFlag(u32 flag) {
    return CheckLocalFlagByOffset(gArea.localFlagOffset, flag);
}

u32 CheckFlags(u32 flags) {
    s32 uVar1;
    s32 index;
    s32 length;
    index = flags & 0x3ff;
    length = (((flags & (0xf0) << 0x6) >> 0xa) + 1);
    uVar1 = (flags & 0xc000) >> 0xe;
    switch ((u32)uVar1) {
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
    return CheckLocalFlagByOffset(0, flag);
}

u32 CheckRoomFlag(u32 flag) {
    return ReadBit(&gRoomVars.roomFlags, flag);
}

u32 CheckLocalFlagsByOffset(u32 flag, u32 offset, u32 length) {

    return CheckBits(&gGlobalFlags, flag + offset, length);
}

u32 CheckLocalFlags(u32 flag, u32 length) {
    return CheckLocalFlagsByOffset(gArea.localFlagOffset, flag, length);
}

u32 CheckGlobalFlags(u32 flag, u32 length) {
    return CheckLocalFlagsByOffset(0, flag, length);
}

u32 CheckRoomFlags(u32 flag, u32 length) {
    return CheckBits(&gRoomVars.roomFlags, flag, length);
}

void SetLocalFlagByOffset(u32 offset, u32 flag) {
    if (flag != 0) {
        WriteBit(&gGlobalFlags, offset + flag);
    }
}

void SetLocalFlag(u32 flag) {
    SetLocalFlagByOffset(gArea.localFlagOffset, flag);
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
    SetLocalFlagByOffset(0, flag);
}

void SetRoomFlag(u32 flag) {
    WriteBit(&gRoomFlags, flag);
}

void ClearLocalFlagByOffset(u32 offset, u32 flag) {
    ClearBit(&gGlobalFlags, offset + flag);
}

void ClearLocalFlag(u32 flag) {
    ClearLocalFlagByOffset(gArea.localFlagOffset, flag);
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
    ClearLocalFlagByOffset(0, flag);
}

void ClearRoomFlag(u32 flag) {
    ClearBit(&gRoomFlags, flag);
}
