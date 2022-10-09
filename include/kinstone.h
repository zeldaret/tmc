#ifndef KINSTONE_H
#define KINSTONE_H

#include "global.h"
#include "entity.h"

extern void sub_08018C58(u32);

typedef struct {
    u8 _0;
    u8 action;
    u8 _2;
    u8 kinstoneId;
    u8 prevUpdatePriority;
    u8 _5;
    u16 textIndex;
    u16 _8;
    u16 _a;
    Entity* ent;
} FuseInfo;
static_assert(sizeof(FuseInfo) == 0x10);
extern FuseInfo gFuseInfo;

typedef struct {
    u8 objPalette;
    u8 unk1;
    u8 unk2;
    u8 subtask; // SUBTASK_WORLDEVENT or 0
    u8 worldEventId;
    u8 unk5;
    u8 unk6;
    u8 unk7; // TODO flag if it shows a map hint?
} KinstoneWorldEvent;
// Indexed by kinstoneId
extern const KinstoneWorldEvent gKinstoneWorldEvents[];

typedef enum {
    KINSTONE_0,
    KINSTONE_1,
    KINSTONE_2,
    KINSTONE_3,
    KINSTONE_4,
    KINSTONE_5,
    KINSTONE_CASTOR_WILDS_STATUE_LEFT,
    KINSTONE_CASTOR_WILDS_STATUE_MIDDLE,
    KINSTONE_CASTOR_WILDS_STATUE_RIGHT,
    KINSTONE_9,
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
} KinstoneId;

typedef struct {
    u8 unk0; /**< Bank or 0xfd or 0xfe or 0xff */
    u8 unk1; /**< Flag, for bank=0xfd: Kinstone, for bank=0xfe: Item */
    u8 unk2; /**< Gfx id in the inventory? */
    u8 unk3; /**< Offset on the gfx id? */
} struct_gUnk_080B3D20;

enum {
    WORLD_EVENT_0,
    WORLD_EVENT_1,
    WORLD_EVENT_2,
    WORLD_EVENT_3,
    WORLD_EVENT_4,
    WORLD_EVENT_5,
    // TODO add all and use them in gKinstoneWorldEvents
} worldEventId;

enum {
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
} WorldEvent_Condition;

enum {
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
    WORLD_EVENT_TYPE_11, // LoadRoomEntity and set gRoomVars.field_0x8c
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
    u16 _c;       // see sub_080A6A80, related to _0 and _2 of gUnk_08127F94
    u16 _e;       // see sub_080A6A80, related to _1 and _3 of gUnk_08127F94
    u8 condition; // TODO some sort of flag determining what type the bank&flag are? see sub_0801E8D4
    u8 bank;      /**< @see LocalBanks */
    u16 flag;
} WorldEvent;
extern const WorldEvent gWorldEvents[];

#endif // KINSTONE_H
