#include "global.h"
#include "room.h"
#include "subtask.h"
#include "common.h"
#include "flags.h"
#include "player.h"
#include "kinstone.h"
#include "area.h"
#include "manager.h"

extern EntityData gUnk_080FEC28[];
extern EntityData gUnk_080FEBE8[];
extern EntityData gUnk_080FECC8[];
extern EntityData gUnk_080FEE78[];
extern EntityData gUnk_080FED58[];
extern const EntityData gUnk_080FED18[];
extern const EntityData gUnk_080FEE38[];
extern const EntityData gUnk_080FEE18[];
extern const EntityData gUnk_080FEE48[];
extern const EntityData gUnk_080FEE58[];
extern const void* gUnk_080FED98[];

void sub_08018AB4(int);
void sub_08018BB4(int);
void sub_08018A58(int);
void sub_08018B50(int);
void sub_080189EC(int);
void sub_0801876C(int, int);
void sub_08018738(u32, int);

void sub_080186D4(void) {
    if (gArea.inventoryGfxIdx == 0xff) {
        sub_0801855C();
    }
}

void sub_080186EC(u32 param_1) {
    struct_080C9CBC* psVar1;
    u32 i;

    for (i = 0, psVar1 = gUnk_080C9CBC; i <= 100; psVar1++, i++) {
        if (psVar1->unk3 == 8) {
            sub_08018738(i, psVar1->evt_type);
        }
    }
}

void sub_08018710(u32 param_1) {
    struct_080C9CBC* psVar1;
    u32 i;

    for (i = 0, psVar1 = gUnk_080C9CBC; i <= 100; psVar1++, i++) {
        if (psVar1->unk3 == 8 && param_1 != psVar1->evt_type) {
            sub_08018738(i, psVar1->evt_type);
        }
    }
}

void sub_08018738(u32 param_1, int param_2) {
    struct_080FE320* ptr = &gUnk_080FE320[param_2];

    if (ptr->area == gRoomControls.area && ptr->room == gRoomControls.room) {
        sub_0801876C(param_2, CheckKinstoneFused(param_1));
    }
}

void sub_0801876C(int param_1, int param_2) {
    Entity* roomEnt;
    Entity* ent;
    u32 uVar3;
    u32 tmp;
    u8* puVar4;
    u32 uVar5;
    struct_080FE320* ptr;

    ptr = &gUnk_080FE320[param_1];
    switch (ptr->evt_type) {
        case 6:
            if (param_2 == 0) {
                sub_08018AB4((ptr->x >> 4 & 0x3f) | (ptr->y >> 4 & 0x3f) << 6);
            }
            break;
        case 0:
            break;
        case 2:
            if (param_2 != 0) {
                sub_08018BB4(param_1);
            }
            break;
        case 1:
            if (param_2 == 0) {
                return;
            }
            if (CheckGlobalFlag(ptr->flag)) {
                return;
            }
            LoadRoomEntity(gUnk_080FEC28 + ptr->entity_idx);
            break;
        case 3:
            if (param_2 == 0) {
                return;
            }
            if (GetInventoryValue(ptr->flag)) {
                return;
            }
            LoadRoomEntity(gUnk_080FEBE8 + ptr->entity_idx);
            break;
        case 4:
            if (param_2 == 0) {
                sub_08018A58(param_1);
            }
            break;
        case 5:
            if (param_2 != 0) {
                sub_08018B50(param_1);
            }
            break;

        case 7:
            if (param_2 != 0) {
                return;
            }
            if (ptr->entity_idx != 0x80) {
                LoadRoomEntity(gUnk_080FECC8 + ptr->entity_idx);
            } else {
                sub_080189EC(param_1);
            }
            break;
        case 0x19:
            roomEnt = LoadRoomEntity(&gUnk_080FED18[ptr->entity_idx]);
            if (roomEnt != 0) {
                roomEnt->type = param_2 ? 2 : 0;
            }
            break;
        case 8:
            if (param_2 == 0) {
                return;
            }
            SetTileType(0x168, (ptr->x >> 4 & 0x3f) | (ptr->y >> 4 & 0x3f) << 6, 1);
            break;
        case 0xb:
            if (param_2 != 0) {
                LoadRoomEntity(&gUnk_080FED58[ptr->entity_idx]);
                gRoomVars.field_0x8c[ptr->entity_idx] = (void*)gUnk_080FED98[ptr->entity_idx];
            }
            break;
        case 9:
            if (param_2 == 0) {
                return;
            }
            ent = LoadRoomEntity(&gUnk_080FEE78[ptr->entity_idx]);
            if (ent != 0) {
                *(u16*)&ent->collisionLayer = ptr->x + gRoomControls.origin_x;
                *(u16*)&ent->gustJarState = ptr->y + gRoomControls.origin_y;
            }
            if (ptr->entity_idx == 0) {
                SetTileType(0x8d, (ptr->x >> 4 & 0x3f) | (ptr->y >> 4 & 0x3f) << 6, 1);
            } else {
                uVar5 = (ptr->x >> 4 & 0x3f) | (ptr->y >> 4 & 0x3f) << 6;
                SetTileType(0x8c, uVar5 - 1, 1);
                uVar3 = 0x8e;
                SetTileType(uVar3, uVar5, 1);
            }
            break;
        case 0x18:
            if (param_2 != 0) {
                LoadRoomEntityList(gUnk_080FEE18);
            }
            break;
        case 0xf:
            if (param_2 != 0) {
                LoadRoomEntity(gUnk_080FEE58);
            } else {
                LoadRoomEntity(gUnk_080FEE48);
            }
            break;
        case 0x11:
            if (param_2 != 0) {
                SetLocalFlagByBank(FLAG_BANK_1, SOUGEN_05_BOMB_00);
                LoadRoomEntityList(gUnk_080FEE38);
            }
            break;
        case 0x1a:
        case 0x1b:
        case 0x1c:
            break;
    }
}

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
