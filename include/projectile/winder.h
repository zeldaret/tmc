#ifndef WINDER_H
#define WINDER_H
#include "enemy.h"

#define WINDER_NUM_SEGMENTS 8

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ s16 positions[2 * WINDER_NUM_SEGMENTS];
} WinderEntity;

#endif // WINDER_H
