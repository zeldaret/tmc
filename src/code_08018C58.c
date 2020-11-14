#include "global.h"
#include "entity.h"

extern u32 SetTileType(u32 tileID, u32 tilePos, u32 layerID);

void CreateMinishEntrance(u32 tilePos) {
    u32 x, y;
    u32 tileID = 0x185;

    for (y = 0; y <= 3; y++) {
        for (x = 0; x <= 4; x++) {
            SetTileType(tileID++, tilePos + x, 1);
        }
        tilePos += 0x40;
    }
}

void sub_08018C58(u32 tilePos) {
    u32 i = 0;

    for (; i < 6;) {
        SetTileType(0x260 + i, tilePos, 1);
        SetTileType(0x261 + i, tilePos + 1, 1);
        i += 2;
        tilePos += 0x40;
    }
}
