#include "global.h"


#ifndef ENTITY_H
#define ENTITY_H



typedef struct {
	u8 type;
    u8 subtype;
    u8 parameter1;
    u8 parameter2;
} EntityType;

union SplitWord {
    u32 WORD;
    u16 LO, HI;
};

typedef struct {
	u16 LO;
	u16 HI;
} Pos;

typedef struct
{
    u32 *field_0x0;
    u32 * field_0x4;
	EntityType entityType;
    u8 action;
    u8 previousActionFlag;
    u8 parameter3;
    u8 field_0xf;
    u8 flags;
    u8 scriptedScene:4;
	u8 scriptedScene2:4;
    s16 spriteTileSize;
    u8 animationState;
    u8 direction;
    u8 possibleBool;
    u8 field_0x17;
    u8 shadowSize;
    u8 spriteOrder;
    u8 palette;
    u8 spriteOrientation[3];
    u16 spritePointer;
    u16 field_0x20;
    s16 nonPlanarMovement;
    u8 spriteAnimation[3];
    u8 ticks;
    u16 collisions;
	union SplitWord x;
	union SplitWord y;
	union SplitWord height; // todo
    u8 collisionLayer;
    u8 field_0x39;
    u8 field_0x3a;
    u8 flags2;
    u8 field_0x3c;
    u8 field_0x3d;
    u8 field_0x3e;
    u8 damageType;
    u8 field_0x40;
    u8 bitfield;
    u8 field_0x42;
    u8 field_0x43;
    u8 field_0x44;
    u8 currentHealth;
    s16 field_0x46;
    u32 * boundingBox;
    u8 field_0x4c;
    u8 field_0x4d;
    u8 field_0x4e;
    u8 field_0x4f;
    u32 * spritePtr;
    u32 * attachedEntity;
    u8 field_0x58;
    u8 field_0x59;
    u8 frames;
    u8 spriteOrientation2;
    u8 field_0x5c;
    u8 field_0x5d;
    u8 field_0x5e;
    u8 field_0x5f;
    u16 spriteVramOffset;
    u8 spriteRenderPositionOffset;
    u8 field_0x63;
    u8 * field_0x64;
    u32 * otherEntity;
	u8 filler2[8];
    u32 * heldObjectPtr;
	u8 filler[12];
    u32 * field_0x84;
	
} Entity;

#endif