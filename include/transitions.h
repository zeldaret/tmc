#ifndef TMC_TRANSITIONS_H
#define TMC_TRANSITIONS_H
#include "global.h"

typedef struct Transition {
    u8 warp_type;
    u8 subtype;
    u16 startX;
    u16 startY;
    u16 endX;
    u16 endY;
    u8 shape;
    u8 area;
    u8 room;
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
