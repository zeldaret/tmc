#ifndef KINSTONE_H
#define KINSTONE_H

#include "global.h"
#include "entity.h"

extern void sub_08018C58(u32);

typedef struct {
    u8 _0;
    u8 action;
    u8 _2;
    u8 _3;
    u8 _4;
    u8 _5;
    u16 textIndex;
    u16 _8;
    u16 _a;
    Entity* ent;
} FuseInfo;
static_assert(sizeof(FuseInfo) == 0x10);
extern FuseInfo gFuseInfo;

typedef struct {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 evt_type;
    u8 unk5;
    u8 _5[2];
} struct_080C9CBC;
extern struct_080C9CBC gUnk_080C9CBC[];

#endif // KINSTONE_H
