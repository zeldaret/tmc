#ifndef PLAYER_H
#define PLAYER_H

#include "global.h"
#include "entity.h"

enum PlayerActions {
    PLAYER_INIT,
    PLAYER_NORMAL,
    PLAYER_DUMMY,
    PLAYER_FALL,
    PLAYER_JUMP,
    PLAYER_PUSH,
    PLAYER_BOUNCE,
    PLAYER_08070E9C, // sub_080782C0, only when pressing L to start a Kinstone Fusion
    PLAYER_ITEMGET,
    PLAYER_MINISH,
    PLAYER_MINISHDIE,
    PLAYER_08071DB8,
    PLAYER_EMPTYBOTTLE,
    PLAYER_FROZEN,
    PLAYER_0807204C,
    PLAYER_ROOM_EXIT,
    PLAYER_PULL,
    PLAYER_LAVA,
    PLAYER_WARP,
    PLAYER_08072454,
    PLAYER_DROWN,
    PLAYER_USEPORTAL,
    PLAYER_TALKEZLO,
    PLAYER_ROOMTRANSITION,
    PLAYER_ROLL,
    PLAYER_080728AC,
    PLAYER_INHOLE,
    PLAYER_08072C9C,
    PLAYER_SLEEP,
    PLAYER_CLIMB,
    PLAYER_USEENTRANCE,
    PLAYER_PARACHUTE,
};

enum PlayerFrameState {
    PL_STATE_IDLE,
    PL_STATE_WALK,
    PL_STATE_SWORD,
    PL_STATE_GUSTJAR,
    PL_STATE_HOLD,
    PL_STATE_THROW,
    PL_STATE_6,
    PL_STATE_SWIM,
    PL_STATE_PARACHUTE,
    PL_STATE_ROLL,
    PL_STATE_FALL,
    PL_STATE_JUMP,
    PL_STATE_C,
    PL_STATE_D,
    PL_STATE_USEPORTAL,
    PL_STATE_F,
    PL_STATE_TRAPPED,
    PL_STATE_11,
    PL_STATE_DIE,
    PL_STATE_TALKEZLO,
    PL_STATE_CAPE,
    PL_STATE_ITEMGET,
    PL_STATE_DROWN,
    PL_STATE_HOLE,
    PL_STATE_CLIMB,
    PL_STATE_PUSH,
    PL_STATE_PULL,
    PL_STATE_SINKING,
    PL_STATE_STAIRS,
    PL_STATE_1D,
};

enum PlayerSpawnType {
    PL_SPAWN_DEFAULT,
    PL_SPAWN_MINISH,
    PL_SPAWN_DROP,
    PL_SPAWN_WALKING,
    PL_SPAWN_STEP_IN,
    PL_SPAWN_SLEEPING,
    PL_SPAWN_DROP_MINISH,
    PL_SPAWN_STAIRS_ASCEND,
    PL_SPAWN_STAIRS_DESCEND,
    PL_SPAWN_9,
    PL_SPAWN_PARACHUTE_FORWARD,
    PL_SPAWN_PARACHUTE_UP,
    PL_SPAWN_FAST_TRAVEL,
};

typedef enum {
    CONTROL_ENABLED,
    CONTROL_1,
    CONTROL_2,
    CONTROL_DISABLED,
} PlayerControlMode;

typedef enum {
    PL_BUSY = 0x1,
    PL_FLAGS2 = 0x2,
    PL_DROWNING = 0x4,
    PL_NO_CAP = 0x8,
    PL_CAPTURED = 0x10,
    PL_USE_PORTAL = 0x20,
    PL_HIDDEN = 0x40,
    PL_MINISH = 0x80,
    PL_DISABLE_ITEMS = 0x100,
    PL_FALLING = 0x200,
    PL_BURNING = 0x400,
    PL_FROZEN = 0x800,
    PL_IN_MINECART = 0x1000,
    PL_DRUGGED = 0x4000,
    PL_PIT_IS_EXIT = 0x8000,
    PL_FLAGS10000 = 0x10000,
    PL_GYORG_FIGHT = 0x20000,
    PL_ROLLING = 0x40000,
    PL_MOLDWORM_CAPTURED = 0x80000,
    PL_IN_HOLE = 0x100000,
    PL_MOLDWORM_RELEASED = 0x200000,
    PL_CLONING = 0x400000,
    PL_USE_LANTERN = 0x800000,
    PL_PARACHUTE = 0x1000000,
    PL_CONVEYOR_PUSHED = 0x2000000,
    PL_ENTER_MINECART = 0x4000000,
    PL_SWORD_THRUST = 0x8000000,
    PL_USE_OCARINA = 0x10000000,
    PL_CLIMBING = 0x20000000,
} PlayerFlags;

