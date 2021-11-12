// clang-format off
#ifndef ENTITY_H
#define ENTITY_H

#include "global.h"
#include "sprite.h"

typedef enum {
    PLAYER = 1,
    ENEMY = 3,
    PROJECTILE = 4,
    OBJECT = 6,
    NPC = 7,
    PLAYER_ITEM = 8,
    MANAGER = 9,
} EntityType;

typedef struct {
    void* entity1;
    void* entity2;
    u8 filler[14];
} UnkStruct;

typedef struct {
    s8 offset_x;
    s8 offset_y;
    u8 unk2[4];
    u8 width;
    u8 height;
} Hitbox;

typedef struct {
    s8 offset_x;
    s8 offset_y;
    u8 unknown[4];
    u8 width;
    u8 height;
    u8 depth;
    u8 unknown2[3];
} Hitbox3D;

typedef struct Entity {
    /*0x00*/ struct Entity* prev;
    /*0x04*/ struct Entity* next;
    /*0x08*/ u8 kind;
    /*0x09*/ u8 id;
    /*0x0a*/ u8 type;
    /*0x0b*/ u8 type2;
    /*0x0c*/ u8 action;
    /*0x0d*/ u8 subAction;
    /*0x0e*/ u8 actionDelay;
    /*0x0f*/ u8 field_0xf;
    /*0x10*/ u8 flags;
    /*0x11*/ u8 updateConditions : 4; // should we update this sprite during pause
    /*    */ u8 updateConditions2 : 4;
    /*0x12*/ s16 spriteIndex;
    /*0x14*/ u8 animationState;
    /*0x15*/ u8 direction;
    /*0x16*/ u8 field_0x16;
    /*0x17*/ u8 field_0x17;
    /*0x18*/ union {
    /*    */     u8 raw;
    /*    */     struct {
    /*    */         u32 draw        : 2; // 1-2
    /*    */         u32 ss2         : 1; //   4
    /*    */         u32 ss3         : 1; //   8
    /*    */         u32 shadow      : 2; //0x10-0x20
    /*    */         u32 flipX       : 1; //0x40
    /*    */         u32 flipY       : 1; //0x80
    /*    */     } PACKED b;
    /*    */ } PACKED spriteSettings;
    /*0x19*/ struct {
    /*    */     u32 b0         : 2; // 1-2
    /*    */     u32 alphaBlend : 2; // 4-8
    /*    */     u32 b2         : 2; //0x10
    /*    */     u32 b3         : 2; //0x40
    /*    */ } PACKED spriteRendering;
    /*0x1a*/ union {
    /*    */    u8 raw;
    /*    */    struct {
    /*    */        u8 b0 : 4;
    /*    */        u8 b4 : 4;
    /*    */    } PACKED b;
    /*    */ } PACKED palette;
    /*0x1b*/ struct {
    /*    */     u32 b0    : 1;
    /*    */     u32 b1    : 5; //0x10
    /*    */     u32 flipY : 2; //0x40
    /*    */ } PACKED spriteOrientation;
    /*0x1c*/ u8 field_0x1c;
    /*0x1d*/ u8 field_0x1d;
    /*0x1e*/ u8 frameIndex;
    /*0x1f*/ u8 lastFrameIndex;
    /*0x20*/ s32 hVelocity;
    /*0x24*/ s16 speed;
    /*0x26*/ u8 spriteAnimation[3];
    /*0x29*/ struct {
    /*    */     u8 b0 : 3; // 1-4
    /*    */     u8 b1 : 3; //   8
    /*    */     u8 b2 : 2; //0x40
    /*    */ } PACKED spritePriority;
    /*0x2a*/ u16 collisions;
    /*0x2c*/ union SplitWord x;
    /*0x30*/ union SplitWord y;
    /*0x34*/ union SplitWord height; // todo
    /*0x38*/ u8 collisionLayer;
    /*0x39*/ s8 interactType;
    /*0x3a*/ u8 field_0x3a;
    /*0x3b*/ u8 flags2;
    /*0x3c*/ u8 field_0x3c;
    /*0x3d*/ s8 iframes;
    /*0x3e*/ u8 knockbackDirection;
    /*0x3f*/ u8 hitType; // behavior as a collision sender
    /*0x40*/ u8 hurtType; // behavior as a collision reciever
    /*0x41*/ u8 bitfield;
    /*0x42*/ u8 knockbackDuration;
    /*0x43*/ u8 field_0x43;
    /*0x44*/ u8 damage;
    /*0x45*/ u8 currentHealth;
    /*0x46*/ u16 field_0x46;
    /*0x48*/ Hitbox* hitbox;
    /*0x4c*/ struct Entity* field_0x4c;
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
    /*0x63*/ s8 spriteOffsetY;
    /*0x64*/ u32* myHeap;
    /*0x68*/ union SplitHWord field_0x68;
    /*0x6a*/ union SplitHWord field_0x6a;
    /*0x6c*/ union SplitHWord field_0x6c;
    /*0x6e*/ union SplitHWord field_0x6e;
    /*0x70*/ union SplitWord field_0x70;
    /*0x74*/ union SplitHWord field_0x74;
    /*0x76*/ union SplitHWord field_0x76;
    /*0x78*/ union SplitHWord field_0x78;
    /*0x7a*/ union SplitHWord field_0x7a;
    /*0x7c*/ union SplitWord field_0x7c;
    /*0x80*/ union SplitHWord field_0x80;
    /*0x82*/ union SplitHWord field_0x82;
    /*0x84*/ union SplitHWord cutsceneBeh;
    /*0x86*/ union SplitHWord field_0x86;
} Entity;

