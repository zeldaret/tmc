#ifndef TRANSITIONS_H
#define TRANSITIONS_H

#include "global.h"
#include "roomid.h"

typedef enum {
    WARP_TYPE_BORDER,
    WARP_TYPE_AREA,
    WARP_TYPE_END_OF_LIST = -1,
} WarpType;

typedef enum {
    TRANSITION_TYPE_NORMAL,
    TRANSITION_TYPE_INSTANT_MINISH,
    TRANSITION_TYPE_DROP_IN,
    TRANSITION_TYPE_INSTANT,
    TRANSITION_TYPE_STEP_FORWARD,
    TRANSITION_TYPE_5,
    TRANSITION_TYPE_DROP_IN_MINISH,
    TRANSITION_TYPE_STAIR_EXIT,
    TRANSITION_TYPE_8,
    TRANSITION_TYPE_9,
    TRANSITION_TYPE_HOP_IN_FORWARD,
    TRANSITION_TYPE_HOP_IN,
    TRANSITION_TYPE_FLY_IN,
} TransitionType;

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
    TransitionType transition_type : 8;
    u8 facing_direction; // 0-4
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

#endif // TRANSITIONS_H