enum PlayerItemId {
    PL_ITEM_NONE,
    PL_ITEM_SWORD,
    PL_ITEM_BOMB,
    PL_ITEM_BOOMERANG,
    PL_ITEM_BOW,
    PL_ITEM_SHIELD,
    PL_ITEM_LANTERN,
    PL_ITEM_NULLED,
    PL_ITEM_GUSTJAR,
    PL_ITEM_PACCI_CANE,
    PL_ITEM_A,
    PL_ITEM_B,
    PL_ITEM_DASH_SWORD,
    PL_ITEM_CELL_OVERWRITE_SET,
    PL_ITEM_BOTTLE,
    PL_ITEM_SWORDBEAM,
    PL_ITEM_GUST,
    PL_ITEM_GUSTBIG,
    PL_ITEM_PACCI_CANE_PROJECTILE,
    PL_ITEM_HELD_OBJECT,
    PL_ITEM_SPIRAL_BEAM,
    PL_ITEM_FIREROD_PROJECTILE,
    PL_ITEM_SWORDBEAM2,
    PL_ITEM_NULLED2,
    PL_ITEM_CELL_OVERWRITE_SET2,
};

typedef enum {
    SURFACE_NORMAL,
    SURFACE_PIT,
    SURFACE_2,
    SURFACE_3,
    SURFACE_SLOPE_GNDGND_V,
    SURFACE_SLOPE_GNDGND_H,
    SURFACE_6,
    SURFACE_7,
    SURFACE_MINISH_DOOR_FRONT,
    SURFACE_MINISH_DOOR_BACK,
    SURFACE_A,
    SURFACE_B,
    SURFACE_SLOPE_GNDWATER,
    SURFACE_D,
    SURFACE_E,
    SURFACE_F,
    SURFACE_10,
    SURFACE_SWAMP,
    SURFACE_DOOR,
    SURFACE_DOOR_13,
    SURFACE_14,
    SURFACE_CLONE_TILE,
    SURFACE_16,
    SURFACE_ICE,
    SURFACE_SHALLOW_WATER,
    SURFACE_WATER,
    SURFACE_BUTTON,
    SURFACE_1B,
    SURFACE_1C,
    SURFACE_1D, // nulled
    SURFACE_LADDER,
    SURFACE_1F, // nulled
    SURFACE_20,
    SURFACE_21,
    SURFACE_22,
    SURFACE_EDGE,
    SURFACE_24,
    SURFACE_DUST,
    SURFACE_26,
    SURFACE_HOLE,
    SURFACE_LIGHT_GRADE,
    SURFACE_29,
    SURFACE_AUTO_LADDER,
    SURFACE_CLIMB_WALL,
    SURFACE_2C,
} SurfaceType;

typedef enum {
    SKILL_NONE = 0,
    SKILL_SPIN_ATTACK = 1,
    SKILL_ROLL_ATTACK = 2,
    SKILL_DASH_ATTACK = 4,
    SKILL_ROCK_BREAKER = 8,
    SKILL_SWORD_BEAM = 0x10,
    SKILL_GREAT_SPIN = 0x20,
    SKILL_DOWN_THRUST = 0x40,
    SKILL_PERIL_BEAM = 0x80,
    SKILL_FOURSWORD = 0x100,
    SKILL_FAST_SPIN = 0x200,
    SKILL_FAST_SPLIT = 0x400,
    SKILL_LONG_SPIN = 0x800
} PlayerSkill;

