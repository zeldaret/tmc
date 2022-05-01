#ifndef REGIONTRIGGERMANAGER_H
#define REGIONTRIGGERMANAGER_H

#include "manager.h"

typedef struct {
    Manager base;
    u8 unk_20[0x14]; // unused
    u16 radiusX;
    u16 radiusY;
    s16 posX;
    s16 posY;
    u8 unk_3c[2]; // unused
    u16 playerInRegionFlag;
} RegionTriggerManager;

#endif // REGIONTRIGGERMANAGER_H
