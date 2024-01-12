#ifndef ENEMY_WIZZROBE_H
#define ENEMY_WIZZROBE_H
#include "enemy.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[6];
    /*0x6e*/ u8 unk_6e;
    /*0x6f*/ u8 unk_6f;
    /*0x70*/ u16 unk_70;
    /*0x72*/ u16 unk_72;
    /*0x74*/ u8 unk_74[4];
    /*0x78*/ u16 targetX;
    /*0x7a*/ u16 targetY;
    /*0x7c*/ u8 unk_7c[4];
    /*0x80*/ u8 targetIndex;
    /*0x81*/ u8 timer1;
    /*0x82*/ u8 timer2;
    /*0x83*/ u8 unk_83;
    /*0x84*/ u16 tilePos;
    /*0x86*/ u16 tileIndex;
} WizzrobeEntity;

extern void sub_0802F888(WizzrobeEntity*);
extern void sub_0802F8E4(WizzrobeEntity*);
extern void sub_0802F9C8(WizzrobeEntity*);
#endif