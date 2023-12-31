#ifndef ITEMFORSALE_H
#define ITEMFORSALE_H

#include "object.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[0x18];
    /*0x80*/ u16 unk_80;
    /*0x82*/ u16 unk_82;
} ItemForSaleEntity;

#endif // ITEMFORSALE_H
