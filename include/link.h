#ifndef LINK_H
#define LINK_H

#include "global.h"
#include "entity.h"

typedef struct {
    u8 filler[2];
    u8 jumpStatus;
    u8 filler2[2];
    u8 heldObject;
    u8 pushedObject;
    u8 unk;
    u16 unk2;
    u8 unk3;
    u8 keepFacing;
    u8 linkAction;
    u8 filler3[2];
    u8 hurtBlinkSpeed;
    u8 filler4[4];
    u16 filler5[3];
    u8 filler6[8];
    u16 filler7[2];
    u8 swimState;
    u8 filler8[5];
    u8* unk4;
    union {
        u32 all;
        struct {
            u32 filler9 : 3;
            u32 noMinishCap : 1;
            u32 pullingState : 1;
            u32 windyState : 1;
            u32 filler10 : 4;
            u32 slipperyState : 1;
            u32 filler11 : 5;
            u32 filler11b : 16;
        } PACKED b;
    } flags;
    u8 filler12[6];
    u16 unk5;
    u8 filler13[2];
    u8 swordGoldParticle : 1;
    u8 swordBlueParticle : 1;
    u8 filler14 : 6;
    u8 unk6;
    u8 filler15[75];
    u8 unk7;
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

#endif