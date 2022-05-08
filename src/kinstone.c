#include "global.h"
#include "room.h"
#include "subtask.h"
#include "common.h"
#include "flags.h"

void sub_080189EC(int param_1) {
    u32 i;
    int iVar1;
    int tilePosition;
    struct_080FE320* ptr;

    ptr = &gUnk_080FE320[param_1];

    tilePosition = (ptr->x >> 4) & 0x3f;
    tilePosition |= ((ptr->y >> 4) & 0x3f) << 6;
    tilePosition -= 0x42;

    for (i = 0; i < 4; i++) {
        SetTileType(i + 0x1df, tilePosition + i, 2);
    }

    tilePosition += 0x40;
    for (i = 0; i < 4; i++) {
        SetTileType(i + 0x1e3, tilePosition + i, 2);
        SetTileType(i + 0x1db, tilePosition + i, 1);
    }
}

void sub_08018A58(int param_1) {
    u32 i;
    int iVar2;
    u32 j;
    int tilePosition;
    struct_080FE320* ptr;

    ptr = &gUnk_080FE320[param_1];

    tilePosition = (ptr->x >> 4) & 0x3f;
    tilePosition |= ((ptr->y >> 4) & 0x3f) << 6;
    tilePosition -= 0x43;
    iVar2 = 0x232;

    for (i = 0; i < 4; tilePosition += 0x40, i++) {
        for (j = 0; j < 7; j++) {
            SetTileType(iVar2++, tilePosition + j, 1);
        }
    }
}

void sub_08018AB4(int param_1) {
    u32 i;
    int iVar2;
    u32 j;
    int iVar6;

    iVar2 = 0x1e8;
    iVar6 = 500;

    for (i = 0; i < 3; i++) {
        j = 0;
        for (; j < 4; j++) {
            SetTileType(iVar2++, param_1 + j, 1);
            SetTileType(iVar6++, param_1 - 0x40 + j, 2);
        }
        param_1 += 0x40;
    }
}

void sub_08018B10(int param_1) {
    int iVar1;
    u32 index;
    int iVar3;
    int iVar4;

    iVar4 = 0x1f0;
    iVar3 = 0x1fc;
    index = 0;
    iVar1 = param_1 - 0x40;
    for (; index < 4; iVar1++, index++) {
        SetTileType(iVar4++, param_1 + index, 1);
        SetTileType(iVar3++, iVar1, 2);
    }
}

void sub_08018B50(int param_1) {
    u32 i;
    int iVar2;
    u32 j;
    int tilePosition;
    struct_080FE320* ptr;

    ptr = &gUnk_080FE320[param_1];
    if ((ptr->entity_idx & 0x80) == 0) {
        iVar2 = 0x200;
    } else {
        iVar2 = 0x219;
    }

    tilePosition = (ptr->x >> 4) & 0x3f;
    tilePosition |= ((ptr->y >> 4) & 0x3f) << 6;
    tilePosition -= 0x82;

    for (i = 0; i < 5; tilePosition += 0x40, i++) {
        for (j = 0; j < 5; j++) {
            SetTileType(iVar2++, tilePosition + j, 1);
        }
    }
}

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
