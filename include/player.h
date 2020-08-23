// clang-format off

#ifndef PLAYER_H
#define PLAYER_H

#include "global.h"
#include "entity.h"

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
    /*0x0d*/ u8 field_0xd[2];
    /*0x0f*/ u8 hurtBlinkSpeed;
    /*0x10*/ u8 field_0x10[4];
    /*0x11*/ u8 field_0x14;
    /*0x11*/ u8 field_0x15;
    /*0x14*/ u16 field_0x16[2];
    /*0x1a*/ u8 field_0x1a[2];
    /*0x1c*/ u8 field_0x1c;
    /*0x1d*/ u8 field_0x1d[5];
    /*0x22*/ u16 field_0x22[2];
    /*0x26*/ u8 swimState;
    /*0x27*/ u8 field_0x27[5];
    /*0x2c*/ u8* field_0x2c;
    /*0x30*/ union {
    /*    */     u32 all;
    /*    */     struct {
    /*    */         u32 filler9 : 3;
    /*    */         u32 noMinishCap : 1;
    /*    */         u32 pullingState : 1;
    /*    */         u32 windyState : 1;
    /*    */         u32 filler6 : 1;
    /*    */         u32 unk7 : 1;
    /*    */         u32 filler8 : 2;
    /*    */         u32 slipperyState : 1;
    /*    */         u32 filler11 : 5;
    /*    */         u32 filler11b : 16;
    /*    */     } PACKED b;
    /*    */ } flags;
    /*0x34*/ u8 field_0x34[6];
    /*0x3a*/ u16 field_0x3a;
    /*0x3c*/ u8 field_0x3c[2];
    /*0x3e*/ u8 swordGoldParticle : 1;
    /*    */ u8 swordBlueParticle : 1;
    /*    */ u8 filler14 : 6;
    /*0x3f*/ u8 field_0x3f;
    /*0x40*/ u8 field_0x40[75];
    /*0x8b*/ u8 field_0x8b;
    /*0x8c*/ u32 field_0x8c;
    /*0x90*/ union SplitWord field_0x90;
    /*0x94*/ u32 field_0x94[5];
    /*0xa8*/ u8 field_0xa8;
    /*0xa9*/ u8 field_0xa9;
    /*0xaa*/ u8 field_0xaa;
    /*0xab*/ u8 field_0xab;
    /*0xac*/ u32 field_0xac;
} PlayerState;


typedef struct {
    u8 walletType;
    u8 heartPieces;
    u8 health;
    u8 maxHealth;
    u8 bombCount;
    u8 arrowCount;
    u8 bombBagType;
    u8 quiverType;
    u8 filler[4];
    u8 itemOnA;
    u8 itemOnB;
    u8 filler2[10];
    u16 rupees;
    u8 field_0x1a;
    u8 field_0x1b;
    u8 field_0x1c;
    u8 field_0x1d;
    u8 field_0x1e;
    u8 field_0x1f;
    u16 field_0x20;
    u8 filler4[4];
} Stats;

typedef struct {
    /*0x0*/ u8 field_0x0;
    /*0x1*/ u8 behaviorID;
    /*0x2*/ u8 field_0x2[2];
    /*0x4*/ u8 stateID;
    /*0x5*/ u8 field_0x5[10];
    /*0xf*/ u8 field_0xf;
} ItemBehavior;

extern u8 gBombBagSizes[];

extern PlayerState gPlayerState;
extern Stats gStats;
extern Entity gPlayerEntity;


extern u32 GetInventoryValue(u32);
extern s32 ModHealth(s32);
extern void ModRupees(s32);
#endif

// clang-format on
