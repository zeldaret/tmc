#ifndef STRUCTURES_H
#define STRUCTURES_H

#include "global.h"
#include "entity.h"
#include "player.h"

typedef struct {
    int signature;
    u8 saveFileId;
    u8 messageSpeed;
    u8 brightnessPref;
    u8 gameLanguage;
    u8 name[6];
    u8 _e;
    u8 _f;
} struct_02000000;
#define gSaveHeader ((struct_02000000*)(0x2000000))
// extern struct_02000000 gSaveHeader;

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
    u16 transitionType;
    u8 field_0x2[4];
    s16 playerXPos;
    s16 playerYPos;
    u8 field_0xa;
    u8 areaID;
    u8 roomID;
    u8 playerLayer;
    u8 field_0xe;
    u8 playerState;
    u16 transitionSFX;
} ScreenTransitionData;

typedef struct {
    u8 active;
    u8 field_0x1;
    u8 field_0x2;
    u8 field_0x3;
    u32 mask;
    u16 fadeType;  // fade in or out, are there others?
    u16 fadeSpeed; // subtracted from duration
    u16 fadeDuration;
    u16 field_0xe;
    s16 field_0x10;
    s16 field_0x12;
    s16 field_0x14;
    u16 field_0x16;
    u16 field_0x18;
} FadeControl;

extern FadeControl gFadeControl;

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
    u32 unk_00;
    u16 commandIndex;
    u8 commandSize;
    u8 flags;
    u8 unk_08;
} struct_02033280;
extern struct_02033280 gActiveScriptInfo;

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
        void (*func)(Entity*);
    } data;
} Dialog;

extern u16 gBG0Buffer[0x400];
extern u16 gBG1Buffer[0x400];
extern u16 gBG2Buffer[0x400];
extern u16 gBG3Buffer[0x800];

struct {
    u8 filler[0x70];
} extern gUnk_03000B80;
// TODO extern ItemBehavior gUnk_03000B80[4];
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

extern u8 gUnk_02022740[];
extern u8 gUnk_02034490[];

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
    u8 type;
    u8 unk_0x1;
    u8 unk_0x2;
    u8 unk_0x3;
    u16 tilePos;
    u16 unk_0x6;
} TileEntityData;

typedef enum {
    NONE,
    ROOM_VISIT_MARKER,
    SMALL_CHEST,
    BIG_CHEST,
    BOMBABLE_WALL,
    SIGN,
    TILE_ENTITY_6,
    MUSIC_SETTER,
    TILE_ENTITY_8,
    DARKNESS,
    DESTRUCTIBLE_TILE,
    GRASS_DROP_CHANGER,
    TILE_ENTITY_C,
    TILE_ENTITY_D
} TileEntityType;

#endif