typedef struct LinkedList {
    Entity* last;
    Entity* first;
} LinkedList;

extern LinkedList gEntityLists[9];
extern LinkedList gUnk_03003D90;

extern LinkedList gUnk_03003DA0;

enum {
    ENT_DID_INIT = 0x1,
    ENT_SCRIPTED = 0x2,
    ENT_ASLEEP = 0x10,
    ENT_20 = 0x20,
    ENT_COLLIDE = 0x80,
};

#define COLLISION_OFF(entity) ((entity)->flags &= ~ENT_COLLIDE) 
#define COLLISION_ON(entity) ((entity)->flags |= ENT_COLLIDE)

#define TILE(x, y)                                      \
    (((((x) - gRoomControls.roomOriginX) >> 4) & 0x3F) | \
     ((((y) - gRoomControls.roomOriginY) >> 4) & 0x3F) << 6)

#define COORD_TO_TILE(entity) \
    TILE((entity)->x.HALF.HI, (entity)->y.HALF.HI)

#define COORD_TO_TILE_OFFSET(entity, xOff, yOff) \
    TILE((entity)->x.HALF.HI - (xOff), (entity)->y.HALF.HI - (yOff))

enum {
    DirectionNorth  = 0x00,
    DirectionEast   = 0x08,
    DirectionSouth  = 0x10,
    DirectionWest   = 0x18,
};

#define DirectionRound(expr) ((expr) & 0x18)
#define DirectionRoundUp(expr) DirectionRound((expr) + 4)
#define DirectionIsHorizontal(expr) ((expr) & 0x08)
#define DirectionIsVertical(expr) ((expr) & 0x10)
#define DirectionTurnAround(expr) ((expr) ^ 0x10)
#define DirectionToAnimationState(expr) (DirectionRoundUp(expr) >> 3)
#define DirectionFromAnimationState(expr) ((expr) << 3)
#define DirectionNormalize(expr) ((expr) & 0x1f)

#define Direction8Round(expr) ((expr) & 0x1c)
#define Direction8RoundUp(expr) Direction8Round((expr) + 2)
#define Direction8TurnAround(expr) (Direction8RoundUp(expr) ^ 0x10)
#define Direction8ToAnimationState(expr) (Direction8RoundUp(expr) >> 2)
#define Direction8FromAnimationState(expr) (((expr) << 2)

Entity* GetEmptyEntity(void);
void DrawEntity(Entity*);
Entity* CreateEnemy(u32 id, u32 type);
Entity* CreateNPC(u32 id, u32 type, u32 type2);
Entity* CreateObject(u32 id, u32 type, u32 type2);
Entity* CreateObjectWithParent(Entity* parent, u32 id, u32 type, u32 type2);
Entity* CreateFx(Entity* parent, u32 type, u32 type2);

void InitializeAnimation(Entity*, u32);
void InitAnimationForceUpdate(Entity*, u32);
void UpdateAnimationSingleFrame(Entity*);
void UpdateSpriteForCollisionLayer(Entity*);
void GetNextFrame(Entity*);
u32 LoadExtraSpriteData(Entity*, SpriteLoadData*);
void SetExtraSpriteFrame(Entity*, u32, u32);
void SetSpriteSubEntryOffsetData1(Entity*, u32, u32);
void SetSpriteSubEntryOffsetData2(Entity*, u32, u32);

u32 GetFacingDirection(Entity*, Entity*);

/**
 * @brief Check if entity should sleep this frame.
 */
bool32 CheckDontUpdate(Entity* this);

/**
 * @brief Delete the entity currently in execution.
 */
void DeleteThisEntity(void);

/**
 * @brief Delete an entity.
 */
void DeleteEntity(Entity*);

/**
 * @brief Append entity to linked list.
 */
void AppendEntityToList(Entity* entity, u32 listIndex);

/**
 * @brief Prepend entity to linked list.
 */
void PrependEntityToList(Entity* entity, u32 listIndex);

/**
 * @brief Find an entity for a given kind and ID.
 * @return Entity* First result or NULL if none found
 */
Entity* FindEntityByID(u32 kind, u32 id, u32 listIndex);

/**
 * @brief Search all lists for an entity of same kind and id.
 * @return Entity* First result or NULL if none found
 */
Entity* DeepFindEntityByID(u32 kind, u32 id);

/**
 * @brief Search all lists for entity of same kind and id.
 * @return bool32 Duplicate was entity found
 */
bool32 EntityHasDuplicateID(Entity* ent);

/**
 * @brief Find an entity of same kind and id in list.
 * @return Entity* First result or NULL if none found
 */
Entity* FindNextDuplicateID(Entity* ent, int listIndex);

/**
 * @brief Find Entity with full identifiers.
 * @return Entity* First result or NULL if none found
 */
Entity* FindEntity(u32 kind, u32 id, u32 listIndex, u32 type, u32 type2);

void DeleteEntityAny(Entity* ent);

#endif
