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
    // union SplitHWord y;
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

extern DiggingCaveEntrance* diggingCaveEntrances[];

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    u16 unk_04;
    u16 unk_06;
} UnkManager26HelperStruct;

extern void Manager1();
extern void Manager2();
extern void sub_080576C0();
extern void sub_08057854();
extern void sub_08057AD0();
extern void sub_08057CB4();
extern void Manager7_Main();
extern void sub_08057ED0();
extern void sub_080581D8();
extern void sub_08058380();
extern void sub_080585F0();
extern void sub_0805884C();
extern void sub_08058DD0(Entity*);
extern void sub_08058E60();
extern void sub_08058ECC(Entity*);
extern void sub_08059570(Entity*);
extern void sub_080599B8(Entity*);
extern void sub_080599EC(Entity*);
extern void sub_08059DAC(Entity*);
extern void sub_08059E58(Entity*);
extern void sub_0805A280();
extern void sub_0805AB4C(Entity*);
extern void sub_0805AD48(Entity*);
extern void sub_0805ADD8();
extern void sub_0805AF60(Entity*);
extern void sub_0805B030();
extern void sub_0805B3B4(Entity*);
extern void sub_0805B53C(Entity*);
extern void sub_0805B5C8(Entity*);
extern void Manager1E_Handler();
extern void sub_0805B6F4(Entity*);
extern void sub_0805B7A0();
extern void sub_0805B820(Entity*);
extern void sub_0805B8EC(Entity*);
extern void sub_0805BC74(Entity*);
extern void sub_0805BF18(Entity*);
extern void sub_0805C61C(Entity*);
extern void sub_0805C6B8();
extern void Manager27();
extern void Manager28_Entry();
extern void sub_0805CB90(Entity*);
extern void sub_0805CFC0(Entity*);
extern void sub_0805D014(Entity*);
extern void sub_0805D174(Entity*);
extern void sub_0805D1FC(Entity*);
extern void sub_0805D250();
extern void sub_0805D3C8();
extern void Manager30_Main();
extern void sub_0805D630(Entity*);
extern void sub_0805D7A4(Entity*);
extern void sub_0805DAE8(Entity*);
extern void sub_0805DB94(Entity*);
extern void sub_0805DC84(Entity*);
extern void sub_0805DDB4(Entity*);
extern void sub_0805DE38(Entity*);
extern void sub_0805E0A8(Entity*);
extern void sub_0805E0FC();

extern void (*const gManagerFunctions[58])();

#endif
