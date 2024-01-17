// clang-format off
#ifndef ENTITY_H
#define ENTITY_H

#include "global.h"
#include "color.h"
#include "sprite.h"

#define MAX_ENTITIES 72
#define MAX_MANAGERS 32
#define MAX_AUX_PLAYER_ENTITIES 7

/** Kinds of Entity's supported by the game. */
typedef enum {
    PLAYER = 1,      /**< There is only one id assigned to the Player kind.
                      * The player Entity shares much of its code with LTTP GBA, however the game only supports
                      * one player Entity active at a time, assigned to the global #gPlayerEntity.
                      * Works next to PlayerState to control player behavior.
                      */
    ENEMY = 3,       /**< Can give and take damage in relation to the player.
                      * Most enemies call the a set of external helper functions which calculate what behavior to execute.
                      */
    PROJECTILE = 4,  /**< May damage the player. They are typically spawned by enemies.
                      */
    OBJECT = 6,      /**< Encapsulates any sort of prop. Generally they cannot be interacted with directly,
                      * but they may react to a player action or script event.
                      */
    NPC = 7,         /**< May be interacted with by the player. Almost every NPC is assigned a script.
                      * NPCs have three entry points: one for the head, one for the body, and one for kinstone fusion.
                      */
    PLAYER_ITEM = 8, /**< Displays sprites for items outside of the inventory (check).
                      */
    MANAGER = 9,     /**< Utility Entity's that serve as a proxy between gameplay and the engine.
                      * Examples: drawing clouds, ezlo hints, playing cutscenes.
                      * Updates independently of other entities, and does not add to maximum entity count.
                      */
} EntityKind;

/** Entity flags. */
typedef enum {
    ENT_DID_INIT = 0x1, /**< Graphics and other data loaded. */
    ENT_SCRIPTED = 0x2, /**< Execute in a scripted environment. */
    ENT_UNUSED1 = 0x4,  /**< Unused delete flag. */
    ENT_UNUSED2 = 0x8,  /**< Unused delete flag. */
    ENT_DELETED = 0x10, /**< Queue deletion next frame. */
    ENT_PERSIST = 0x20, /**< Persist between rooms. */
    ENT_COLLIDE = 0x80, /**< Collide with other Entity's. */
} EntityFlags;

/** Priority level to determine what events will block an Entity from updating. */
typedef enum {
    PRIO_MIN,          /**< Default priority. */
    PRIO_PLAYER,       /**< Default priority for player. */
    PRIO_MESSAGE,      /**< Do not block during message. */
    PRIO_NO_BLOCK,     /**< Do not block during entity requested priority. @see RequestPriority */
    PRIO_4,            /**< Unused. */
    PRIO_5,            /**< Unused. */
    PRIO_PLAYER_EVENT, /**< Do not block during special player event. */
    PRIO_HIGHEST,      /**< Do not block EVER. */
} Priority;

/** Animation state. */
typedef enum {
    IdleNorth = 0x0, /**< Idle facing north. */
    IdleEast = 0x2,  /**< Idle facing east. */
    IdleSouth = 0x4, /**< Idle facing south. */
    IdleWest = 0x6,  /**< Idle facing west. */
} AnimationState;

/** Direction. */
typedef enum {
    DirectionNorth = 0x00, /**< North. */
    DirectionNorthEast = 0x04, /**< North East. */
    DirectionEast = 0x08,  /**< East. */
    DirectionSouthEast = 0x0c, /**< South East. */
    DirectionSouth = 0x10, /**< South. */
    DirectionSouthWest = 0x14, /**< South West. */
    DirectionWest = 0x18,  /**< West. */
    DirectionNorthWest = 0x1c, /**< North West. */
} Direction;

/** Collision layer flags. */
typedef enum {
    COL_LAYER_NONE = 0x0,
    COL_LAYER_BOTTOM = 0x1,
    COL_LAYER_TOP = 0x2,
    COL_LAYER_BOTH = 0x3
} CollisionLayer;

/** 
 * Collision class flags.
 * An Entity's collision class is determined by the first 3 bits of #Entity::collisionFlags.
 * What classes an Entity collides with is determined by the bitfield #Entity::collisionMask.
*/
typedef enum {
    COL_CLASS_NONE = 0x0,
    COL_CLASS_PLAYER = 0x1,
    COL_CLASS_ITEM = 0x2,
    COL_CLASS_FLAMMABLE = 0x3,
    COL_CLASS_4 = 0x4,
    COL_CLASS_5 = 0x5,
    COL_CLASS_6 = 0x6,
    COL_CLASS_PACCI_OBJ = 0x7,
} CollisionClass;

