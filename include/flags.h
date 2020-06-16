#ifndef FLAGS_H
#define FLAGS_H

#include "global.h"

u32 CheckFlags(u32);
u32 CheckGlobalFlag(u32);
u32 CheckGlobalFlags(u32, u32);
extern u32 CheckLocalFlag(u32);
extern u32 CheckLocalFlagByOffset(u32, u32);
u32 CheckLocalFlags(u32, u32);
u32 CheckLocalFlagsByOffset(u32, u32, u32);
u32 CheckRoomFlag(u32);
u32 CheckRoomFlags(u32, u32);

void ClearFlag(u32);
void ClearGlobalFlag(u32);
void ClearLocalFlag(u32);
void ClearLocalFlagByOffset(u32, u32);
void ClearRoomFlag(u32);

void SetFlag(u32);
void SetGlobalFlag(u32);
void SetLocalFlag(u32);
void SetLocalFlagByOffset(u32, u32);
void SetRoomFlag(u32);

extern u32 gGlobalFlags;
extern u32 gRoomFlags;

#endif