#ifndef LINKANIMATION_H
#define LINKANIMATION_H

#include "entity.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 storeDrawFlags;
    /*0x69*/ u8 storeFlags;
    /*0x6a*/ u8 storeIFrames;
    /*0x6b*/ u8 storeField7;
    /*0x6c*/ u8 storeKeepFacing;
    /*0x6d*/ u8 storeFieldA;
    /*0x6e*/ u8 storeField27;
    /*0x6f*/ u8 storeMobility;
    /*0x70*/ u32 storeStateFlags;
    /*0x74*/ u8 store8A;
} LinkAnimationEntity;

#endif // LINKANIMATION_H
