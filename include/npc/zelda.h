#ifndef ZELDA_H
#define ZELDA_H

#include "entity.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused[24];
    /*0x80*/ u16 unk_80;
} ZeldaEntity;

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ s8 unk_68;
    /*0x69*/ s8 unk_69;
    /*0x6a*/ u8 unused[10];
    /*0x74*/ u16 unk_74;
} ZeldaFollowerEntity;

#endif // ZELDA_H
