#ifndef TMC_TRANSITIONS_H
#define TMC_TRANSITIONS_H
#include "global.h"
#include "roomid.h"

typedef enum {
    WARP_TYPE_0,
    WARP_TYPE_1,
    WARP_TYPE_END_OF_LIST = -1,
} WarpType;

typedef struct Transition {
    WarpType warp_type : 8;
    u8 subtype;
    u16 startX;
    u16 startY;
    u16 endX;
    u16 endY;
    u8 shape;
    u8 area;
    RoomID room : 8;
    u8 height;
    u8 transition_type;
    u8 facing_direction;
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
} Transition;

extern const Transition gExitList_RoyalValley_ForestMaze[];
extern const Transition gUnk_08134FBC[];
extern const Transition gUnk_08135048[];
extern const Transition gUnk_08135190[];
extern const Transition gUnk_0813A76C[];
extern const Transition* const* const gExitLists[];

#endif // TMC_TRANSITIONS_H
