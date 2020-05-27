#ifndef MENU_H
#define MENU_H

#include "global.h"

typedef struct {
    u16 unk;
    u8 transitionType;
    u8 unk4;
    u8 state;
	u8 unk6;
	u8 unk7;
	u8 unk8;
    u16 unk2;
    u16 fadeInTime;
    u8 filler2 [4];
    u32 filler3[3];
} Menu;

#endif