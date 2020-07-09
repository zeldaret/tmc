// clang-format off

#ifndef LINK_H
#define LINK_H

#include "global.h"
#include "entity.h"

typedef struct {
    /*0x00*/ u8 filler[2];
    /*0x02*/ u8 jumpStatus;
    /*0x03*/ u8 filler2[2];
    /*0x05*/ u8 heldObject;
    /*0x06*/ u8 pushedObject;
    /*0x07*/ u8 unk;
    /*0x08*/ u16 unk2;
    /*0x0a*/ u8 unk3;
    /*0x0b*/ u8 keepFacing;
    /*0x0c*/ u8 linkAction;
    /*0x0d*/ u8 filler3[2];
    /*0x0f*/ u8 hurtBlinkSpeed;
    /*0x10*/ u8 filler4[4];
    /*0x14*/ u16 filler5[3];
    /*0x1a*/ u8 filler6[2];
    /*0x1c*/ u8 field_0x1c;
    /*0x1d*/ u8 filler9[5];
    /*0x22*/ u16 filler7[2];
    /*0x26*/ u8 swimState;
    /*0x27*/ u8 filler8[5];
    /*0x2c*/ u8* unk4;
    /*0x30*/ union {
    /*    */     u32 all;
    /*    */     struct {
    /*    */         u32 filler9 : 3;
    /*    */         u32 noMinishCap : 1;
    /*    */         u32 pullingState : 1;
    /*    */         u32 windyState : 1;
    /*    */         u32 filler10 : 4;
    /*    */         u32 slipperyState : 1;
    /*    */         u32 filler11 : 5;
    /*    */         u32 filler11b : 16;
    /*    */     } PACKED b;
    /*    */ } flags;
    /*0x34*/ u8 filler12[6];
    /*0x3a*/ u16 unk5;
    /*0x3c*/ u8 filler13[2];
    /*0x3e*/ u8 swordGoldParticle : 1;
    /*    */ u8 swordBlueParticle : 1;
    /*    */ u8 filler14 : 6;
    /*0x3f*/ u8 unk6;
    /*0x40*/ u8 filler15[75];
    /*0x8b*/ u8 unk7;
    /*0x8c*/ u32 filler16[7];
    /*0xa8*/ u8 filler17[3];
    /*0xab*/ u8 unk71;
    /*0xac*/ u32 unk8;
} LinkState;


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
    u8 filler3[12];
} Stats;

extern LinkState gLinkState;
extern Stats gStats;
extern Entity gLinkEntity;


extern u32 GetInventoryValue(u32);
extern s32 ModHealth(s32);

#endif

// clang-format on