typedef struct {
    /*0x00*/ u8 action;
    /*0x01*/ s8 preChargeTimer;
    /*0x02*/ u8 swordType;
    /*0x03*/ u8 unk_3;
    /*0x04*/ s16 chargeTimer;
    /*0x06*/ u8 unk_6[2];
} ChargeState;

typedef struct {
    u16 flags;
    u16 keys;
} PlayerMacroEntry;

typedef enum {
    PLAYER_INPUT_1 = 0x1,   // A
    PLAYER_INPUT_2 = 0x2,   // B
    PLAYER_INPUT_8 = 0x8,   // A sub_080782C0, sub_0807953C, PlayerUpdateSwimming, sub_08076518. ItemForSale_Action2
    PLAYER_INPUT_10 = 0x10, // B sub_0807953C, ToggleDiving, sub_08076518, ItemForSale_Action2
    PLAYER_INPUT_20 = 0x20, // R sub_0807953C
    PLAYER_INPUT_40 = 0x40, // A CrenelBeanSprout_Action1
    PLAYER_INPUT_80 =
        0x80, // R sub_08073584, IsPreventedFromUsingItem, sub_080782C0, CrenelBeanSprout_Action1, ItemForSale_Action2
    PLAYER_INPUT_RIGHT = 0x100,
    PLAYER_INPUT_LEFT = 0x200,
    PLAYER_INPUT_UP = 0x400,
    PLAYER_INPUT_DOWN = 0x800,
    PLAYER_INPUT_ANY_DIRECTION = 0xf00,
    PLAYER_INPUT_1000 = 0x1000, // L, where is it set? sub_080782C0
    PLAYER_INPUT_8000 = 0x8000, // R, IsTryingToPickupObject, sub_08076518

    // TODO What is the result of u32 result = (s32) - (keys & 0x200) >> 0x1f & 0x1000;?
} PlayerInputState;

typedef struct {
    /*0x0*/ u16 heldInput; /**< Input currently held @see PlayerInputState */
    /*0x2*/ u16 newInput;  /**< New input this frame @see PlayerInputState */
    /*0x4*/ u32 field_0x94;
    /*0x8*/ u16 playerMacroWaiting;
    /*0xa*/ u16 playerMacroHeldKeys;
    /*0xc*/ PlayerMacroEntry* playerMacro;
} PlayerInput;

typedef enum {
    SWORD_MOVE_NONE,
    SWORD_MOVE_SPIN,
    SWORD_MOVE_ROLL,
    SWORD_MOVE_DASH,
    SWORD_MOVE_BREAK_POT,
    SWORD_MOVE_FULL_BEAM,
    SWORD_MOVE_GREAT_SPIN,
    SWORD_MOVE_DOWN_THRUST,
    SWORD_MOVE_LOW_BEAM,
} SwordMove;

