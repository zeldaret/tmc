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
    PLAYER_08070E9C,
    PLAYER_ITEMGET,
    PLAYER_MINISH,
    PLAYER_MINISHDIE,
    PLAYER_08071DB8,
    PLAYER_EMPTYBOTTLE,
    PLAYER_FROZEN,
    PLAYER_0807204C,
    PLAYER_080720DC,
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
    PLAYER_08074C44,
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
    PL_STATE_1B,
    PL_STATE_STAIRS,
};

enum PlayerSpawnType {
    PL_SPAWN_DEFAULT,
    PL_SPAWN_MINISH,
    PL_SPAWN_DROP,
    PL_SPAWN_WALKING,
    PL_SPAWN_STEP_IN,
    PL_SPAWN_SPECIAL,
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

enum PlayerFlags {
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
    PL_FLAGS8000 = 0x8000,
    PL_FLAGS10000 = 0x10000,
    PL_FLAGS20000 = 0x20000,
    PL_ROLLING = 0x40000,
    PL_MOLDWORM_CAPTURED = 0x80000,
    PL_IN_HOLE = 0x100000,
    PL_MOLDWORM_RELEASED = 0x200000,
    PL_CLONING = 0x400000,
    PL_USE_LANTERN = 0x800000,
    PL_PARACHUTE = 0x1000000,
    PL_FLAGS2000000 = 0x2000000,
    PL_ENTER_MINECART = 0x4000000,
    PL_SWORD_THRUST = 0x8000000,
    PL_USE_OCARINA = 0x10000000,
    PL_CLIMBING = 0x20000000,
};

enum SurfaceType {
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
};

typedef struct {
    /*0x00*/ u8 field_0x0[2];
    /*0x02*/ u8 jump_status;
    /*0x03*/ u8 field_0x3[2];
    /*0x05*/ u8 heldObject;
    /*0x06*/ u8 pushedObject;
    /*0x07*/ u8 field_0x7;
    /*0x08*/ u16 animation;
    /*0x0a*/ u8 field_0xa;
    /*0x0b*/ u8 keepFacing;
    /*0x0c*/ u8 queued_action;
    /*0x0d*/ u8 field_0xd;
    /*0x0e*/ u8 field_0xe;
    /*0x0f*/ u8 hurtBlinkSpeed;
    /*0x10*/ u8 field_0x10;
    /*0x11*/ u8 field_0x11;
    /*0x12*/ u8 floor_type;
    /*0x13*/ u8 floor_type_last;
    /*0x14*/ u8 field_0x14;
    /*0x15*/ u8 field_0x15;
    /*0x16*/ u16 startPosX;
    /*0x18*/ u16 startPosY;
    /*0x1a*/ u8 mobility;
    /*0x1b*/ u8 sword_state;
    /*0x1c*/ u8 field_0x1c;
    /*0x1d*/ u8 field_0x1d;
    /*0x1e*/ u8 dash_state;
    /*0x1f*/ u8 field_0x1f[3];
    /*0x22*/ u16 field_0x22[2];
    /*0x26*/ u8 swim_state;
    /*0x27*/ u8 field_0x27[5];
    /*0x2c*/ Entity* item;
    /*0x30*/ u32 flags;
    /*0x34*/ u8 field_0x34[2];
    /*0x36*/ u8 field_0x36;
    /*0x37*/ u8 field_0x37;
    /*0x38*/ u8 field_0x38;
    /*0x39*/ u8 field_0x39;
    /*0x3a*/ u8 field_0x3a;
    /*0x3b*/ u8 field_0x3b;
    /*0x3c*/ u8 field_0x3c[2];
    /*0x3e*/ u8 swordGoldParticle : 1;
    /*    */ u8 swordBlueParticle : 1;
    /*    */ u8 filler14 : 6;
    /*0x3f*/ u8 field_0x3f;
    /*0x40*/ u8 path_memory[64];
    /*0x80*/ u16 speed_modifier;
    /*0x82*/ u8 field_0x82[9];
    /*0x8b*/ u8 controlMode;
    /*0x8c*/ u16 vel_x;
    /*0x8e*/ u16 vel_y;
    /*0x90*/ u16 field_0x90;
    /*0x92*/ u16 field_0x92;
    /*0x94*/ u32 field_0x94;
    /*0x98*/ u16 field_0x98;
    /*0x9a*/ u16 field_0x9a;
    /*0x9c*/ u32 field_0x9c;
    /*0xa0*/ u8 field_0xa0[8];
    /*0xa8*/ u8 framestate;
    /*0xa9*/ u8 framestate_last;
    /*0xaa*/ u8 field_0xaa;
    /*0xab*/ u8 field_0xab;
    /*0xac*/ u16 field_0xac;
    /*0xae*/ u16 field_0xae;
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
    /*0x0b*/ u8 unkB;
    /*0x0c*/ u8 itemButtons[2];
    /*0x0e*/ u8 bottles[4];
    /*0x12*/ u8 effect;
    /*0x13*/ u8 hasAllFigurines;
    /*0x14*/ u8 filler3[4];
    /*0x18*/ u16 rupees;
    /*0x1a*/ u16 field_0x1a;
    /*0x1c*/ u16 charmTimer;
    /*0x1e*/ u16 unkTimer;
    /*0x20*/ u16 effectTimer;
    /*0x22*/ u8 filler4[4];
} Stats;

#define SLOT_A 0
#define SLOT_B 1

typedef struct {
    /*0x0*/ u8 field_0x0;
    /*0x1*/ u8 behaviorID;
    /*0x2*/ u8 field_0x2[2];
    /*0x4*/ u8 stateID;
    /*0x5*/ u8 field_0x5[10];
    /*0xf*/ u8 field_0xf;
    /*0x10*/ u8 field_0x10[8];
    /*0x18*/ u32 field_0x18;
} ItemBehavior;

extern void (*const gPlayerItemFunctions[])(Entity*);

extern u8 gBombBagSizes[];
extern u8 gQuiverSizes[];
extern u16 gWalletSizes[];
extern Entity* gPlayerClones[];

extern PlayerState gPlayerState;
extern Entity gPlayerEntity;

u32 CheckPlayerInactive(void);
void SetPlayerControl(PlayerControlMode mode);
void ResetPlayer(void);
void ResetPlayerVelocity(void);
void ResetPlayerAnimationAndAction(void);
void SetPlayerActionNormal(void);
void RespawnAsMinish(void);

Entity* CreatePlayerItem(u32, u32, u32, u32);

void ResolvePlayerAnimation(void);
void RegisterPlayerHitbox(void);
void UpdateFloorType(void);
void CreateEzloHint(u32, u32);

u32 IsItemEquipped(u32);
u32 GetInventoryValue(u32);
s32 ModHealth(s32 delta);
void ModRupees(s32 delta);
void DeleteClones(void);

void sub_08077728();
extern void sub_08077B20();
extern u32 sub_08008B22();
extern u32* sub_08008790(Entity*, u32);

#define COPY_FLAG_FROM_TO(base, src, dest) (base) = ((base) & ~(dest)) | (((dest) * ((base) & (src))) / src)

#endif
