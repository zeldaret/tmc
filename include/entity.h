#include "global.h"


#ifndef ENTITY_H
#define ENTITY_H

typedef struct {
	void *entity1;
	void *entity2;
	u8 filler[14];
} UnkStruct;

typedef struct {
	u8 type;
    u8 subtype;
    u8 parameter1;
    u8 parameter2;
} EntityType;

union SplitWord {
    s32 WORD;
    struct {
    s16 LO, HI;
    } HALF;
};

union SplitHWord {
    u16 HWORD;
    struct {
    u8 LO, HI;
    } PACKED HALF;
};

typedef struct Entity
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
    union {
        u8 raw;
        struct {
            u8 ss0:2;
            u8 ss2:1;
            u8 ss3:1;
            u8 ss4:1;
            u8 ss5:1;
            u8 ss6:1;
            u8 ss7:1;
        } PACKED b;
    } PACKED spriteSettings;
    
    struct {
        u8 b0:2;
        u8 b1:2;
        u8 b2:4;
    } PACKED spriteOrder;
    u8 palette;
    struct {
        u8 b0:4;
        u8 b1:1;
        u8 b2:3;
    } PACKED spriteOrientation;
    u8 filler[2];
    u8 animationList;
    u8 field_1f;
    u32 field_0x20;
    s16 nonPlanarMovement;
    u8 spriteAnimation[3];
    struct {
        u8 b0:3;
        u8 b1:5;
    } PACKED ticks;
    u16 collisions;
	union SplitWord x;
	union SplitWord y;
	union SplitWord height; // todo
    u8 collisionLayer;
    s8 interactType;
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
    struct Entity * parent;
    struct Entity * attachedEntity;
    u8 field_0x58;
    u8 field_0x59;
    union {
        u8 all;
        u8 f0:6;
        u8 f1:1;
        u8 f2:1;
    } PACKED frames;
    u8 gfx;
    u8 field_0x5c;
    u8 field_0x5d;
    u8 field_0x5e;
    u8 field_0x5f;
    u16 spriteVramOffset;
    u8 spriteRenderPositionOffset;
    u8 field_0x63;
    u32 * otherEntity;
	u16 field_0x68;
    u16 field_0x6a;
    u8 filler4[8];
    u32 * heldObjectPtr;
	u8 filler3[2];
	u16 itemCooldown;
	u32 field_0x7c;
	u32 field_0x80;
	union SplitHWord cutsceneBeh;
    u16 field_0x86;
	
} Entity;

#endif