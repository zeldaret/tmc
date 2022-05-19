#ifndef TILEPUZZLEMANAGER_H
#define TILEPUZZLEMANAGER_H

#include "manager.h"

typedef struct TilePuzzleManager {
    Manager base;
    u8 unk_20[8]; // unused
    u16 own_tile;
    u8 unk_2a[0x2]; // unused
    u16 player_previous_tile;
    u16 player_current_tile;
    u8 unk_30[0x6]; // unused
    u8 width;
    u8 height;
    s16 x;
    s16 y;
    u16 flag_succeeded;
    u16 flag_reset;
} TilePuzzleManager;

#endif // TILEPUZZLEMANAGER_H
