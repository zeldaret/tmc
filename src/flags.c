#include "global.h"
#include "room.h"
#include "flags.h"

u32 extern CheckLocalFlagByOffset(u32, u32);
extern u32 ReadBit(u32*, u32);

u32 CheckGlobalFlag(u32 index) {
    return CheckLocalFlagByOffset(0, index);
}

u32 CheckRoomFlag(u32 index)
{
  return ReadBit(&gRoomVars.roomFlags, index);
}