#ifndef ROOM_H
#define ROOM_H

#include "entity.h"
#include "droptables.h"
#include "map.h"

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

enum RoomReloadType {
    RELOAD_ALL = 1,
    RELOAD_ENTITIES = 2,
};

typedef struct {
    /*0x00*/ u16 reload_flags; // anything except for 0x1 prevents the screen from reloading when tiles are changed.
    /*0x02*/ u8 scrollAction;
    /*0x03*/ u8 scrollSubAction;
    /*0x04*/ u8 area;
    /*0x05*/ u8 room;
    /*0x06*/ u16 origin_x;
    /*0x08*/ u16 origin_y;
    /*0x0A*/ s16 scroll_x;
    /*0x0C*/ s16 scroll_y;
    /*0x0E*/ u8 scrollSpeed;  /**< Pixels per frame that the camera can scroll. */
    /*0x0F*/ u8 scroll_flags; // 0x2 = ?? (apply collision value on bottom map no matter the layer SetTileType is
                              // called for), 0x4 = camera scrolling
    /*0x10*/ u8 scroll_direction;
    /*0x11*/ s8 oam_offset_x;
    /*0x12*/ s8 oam_offset_y;
    /*0x13*/ u8 unk_13;
    /*0x14*/ u8 shake_magnitude;
    /*0x15*/ u8 unk_15;
    /*0x16*/ u16 shake_duration;
    /*0x18*/ u16 unk_18; // progress during transition in same area?
    /*0x1A*/ u16 unk_1a; // calculated from unk_18
    /*0x1C*/ u16 unk_1c; // 0, 0xff
    /*0x1E*/ u16 width;  /**< Width in pixels. */
    /*0x20*/ u16 height; /**< Height in pixels. */
    /*0x22*/ u16 unk_22; // so far always 0xffff
    /*0x24*/ s8 aff_x;
    /*0x25*/ s8 aff_y;
    /*0x26*/ u8 unk_26;
    /*0x27*/ u8 unk_27;
    /*0x28*/ union SplitWord bg3OffsetX;
    /*0x2C*/ union SplitWord bg3OffsetY;
    /*0x30*/ Entity* camera_target;
    /*0x34*/ u32 tileSet; // TODO Should be MapDataDefinition*, but then LoadRoomTileSet does not match.
} RoomControls;
extern RoomControls gRoomControls;

typedef struct {
    /* 0x00 */ bool8 didEnterScrolling;
    /* 0x01 */ bool8 destructableManagerLoaded;
    /* 0x02 */ bool8 randomDropsDisabled;
    /* 0x03 */ bool8 remFlagUnused;
    /* 0x04 */ u8 numKinstoneDrops;
    /* 0x05 */ u8 numKinstoneDropsPrevFrame;
    /* 0x06 */ u8 shopItemType;
    /* 0x07 */ u8 shopItemType2;
    /* 0x08 */ u8 unused;
    /* 0x09 */ u8 fight_bgm;
    /* 0x0a */ u8 needHealthDrop;
    /* 0x0c */ s16 lightLevel;
    /* 0x0e */ u16 tileEntityCount; // Number of previous values for special tiles stored in gTilesForSpecialTiles
    /* 0x10 */ u8 graphicsGroups[4];
    /* 0x14 */ u8 flags[52];
    /* 0x48 */ Droptable currentAreaDroptable;
    /* 0x68 */ u32 animFlags;
    /* 0x6c */ void* properties[8];
    /* 0x8c */ void* entityRails[8];
    /* 0xac */ Entity* puzzleEntities[8];
} RoomVars;
static_assert(sizeof(RoomVars) == 0xCC);
extern RoomVars gRoomVars;

typedef struct {
    u8 area;
    u8 room;
    u16 unk_02;
    u32 enemyBits; /**< Flags that can be set on the tracked rooms. Used e.g. by the door mimic. (TODO probably to start
                  in the discovered state?)*/
} RoomMemory;

extern RoomMemory* gCurrentRoomMemory;
extern RoomMemory gRoomMemory[];

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
    u16 tilePos;
    u16 field_0x2;
    u8 room;
    u8 animationState;
    u8 field_0x6;
    u8 field_0x7;
} MinecartData;

typedef struct {
    u16 data[32];
    u16 field_0xac;
    u16 field_0xae;
} ArmosData;

