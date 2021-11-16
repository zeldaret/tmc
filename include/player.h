// clang-format off

#ifndef PLAYER_H
#define PLAYER_H

#include "global.h"
#include "entity.h"

enum {
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
    PLAYER_08072F34,
    PLAYER_USEENTRANCE,
    PLAYER_PARACHUTE,
};

enum {
    PL_IS_MINISH = (1 << 7),
};

typedef struct {
    /*0x00*/ u8 field_0x0[2];
    /*0x02*/ u8 jumpStatus;
    /*0x03*/ u8 field_0x3[2];
    /*0x05*/ u8 heldObject;
    /*0x06*/ u8 pushedObject;
    /*0x07*/ u8 field_0x7;
    /*0x08*/ u16 field_0x8;
    /*0x0a*/ u8 field_0xa;
    /*0x0b*/ u8 keepFacing;
    /*0x0c*/ u8 playerAction;
    /*0x0d*/ u8 field_0xd;
    /*0x0e*/ u8 field_0xe;
    /*0x0f*/ u8 hurtBlinkSpeed;
    /*0x10*/ u8 field_0x10[4];
    /*0x11*/ u8 field_0x14;
    /*0x11*/ u8 field_0x15;
    /*0x14*/ u16 startPosX;
    /*0x16*/ u16 startPosY;
    /*0x1a*/ u8 field_0x1a[2];
    /*0x1c*/ u8 field_0x1c;
    /*0x1d*/ u8 field_0x1d[5];
    /*0x22*/ u16 field_0x22[2];
    /*0x26*/ u8 swimState;
    /*0x27*/ u8 field_0x27[5];
    /*0x2c*/ u8* field_0x2c;
    /*0x30*/ u32 flags;
    /* unk1 : 1; */
    /* unk2 : 1; */
    /* unk4 : 1; */
    /* noMinishCap : 1; */
    /* pullingState : 1; */
    /* windyState : 1; */
    /* filler6 : 1; */
    /* unk7 : 1; */
    /* unk8 : 1; */
    /* unk9 : 1; */
    /* slipperyState : 1; */
    /* filler11 : 5; */
    /* filler11b : 16; */
    /*0x34*/ u8 field_0x34[2];
    /*0x36*/ s16 field_0x36;
    /*0x38*/ u8 field_0x38;
    /*0x39*/ u8 field_0x39;
    /*0x3a*/ u8 field_0x3a;
    /*0x3b*/ u8 field_0x3b;
    /*0x3c*/ u8 field_0x3c[2];
    /*0x3e*/ u8 swordGoldParticle : 1;
    /*    */ u8 swordBlueParticle : 1;
    /*    */ u8 filler14 : 6;
    /*0x3f*/ u8 field_0x3f;
    /*0x40*/ u8 hurtType[64];
    /*0x80*/ u16 field_0x80;
    /*0x82*/ u8 field_0x82[9];
    /*0x8b*/ u8 field_0x8b;
    /*0x8c*/ u32 field_0x8c;
    /*0x90*/ union SplitWord field_0x90;
    /*0x94*/ u32 field_0x94;
    /*0x98*/ u16 field_0x98;
    /*0x9a*/ u16 field_0x9a;
    /*0x9c*/ u32 field_0x9c;
    /*0xa0*/ u8 field_0xa0[8];
    /*0xa8*/ u8 field_0xa8;
    /*0xa9*/ u8 field_0xa9;
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
    /*0x0c*/ u8 itemOnA;
    /*0x0d*/ u8 itemOnB;
    /*0x0e*/ u8 bottles[4];
    /*0x12*/ u8 effect;
    /*0x13*/ u8 filler3[5];
    /*0x18*/ u16 rupees;
    /*0x1a*/ u16 field_0x1a;
    /*0x1c*/ u16 charmTimer;
    /*0x1e*/ u16 unkTimer;
    /*0x20*/ u16 effectTimer;
    /*0x22*/ u8 filler4[4];
} Stats;

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

extern PlayerState gPlayerState;
extern Stats gStats;
extern Entity gPlayerEntity;


extern u32 GetInventoryValue(u32);
extern s32 ModHealth(s32);
extern void ModRupees(s32);

#define COPY_FLAG_FROM_TO(base, src, dest) (base) = ((base) & ~(dest)) | (((dest) * ((base) & (src))) / src)


#endif

// clang-format on