/** Collision flags. */
typedef enum {
    COL_FLAG_3D = 0x10,
    COL_FLAG_SOLID = 0x20,
    COL_FLAG_REFLECT = 0x80,
} CollisionFlags;

#define COLLISION_MASK(layer) (1 << (layer))
#define CONTACT_NOW 0x80

typedef struct {
    void* entity1;
    void* entity2;
    u8 filler[14];
} UnkStruct;

/**
 * Hitbox structure.
 */
typedef struct {
    s8 offset_x;
    s8 offset_y;
    u8 unk2[4];
    u8 width;
    u8 height;
} Hitbox;

/**
 * Hitbox structure supporting depth.
 */
typedef struct {
    s8 offset_x;
    s8 offset_y;
    u8 unknown[4];
    u8 width;
    u8 height;
    u8 depth;
    u8 unknown2[3];
} Hitbox3D;

typedef struct {
    u8 b0 : 3; // 1-4 /**< set to is 4 in entity init (default/lowest?)
    u8 b1 : 3; // 8
    u8 b2 : 1; // 0x40
    u8 b3 : 1; // 0x80
} PACKED SpritePriority;

#define GENERIC_ENTITY_FIELDS \
    /*0x68*/ union SplitHWord field_0x68; \
    /*0x6a*/ union SplitHWord field_0x6a;  \
    /*0x6c*/ union SplitHWord field_0x6c;  \
    /*0x6e*/ union SplitHWord field_0x6e;  \
    /*0x70*/ union SplitWord field_0x70;   \
    /*0x74*/ union SplitHWord field_0x74;  \
    /*0x76*/ union SplitHWord field_0x76;  \
    /*0x78*/ union SplitHWord field_0x78;  \
    /*0x7a*/ union SplitHWord field_0x7a;  \
    /*0x7c*/ union SplitWord field_0x7c;   \
    /*0x80*/ union SplitHWord field_0x80;  \
    /*0x82*/ union SplitHWord field_0x82;  \
    /*0x84*/ union SplitHWord cutsceneBeh; \
    /*0x86*/ union SplitHWord field_0x86;

/**
 * Container for instantiable behavior.
 */
