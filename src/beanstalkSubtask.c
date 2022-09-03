#include "beanstalkSubtask.h"

#include "backgroundAnimations.h"
#include "collision.h"
#include "common.h"
#include "fade.h"
#include "functions.h"
#include "game.h"
#include "item.h"
#include "main.h"
#include "manager.h"
#include "manager/diggingCaveEntranceManager.h"
#include "menu.h"
#include "object.h"
#include "screen.h"
#include "scroll.h"
#include "structures.h"

extern void sub_0807C898(void);
extern void sub_0805BB74(s32);
extern void LoadRoomGfx(void);
extern void sub_0807BFD0(void);
extern void sub_0807C4F8(void);

extern void gMapData;
extern u8 gUpdateVisibleTiles;
extern u16 gMapDataTopSpecial[];
extern u16 gMapDataBottomSpecial[];

extern const u8 gGlobalGfxAndPalettes[];
extern const u8 gUnk_081091E4[];

extern void (*const gUnk_080B4458[])(void);
extern const u16 gUnk_080B44A0[];
extern const u16 gUnk_080B4410[];
extern const s16 gUnk_080B4488[];
extern const s16 gUnk_080B44A8[];

extern const struct_080B44D0 gUnk_080B44D0[];

typedef struct {
    u16 tileType;
    u16 kind;
    u16 id;
    u16 type;
    u16 type2;
    u16 unk_a;
} Data;

void sub_0801AD6C(const Data*, u32);
bool32 sub_0801A4F8(void);
bool32 sub_0801AA58(Entity*, u32, u32);
void sub_0801AB08(u16*, LayerStruct*);

u32 sub_0801AC68(u32 position, u32 data);

void sub_0801967C(void) {
    gUnk_080B4458[gMenu.overlayType]();
}

void sub_08019698(void) {
    Entity* object;
    const u16* ptr;
    ptr = &gUnk_080B4410[gUI.field_0x3 * 7];
    SetLocalFlagByBank(FLAG_BANK_1, ptr[2]);
    LoadAuxiliaryRoom(ptr[0], ptr[1]);
    gRoomControls.scroll_x += ptr[3];
    gRoomControls.scroll_y += ptr[4];
    gUpdateVisibleTiles = 1;
    UpdateScrollVram();
    gScreen.lcd.displayControl &= 0xfeff;
    object = CreateObject(BEANSTALK, 0, 0);
    if (object != NULL) {
        object->x.HALF.HI = gRoomControls.scroll_x + ptr[5];
        object->y.HALF.HI = gRoomControls.scroll_y + ptr[6];
    }
    LoadGfxGroup(0x11);
    FlushSprites();
    DrawEntities();
    CopyOAM();
    SetFade(FADE_INSTANT, 8);
    gUnk_02018EB0.unk_0++;
}

void sub_08019740(void) {
    if (gFadeControl.active == 0) {
        gUnk_02018EB0.unk_0++;
        gUnk_02018EB0.unk_4 = 0x186;
    }
}

void sub_08019764(void) {
    FlushSprites();
    UpdateEntities();
    DrawEntities();
    CopyOAM();
    if ((--gUnk_02018EB0.unk_4 == 0) || ((gInput.newKeys & 10) != 0)) {
        gUnk_02018EB0.unk_0++;
    }
}

void sub_080197A0(void) {
    MenuFadeIn(2, 0xb);
}

void SetBGDefaults(void) {
    gMapBottom.bgSettings = (BgSettings*)&gScreen.bg2;
    gMapBottom.bgSettings->control = gUnk_080B77C0[0];
    gMapTop.bgSettings = &gScreen.bg1;
    gMapTop.bgSettings->control = gUnk_080B77C0[1];
}

void sub_080197D4(u32* param_1) {
    u32 uVar1;
    u8* src;
    void* dest;

    do {
        dest = (void*)param_1[1];
        if (dest != NULL) {
            src = &gMapData + (*param_1 & 0x7fffffff);
            if ((param_1[2] & 0x80000000) != 0) {
                if ((u32)dest >> 0x18 == 6) {
                    LZ77UnCompVram(src, dest);
                } else {
                    LZ77UnCompWram(src, dest);
                }
            } else {
                MemCopy(src, dest, param_1[2]);
            }
        } else {
            LoadPaletteGroup((u32) * (u16*)param_1);
            sub_080533CC();
        }
        param_1 += 3;
        uVar1 = *(param_1 - 3);
    } while ((uVar1 & 0x80000000) != 0);
}

// Has ifdefs for other variants
ASM_FUNC("asm/non_matching/beanstalkSubtask/UpdatePlayerCollision.inc", void UpdatePlayerCollision())

