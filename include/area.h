#ifndef AREA_H
#define AREA_H

#include "global.h"
#include "map.h"
#include "transitions.h"

#define MAX_ROOMS 64

typedef enum {
    PT_TREESTUMP,
    PT_ROCK,
    PT_2,
    PT_DUNGEON,
    PT_JAR,
    PT_5,
    PT_TOD,
} PortalTypes;

typedef struct {
    u16 pixel_width;
    u16 pixel_height;
    u16 map_x;
    u16 map_y;
    MapDataDefinition* tileSet;
    MapDataDefinition* map;
    MapDataDefinition* tiles;
    void* bg_anim;
    const Transition* exits;
    void** properties;
} RoomResInfo;
static_assert(sizeof(RoomResInfo) == 0x20);

typedef struct {
    u8 textBaseIndex;
    u8 textIndexOffset;
    u8 currentHint;
    u8 unk2b;
    u16 ezloHintTexts[8];
} struct_area_28;

typedef struct {
    u8 areaMetadata;
    u8 locationIndex;
    u8 unk;
    u8 dungeon_idx; /* same index as global flags for dungeons */
    u16 localFlagOffset;
    u8 flag_bank;
    u8 filler[3];
    u16 lightLevel;
    u8 lightType;
    u8 unk_0c_0 : 1;
    u8 unk_0c_1 : 3;
    u8 unk_0c_4 : 4;
    u8 filler3[2];
    u16 field_0x10;
    u16 portal_x;
    u16 portal_y;
    u8 portal_exit_dir;
    u8 portal_type;
    u8 portal_mode;
    // u8 filler3[7];
    bool8 portal_in_use;
    u8 portal_timer;
    u8 filler2[13];
    struct_area_28 unk28;
    RoomResInfo roomResInfos[MAX_ROOMS];
    RoomResInfo currentRoomInfo;
    RoomResInfo* pCurrentRoomInfo;
    u32 bgm;
    u32 queued_bgm;
    u8 filler6[0x20];
    void* transitionManager;
    void (*onEnter)();
    void (*onExit)();
} Area;
static_assert(sizeof(Area) == 0x894);
extern Area gArea;

typedef struct {
    u16 map_x;
    u16 map_y;
    u16 pixel_width;
    u16 pixel_height;
    u16 tileSet_id;
} FORCE_WORD_ALIGNED RoomHeader;
static_assert(sizeof(RoomHeader) == 0xa);
extern RoomHeader* gAreaRoomHeaders[];

typedef struct {
    u8 flags;
    u8 location;
    u8 flag_bank;
    u8 queueBgm;
} AreaHeader;
extern const AreaHeader gAreaMetadata[];

typedef enum {
    AR_IS_OVERWORLD = 0x1,
    AR_HAS_KEYS = 0x2,
    AR_IS_DUNGEON = 0x4, /**< Causes the area to have a red name. */
    AR_HAS_MAP = 0x8,
    AR_HAS_ENEMIES = 0x10,
    AR_IS_MOLE_CAVE = 0x20,
    AR_HAS_NO_ENEMIES = 0x40,
    AR_ALLOWS_WARP = 0x80, /**< Not used in EU. Allows to warp in areas that do not have AR_OVERWORLD set. */
} AreaFlags;

