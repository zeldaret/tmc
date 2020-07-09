// clang-format off
#ifndef ENTITY_H
#define ENTITY_H

#include "global.h"
#include "sprite.h"

typedef struct {
    void* entity1;
    void* entity2;
    u8 filler[14];
} UnkStruct;

typedef struct {
    u8 type;
    u8 subtype;
    u8 form;
    u8 parameter;
} EntityType;

typedef struct {
    u8 unknown[6];
    u8 field_0x6;
    u8 field_0x7;
    u8 unknown2[4];
} BoundingBox;

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
} PACKED;

typedef struct Entity {
    /*0x00*/ u32* field_0x0;
    /*0x04*/ u32* field_0x4;
    /*0x08*/ EntityType entityType;
    /*0x0c*/ u8 action;
    /*0x0d*/ u8 previousActionFlag;
    /*0x0e*/ u8 actionDelay;
    /*0x0f*/ u8 field_0xf;
    /*0x10*/ u8 flags;
    /*0x11*/ u8 scriptedScene : 4;
    /*    */ u8 scriptedScene2 : 4;
    /*0x12*/ s16 spriteTileSize;
    /*0x14*/ u8 animationState;
    /*0x15*/ u8 direction;
    /*0x16*/ u8 possibleBool;
    /*0x17*/ u8 field_0x17;
    /*0x18*/ union {
    /*    */     u8 raw;
    /*    */     struct {
    /*    */         u8 draw        : 2; // 1-2
    /*    */         u8 ss2         : 1; //   4
    /*    */         u8 ss3         : 1; //   8
    /*    */         u8 bigShadow   : 1; //0x10
    /*    */         u8 giantShadow : 1; //0x20
    /*    */         u8 flipX       : 1; //0x40
    /*    */         u8 flipY       : 1; //0x80
    /*    */     } PACKED b;
    /*    */ } PACKED spriteSettings;
    /*0x19*/ struct {
    /*    */     u8 b0         : 2; // 1-2
    /*    */     u8 alphaBlend : 2; // 4-8
    /*    */     u8 b2         : 2; //0x10
    /*    */     u8 b3         : 2; //0x40
    /*    */ } PACKED spriteOrder;
    /*0x1a*/ u8 palette;
    /*0x1b*/ struct {
    /*    */     u8 b0    : 4;
    /*    */     u8 flipX : 2; //0x10
    /*    */     u8 flipY : 2; //0x40
    /*    */ } PACKED spriteOrientation;
    /*0x1c*/ u8 filler[1];
    /*0x1d*/ u8 field_0x1d;
    /*0x1e*/ u8 frameIndex;
    /*0x1f*/ u8 lastFrameIndex;
    /*0x20*/ s32 field_0x20;
    /*0x24*/ s16 nonPlanarMovement;
    /*0x26*/ u8 spriteAnimation[3];
    /*0x29*/ struct {
    /*    */     u8 b0 : 3; // 1-4
    /*    */     u8 b1 : 3; //   8
    /*    */     u8 b2 : 2; //0x40
    /*    */ } PACKED ticks;
    /*0x2a*/ u16 collisions;
    /*0x2c*/ union SplitWord x;
    /*0x30*/ union SplitWord y;
    /*0x34*/ union SplitWord height; // todo
    /*0x38*/ u8 collisionLayer;
    /*0x39*/ s8 interactType;
    /*0x3a*/ u8 field_0x3a;
    /*0x3b*/ u8 flags2;
    /*0x3c*/ u8 field_0x3c;
    /*0x3d*/ u8 hurtBlinkTime;
    /*0x3e*/ u8 field_0x3e;
    /*0x3f*/ u8 damageType;
    /*0x40*/ u8 field_0x40;
    /*0x41*/ u8 bitfield;
    /*0x42*/ u8 field_0x42;
    /*0x43*/ u8 field_0x43;
    /*0x44*/ u8 field_0x44;
    /*0x45*/ u8 currentHealth;
    /*0x46*/ s16 field_0x46;
    /*0x48*/ BoundingBox* boundingBox;
    /*0x4c*/ u8 field_0x4c;
    /*0x4d*/ u8 field_0x4d;
    /*0x4e*/ u8 field_0x4e;
    /*0x4f*/ u8 field_0x4f;
    /*0x50*/ struct Entity* parent;
    /*0x54*/ struct Entity* attachedEntity;
    /*0x58*/ u8 animIndex;
    /*0x59*/ u8 frameDuration;
    /*0x5a*/ union {
    /*    */     u8 all;
    /*    */     struct {
    /*    */         u8 f0 : 1;
    /*    */         u8 f1 : 5;
    /*    */         u8 f2 : 1; //0x40
    /*    */         u8 f3 : 1; //0x80
    /*    */    } PACKED b;
    /*    */ } PACKED frames;
    /*0x5b*/ u8 frameSpriteSettings;
    /*0x5c*/ Frame* animPtr;
    /*0x60*/ u16 spriteVramOffset;
    /*0x62*/ u8 spriteOffsetX;
    /*0x64*/ u8 spriteOffsetY;
    /*0x64*/ u32* otherEntity;
    /*0x68*/ u8 field_0x68;
    /*0x69*/ u8 field_0x69;
    /*0x6a*/ union SplitHWord field_0x6a;
    /*0x6c*/ u8 field_0x6c;
    /*0x6d*/ u8 field_0x6d;
    /*0x6e*/ u8 filler4[2];
    /*0x70*/ u32 field_0x70;
    /*0x74*/ u16 field_0x74;
    /*0x76*/ u16 field_0x76;
    /*0x78*/ union SplitHWord field_0x78;
    /*0x7a*/ u16 field_0x7a;
    /*0x7c*/ union SplitWord field_0x7c;
    /*0x80*/ u16 field_0x80;
    /*0x82*/ u16 field_0x82;
    /*0x84*/ union SplitHWord cutsceneBeh;
    /*0x86*/ u16 field_0x86;
} Entity;

#define COORD_TO_TILE(entity)                                           \
    ((((entity->x.HALF.HI - gRoomControls.roomOriginX) >> 4) & 0x3fU) | \
     (((entity->y.HALF.HI - gRoomControls.roomOriginY) >> 4) & 0x3fU) << 6)

#define COORD_TO_TILE_OFFSET(entity, xOff, yOff)                               \
    ((((entity->x.HALF.HI - xOff - gRoomControls.roomOriginX) >> 4) & 0x3fU) | \
     (((entity->y.HALF.HI - yOff - gRoomControls.roomOriginY) >> 4) & 0x3fU) << 6)

extern void InitializeAnimation(Entity*, u32);
extern void InitAnimationForceUpdate(Entity*, u32);
extern void UpdateAnimationSingleFrame(Entity*);
extern void UpdateSpriteOrderAndFlip(Entity*);
extern void GetNextFrame(Entity*);
extern u32 LoadExtraSpriteData(Entity*, SpriteLoadData*);
extern void SetExtraSpriteFrame(Entity*, u32, u32);
extern void SetSpriteSubEntryOffsetData1(Entity*, u32, u32);

extern Entity* CreateEnemy(u32 subtype, u32 form);
extern Entity* CreateObject(u32 subtype, u32 form, u32 parameter);
extern Entity* CreateNPC(u32 subtype, u32 form, u32 parameter);
extern Entity* CreateObjectWithParent(Entity* parent, u32 subtype, u32 form, u32 parameter);
extern Entity* CreateFx(Entity* parent, u32 form, u32 parameter);

extern void DeleteThisEntity();
#endif
