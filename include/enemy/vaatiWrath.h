#ifndef VAATIWRATH_H
#define VAATIWRATH_H
#include "enemy.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[5];
    /*0x6d*/ u8 unk_6d;
    /*0x6e*/ u8 unused2[10];
    /*0x78*/ u8 unk_78;
    /*0x79*/ u8 unk_79;
    /*0x7a*/ u8 unused3[1];
    /*0x7b*/ u8 unk_7b;
    /*0x7c*/ u16 unk_7c;
    /*0x7e*/ u16 unk_7e;
    /*0x80*/ u8 unused4[4];
    /*0x84*/ u8 unk_84;
} VaatiWrathEntity;

#endif // VAATIWRATH_H
