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
	u8 unk5;
    u8 unk6;
    u8 filler[4];
	u8 screenShakeMagnitude;
	u8 unk7;
	u16 screenShakeTime;
	u16 filler2[6];
	u8 filler3[4];
	u16 filler4[4];
	Entity * cameraTarget;
} RoomControls;

typedef struct {
	u8 filler[6];
	u8 itemForSaleIndex;
	u16 unk;
	u8 unk2;
	u16 filler2[3];
	u8 filler3[4];
	u8 filler4[52];
	u8 filler5[28];
	u32 greatFairyState;
} RoomVars;

extern RoomControls gRoomControls;
extern RoomVars gRoomVars;
#endif