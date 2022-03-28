#ifndef NEW_PLAYER_H
#define NEW_PLAYER_H

#include "entity.h"

// TODO Use new player entity struct everywhere once it is fully discovered.

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u32 unk_68;
    /*0x6c*/ u8 unk_6c;
    /*0x6d*/ u8 unk_6d;
    /*0x6e*/ u8 unk_6e;
    /*0x6f*/ u8 unk_6f;
    /*0x70*/ Entity* unk_70;
    /*0x74*/ Entity* unk_74;
    /*0x78*/ u8 unk_78;
    /*0x79*/ u8 unk_79;
    /*0x7a*/ u16 unk_7a;
    /*0x7c*/ u32 unk_7c;
    /*0x80*/ u8 unk_80[8];
} PlayerEntity;

#define gNewPlayerEntity (*(PlayerEntity*)&gPlayerEntity)

#endif