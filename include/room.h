#ifndef ROOM_H
#define ROOM_H

#include "global.h"
#include "entity.h"

/*
typedef struct {
        u8 areaID;
        u8 roomID;
} RoomID;
*/

enum RoomTransition {
    TRANSITION_DEFAULT,
    TRANSITION_CUT,
    TRANSITION_FADE_WHITE_SLOW,
    TRANSITION_3,
    TRANSITION_FADE_BLACK_SLOW,
    TRANSITION_FADE_BLACK,
    TRANSITION_FADE_BLACK_FAST,
    TRANSITION_7,
    TRANSITION_FADE_WHITE_FAST,
    TRANSITION_CUT_FAST,
};

typedef struct {
    /*0x00*/ u16 unk2;
    /*0x02*/ u8 unk3;
    /*0x03*/ u8 unk4;
    /*0x04*/ u8 areaID;
    /*0x05*/ u8 roomID;
    /*0x06*/ u16 roomOriginX;
    /*0x08*/ u16 roomOriginY;
    /*0x0A*/ s16 roomScrollX;
    /*0x0C*/ s16 roomScrollY;
    /*0x0E*/ u8 unk5;
    /*0x0F*/ u8 scroll_flags; // 0x2 = ??, 0x4 = camera scrolling
    /*0x10*/ u8 unk_10;
    /*0x11*/ s8 oam_offset_x;
    /*0x12*/ s8 oam_offset_y;
    /*0x13*/ u8 unk13;
    /*0x14*/ u8 screenShakeMagnitude;
    /*0x15*/ u8 unk7;
    /*0x16*/ u16 screenShakeTime;
    /*0x18*/ u16 filler2[3];
    /*0x1E*/ u16 width;
    /*0x20*/ u16 height;
    /*0x22*/ u8 filler3[2];
    /*0x24*/ s8 aff_x;
    /*0x25*/ s8 aff_y;
    /*0x26*/ u8 filler26[2];
    /*0x28*/ union SplitWord bg3OffsetX;
    /*0x2C*/ union SplitWord bg3OffsetY;
    /*0x30*/ Entity* cameraTarget;
} RoomControls;
extern RoomControls gRoomControls;

typedef struct {
    u8 field_0x0;
    u8 filler_0x1;
    u8 field_0x2;
    u8 field_0x3;
    u8 field_0x4;
    u8 filler1[1];
    u8 shopItemType;
    u8 shopItemType2;
    u8 field_0x8;
    u8 field_0x9;
    u8 unk2;
    u8 filler2;
    s16 lightLevel;
    u8 filler3[2];
    u8 unk_10[4];
    u32 flags;
    u32 unk3;
    u8 filler4[48];
    u8 filler5[28];
    u32 animFlags;
    void* field_0x6c[8];
    void* field_0x8c[16];
} RoomVars;
static_assert(sizeof(RoomVars) == 0xCC);
extern RoomVars gRoomVars;

// Packets used to store which entities to load in a room
typedef struct {
    u8 kind;
    u8 flags;
    u8 id;
    u8 type;
    u32 type2;
    u16 xPos;
    u16 yPos;
    u32 spritePtr;
} EntityData;

typedef struct {
    u16 field_0x0;
    u16 field_0x2;
    u8 field_0x4;
    u8 field_0x5;
    u8 field_0x6;
    u8 field_0x7;
} struct_030010EC;

typedef struct {
    u16 data[32];
    u16 field_0xac;
    u16 field_0xae;
} struct_0300110C;

// Status of the player's positioning within the scene.
typedef struct {
    u8 area_next;
    u8 room_next;
    u8 start_anim;
    u8 spawn_type;
    s16 start_pos_x;
    s16 start_pos_y;
    u8 layer;
    u8 field_0x15;
    u8 dungeon_area;
    u8 dungeon_room;
    s16 dungeon_x;
    s16 dungeon_y;
    s16 dungeon_map_x;
    s16 dungeon_map_y;
    s16 overworld_map_x;
    s16 overworld_map_y;
    u8 field_0x24[0x8];
} PlayerWorldStatus;
static_assert(sizeof(PlayerWorldStatus) == 0x20);

typedef struct {
    s32 frameCount; // regular frame count? does anything reset it?
    u8 field_0x4[0x2];
    u16 field_0x6;
    bool8 transitioningOut;
    u8 transitionType; // transition when changing areas
    u16 stairs_idx;    // seems to be a tile type
    PlayerWorldStatus player_status;
    u8 field_0x2c[0x9];
    u8 hint_height;
    u16 hint_idx;
    u8 field_0x38;
    u8 field_0x39;
    u8 field_0x3a;
    u8 field_0x3b;
    u8 field_0x3c;
    u8 field_0x3d;
    u16 field_0x3e;
    u16 hurtType;
    u16 field_0x42;
    u16 field_0x44;
    u16 field_0x46;
    u16 field_0x48;
    u16 field_0x4a;
    struct_030010EC minecart_data[4];
    struct_0300110C armos_data;
} ScreenTransition;
extern ScreenTransition gScreenTransition;

typedef struct {
    u8 type;
    u8 _1;
    u8 _2;
    u8 _3;
    u16 _4;
    u8 _6;
    u8 _7;
} TileEntity;
extern TileEntity gSmallChests[8];

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
    LOCATION_CHANGER,
    TILE_ENTITY_D
} TileEntityType;

extern void SetTileType(u32, u32, u32);
extern void InitScreenShake(u32 time, u32 magnitude);

extern void* GetCurrentRoomProperty(u32);
extern void LoadRoomTileEntities();

void sub_0804B3C4(void*);

#endif
