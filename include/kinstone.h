#ifndef KINSTONE_H
#define KINSTONE_H

#include "global.h"
#include "entity.h"

extern void sub_08018C58(u32);

typedef enum {
    FUSION_STATE_0, // fusion was not yet started
    FUSION_STATE_1, // failed?
    FUSION_STATE_2, // successful?
    FUSION_STATE_3, // fusion is being performed
    FUSION_STATE_4, // player has closed the first messagebox
    FUSION_STATE_5, // fusion declined by the player
    FUSION_STATE_6, // Successful, but not yet finished?
} FusionState;

typedef struct {
    u8 fusionState; /** @see FusionState */
    u8 action;
    u8 _2;
    u8 kinstoneId;
    u8 prevUpdatePriority;
    u8 _5;
    u16 textIndex;
    u16 cancelledTextIndex;
    u16 fusingTextIndex;
    Entity* entity;
} FuseInfo;
static_assert(sizeof(FuseInfo) == 0x10);
extern FuseInfo gFuseInfo;

typedef struct {
    u8 objPalette;
    u8 gfxOffsetPiece;
    u8 gfxOffsetFull;
    u8 subtask; // SUBTASK_WORLDEVENT or 0
    u8 worldEventId;
    u8 shape;
    u8 bubbleIcon;
    u8 mapMarkerIcon; // 0 for no map marker
} KinstoneWorldEvent;
// Indexed by kinstoneId
extern const KinstoneWorldEvent gKinstoneWorldEvents[];

typedef enum {
    KINSTONE_NONE,
    KINSTONE_MYSTERIOUS_CLOUD_TOP_RIGHT,
    KINSTONE_MYSTERIOUS_CLOUD_BOTTOM_LEFT,
    KINSTONE_MYSTERIOUS_CLOUD_TOP_LEFT,
    KINSTONE_MYSTERIOUS_CLOUD_MIDDLE,
    KINSTONE_MYSTERIOUS_CLOUD_BOTTOM_RIGHT,
    KINSTONE_CASTOR_WILDS_STATUE_LEFT,
    KINSTONE_CASTOR_WILDS_STATUE_MIDDLE,
    KINSTONE_CASTOR_WILDS_STATUE_RIGHT,
    KINSTONE_SOURCE_FLOW,
    KINSTONE_A,
    KINSTONE_B,
    KINSTONE_C,
    KINSTONE_D,
    KINSTONE_E,
    KINSTONE_F,
    KINSTONE_10,
    KINSTONE_11,
    KINSTONE_12,
    KINSTONE_13,
    KINSTONE_14,
    KINSTONE_15,
    KINSTONE_16,
    KINSTONE_17,
    KINSTONE_18,
    KINSTONE_19,
    KINSTONE_1A,
    KINSTONE_1B,
    KINSTONE_1C,
    KINSTONE_1D,
    KINSTONE_1E,
    KINSTONE_1F,
    KINSTONE_20,
    KINSTONE_21,
    KINSTONE_22,
    KINSTONE_23,
    KINSTONE_24,
    KINSTONE_25,
    KINSTONE_26,
    KINSTONE_27,
    KINSTONE_28,
    KINSTONE_29,
    KINSTONE_2A,
    KINSTONE_2B,
    KINSTONE_2C,
    KINSTONE_2D,
    KINSTONE_2E,
    KINSTONE_2F,
    KINSTONE_30,
    KINSTONE_31,
    KINSTONE_32,
    KINSTONE_33,
    KINSTONE_34,
    KINSTONE_35,
    KINSTONE_36,
    KINSTONE_37,
    KINSTONE_38,
    KINSTONE_39,
    KINSTONE_3A,
    KINSTONE_3B,
    KINSTONE_3C,
    KINSTONE_3D,
    KINSTONE_3E,
    KINSTONE_3F,
    KINSTONE_40,
    KINSTONE_41,
    KINSTONE_42,
    KINSTONE_43,
    KINSTONE_44,
    KINSTONE_45,
    KINSTONE_46,
    KINSTONE_47,
    KINSTONE_48,
    KINSTONE_49,
    KINSTONE_4A,
    KINSTONE_4B,
    KINSTONE_4C,
    KINSTONE_4D,
    KINSTONE_4E,
    KINSTONE_4F,
    KINSTONE_50,
    KINSTONE_51,
    KINSTONE_52,
    KINSTONE_53,
    KINSTONE_54,
    KINSTONE_55,
    KINSTONE_56,
    KINSTONE_57,
    KINSTONE_58,
    KINSTONE_59,
    KINSTONE_5A,
    KINSTONE_5B,
    KINSTONE_5C,
    KINSTONE_5D,
    KINSTONE_5E,
    KINSTONE_5F,
    KINSTONE_60,
    KINSTONE_61,
    KINSTONE_62,
    KINSTONE_63,
    KINSTONE_64,
    /* some special values, mostly for fusers */
    KINSTONE_NEEDS_REPLACEMENT = 0xF1,
    KINSTONE_JUST_FUSED = 0xF2,
    KINSTONE_FUSER_DONE = 0xF3,
    KINSTONE_RANDOM = 0xFF,
} KinstoneId;

