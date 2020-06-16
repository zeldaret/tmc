#include "global.h"
#include "room.h"
#include "flags.h"
#include "area.h"
#include "room.h"

extern u32 ReadBit(u32*, u32);
extern u32 CheckBits(u32*, u32, u32);
extern void WriteBit(u32*, u32);

u32 CheckGlobalFlag(u32 index) {
    return CheckLocalFlagByOffset(0, index);
}

u32 CheckRoomFlag(u32 index) {
    return ReadBit(&gRoomVars.roomFlags, index);
}

u32 CheckLocalFlagsByOffset(u32 offset, u32 flag, u32 length) {

    return CheckBits(&gGlobalFlags, offset + flag, length);
}

u32 CheckLocalFlags(u32 flag, u32 length) {
    return CheckLocalFlagsByOffset(gArea.localFlagOffset, flag, length);
}

u32 CheckGlobalFlags(u32 flag, u32 length) {
    return CheckLocalFlagsByOffset(0, flag, length);
}

u32 CheckRoomFlags(u32
 flag, u32 length) {
    return CheckBits(&gRoomVars.roomFlags, flag, length);
}

void SetLocalFlagByOffset(u32 flag, u32 offset)
{
  if (offset != 0) {
    WriteBit(&gGlobalFlags, flag + offset);
  }
}

void SetLocalFlag(u32 index)
{
  SetLocalFlagByOffset(gArea.localFlagOffset, index);
}