bool32 sub_0801A2B0(LayerStruct* layer, u32 position, u32 collisionType) {
    u16 uVar1;
    s16 x;
    s16 y;
    u16 temp4;

    uVar1 = gUnk_080B4488[gPlayerEntity.animationState >> 1];
    if ((((gPlayerState.field_0x35 | gPlayerState.direction) & 0x80) == 0) && ((gPlayerEntity.frame & 1) != 0)) {
        position = (u16)(position - (-uVar1)); // necessary for match
        temp4 = sub_080B1B54(GetTileType(position, gPlayerEntity.collisionLayer));
        switch (temp4) {
            case 0x52:
                break;
            case 0x26:
            case 0x27:
                return FALSE;
            case 0x29:
                return FALSE;
            case 0x74:
                return FALSE;
            default:
                if ((layer->collisionData[(position)] != 0x28)) {
                    x = (((position & 0x3f) * 0x10 + (u32)gRoomControls.origin_x));
                    y = (((position >> 6) * 0x10 + (u32)gRoomControls.origin_y));
                    if ((!IsTileCollision(layer->collisionData, x, y, collisionType))) {
                        return TRUE;
                    }
                }
                break;
        }
    }
    return FALSE;
}

bool32 sub_0801A370(LayerStruct* layer, u32 position) {
    LayerStruct* topLayer;
    u32 tileType;
    u32 pos;
    s32 offset;
    s32 temp;

    if ((gPlayerEntity.animationState & 2) == 0) {
        return FALSE;
    }
    if (!sub_0801A4F8()) {
        return FALSE;
    }
    topLayer = GetLayerByIndex(2);
    offset = gUnk_080B4488[gPlayerEntity.animationState >> 1];
    pos = position + offset;
    tileType = GetTileType(pos, gPlayerEntity.collisionLayer);
    switch (tileType) {
        case 0x402b:
            pos += offset;
            break;
        case 0x402c ... 0x402f:
            return TRUE;
    }
    if (topLayer->collisionData[pos - 0x80] == 0x46) {
        return FALSE;
    }
    switch ((u16)sub_080B1B54(GetTileType(pos, gPlayerEntity.collisionLayer))) {
        case 0x52:
            return FALSE;
        case 0x26:
        case 0x27:
            return FALSE;
        case 0x29:
            return FALSE;
        case 0x74:
            return FALSE;
    }
    switch (temp = layer->collisionData[pos]) {
        case 0:
            return TRUE;
        case 5:
        case 0x45:
            if (offset == 1) {
                return TRUE;
            }
            break;
        case 0xa:
        case 0x44:
            if (offset == -1) {
                return TRUE;
            }
            break;
    }
    return FALSE;
}

bool32 sub_0801A458(LayerStruct* layer, u32 position, u32 collisionType) {
    u32 tileType;
    u32 pos;
    s32 offset = gUnk_080B4488[gPlayerEntity.animationState >> 1];
    if (sub_0801A4F8()) {
        pos = position + offset;
        tileType = GetTileType(pos, gPlayerEntity.collisionLayer);
        switch (sub_080B1B54(tileType)) {
            case 0x52:
            case 0x26:
            case 0x27:
            case 0x29:
            case 0x74:
                return FALSE;
            default:
                if (((layer->collisionData[pos] != 0x28) &&
                     (!IsTileCollision(layer->collisionData, (pos & 0x3f) * 0x10 + gRoomControls.origin_x,
                                       (pos >> 6) * 0x10 + gRoomControls.origin_y, collisionType))) &&
                    (0xe < (u32)layer->collisionData[pos] - 1)) {
                    return TRUE;
                }
                break;
        }
    }
    return FALSE;
}

bool32 sub_0801A4F8(void) {
    u32 tmp;
    if ((gPlayerState.flags & PL_MINISH) != 0) {
        if (GetInventoryValue(ITEM_POWER_BRACELETS) != 1) {
            return FALSE;
        }
        if ((gPlayerState.direction & 0x80) != 0) {
            return FALSE;
        }
        if (gPlayerState.direction != gPlayerEntity.direction) {
            return FALSE;
        }
        tmp = (((gPlayerEntity.direction + 4) & 0x18) >> 3);
        if ((gUnk_080B44A0[tmp] & gPlayerEntity.collisions) == 0) {
            return FALSE;
        }
    } else {
        if (((gPlayerState.field_0x35 | gPlayerState.direction) & 0x80) != 0) {
            return FALSE;
        }
        if ((gPlayerEntity.frame & 1) == 0) {
            return FALSE;
        }
    }
    return TRUE;
}

