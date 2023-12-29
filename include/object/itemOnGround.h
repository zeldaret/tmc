#ifndef ITEMONGROUND_H
#define ITEMONGROUND_H

#include "entity.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68;
    /*0x69*/ u8 unk_69;
    /*0x6a*/ u8 unk_6a;
    /*0x6b*/ u8 unused1[1];
    /*0x6c*/ u16 unk_6c;
    /*0x6e*/ u16 unk_6e;
    /*0x70*/ u8 unused2[22];
    /*0x86*/ u16 unk_86;
} ItemOnGroundEntity;

#endif // ITEMONGROUND_H
