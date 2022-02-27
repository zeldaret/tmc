#ifndef STRUCTURES_H
#define STRUCTURES_H

#include "global.h"
#include "entity.h"
#include "player.h"

typedef struct {
    int signature;
    u8 saveFileId;
    u8 msg_speed;
    u8 brightness;
    u8 language;
    u8 name[6];
    u8 invalid;
    u8 _f;
} SaveHeader;
#define gSaveHeader ((SaveHeader*)(0x2000000))
// extern SaveHeader gSaveHeader;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02[0xE];
} struct_02000040;

extern struct_02000040 gUnk_02000040;

typedef struct {
    s32 signature;
    u8 field_0x4;
    u8 listenForKeyPresses;
    u8 field_0x6;
    u8 field_0x7;
    u8 pad[24];
} struct_02000010;
static_assert(sizeof(struct_02000010) == 0x20);

extern struct_02000010 gUnk_02000010;

typedef struct {
    u8 unk0;
    u8 unk1;
    u16 unk2;
} struct_020354C0;
extern struct_020354C0 gUnk_020354C0[0x20];

typedef struct {
    u8 filler0[0x1A];
    u16 rButtonX;
    u8 filler1C[0x4];
    u16 rButtonY;
    u8 filler22[0x2];
    u8 ezloNagFuncIndex;
    u8 filler25[0x30F];
} struct_0200AF00;
extern struct_0200AF00 gUnk_0200AF00;

typedef struct {
    u8 unk0;
} struct_02024490;
extern struct_02024490 gGFXSlots;

typedef struct {
    u16 unk_00;
    u8 unk_02[0xE];
} struct_02034480;
extern struct_02034480 gUnk_02034480;

typedef struct {
    u32 flag : 12;
    u32 flagType : 4;
    u32 type : 4;
    u32 unk : 1;
    union {
        struct {
            u16 a;
            u16 b;
        } indices;
        void (*func)(Entity* e);
    } data;
} Dialog;

extern u16 gBG0Buffer[0x400];
extern u16 gBG1Buffer[0x400];
extern u16 gBG2Buffer[0x400];
extern u16 gBG3Buffer[0x800];

extern ItemBehavior gUnk_03000B80[4];
static_assert(sizeof(gUnk_03000B80) == 0x70);

typedef struct {
    u8 sys_priority; // system requested priority
    u8 ent_priority; // entity requested priority
    u8 queued_priority;
    u8 queued_priority_reset;
    Entity* requester;
    u16 priority_timer;
} PriorityHandler;
extern PriorityHandler gPriorityHandler;

extern struct {
    u8 unk0;
    u8 unk1;
    u8 unk2[0xf];
    u8 unk11;
    u8 unk12;
    u8 unk13;
    s8 unk14;
    u8 unk15;
    s8 unk16;
    u8 unk17;
} gUnk_02034490;
static_assert(sizeof(gUnk_02034490) == 0x18);

typedef struct {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u16 unk4;
    u16 unk6;
    void* unk8;
} WStruct;

typedef struct {
    u8 unk0;
    u8 unk1;
    u16 unk2;
    u8 unk4;
    u8 unk5;
    u8 unk6;
    u8 unk7;
} OAMObj;

typedef struct {
    u8 field_0x0;
    u8 field_0x1;
    u8 spritesOffset;
    u8 updated;
    u16 _4;
    u16 _6;
    u8 _0[0x18];
    struct OamData oam[0x80];
    OAMObj unk[0xA0]; /* todo: affine */
} OAMControls;
extern OAMControls gOAMControls;

typedef struct {
    union SplitWord _0;
    union SplitWord _4;
} struct_020227E8;

#endif
