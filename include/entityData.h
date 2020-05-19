#ifndef ENTITYDATA_H
#define ENTITYDATA_H
#include "global.h"
typedef struct {
	u8 entityType;
	u8 field_0x1;
	u8 entitySubtype;
	u8 entityParameter1;
	u32 entityParameter2;
	u16 xPos;
	u16 yPos;
	u32 spritePtr;
} EntityData;
#endif