typedef struct {
    /*0x00*/ u8 prevAnim;
    /*0x01*/ u8 grab_status;
    /*0x02*/ u8 jump_status;
    /*0x03*/ u8 shield_status;
    /*0x04*/ u8 attack_status;
    /*0x05*/ u8 heldObject;
    /*0x06*/ u8 pushedObject; // hi bit is special, rest is used as a timer
    /*0x07*/ u8 field_0x7;
    /*0x08*/ u16 animation;
    /*0x0a*/ u8 field_0xa;
    /*0x0b*/ u8 keepFacing;
    /*0x0c*/ u8 queued_action;
    /*0x0d*/ u8 direction;
    /*0x0e*/ u8 itemAnimPriority;
    /*0x0f*/ u8 hurtBlinkSpeed;
    /*0x10*/ u8 field_0x10;
    /*0x11*/ u8 surfacePositionSameTimer;
    /*0x12*/ u8 floor_type;
    /*0x13*/ u8 floor_type_last;
    /*0x14*/ u8 field_0x14;
    /*0x15*/ u8 field_0x15;
    /*0x16*/ u16 startPosX;
    /*0x18*/ u16 startPosY;
    /*0x1a*/ u8 mobility;
    /*0x1b*/ u8 sword_state;
    /*0x1c*/ u8 field_0x1c;
    /*0x1d*/ u8 gustJarSpeed;
    /*0x1e*/ u8 dash_state;
    /*0x1f*/ u8 field_0x1f[3];
    /*0x22*/ u16 tilePosition;
    /*0x24*/ u16 tileType;
    /*0x26*/ u8 swim_state; /**< Is the player swimming? 0x80 for diving */
    /*0x27*/ u8 field_0x27[5];
    /*0x2c*/ Entity* item;
    /*0x30*/ u32 flags;
    /*0x34*/ u8 field_0x34;
    /*0x35*/ u8 field_0x35;
    /*0x36*/ u8 field_0x36;
    /*0x37*/ u8 surfaceTimer;
    /*0x38*/ u8 field_0x38;
    /*0x39*/ u8 field_0x39;
    /*0x3a*/ u8 field_0x3a;
    /*0x3b*/ u8 field_0x3b;
    /*0x3c*/ u8 field_0x3c;
    /*0x3d*/ u8 moleMittsState;
    /*0x3e*/ u8 swordDamage : 2;
    /*    */ u8 filler14 : 6;
    /*0x3f*/ s8 spriteOffsetY;
    /*0x40*/ u32 path_memory[16];
    /*0x80*/ u16 speed_modifier;
    /*0x82*/ u8 field_0x82;
    /*0x83*/ u8 playerPalette;
    /*0x84*/ Entity* lilypad; /**< Last lilypad the player was standing on? */
    /*0x88*/ u8 field_0x88;
    /*0x89*/ u8 remainingDiveTime; /**< Frames that the player can continue to dive. */
    /*0x8a*/ u8 field_0x8a;
    /*0x8b*/ u8 controlMode;
    /*0x8c*/ u16 vel_x;
    /*0x8e*/ u16 vel_y;
    /*0x90*/ PlayerInput playerInput;
    /*0xa0*/ ChargeState chargeState;
    /*0xa8*/ u8 framestate;
    /*0xa9*/ u8 framestate_last;
    /*0xaa*/ u8 attachedBeetleCount; /**< Count of the Beetles attached to the player. */
    /*0xab*/ u8 lastSwordMove;       /**< The last move that has been performed with the sword. @see SwordMove */
    /*0xac*/ u16 skills;             /**< Bitfield of skills @see PlayerSkill */
    /*0xae*/ u8 pad[2];
} PlayerState;

typedef struct {
    /*0x00*/ u8 walletType;
    /*0x01*/ u8 heartPieces;
    /*0x02*/ u8 health;
    /*0x03*/ u8 maxHealth;
    /*0x04*/ u8 bombCount;
    /*0x05*/ u8 arrowCount;
    /*0x06*/ u8 bombBagType;
    /*0x07*/ u8 quiverType;
    /*0x08*/ u8 filler[2];
    /*0x0a*/ u8 charm;
    /*0x0b*/ u8 picolyteType;
    /*0x0c*/ u8 itemButtons[2];
    /*0x0e*/ u8 bottles[4];
    /*0x12*/ u8 effect;
    /*0x13*/ u8 hasAllFigurines;
    /*0x14*/ u8 filler3[4];
    /*0x18*/ u16 rupees;
    /*0x1a*/ u16 shells;
    /*0x1c*/ u16 charmTimer;
    /*0x1e*/ u16 picolyteTimer;
    /*0x20*/ u16 effectTimer;
    /*0x22*/ u8 filler4[6];
} Stats;

#define SLOT_A 0
#define SLOT_B 1