typedef struct Entity_ {
    /*0x00*/ struct Entity_* prev;      /**< previous Entity */
    /*0x04*/ struct Entity_* next;      /**< next Entity */
    /*0x08*/ u8 kind;                   /**< @see EntityKind */
    /*0x09*/ u8 id;                     /**< Entity id. */
    /*0x0a*/ u8 type;                   /**< For use internally to allow different variations. */
    /*0x0b*/ u8 type2;                  /**< For use internally. */
    /*0x0c*/ u8 action;                 /**< Current action. Usually used to index a function table. */
    /*0x0d*/ u8 subAction;              /**< Optional sub-action. */
    /*0x0e*/ u8 timer;                  /**< General purpose timer. */
    /*0x0f*/ u8 subtimer;               /**< General purpose timer. */
    /*0x10*/ u8 flags;                  /**< @see EntityFlags */
    /*0x11*/ u8 updatePriority : 4;     /**< Current priority. @see Priority */
    /*    */ u8 updatePriorityPrev : 4; /**< Priority to restore after request is over. @see RequestPriority. */
    /*0x12*/ s16 spriteIndex;
    /*0x14*/ u8 animationState; /**< Animation state. @see AnimationState */
    /*0x15*/ u8 direction;      /**< Facing direction. @see Direction */
    /*0x16*/ u8 carryFlags;     /**< Flags for carrying this Entity. */
    /*0x17*/ u8 followerFlag;   /**< Controls collisions between followers, unused. */
    /*0x18*/ struct SpriteSettings {
    /*    */     u32 draw        : 2; /**< Draw type. 0 = disabled, 1 = clip to screen, 3 = draw always */ /* 0x2 */ 
    /*    */     u32 ss2         : 1; /*   4 */
    /*    */     u32 ss3         : 1; /*   8 */
    /*    */     u32 shadow      : 2; /* 0x10-0x20 */
    /*    */     u32 flipX       : 1; /**< Flip sprite horizontally. */ /* 0x40 */ 
    /*    */     u32 flipY       : 1; /**< Flip sprite vertically. */ /* 0x80 */ 
    /*    */ } PACKED spriteSettings;
    /*0x19*/ struct SpriteRendering {
    /*    */     u32 b0         : 2; /* 1-2 */
    /*    */     u32 alphaBlend : 2; /* 4-8 */
    /*    */     u32 b2         : 2; /* 0x10 */
    /*    */     u32 b3         : 2; /* 0x40 */
    /*    */ } PACKED spriteRendering;
    /*0x1a*/ union Palette {
    /*    */    u8 raw;
    /*    */    struct PaletteB {
    /*    */        u8 b0 : 4;
    /*    */        u8 b4 : 4;
    /*    */    } PACKED b;
    /*    */ } PACKED palette;
    /*0x1b*/ struct SpriteOrientation {
    /*    */     u32 b0    : 1; /* 1  */
    /*    */     u32 b1    : 5; /* 0x2-0x10 */
    /*    */     u32 flipY : 2; /* 0x20-0x40 */
    /*    */ } PACKED spriteOrientation;
    /*0x1c*/ u8 gustJarFlags; /**< Controls sfx and other things */
    /*0x1d*/ u8 gustJarTolerance; /**< Frames needed to pull off ground. */
    /*0x1e*/ u8 frameIndex;
    /*0x1f*/ u8 lastFrameIndex;
    /*0x20*/ s32 zVelocity; /**< Z axis speed, measured in px/frame */
    /*0x24*/ s16 speed;     /**< Magnitude of speed. */
    /*0x26*/ u8 spriteAnimation[3];
    /*0x29*/ SpritePriority spritePriority;
    /*0x2a*/ u16 collisions;    /**< Collision flags for each direction. @see Collisions*/
    /*0x2c*/ union SplitWord x; /**< X position, fixed point Q16.16. */
    /*0x30*/ union SplitWord y; /**< Y position, fixed point Q16.16. */
    /*0x34*/ union SplitWord z; /**< Z position, fixed point Q16.16. */
    /*0x38*/ u8 collisionLayer; /**< @see CollisionLayer. */
    /*0x39*/ s8 interactType;
    /*0x3a*/ u8 gustJarState;       /**< 4: grabbed by GustJar */
    /*0x3b*/ u8 collisionMask;      /**< Bitfield. @see CollisionClass */
    /*0x3c*/ u8 collisionFlags;     /**< @see CollisionFlags, @see CollisionClass */
    /*0x3d*/ s8 iframes;            /**< Invulnerability frames. */
    /*0x3e*/ u8 knockbackDirection; /**< Direction of knockback. */
    /*0x3f*/ u8 hitType;            /**< Behavior as a collision sender. */
    /*0x40*/ u8 hurtType;           /**< Behavior as a collision receiver. */
    /*0x41*/ u8 contactFlags;       /**< Information about collision contact. */
    /*0x42*/ u8 knockbackDuration;  /**< Duration of knockback. */
    /*0x43*/ u8 confusedTime;       /**< Frames that this Entity is confused. */
    /*0x44*/ u8 damage;             /**< Damage this Entity inflicts. */
    /*0x45*/ u8 health;             /**< Health of this Entity. */
    /*0x46*/ u16 knockbackSpeed;    /**< How fast this Entity is knocked back. */
    /*0x48*/ Hitbox* hitbox;        /**< Hitbox associated with this Entity. */
    /*0x4c*/ struct Entity_* contactedEntity;
    /*0x50*/ struct Entity_* parent; /**< Parent Entity. Sometimes points to associated data. */
    /*0x54*/ struct Entity_* child;  /**< Child Entity. Sometimes points to associated data. */
    /*0x58*/ u8 animIndex;
    /*0x59*/ u8 frameDuration;
    /*0x5a*/ u8 frame;
    /*0x5b*/ u8 frameSpriteSettings;
    /*0x5c*/ void* animPtr;
    /*0x60*/ u16 spriteVramOffset;
    /*0x62*/ u8 spriteOffsetX;
    /*0x63*/ s8 spriteOffsetY;
    /*0x64*/ void* myHeap; /**< Heap data allocated with #zMalloc. */
} Entity;

typedef struct {
    GENERIC_ENTITY_FIELDS
} GenericEntityData;

typedef struct {
    /*0x00*/ Entity base;
    GENERIC_ENTITY_FIELDS
} GenericEntity;

/**
 * Entity linked list structure.
 */
typedef struct LinkedList {
    Entity* last;
    Entity* first;
} LinkedList;

/**
 * LinkedList's which point to allocate Entities.
 * These work together with Entity.prev and Entity.next fields
 * to allow the iteration of all Entity's.
 */
