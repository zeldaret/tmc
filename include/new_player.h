#include "entity.h"

// TODO Use new player entity struct everywhere once it is fully discovered.

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[0xc];
    /*0x74*/ Entity* unk_74;
    /*0x78*/ u8 unk_78[0x4];
    /*0x7c*/ u32 unk_7c;
    /*0x80*/ u8 unk_80[8];
} PlayerEntity;

#define gNewPlayerEntity (*(PlayerEntity*)&gPlayerEntity)