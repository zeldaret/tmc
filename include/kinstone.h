#ifndef KINSTONE_H
#define KINSTONE_H

#include "global.h"

typedef struct {
    u8 unk[4];
    u32 unk2;
    u32 unk4;
} Unk_struct;
extern Unk_struct gUnk_03003DF0[];

typedef struct {
    u8 _0;
    u8 action;
    u8 _2;
    u8 _3;
    u8 _4;
    u8 _5;
    u16 _6;
    u16 _8;
    u16 _a;
    Entity* ent;
} FuseInfo;
static_assert(sizeof(FuseInfo) == 0x10);
extern FuseInfo gFuseInfo;

#endif // KINSTONE_H
