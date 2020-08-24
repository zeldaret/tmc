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
    u16 filler2[3];
    u16 width;
    u16 height;
    u8 filler3[6];
    union SplitWord bg3OffsetX;
    union SplitWord bg3OffsetY;
    Entity* cameraTarget;
} RoomControls;

typedef struct {
	u8 filler[6];
	u8 itemForSaleIndex;
	u8 field_0x7;
    u8 field_0x8;
    u8 field_0x9;
	u8 unk2;
	u16 filler2[3];
	u32 roomFlags;
    u32 unk3;
	u8 filler4[48];
	u8 filler5[28];
	u32 greatFairyState;
    u32* field_0x6c;
    u32* field_0x70;
    u32* field_0x74;
    u32 field_0x78;
    u8 field_0x79[10];
    void* field_0x88;
} RoomVars;


//Packets used to store which entities to load in a room
typedef struct {
    u8 type  : 4;
    u8 layer : 4;
    u8 flags : 4;
    u8 unk   : 4;
    u8 subtype;
    u8 form;
    u32 parameter;
    u16 xPos;
    u16 yPos;
    u32 spritePtr;
} EntityData;

extern RoomControls gRoomControls;
extern RoomVars gRoomVars;

extern void SetTileType(u32, u32, u32);

#endif