extern LinkedList gEntityLists[9];
extern GenericEntity gAuxPlayerEntities[MAX_AUX_PLAYER_ENTITIES];
extern GenericEntity gEntities[MAX_ENTITIES];

typedef void(EntityAction)(Entity*);
typedef void (*EntityActionPtr)(Entity*);
typedef void (*const* EntityActionArray)(Entity*);

/**
 * Draw an Entity.
 *
 * @param entity Entity to be drawn.
 */
void DrawEntity(Entity* entity);

void InitializeAnimation(Entity* entity, u32 animIndex);
void InitAnimationForceUpdate(Entity* entity, u32 animIndex);
void UpdateAnimationSingleFrame(Entity* entity);
void UpdateSpriteForCollisionLayer(Entity* entity);
void GetNextFrame(Entity* entity);
bool32 LoadExtraSpriteData(Entity* entity, const SpriteLoadData* spriteData);
void SetExtraSpriteFrame(Entity*, u32, u32);
void SetSpriteSubEntryOffsetData1(Entity*, u32, u32);
void SetSpriteSubEntryOffsetData2(Entity*, u32, u32);
u8* GetSpriteSubEntryOffsetDataPointer(u32, u32);
bool32 SetAffineInfo(Entity*, u32, u32, u32);

/**
 * Return the direction pointing from one Entity to another.
 *
 * @param origin Entity to orient.
 * @param target Entity to look at.
 * @return Direction facing target.
 */
u32 GetFacingDirection(Entity* origin, Entity* target);

bool32 ProcessMovement0(Entity*);

/// @{
/**
 * Allocate a new Entity.
 *
 * @return Allocated Entity or NULL if failed.
 */
Entity* GetEmptyEntity(void);
Entity* CreateEnemy(u32 id, u32 type);
Entity* CreateNPC(u32 id, u32 type, u32 type2);
Entity* CreateObject(u32 id, u32 type, u32 type2);
Entity* CreateObjectWithParent(Entity* parent, u32 id, u32 type, u32 type2);
Entity* CreateAuxPlayerEntity(void);
Entity* CreateFx(Entity* parent, u32 type, u32 type2);
/// @}

/**
 * Iteratively execute every Entity. Call once per frame.
 */
void UpdateEntities(void);

/**
 * Iteratively execute every Manager. Call once per frame.
 */
void UpdateManagers(void);

/**
 * Delete a manager.
 *
 * @param manager Manager to delete.
 */
void DeleteManager(void* manager);
/**
 * Delete Manager or Entity.
 *
 * @param entity Entity or Manager to be deleted.
 */
void DeleteEntityAny(Entity* entity);

/**
 * Erase all Entity's.
 */
void EraseAllEntities(void);

/**
 * Delete the Entity currently in execution.
 *
 * @see UpdateContext
 */
void DeleteThisEntity(void);

/**
 * Delete an Entity.
 *
 * @param entity Entity to delete.
 */
void DeleteEntity(Entity* entity);

/**
 * Add an Entity to the end of a LinkedList.
 *
 * @param entity Entity to add.
 * @param listIndex Target LinkedList.
 */
void AppendEntityToList(Entity* entity, u32 listIndex);

/**
 * Add an Entity to the start of a LinkedList.
 *
 * @param entity Entity to add.
 * @param listIndex Target LinkedList.
 */
void PrependEntityToList(Entity* entity, u32 listIndex);

/**
 * Find an Entity for a given kind and id, and LinkedList.
 *
 * @return Entity* First result or NULL if none found.
 */
Entity* FindEntityByID(u32 kind, u32 id, u32 listIndex);

/**
 * Search all lists for an Entity of same kind and id.
 *
 * @return Entity* First result or NULL if none found.
 */
Entity* DeepFindEntityByID(u32 kind, u32 id);

/**
 * Search all lists for Entity of same kind and id.
 *
 * @return bool32 Duplicate was found.
 */
bool32 EntityHasDuplicateID(Entity* entity);

/**
 * Find an Entity of same kind and id in LinkedList.
 *
 * @return Entity* First result or NULL if none found.
 */
Entity* FindNextDuplicateID(Entity* entity, int listIndex);

/**
 * Find an Entity with full identifiers.
 *
 * @return Entity* First result or NULL if none found.
 */
Entity* FindEntity(u32 kind, u32 id, u32 listIndex, u32 type, u32 type2);

/**
 * Set the default priority for entity.
 *
 * @param entity Entity to set the priority of.
 * @param prio #Priority level.
 */