typedef struct {
    u8 unk0; /**< Bank or 0xfd or 0xfe or 0xff */
    u8 unk1; /**< Flag, for bank=0xfd: Kinstone, for bank=0xfe: Item */
    u8 unk2; /**< Gfx id in the inventory? */
    u8 unk3; /**< Offset on the gfx id? */
} struct_gUnk_080B3D20;

typedef enum {
    WORLD_EVENT_0,
    WORLD_EVENT_1,
    WORLD_EVENT_2,
    WORLD_EVENT_3,
    WORLD_EVENT_4,
    WORLD_EVENT_5,
    // TODO add all and use them in gKinstoneWorldEvents
} WorldEventId;

typedef enum {
    CND_0,
    /**< Always false. */ // CND_FALSE
    CND_1,                // local flag // CND_FLAG
    CND_2,                // f CND_INVENTORY != 0
    CND_3,                // 0x10 CND_INVENTORY == 1
    CND_4,                // 0x11 CND_INVENTORY == 2
    CND_5,                // SORA_10_H00
    CND_6,                // SORA_11_H00
    CND_7,                // SORA_12_T00
    CND_8,                // SORA_13_H00
    CND_9,                // SORA_14_T00
    CND_10,               // KS_B15
} WorldEventCondition;

typedef enum {
    WORLD_EVENT_TYPE_0, // Does nothing
    WORLD_EVENT_TYPE_1, // LoadRoomEntity after checking GlobalFlag
    WORLD_EVENT_TYPE_2, // sub_08018BB4
    WORLD_EVENT_TYPE_3, // LoadRoomEntity after checking InventoryValue
    WORLD_EVENT_TYPE_4, // sub_08018A58
    WORLD_EVENT_TYPE_5, // sub_08018B50
    WORLD_EVENT_TYPE_6, // sub_08018AB4
    WORLD_EVENT_TYPE_7, // LoadRoomEntity or sub_080189EC
    WORLD_EVENT_TYPE_8, // set a tile type
    WORLD_EVENT_TYPE_9, // LoadRoomEntity and set some tile type
    WORLD_EVENT_TYPE_BEANSTALK,
    WORLD_EVENT_TYPE_11, // LoadRoomEntity and set gRoomVars.entityRails
    WORLD_EVENT_TYPE_12,
    WORLD_EVENT_TYPE_13,
    WORLD_EVENT_TYPE_14,
    WORLD_EVENT_TYPE_15, // Load different room entity depending on if fused
    WORLD_EVENT_TYPE_16,
    WORLD_EVENT_TYPE_17, // Set local flag, LoadroomEntityList
    WORLD_EVENT_TYPE_18,
    WORLD_EVENT_TYPE_19,
    WORLD_EVENT_TYPE_20,
    WORLD_EVENT_TYPE_21,
    WORLD_EVENT_TYPE_22,
    WORLD_EVENT_TYPE_23,
    WORLD_EVENT_TYPE_24, // LoadRoomEntityList
    WORLD_EVENT_TYPE_25, // LoadRoomEntity, set type depending of if kinstone is fused
    // The following do nothing.
    WORLD_EVENT_TYPE_26,
    WORLD_EVENT_TYPE_27,
    WORLD_EVENT_TYPE_28
} WorldEventType;

typedef struct {
    u8 type;
    u8 entity_idx;
    u8 area;
    u8 room;
    u16 offsetX;  /**< Scroll offset X from the room origin. */
    u16 offsetY;  /**< Scroll offset Y from the room origin. */
    u16 x;        /**< X position of the actual event. */
    u16 y;        /**< Y position of the actual event. */
    u16 _c;       // see GetOverworldLocation, related to _0 and _2 of gOverworldLocations
    u16 _e;       // see GetOverworldLocation, related to _1 and _3 of gOverworldLocations
    u8 condition; // TODO some sort of flag determining what type the bank&flag are? see UpdateVisibleFusionMapMarkers
    u8 bank;      /**< @see LocalBanks */
    u16 flag;
} WorldEvent;
extern const WorldEvent gWorldEvents[];

#endif // KINSTONE_H
