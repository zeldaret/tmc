#ifndef HOUSESIGN_H
#define HOUSESIGN_H

#include "entity.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[24];
    /*0x80*/ s16 unk_80;
    /*0x82*/ s16 unk_82;
} HouseSignEntity;

#endif // HOUSESIGN_H
