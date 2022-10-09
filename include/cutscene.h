#ifndef CUTSCENE_H
#define CUTSCENE_H

#include "room.h"

typedef struct {
    const EntityData* entityData;
    u8 area;
    u8 room;
    s8 scrollX;
    s8 scrollY;
} struct_080FCF04;

typedef struct {
    const EntityData* entityData1;
    const EntityData* entityData2;
    u8 area;
    u8 room;
    s8 scrollX;
    s8 scrollY;
} struct_080FCFB8;

#endif // CUTSCENE_H
