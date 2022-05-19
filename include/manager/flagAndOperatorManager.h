#ifndef FLAGANDOPERATORMANAGER_H
#define FLAGANDOPERATORMANAGER_H

#include "manager.h"

typedef struct FlagAndOperatorManager {
    Manager base;
    u8 unk_20[0x1C];
    u16 unk_3c;
    u16 unk_3e;
} FlagAndOperatorManager;

#endif // FLAGANDOPERATORMANAGER_H
