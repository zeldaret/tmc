#ifndef ITEMONGROUND_H
#define ITEMONGROUND_H

#include "entity.h"

typedef enum {
    ITEM_ON_GROUND_KIND_0,
    ITEM_ON_GROUND_KIND_1,
    ITEM_ON_GROUND_KIND_2,
    ITEM_ON_GROUND_KIND_3,
    ITEM_ON_GROUND_KIND_4,
    ITEM_ON_GROUND_KIND_5,
    ITEM_ON_GROUND_KIND_6,
    ITEM_ON_GROUND_BURRIED,
    ITEM_ON_GROUND_SUNKEN,
    ITEM_ON_GROUND_KIND_9,
    ITEM_ON_GROUND_KIND_10,
} ItemOnGroundKind;

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68;
    /*0x69*/ ItemOnGroundKind kind: 8;
    /*0x6a*/ u8 unk_6a;
    /*0x6b*/ u8 unused1[1];
    /*0x6c*/ u16 unk_6c;
    /*0x6e*/ u16 originalTile;
    /*0x70*/ u8 unused2[22];
    /*0x86*/ u16 flag;
} ItemOnGroundEntity;

#endif // ITEMONGROUND_H
