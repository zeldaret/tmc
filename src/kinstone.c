#include "global.h"
#include "room.h"
#include "subtask.h"
#include "common.h"
#include "flags.h"

void sub_08018BB4(int param_1) {
    u32 layer;
    TileEntity tile;
    struct_080FE320* ptr;
    u32 position;

    MemCopy(gUnk_080FEAC8 + param_1, &tile, sizeof(TileEntity));
    ptr = &gUnk_080FE320[param_1];
    tile.tilePos = (ptr->x >> 4 & 0x3f) | (((ptr->y) >> 4 & 0x3f) << 6);
    sub_0804B3C4(&tile);
    if (CheckLocalFlag(tile.localFlag) == 0) {
        position = tile.tilePos;
        if ((tile._6 & 1) == 0) {
            layer = 1;
        } else {
            layer = 2;
        }
        SetTileType(0x73, position, layer);
    }
}

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
    u32 i;

    for (i = 0; i < 6; i += 2, tilePos += 0x40) {
        SetTileType(0x260 + i, tilePos, 1);
        SetTileType(0x261 + i, tilePos + 1, 1);
    }
}
