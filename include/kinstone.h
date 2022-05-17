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
} KinstoneFlag;

#endif // KINSTONE_H