ASM_FUNC("asm/non_matching/beanstalkSubtask/sub_0801A570.inc", void sub_0801A570())

u32 sub_0801A8D0(Entity* this, u32 param_2) {
    u16* mapData;
    u32 tile;
    u32 position;

    if (this == NULL)
        return 0xffff;

    mapData = GetLayerByIndex(this->collisionLayer)->mapData;
    if (param_2 == 0) {
        position = COORD_TO_TILE_OFFSET(this, 0, 8);
        tile = mapData[position];
        if (tile == 0x4055) {
            return position - 1;
        }
        if (tile == 0x4056) {
            return position;
        }
    } else {
        position = COORD_TO_TILE_OFFSET(this, 8, 0);
        tile = mapData[position];
        if (tile == 0x4057) {
            return position - 0x40;
        }
        if (tile == 0x4058) {
            return position;
        }
    }
    return 0xffff;
}

bool32 sub_0801A980(void) {
    u16 tileType;
    const s16* ptr;
    GetLayerByIndex(gPlayerEntity.collisionLayer);
    ptr = &gUnk_080B44A8[gPlayerEntity.animationState & 6];
    tileType = GetTileType(COORD_TO_TILE_OFFSET(&gPlayerEntity, -ptr[0], -ptr[1]), gPlayerEntity.collisionLayer);
    if (tileType < 0x4000) {
        sub_080B1B54(tileType);
    }
    return FALSE;
}

bool32 sub_0801A9F0(u32 param_1, u32 param_2, u32 param_3) {
    bool32 cond = FALSE;
    switch (param_2) {
        case 0x360:
            cond = TRUE;
            break;
        case 0x361:
            if (param_1 == 0) {
                cond = TRUE;
            }
            break;
        case 0x364:
            if (param_1 == 8) {
                cond = TRUE;
            }
            break;
        case 0x362:
            if (param_1 == 0x10) {
                cond = TRUE;
            }
            break;
        case 0x363:
            if (param_1 == 0x18) {
                cond = TRUE;
            }
            break;
        default:
            break;
    }

    if (cond) {
        return sub_0801AA58(&gPlayerEntity, param_3, param_1);
    }

    return FALSE;
}

bool32 sub_0801AA58(Entity* this, u32 param_2, u32 param_3) {
    LayerStruct* layer;
    Entity* object;
    u32 temp;

    layer = GetLayerByIndex(this->collisionLayer);
    if (((layer->collisionData[param_2 + gUnk_080B4488[param_3 >> 3]] == 0) ||
         ((u8)(layer->collisionData[param_2 + gUnk_080B4488[param_3 >> 3]] - 0x20) < 0x20))) {

        object = CreateObject(PUSHED_BLOCK, 0, 0);
        if (object != NULL) {
            object->direction = param_3;
            object->x.HALF.HI = ((((param_2)&0x3f) << 4) + 8) + gRoomControls.origin_x;
            object->y.HALF.HI = (((param_2 & 0xfc0) >> 2) + 8) + gRoomControls.origin_y;
            object->collisionLayer = this->collisionLayer;
            gPlayerState.pushedObject = 0xa0;
            gPlayerState.queued_action = PLAYER_PUSH;
            gPlayerState.flags |= 1;
            this->x.HALF.LO = 0;
            this->y.HALF.LO = 0;
            this->direction = param_3;
            return TRUE;
        }
    }
    return FALSE;
}

