#ifndef ROOM_H
#define ROOM_H

#include "global.h"
#include "entity.h"

/*
typedef struct {
	u8 areaID;
	u8 roomID;
} RoomID;
*/

typedef struct {
    u16 unk2;
    u8 unk3;
    u8 unk4;
	u8 areaID;
	u8 roomID;
    u16 roomOriginX;
	u16 roomOriginY;
	s16 roomScrollX;
	s16 roomScrollY;
	u8 filler[8];
	u16 screenShakeTime;
	u16 filler2[6];
	u8 filler3[4];
	u16 filler4[4];
	Entity * cameraTarget;
} RoomControls;

#endif