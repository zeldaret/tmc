#ifndef PLAYERITEMBOTTLE_H
#define PLAYERITEMBOTTLE_H

#include "entity.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 bottleIndex; /**< @see Item */
    /*0x69*/ u8 unused[6];
    /*0x6f*/ u8 bottleContent; /**< @see Item */
} PlayerItemBottleEntity;

#endif // PLAYERITEMBOTTLE_H
