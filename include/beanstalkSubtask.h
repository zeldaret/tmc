#ifndef BEANSTALKSUBTASK_H
#define BEANSTALKSUBTASK_H

#include "global.h"

/*
tiles 0x4000 and above create an entry here
 */
#define MAX_0200B240 0x100
typedef struct {
    u16 position; // (layer << 0xc) | position
    u16 data;
} struct_0200B240;
extern struct_0200B240 gUnk_0200B240[MAX_0200B240];

typedef struct {
    u16 collision;
    u16 tileIndex;
} struct_080B44D0;

#endif // BEANSTALKSUBTASK_H