typedef struct {
    /*0x0*/ u8 field_0x0;
    /*0x1*/ u8 behaviorId;
    /*0x2*/ u8 field_0x2[2];
    /*0x4*/ u8 stateID;
    /*0x5*/ u8 field_0x5;
    /*0x6*/ u8 field_0x6;
    /*0x7*/ u8 timer;
    /*0x8*/ u8 subtimer;
    /*0x9*/ u8 priority;
    /*0xa*/ u8 playerAnimationState;
    /*0xb*/ u8 direction;
    /*0xc*/ u8 playerAnimIndex;     /**< Stored animIndex of the player entity. */
    /*0xd*/ u8 playerFrameDuration; /**< Stored frameDuration of the player entity. */
    /*0xe*/ u8
        playerFrame; /**< Stored frame of the player entity. But also used for general purpose in item behaviours? */
    /*0xf*/ u8
        animPriority; /**< In sub_08079064 the animIndex of the ItemBehavior with the max animPriority is selected. */
    /*0x10*/ u16 animIndex;
    /*0x12*/ u8 playerFrameIndex; /**< Stored frameIndex of the player entity. */
    /*0x13*/ u8 field_0x13[5];
    /*0x18*/ Entity* field_0x18;
} ItemBehavior;

extern void (*const gPlayerItemFunctions[])(Entity*);

typedef struct {
    u16 size;
    u16 iconStartTile;
} Wallet;
extern const Wallet gWalletSizes[];
extern const u8 gBombBagSizes[];
extern const u8 gQuiverSizes[];
extern Entity* gPlayerClones[];

extern PlayerState gPlayerState;
extern Entity gPlayerEntity;

void DoPlayerAction(Entity*);
bool32 CheckInitPauseMenu(void);
void SetPlayerControl(PlayerControlMode mode);
void ResetActiveItems(void);
void ResetPlayerVelocity(void);
void ResetPlayerAnimationAndAction(void);
void SetPlayerActionNormal(void);
void RespawnAsMinish(void);

Entity* CreatePlayerItem(u32, u32, u32, u32);

void ResolvePlayerAnimation(void);
void RegisterPlayerHitbox(void);
void UpdateFloorType(void);
void CreateEzloHint(u32, u32);

// game.c
/** @see Item */
/*EquipSlot*/ u32 IsItemEquipped(u32 itemId);
/** @see Item */
u32 GetInventoryValue(u32);
/** @see Item */
u32 SetInventoryValue(u32, u32);
s32 ModHealth(s32 delta);
void ModRupees(s32 delta);
void ModBombs(s32 delta);

typedef enum {
    INTERACTION_NONE,
    INTERACTION_TALK,
    INTERACTION_FUSE,
    INTERACTION_OPEN_CHEST,
    INTERACTION_UNUSED,
    INTERACTION_USE_SMALL_KEY,
    INTERACTION_USE_BIG_KEY,
    INTERACTION_TALK_MINISH,
    INTERACTION_LIFT_SHOP_ITEM,
    INTERACTION_CHECK,
    INTERACTION_DROP_PEDESTAL,
    INTERACTION_NULL = 0xFF,
} InteractionType;

typedef enum {
    R_ACTION_NONE,
    R_ACTION_CANCEL,
    R_ACTION_DROP,
    R_ACTION_THROW,
    R_ACTION_READ,
    R_ACTION_CHECK,
    R_ACTION_OPEN,
    R_ACTION_SPEAK,
    R_ACTION_GRAB,
    R_ACTION_LIFT,
    R_ACTION_GROW,
    R_ACTION_SHRINK,
    R_ACTION_ROLL,
} ActionRButton;