typedef enum {
    AREA_MINISH_WOODS,
    AREA_MINISH_VILLAGE,
    AREA_HYRULE_TOWN,
    AREA_HYRULE_FIELD,
    AREA_CASTOR_WILDS,
    AREA_RUINS,
    AREA_MT_CRENEL,
    AREA_CASTLE_GARDEN,
    AREA_CLOUD_TOPS,
    AREA_ROYAL_VALLEY,
    AREA_VEIL_FALLS,
    AREA_LAKE_HYLIA,
    AREA_LAKE_WOODS_CAVE,
    AREA_BEANSTALKS,
    AREA_EMPTY,
    AREA_HYRULE_DIG_CAVES,
    AREA_MELARIS_MINE,
    AREA_MINISH_PATHS,
    AREA_CRENEL_MINISH_PATHS,
    AREA_DIG_CAVES,
    AREA_CRENEL_DIG_CAVE,
    AREA_FESTIVAL_TOWN,
    AREA_VEIL_FALLS_DIG_CAVE,
    AREA_CASTOR_WILDS_DIG_CAVE,
    AREA_OUTER_FORTRESS_OF_WINDS,
    AREA_HYLIA_DIG_CAVES,
    AREA_VEIL_FALLS_TOP,
    AREA_NULL_1B,
    AREA_NULL_1C,
    AREA_NULL_1D,
    AREA_NULL_1E,
    AREA_NULL_1F,
    AREA_MINISH_HOUSE_INTERIORS,
    AREA_HOUSE_INTERIORS_1,
    AREA_HOUSE_INTERIORS_2,
    AREA_HOUSE_INTERIORS_3,
    AREA_TREE_INTERIORS,
    AREA_DOJOS,
    AREA_CRENEL_CAVES,
    AREA_MINISH_CRACKS,
    AREA_HOUSE_INTERIORS_4,
    AREA_GREAT_FAIRIES,
    AREA_CASTOR_CAVES,
    AREA_CASTOR_DARKNUT,
    AREA_ARMOS_INTERIORS,
    AREA_TOWN_MINISH_HOLES,
    AREA_MINISH_RAFTERS,
    AREA_GORON_CAVE,
    AREA_WIND_TRIBE_TOWER,
    AREA_WIND_TRIBE_TOWER_ROOF,
    AREA_CAVES,
    AREA_VEIL_FALLS_CAVES,
    AREA_ROYAL_VALLEY_GRAVES,
    AREA_MINISH_CAVES,
    AREA_CASTLE_GARDEN_MINISH_HOLES,
    AREA_37,
    AREA_EZLO_CUTSCENE,
    AREA_NULL_39,
    AREA_NULL_3A,
    AREA_NULL_3B,
    AREA_NULL_3C,
    AREA_NULL_3D,
    AREA_NULL_3E,
    AREA_NULL_3F,
    AREA_40,
    AREA_HYRULE_TOWN_UNDERGROUND,
    AREA_GARDEN_FOUNTAINS,
    AREA_HYRULE_CASTLE_CELLAR,
    AREA_SIMONS_SIMULATION,
    AREA_45,
    AREA_NULL_46,
    AREA_47,
    AREA_DEEPWOOD_SHRINE,
    AREA_DEEPWOOD_SHRINE_BOSS,
    AREA_DEEPWOOD_SHRINE_ENTRY,
    AREA_NULL_4B,
    AREA_NULL_4C,
    AREA_4D,
    AREA_NULL_4E,
    AREA_NULL_4F,
    AREA_CAVE_OF_FLAMES,
    AREA_CAVE_OF_FLAMES_BOSS,
    AREA_NULL_52,
    AREA_NULL_53,
    AREA_NULL_54,
    AREA_NULL_55,
    AREA_NULL_56,
    AREA_57,
    AREA_FORTRESS_OF_WINDS,
    AREA_FORTRESS_OF_WINDS_TOP,
    AREA_INNER_MAZAAL,
    AREA_NULL_5B,
    AREA_NULL_5C,
    AREA_NULL_5D,
    AREA_NULL_5E,
    AREA_5F,
    AREA_TEMPLE_OF_DROPLETS,
    AREA_NULL_61,
    AREA_HYRULE_TOWN_MINISH_CAVES,
    AREA_NULL_63,
    AREA_NULL_64,
    AREA_NULL_65,
    AREA_NULL_66,
    AREA_67,
    AREA_ROYAL_CRYPT,
    AREA_NULL_69,
    AREA_NULL_6A,
    AREA_NULL_6B,
    AREA_NULL_6C,
    AREA_NULL_6D,
    AREA_NULL_6E,
    AREA_6F,
    AREA_PALACE_OF_WINDS,
    AREA_PALACE_OF_WINDS_BOSS,
    AREA_NULL_72,
    AREA_NULL_73,
    AREA_NULL_74,
    AREA_NULL_75,
    AREA_NULL_76,
    AREA_77,
    AREA_SANCTUARY,
    AREA_NULL_79,
    AREA_NULL_7A,
    AREA_NULL_7B,
    AREA_NULL_7C,
    AREA_NULL_7D,
    AREA_NULL_7E,
    AREA_7F,
    AREA_HYRULE_CASTLE,
    AREA_SANCTUARY_ENTRANCE,
    AREA_NULL_82,
    AREA_NULL_83,
    AREA_NULL_84,
    AREA_NULL_85,
    AREA_NULL_86,
    AREA_87,
    AREA_DARK_HYRULE_CASTLE,
    AREA_DARK_HYRULE_CASTLE_OUTSIDE,
    AREA_VAATIS_ARMS,
    AREA_VAATI_3,
    AREA_VAATI_2,
    AREA_DARK_HYRULE_CASTLE_BRIDGE,
    AREA_NULL_8E,
    AREA_8F,
    AREA_90,
    AREA_91,
    AREA_92,
    AREA_93,
    AREA_94,
    AREA_95,
    AREA_96,
    AREA_97,
    AREA_98,
} AreaID;

#endif // AREA_H
