#ifndef EZLOHINTMANAGER_H
#define EZLOHINTMANAGER_H

#include "manager.h"

typedef struct {
    Manager base;
    u16 x;
    u16 y;
    u16 rx;
    u16 ry;
    u8 unk_28[13];
    u8 msg_height;
    u16 msg_idx;
    u8 x_raw;
    u8 y_raw;
    u8 rx_raw;
    u8 ry_raw;
    u16 flag1;
    u16 flag2;
} EzloHintManager;

#endif // EZLOHINTMANAGER_H