// playerUtils.c
void DeleteClones(void);
void CreateItemEquippedAtSlot(/*EquipSlot*/ u32 equipSlot);
void PutAwayItems(void);
void sub_08079E58(s32 speed, u32 direction);
void RespawnPlayer(void);
SurfaceType GetSurfaceCalcType(Entity*, s32, s32);
void UpdatePlayerMovement(void);
void EnablePlayerDraw(Entity*);
void sub_080797EC(void);
void PlayerMinishSetNormalAndCollide(void);
u32 sub_08079B24(void);
void sub_08079708(Entity*);
void sub_08079744(Entity*);
void PlayerUpdateSwimming(Entity*);
u32 GetCollisionTileInFront(Entity*);
u32 sub_080797C4(void);
void CheckPlayerVelocity(void);
void sub_0807B068(Entity*);
u32 sub_0807A2F8(u32);
void UpdateActiveItems(/* PlayerEntity* */);
bool32 sub_0807A2B8(void);
u32 sub_08079550(void);
u32 sub_080782C0(void);
bool32 sub_080793E4(u32);
bool32 sub_08079C30(Entity*);
void ResetLantern(void);
bool32 CheckQueuedAction(void);
void UpdatePlayerSkills(void);
u32 sub_0807AC54(Entity*);
void sub_080792D8(void);
u32 sub_08078F74(Entity*);
void AddInteractableAsMinishObject(Entity*);
void sub_08078D60(void);
void PlayerSetNormalAndCollide(void);
bool32 PlayerTryDropObject(ItemBehavior* arg0, u32 unk);
void InitItemGetSequence(u32, u32, u32);
void sub_0807B7D8(u32, u32, u32);
void SetInteractableObjectCollision(Entity*, u32, u32, const void*);
void sub_08079D84(void);
u32 sub_0807953C(void);
void sub_0807BB68(const s16*, u32, u32);
void sub_0807B9B8(u32, u32, u32);
void sub_0807B7D8(u32, u32, u32);
void RestorePrevTileEntity(u32, u32);
void UpdateItemAnim(ItemBehavior*);
void PlayerCancelHoldItem(ItemBehavior*, u32);
void RegisterCarryEntity(Entity*);
void FreeCarryEntity(Entity*);
void PlayerDropHeldObject();
void PlayerResetStateFromFusion();
void DeleteItemBehavior(ItemBehavior*, u32);
void sub_08077D38(ItemBehavior*, u32);
void SetItemAnim(ItemBehavior* this, u32 animIndex);
void sub_08077E3C(ItemBehavior*, u32);
void sub_080751E8(u32, u32, void*);
void sub_08077B98(ItemBehavior*);
void sub_08077BB8(ItemBehavior*);
Entity* CreatePlayerItemIfNotExists(ItemBehavior*, u32);
Entity* FindPlayerItemForItem(ItemBehavior*, u32);
bool32 PlayerCanBeMoved(void);
bool32 sub_08077EC8(ItemBehavior*);
bool32 IsItemActive(ItemBehavior*);
bool32 IsItemActivatedThisFrame(ItemBehavior*);
bool32 IsItemActiveByInput(ItemBehavior*, PlayerInputState);
bool32 sub_08077FEC(u32);
void DetermineRButtonInteraction(void);
void ResetPossibleInteraction();
void AddInteractableFuser(Entity*, u32);
void AddInteractableSmallKeyLock(Entity*);
s32 AddInteractableBossDoor(Entity*);
s32 AddInteractableObject(Entity*, u32, u32);
void RemoveInteractableObject(Entity*);
s32 GetInteractableObjectIndex();
void sub_08078AC0(u32, u32, u32);
void sub_08078B48(void);
void sub_08078E84(Entity*, Entity*);
void sub_08078FB0(Entity*);
void sub_080792BC(s32, u32, u32);
u32 sub_0807953C(void);
void sub_08079BD8(Entity*);
u32 sub_08079D48();
void sub_08079D84(void);
u32 sub_08079FC4(u32);
void UpdatePlayerPalette(void);
void sub_0807A5B8(u32);
void sub_0807A8D8(Entity*);
void sub_0807AA80(Entity*);
void sub_0807AABC(Entity*);
void PlayerSwimming(Entity*);
u32 GetSwordBeam();
void sub_0807B0C8(void);
bool32 sub_0807BD14(Entity*, u32);
Entity* CreatePlayerItemWithParent(ItemBehavior*, u32);
bool32 HasSwordEquipped();
u32 GetPlayerPalette(bool32 use);
void PlayerShrinkByRay(void);

// player.s
extern u32 PlayerCheckNEastTile();
extern u32* sub_08008790(Entity*, u32);
extern void UpdateIcePlayerVelocity(Entity*);
extern void sub_08008AC6(Entity*);
extern void sub_08008926(Entity*);
extern void sub_08008AC6(Entity*);
extern void sub_08008AA0(Entity*);

// zelda.c
void SetZeldaFollowTarget(Entity* target);

#define COPY_FLAG_FROM_TO(base, src, dest) (base) = ((base) & ~(dest)) | (((dest) * ((base) & (src))) / src)

#endif // PLAYER_H