// Status of the player's positioning within the scene.
typedef struct {
    /* 0x00 */ u8 area_next;
    /* 0x01 */ u8 room_next;
    /* 0x02 */ u8 start_anim;
    /* 0x03 */ u8 spawn_type;
    /* 0x04 */ s16 start_pos_x;
    /* 0x06 */ s16 start_pos_y;
    /* 0x08 */ u8 layer;
    /* 0x09 */ u8 filler9;
    /* 0x0a */ u8 dungeon_area;
    /* 0x0b */ u8 dungeon_room;
    /* 0x0c */ s16 dungeon_x;
    /* 0x0e */ s16 dungeon_y;
    /* 0x10 */ u16 dungeon_map_x;
    /* 0x12 */ u16 dungeon_map_y;
    /* 0x14 */ u16 overworld_map_x;
    /* 0x16 */ u16 overworld_map_y;
    /* 0x18 */ u8 filler18[8];
} PlayerRoomStatus;
static_assert(sizeof(PlayerRoomStatus) == 0x20);

typedef struct {
    /* 0x00 */ s32 frameCount; // regular frame count? does anything reset it?
    /* 0x04 */ u8 field_0x4[0x2];
    /* 0x06 */ u16 field_0x6;
    /* 0x08 */ bool8 transitioningOut;
    /* 0x09 */ u8 type;        // transition when changing areas
    /* 0x0a */ u16 stairs_idx; // seems to be a tile type @see TileType, set in UpdateDoorTransition()
    /* 0x0c */ PlayerRoomStatus player_status;
    /* 0x2c */ u8 entity_update_type; // differentiates entity priority on kinstone menu?
    /* 0x2d */ u8 field2d;
    /* 0x2e */ u8 location;
    /* 0x2f */ u8 field2f;
    /* 0x30 */ u8 field30;
    /* 0x31 */ u8 field31;
    /* 0x32 */ u8 field32;
    /* 0x33 */ u8 field33;
#if defined(JP) || defined(EU)
    /* 0x34 */ u8 hint_height;
    /* 0x35 */ u8 field35;
#else
    /* 0x34 */ u8 field35;
    /* 0x35 */ u8 hint_height;
#endif
    /* 0x36 */ u16 hint_idx;
    /* 0x38 */ u8 field_0x38;
    /* 0x39 */ u8 field_0x39;
    /* 0x3a */ u8 field_0x3a;
    /* 0x3b */ u8 field_0x3b;
    /* 0x3c */ u8 field_0x3c;
    /* 0x3d */ u8 field_0x3d;
    /* 0x3e */ u16 field_0x3e;
    /* 0x40 */ u16 field_0x40;
    /* 0x42 */ u16 field_0x42;
    /* 0x44 */ u16 field_0x44;
    /* 0x46 */ u16 field_0x46;
    /* 0x48 */ u16 field_0x48;
    /* 0x4a */ u16 field_0x4a;
    /* 0x4c */ MinecartData minecart_data[4];
    /* 0x6c */ ArmosData armos_data;
} RoomTransition;
static_assert(sizeof(RoomTransition) == 0xB0);
extern RoomTransition gRoomTransition;

typedef struct {
    u16 type;
    u8 field_0x2[4];
    s16 playerXPos;
    s16 playerYPos;
    u8 field_0xa;
    u8 area;
    u8 room;
    u8 playerLayer;
    u8 spawn_type;
    u8 playerState;
    u16 transitionSFX;
} ScreenTransitionData;

typedef struct {
    u8 type;
    u8 localFlag;
    u8 _2;
    u8 _3;
    u16 tilePos;
    u8 _6;
    u8 _7;
} TileEntity;
extern TileEntity gSmallChests[8];

extern TileEntity gUnk_080FEAC8[];

typedef enum {
    NONE,
    ROOM_VISIT_MARKER,
    SMALL_CHEST,
    BIG_CHEST,
    BOMBABLE_WALL,
    SIGN,
    TILE_EZLO_HINT,
    MUSIC_SETTER,
    TILE_ENTITY_8,
    DARKNESS,
    DESTRUCTIBLE_TILE,
    GRASS_DROP_CHANGER,
    LOCATION_CHANGER,
    TILE_ENTITY_D,
} TileEntityType;

extern void** gCurrentRoomProperties;

void SetTileType(u32 tileType, u32 tilePos, u32 layer);
void InitScreenShake(u32 time, u32 magnitude);

void CallRoomProp5And7(void);
void LoadRoom(void);
void SetCurrentRoomPropertyList(u32 area, u32 room);
void* GetCurrentRoomProperty(u32);
void LoadRoomTileEntities();
Entity* LoadRoomEntity(const EntityData*);
void LoadRoomEntityList(const EntityData* listPtr);
void* GetRoomProperty(u32 area, u32 room, u32 property);

bool32 LoadFixedGFX(Entity*, u32);
void UnloadGFXSlots(Entity*);
void LoadSmallChestTile2(TileEntity*);
void sub_0804B0B0(u32 arg0, u32 arg1);

void DoExitTransition(const ScreenTransitionData* data);

#endif // ROOM_H