void sub_0801AB08(u16* specialData, LayerStruct* layer) {
    u16* metatiles;
    u16* mapData;
    u16* mapDataClone;
    u16 index;
    u16 innerIndex;
    u32 tmp2;
    u32 tmp3;
    u32 tmp1;

    if (layer == &gMapBottom) {
        tmp3 = 1;
    } else {
        tmp3 = 2;
    }
    tmp2 = tmp3 << 0xc;
    mapDataClone = layer->mapDataClone;
    mapData = layer->mapData;

    for (index = 0; index < 0x40; index++) {
        for (innerIndex = 0; innerIndex < 0x10; innerIndex++) {
            if (mapData[0] < 0x4000) {
                tmp1 = mapData[0] << 2;
            } else {
                tmp1 = sub_0801AC68(tmp2, mapDataClone[0]);
            }
            metatiles = layer->metatiles + tmp1;
            specialData[0] = metatiles[0];
            specialData[1] = metatiles[1];
            specialData[0x80 + 0] = metatiles[2];
            specialData[0x80 + 1] = metatiles[3];
            specialData += 2;
            if (mapData[1] < 0x4000) {
                tmp1 = mapData[1] << 2;
            } else {
                tmp1 = sub_0801AC68(tmp2 + 1, mapDataClone[1]);
            }
            metatiles = layer->metatiles + tmp1;
            specialData[0] = metatiles[0];
            specialData[1] = metatiles[1];
            specialData[0x80 + 0] = metatiles[2];
            specialData[0x80 + 1] = metatiles[3];
            specialData += 2;
            if (mapData[2] < 0x4000) {
                tmp1 = mapData[2] << 2;
            } else {
                tmp1 = sub_0801AC68(tmp2 + 2, mapDataClone[2]);
            }
            metatiles = layer->metatiles + tmp1;
            specialData[0] = metatiles[0];
            specialData[1] = metatiles[1];
            specialData[0x80 + 0] = metatiles[2];
            specialData[0x80 + 1] = metatiles[3];
            specialData += 2;
            if (mapData[3] < 0x4000) {
                tmp1 = mapData[3] << 2;
            } else {
                tmp1 = sub_0801AC68(tmp2 + 3, mapDataClone[3]);
            }
            metatiles = layer->metatiles + tmp1;
            specialData[0] = metatiles[0];
            specialData[1] = metatiles[1];
            specialData[0x80 + 0] = metatiles[2];
            specialData[0x80 + 1] = metatiles[3];
            specialData += 2;

            mapData += 4;
            mapDataClone += 4;
            tmp2 = (u16)(tmp2 + 4);
        }
        specialData = specialData + 0x80;
    }
}

u32 sub_0801AC68(u32 position, u32 data) {
    u32 index;
    struct_0200B240* ptr;
    u32 end;

    ptr = gUnk_0200B240;
    end = gRoomVars.unk_0e;
    for (index = 0; index < end; ptr++, index++) {
        if (position == ptr->position) {
            return ptr->data << 2;
        }
    }
    return data << 2;
}

extern const Data gUnk_080B44C0[];
extern const Data gUnk_080B44C2[];
extern const u32 gUnk_080B44B8[];

NONMATCH("asm/non_matching/beanstalkSubtask/sub_0801AC98.inc", void sub_0801AC98()) {
    u32 width;
    u32 height;
    u32 indexX;
    u32 indexY;
    const Data* ptr1;
    const Data* ptr2;
    u32 position;

    width = gRoomControls.width >> 4;
    height = gRoomControls.height >> 4;
    position = 0;

    for (indexY = 0; indexY < height; indexY++) {
        for (indexX = 0; indexX < width; indexX++, position++) {
            for (ptr1 = gUnk_080B44C0; ptr1->tileType != 0xffff; ptr1++) {
                if (ptr1->tileType == GetTileType(position, 1)) {
                    if (gUnk_080B44B8[ptr1->unk_a] != 0) {
                        sub_0801AD6C(ptr1, position);
                        break;
                    }
                }
            }

            for (ptr2 = gUnk_080B44C2; ptr2->tileType != 0xffff; ptr2++) {
                if (ptr2->tileType == GetTileType(position, 2)) {
                    if (gUnk_080B44B8[ptr2->unk_a] != 0) {
                        sub_0801AD6C(ptr2, position);
                        break;
                    }
                }
            }
        }
        position = position + (0x40 - width);
    }
}
END_NONMATCH

void sub_0801AD6C(const Data* param_1, u32 tilePosition) {
    Entity* entity;
    Manager* manager;
    s32 tmpX1;
    s32 tmpY1;
    s32 tmpX2;
    s32 tmpY2;

    if (param_1->kind != MANAGER) {
        entity = GetEmptyEntity();
        if (entity != NULL) {
            entity->kind = (u8)param_1->kind;
            entity->id = (u8)param_1->id;
            entity->type = (u8)param_1->type;
            entity->type2 = (u8)param_1->type2;
            tmpX1 = ((u16)tilePosition & 0x3f) * 0x10 + 8;
            entity->x.HALF.HI = tmpX1 + gRoomControls.origin_x;
            tmpY1 = (s16)((tilePosition & 0xfc0) >> 2) + 8;
            entity->y.HALF.HI = tmpY1 + gRoomControls.origin_y;
            entity->collisionLayer = 0;
            ResolveCollisionLayer(entity);
            AppendEntityToList(entity, gUnk_081091E4[entity->kind]);
        }
    } else {
        manager = GetEmptyManager();
        if (manager != NULL) {
            manager->kind = (u8)param_1->kind;
            manager->id = (u8)param_1->id;
            manager->type = (u8)param_1->type;
            manager->type2 = (u8)param_1->type2;
            // TODO are these fields common for all managers or does this usually create managers of certain types?
            tmpX2 = ((u16)tilePosition & 0x3f) * 0x10 + 8;
            *(u16*)(&manager[1].timer + 10) = tmpX2 + gRoomControls.origin_x;
            tmpY2 = (s16)((tilePosition & 0xfc0) >> 2) + 8;
            *(u16*)(&manager[1].timer + 12) = tmpY2 + gRoomControls.origin_y;
            AppendEntityToList((Entity*)manager, gUnk_081091E4[manager->kind]);
        }
    }
}

