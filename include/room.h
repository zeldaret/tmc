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
    /*0x00*/ u16 unk2;
    /*0x02*/ u8 unk3;
    /*0x03*/ u8 unk4;
    /*0x04*/ u8 areaID;
    /*0x05*/ u8 roomID;
    /*0x06*/ u16 roomOriginX;
    /*0x08*/ u16 roomOriginY;
    /*0x0A*/ s16 roomScrollX;
    /*0x0C*/ s16 roomScrollY;
    /*0x0E*/ u8 unk5;
    /*0x0F*/ u8 unk6;
    /*0x10*/ u8 filler[4];
    /*0x14*/ u8 screenShakeMagnitude;
    /*0x15*/ u8 unk7;
    /*0x16*/ u16 screenShakeTime;
    /*0x18*/ u16 filler2[3];
    /*0x1E*/ u16 width;
    /*0x20*/ u16 height;
    /*0x22*/ u8 filler3[6];
    /*0x28*/ union SplitWord bg3OffsetX;
    /*0x2C*/ union SplitWord bg3OffsetY;
    /*0x30*/ Entity* cameraTarget;
} RoomControls;

typedef struct {
    u8 filler[4];
    u8 field_0x4;
    u8 filler1[1];
    u8 itemForSaleIndex;
    u8 field_0x7;
    u8 field_0x8;
    u8 field_0x9;
    u8 unk2;
    u8 filler2[5];
    u8 unk_10;
    u8 filler6[3];
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

// Packets used to store which entities to load in a room
typedef struct {
    u8 type : 4;
    u8 layer : 4;
    u8 flags : 4;
    u8 unk : 4;
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
extern void sub_08080964(u32 time, u32 magnitude); // shake screen

#endif
