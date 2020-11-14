#ifndef MANAGER_H
#define MANAGER_H

#include "global.h"
#include "entity.h"

union SplitSHWord {
    s16 SHWORD;
    struct {
        u8 LO, HI;
    } PACKED HALF;
} PACKED;

typedef struct Manager {
    /*0x00*/ struct Manager* previous;
    /*0x00*/ struct Manager* next;
    /*0x08*/ u8 type;
    /*0x09*/ u8 subtype;
    /*0x0a*/ u8 unk_0a;
    /*0x0b*/ u8 unk_0b;
    /*0x0c*/ u8 action;
    /*0x0d*/ u8 unk_0d;
    /*0x0e*/ u8 unk_0e;
    /*0x0f*/ u8 unk_0f;
    /*0x10*/ u8 unk_10;
    /*0x11*/ u8 unk_11[3];
    /*0x14*/ struct Manager* parent;
    /*0x18*/ u8 unk_18[0x8];
    // union SplitHWord unk_20;
    // u16 unk_22;
    // u16 unk_24;
    // u16 unk_26;
    // u8 unk_28[0x0D];
    // u8 unk_35;
    // u16 unk_36;
    // union SplitSHWord unk_38;
    // union SplitSHWord unk_3a;
    // u16 unk_3c;
    // u16 unk_3e;
} Manager;

typedef struct {
    u16 posX;
    u16 posY;
    u8 width;
    u8 height;
    u8 unk_06;
    union {
        u8 all;
        struct {
            u8 layer : 2;
            u8 unk1 : 2;
            u8 unk2 : 1;
            u8 unk3 : 3;
        } PACKED b;
    } PACKED unk_07;
} Manager6WarpData;

typedef struct {
    Manager manager;
    Manager6WarpData* warpList;
} Manager6;

typedef struct {
    Manager manager;
    u16 unk_20;
    u16 unk_22;
    u16 unk_24;
    u16 unk_26;
    u8 unk_28[0x0D];
    u8 unk_35;
    u16 unk_36;
    u8 unk_38;
    u8 unk_39;
    u8 unk_3a;
    u8 unk_3b;
    u16 unk_3c;
    u16 unk_3e;
} ManagerA;

typedef struct {
    Manager manager;
    u8 unk_20;
    u8 unk_21[0x14];
    u8 unk_35;
    u8 unk_36[0x4];
    u16 unk_3a;
    u16 unk_3c;
    u16 unk_3e;
} ManagerB;

typedef struct {
    Manager manager;
    Entity* enemies[8];
} ManagerBHelper;

typedef struct {
    Manager manager;
    u8 unk_20[0x18];
    s16 unk_38;
    s16 unk_3a;
    u16 unk_3c;
    u16 unk_3e;
} ManagerE;

typedef struct {
    u16 unk_00;
    u8 source_roomID;
    u8 unk_03;
    u8 target_areaID;
    u8 target_roomID;
    u16 unk_06;
} DiggingCaveEntrance;

extern struct {
    DiggingCaveEntrance* unk_00;
    u16 unk_04;
    u16 unk_06;
    u8 unk_08;
    u8 unk_09;
    u8 unk_0a;
    u8 unk_0b;
} gUnk_03004030;

extern DiggingCaveEntrance* gUnk_08107DC0[];

#endif