bool32 sub_0801AE30(void) {
    return TRUE;
}

u32 sub_0801AE34(void) {
    return gRoomControls.scroll_flags >> 1 & 1;
}

void sub_0801AE44(s32 param_1) {
    void (*func)(void);
    gRoomControls.unk_34 = 0;
    sub_0807BFD0();
    if (param_1 != 0) {
        LoadRoomGfx();
    }
    sub_080809D4();
    UpdateIsDiggingCave();
    if (gRoomTransition.field_0x2c[0] != 0) {
        sub_0807C898();
    }
    if (gArea.lightType != 0) {
        MemFill16(0xf, (void*)0x600f000, 0x800);
        sub_0805BB74(-1);
    }
    func = GetCurrentRoomProperty(5);
    if (func != NULL) {
        func();
    }
    if ((gDiggingCaveEntranceTransition.isDiggingCave == 0) && (gArea.onEnter != NULL)) {
        gArea.onEnter(gArea.transitionManager);
    }
    if ((gRoomControls.scroll_flags & 1) == 0) {
        if (gMapBottom.bgSettings != NULL) {
            sub_0801AB08(gMapDataBottomSpecial, &gMapBottom);
        }
        if (gMapTop.bgSettings != NULL) {
            sub_0801AB08(gMapDataTopSpecial, &gMapTop);
        }
    } else {
        sub_0807C4F8();
    }
    UpdateScrollVram();
}

void SetMultipleTiles(const TileData* tileData, u32 basePosition, u32 layer) {
    while (tileData->tile != -1) {
        SetTile((u16)tileData->tile, basePosition + tileData->position, layer);
        tileData++;
    }
}

// Add a new entry at the end of gUnk_0200B240
void sub_0801AF48(u32 data, u32 position, u32 layer) {
    u32 index;
    if ((data < 0x4000) && (gRoomTransition.field_0x2c[3] == 0)) {
        index = gRoomVars.unk_0e;
        if (index < 0x100) {
            gUnk_0200B240[index].data = data;
            gUnk_0200B240[index].position = (layer << 0xc) | position;
            gRoomVars.unk_0e = index + 1;
        }
    }
}

void DeleteLoadedTileEntity(u32 position, s32 layer) {
    u32 count;
    struct_0200B240* ptr;
    u32 positionLayer;
    u32 t;

    layer = layer << 12;
    positionLayer = position | layer;
    ptr = gUnk_0200B240;
    count = gRoomVars.unk_0e;
    t = 0;

    if (t >= count) {
        return;
    }

    if (positionLayer == ptr->position) {
        count--;
        gRoomVars.unk_0e = count;
        ptr[0] = ptr[count];
        return;
    }
    while (positionLayer != ptr->position) {
        ptr++;
        t++;
        if (t >= count) {
            return;
        }
    }
    count--;
    gRoomVars.unk_0e = count;
    ptr = gUnk_0200B240;
    ptr[t] = ptr[count];
}

const struct_080B44D0 gUnk_080B44D0[] = {
    { 0x67, 0x4084 }, { 0x68, 0x4085 }, { 0x69, 0x4086 }, { 0x6a, 0x4087 },
    { 0x6b, 0x4088 }, { 0x27, 0x4083 }, { 0x23, 0x408d }, { 0x0, 0x0 },
};

// used for minish houses, seems to overwrite all tiles with certain collision values on layer 1 for them?
void sub_0801AFE4(void) {
    const struct_080B44D0* ptr;
    u8* collisionData;
    u32 x;
    u32 y;
    u32 width;
    u32 height;

    collisionData = gMapBottom.collisionData;
    width = gRoomControls.width >> 4;
    height = gRoomControls.height >> 4;
    for (y = 0; y < height; y++) {
        for (x = 0; x < width; x++) {
            for (ptr = gUnk_080B44D0; ptr->collision != 0; ptr++) {
                if (ptr->collision == *collisionData) {
                    SetTile(ptr->tileIndex, y * 0x40 + x, 1);
                    break;
                }
            }
            collisionData++;
        }
        collisionData = collisionData + (0x40 - width);
    }
}