void SetEntityPriority(Entity* entity, u32 prio);

/**
 * Check if entity is disabled. Entities are disabled if:
 * - They are deleted.
 * - There is an event and the entity doesn't have priority
 *   (n/a if entity is in action 0).
 */
bool32 EntityDisabled(Entity* entity);

/**
 * Check if system or entity is blocking updates.
 */
bool32 AnyPrioritySet(void);

/**
 * Set the minimum Entity priority.
 *
 * @param prio Minimum #Priority.
 * @return Success.
 */
s32 SetMinPriority(u32 prio);

/**
 * Request indefinite priority for an Entity.
 *
 * @param entity Entity requesting priority.
 */
void RequestPriority(Entity* entity);

/**
 * Revoke priority from an Entity.
 *
 * @param entity Entity which requested priority.
 */
void RevokePriority(Entity* entity);

/**
 * Request update priority over other Entity's for a period of time.
 *
 * @param entity Entity requesting priority.
 * @param time Number of frames.
 */
void RequestPriorityDuration(Entity* entity, u32 time);

/**
 * Set the remaining frames of Entity priority.
 *
 * @param time Number of frames.
 */
void SetPriorityTimer(u32 time);

/**
 * Request priority over player update.
 *
 * @param entity Entity requesting priority.
 */
void RequestPriorityOverPlayer(Entity* entity);

/**
 * Revoke priority over player update.
 *
 * @param entity Entity which requested priority.
 */
void RevokePriorityOverPlayer(Entity* entity);

/**
 * Reset a priority event requested by an Entity.
 */
void ResetEntityPriority(void);

/**
 * Set entity and system priority to #PRIO_PLAYER_EVENT.
 */
void SetPlayerEventPriority(void);

/**
 * Reset entity and system priority to defaults.
 */
void ResetPlayerEventPriority(void);

/**
 * Set system priority to #PRIO_PLAYER_EVENT.
 */
void SetRoomReloadPriority(void);

/**
 * Set system priority to #PRIO_HIGHEST.
 */
void SetInitializationPriority(void);

/**
 * Reset the system update priority.
 */
void ClearEventPriority(void);

void sub_0805E958(void);

typedef struct {
    u8 unk_0;
    u8 unk_1;
    u8 count;
    u8 unk_3;
    u16 unk_4;
    u8 unk_6[2];
    Entity* unk_8;
    Entity* unk_c[0x20];
} CarriedEntity;
extern CarriedEntity gCarriedEntity;

/**
 * Current number of entities.
 * @see Entity
 */
extern u8 gEntCount;
/**
 * Current number of managers.
 * @see Manager
 */
extern u8 gManagerCount;

#define COLLISION_OFF(entity) ((entity)->flags &= ~ENT_COLLIDE)
#define COLLISION_ON(entity) ((entity)->flags |= ENT_COLLIDE)

#define ANIM_DONE (1 << 7) /* invalid frame index */

/** @name Tile Macros */ /// @{
#define TILE(x, y) (((((x)-gRoomControls.origin_x) >> 4) & 0x3F) | ((((y)-gRoomControls.origin_y) >> 4) & 0x3F) << 6)
// Calculate tilePos from x and y coordinates where x and y are already relative to the current room.
#define TILE_LOCAL(x, y) ((((x) >> 4) & 0x3F) | (((y) >> 4) & 0x3F) << 6)
#define TILE_POS(x, y) (x + (y << 6))
#define TILE_POS_X_COMPONENT 0x3f
#define TILE_POS_Y_COMPONENT 0xfc0
#define COORD_TO_TILE(entity) TILE((entity)->x.HALF.HI, (entity)->y.HALF.HI)
#define COORD_TO_TILE_OFFSET(entity, xOff, yOff) TILE((entity)->x.HALF.HI - (xOff), (entity)->y.HALF.HI - (yOff))
/// @}

/** @name Animation State Macros */ ///@{
#define AnimationStateFlip90(expr) ((expr) ^ 0x2)
#define AnimationStateFlip180(expr) ((expr) ^ 0x4)
#define AnimationStateIdle(expr) ((expr)&0x6)
#define AnimationStateWalk(expr) ((expr)&0xe)
///@}

/** @name Direction Macros */ ///@{
#define DirectionRound(expr) ((expr)&0x18)
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
#define Direction8ToAnimationState(expr) ((expr) >> 2)
#define Direction8FromAnimationState(expr) ((expr) << 2)
///@}



extern void DeleteAllEntities(void);

#endif // ENTITY_H
// clang-format on
