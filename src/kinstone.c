#include "area.h"
#include "asm.h"
#include "common.h"
#include "flags.h"
#include "item.h"
#include "kinstone.h"
#include "manager.h"
#include "message.h"
#include "player.h"
#include "room.h"
#include "subtask.h"
#include "tiles.h"

extern const struct_gUnk_080B3D20 gUnk_080B3D20[];
extern const EntityData gUnk_080FEC28[];
extern const EntityData gUnk_080FEBE8[];
extern const EntityData gUnk_080FECC8[];
extern const EntityData gUnk_080FEE78[];
extern const EntityData gUnk_080FED58[];
extern const EntityData gUnk_080FED18[];
extern const EntityData gUnk_080FEE38[];
extern const EntityData gUnk_080FEE18[];
extern const EntityData gUnk_080FEE48[];
extern const EntityData gUnk_080FEE58[];
extern const void* gLilypadRails[];

void sub_08018AB4(int);
void sub_08018BB4(u32 worldEventId);
void sub_08018A58(u32 worldEventId);
void sub_08018B50(u32 worldEventId);
void sub_080189EC(u32 worldEventId);
void sub_0801876C(u32 worldEventId, bool32 isKinstoneFused);
void sub_08018738(u32 kinstoneId, u32 worldEventId);
void ShuffleEzloHints(int count, u16* basePtr);
void sub_08018500();
bool32 sub_080185B4(const struct_gUnk_080B3D20* param_1);

const u16 gEzloHintTextBase[] = { TEXT_INDEX(TEXT_EZLO2, 0x0),  TEXT_INDEX(TEXT_EZLO2, 0x12),
                                  TEXT_INDEX(TEXT_EZLO2, 0x2d), TEXT_INDEX(TEXT_EZLO2, 0x48),
                                  TEXT_INDEX(TEXT_EZLO2, 0x57), TEXT_INDEX(TEXT_EZLO2, 0x6f) };

void sub_08018500(void) {
    s32 sVar1;
    u32 i;
    u16* puVar3;
    u16* puVar4;
    struct_area_28* ptr = &gArea.unk28;

    puVar3 = ptr->ezloHintTexts;
    sVar1 = gEzloHintTextBase[ptr->textBaseIndex] + ptr->textIndexOffset * 3;

    for (i = 0; i < 3; i++) {
        *puVar3 = sVar1;
        sVar1++;
        puVar3++;
    }

    sVar1 = ptr->textBaseIndex * 5 + 0xc81;
    for (i = 0, puVar4 = &ptr->ezloHintTexts[3]; i < 5; i++) {
        *puVar3 = sVar1;
        sVar1++;
        puVar3++;
    }
    ShuffleEzloHints(5, puVar4);
    ptr->currentHint = 0;
}

/*
Some sort of ezlo hint? Seem to be the ezlo hints depending on the current progress.
*/

#define CHECK_ITEM 0xfe
#define CHECK_KINSTONE 0xfd

const struct_gUnk_080B3D20 gUnk_080B3D20[] = {
    { LOCAL_BANK_0, EZERO_1ST, 0, 0 },
    { LOCAL_BANK_0, ENTRANCE_0, 0, 1 },
    { LOCAL_BANK_2, KOBITO_MORI_1ST, 0, 2 },
    { LOCAL_BANK_2, M_PRIEST_TALK, 0, 3 },
    { CHECK_ITEM, ITEM_JABBERNUT, 0, 4 },
    { LOCAL_BANK_2, M_ELDER_TALK1ST, 0, 5 },

    { LOCAL_BANK_0, LV1_CLEAR, 1, 0 },
    { LOCAL_BANK_2, M_ELDER_TALK2ND, 1, 1 },
    { CHECK_ITEM, ITEM_KINSTONE_BAG, 1, 2 },
    { CHECK_ITEM, ITEM_SKILL_SPIN_ATTACK, 1, 3 },
    { LOCAL_BANK_1, YAMA_00_01, 1, 4 },
    { LOCAL_BANK_0, WATERBEAN_PUT, 1, 5 },
    { LOCAL_BANK_1, YAMA_00_00, 1, 6 },
    { LOCAL_BANK_2, KOBITO_YAMA_ENTER, 1, 7 },
    { LOCAL_BANK_2, OYAKATA_DEMO, 1, 8 },

    { LOCAL_BANK_0, LV2_CLEAR, 2, 0 },
    { CHECK_ITEM, ITEM_GREEN_SWORD, 2, 1 },
    { LOCAL_BANK_3, SEIIKI_ENTER, 2, 2 },
    { LOCAL_BANK_3, SEIIKI_BUNSHIN, 2, 3 },
    { LOCAL_BANK_0, DASHBOOTS, 2, 4 },
    { LOCAL_BANK_2, KHOUSE52_KINOKO, 2, 5 },
    { CHECK_ITEM, ITEM_QST_MUSHROOM, 2, 6 },
    { CHECK_ITEM, ITEM_PEGASUS_BOOTS, 2, 7 },
    { LOCAL_BANK_1, LOST_00_ENTER, 2, 8 },

    { CHECK_ITEM, ITEM_OCARINA, 3, 0 },
    { LOCAL_BANK_0, MIZUKAKI_START, 3, 1 },
    { LOCAL_BANK_0, MIZUKAKI_NECHAN, 3, 2 },
    { LOCAL_BANK_2, MIZUKAKI_BOOK_ALLBACK, 3, 3 },
    { CHECK_ITEM, ITEM_FLIPPERS, 3, 4 },

    { LOCAL_BANK_1, LV4_CLEAR_MES, 4, 0 },
    { CHECK_ITEM, ITEM_BLUE_SWORD, 4, 1 },
    { LOCAL_BANK_3, LV4_HAKA_08_CAP_0, 4, 2 },
    { LOCAL_BANK_3, OUBO_KAKERA, 4, 3 },
    { CHECK_KINSTONE, KINSTONE_SOURCE_FLOW, 4, 4 },
    { LOCAL_BANK_0, TATSUMAKI, 4, 5 },
    { LOCAL_BANK_2, SORA_YAKATA_ENTER, 4, 6 },
    { LOCAL_BANK_2, SORA_CHIEF_TALK, 4, 7 },

    { LOCAL_BANK_0, LV5_CLEAR, 5, 0 },
    { CHECK_ITEM, ITEM_FOURSWORD, 5, 1 },
    { LOCAL_BANK_10, LV6_1d_KEYGET, 5, 2 },
    { LOCAL_BANK_10, LV6_KANE_START, 5, 3 },
    { LOCAL_BANK_10, LV6_GUFUU2_DEAD, 5, 4 },
    { LOCAL_BANK_10, LV6_ZELDA_DISCURSE, 5, 5 },

    { 0xff, 0xff, 0xff, 0xff },
};

void sub_0801855C(void) {
    u32 bVar3;
    struct_area_28* ptr;
    // TODO: Figure out what is up with the pointer assignment
    const struct_gUnk_080B3D20* pcVar2 = (const struct_gUnk_080B3D20*)&gArea.unk28;

    MemClear((void*)pcVar2, sizeof(struct_area_28));
    ptr = (struct_area_28*)pcVar2;
    // Find the latest hint that is true.
    for (pcVar2 = gUnk_080B3D20, bVar3 = 0; pcVar2->unk0 != 0xff; pcVar2++) {
        if (sub_080185B4(pcVar2)) {
            bVar3 = ptr->unk2b;
        }
        ptr->unk2b++;
    }
    ptr->unk2b = bVar3;
    pcVar2 = &gUnk_080B3D20[ptr->unk2b];
    ptr->textBaseIndex = pcVar2->unk2;
    ptr->textIndexOffset = pcVar2->unk3;
    ptr->unk2b = bVar3 + 1;
    sub_08018500();
}

bool32 sub_080185B4(const struct_gUnk_080B3D20* param_1) {
    if (param_1->unk0 == 0xff)
        return FALSE;

    if (param_1->unk0 == CHECK_ITEM) {
        return GetInventoryValue(param_1->unk1) != 0;
    }

    if (param_1->unk0 == CHECK_KINSTONE) {
        return CheckKinstoneFused(param_1->unk1);
    }
    return CheckLocalFlagByBank(gLocalFlagBanks[param_1->unk0], param_1->unk1);
}

void sub_080185F8(void) {
    struct_area_28* ptr2 = &gArea.unk28;
    const struct_gUnk_080B3D20* ptr = &gUnk_080B3D20[ptr2->unk2b];

    if (sub_080185B4(ptr)) {
        ptr2->textBaseIndex = ptr->unk2;
        ptr2->textIndexOffset = ptr->unk3;
        ptr2->unk2b++;
        sub_08018500();
    }
}

void GenerateAreaHint(void) {
    u16 tmp;
    struct_area_28* ptr;

    gPlayerState.queued_action = PLAYER_TALKEZLO;
    gRoomTransition.hint_height = 0;
    ptr = &gArea.unk28;
    if (ptr->textBaseIndex == 0xff) {
        gRoomTransition.hint_idx = ptr->ezloHintTexts[0];
    } else {
        gRoomTransition.hint_idx = ptr->ezloHintTexts[ptr->currentHint];
        ptr->currentHint++;
        if (ptr->currentHint > 7) {
            ptr->currentHint = 0;
            ShuffleEzloHints(8, ptr->ezloHintTexts);
            if (ptr->ezloHintTexts[0] == gRoomTransition.hint_idx) {
                tmp = ptr->ezloHintTexts[0];
                ptr->ezloHintTexts[0] = ptr->ezloHintTexts[7];
                ptr->ezloHintTexts[7] = tmp;
            }
        }
    }
}

void ShuffleEzloHints(int count, u16* basePtr) {
    u32 uVar1;
    s32 uVar4;
    s32 uVar2;
    s32 iVar3;
    u16* puVar4;
    u16* puVar5;

    uVar4 = count - 1;
    if (uVar4 != 0) {
        puVar5 = (u16*)(uVar4 * 2 + (int)basePtr);
        do {
            uVar2 = Random();
            iVar3 = uVar2 % (uVar4 + 1);
            uVar1 = *puVar5;
            puVar4 = (u16*)(iVar3 * 2 + (int)basePtr);
            *puVar5 = *puVar4;
            *puVar4 = uVar1;
            puVar5--;
            uVar4--;
        } while (uVar4 != 0);
    }
}

void SetNextAreaHint(u32 textId) {
    gArea.unk28.textBaseIndex = 0xff;
    gArea.unk28.ezloHintTexts[0] = textId;
}

void sub_080186D4(void) {
    if (gArea.unk28.textBaseIndex == 0xff) {
        sub_0801855C();
    }
}

void sub_080186EC(u32 param_1) {
    const KinstoneWorldEvent* psVar1;
    u32 i;

    for (i = 0, psVar1 = gKinstoneWorldEvents; i <= 100; psVar1++, i++) {
        if (psVar1->subtask == SUBTASK_WORLDEVENT) {
            sub_08018738(i, psVar1->worldEventId);
        }
    }
}

void sub_08018710(u32 previousworldEventId) {
    const KinstoneWorldEvent* psVar1;
    u32 i;

    for (i = 0, psVar1 = gKinstoneWorldEvents; i <= 100; psVar1++, i++) {
        if (psVar1->subtask == SUBTASK_WORLDEVENT && previousworldEventId != psVar1->worldEventId) {
            sub_08018738(i, psVar1->worldEventId);
        }
    }
}

void sub_08018738(u32 kinstoneId, u32 worldEventId) {
    const WorldEvent* ptr = &gWorldEvents[worldEventId];

    if (ptr->area == gRoomControls.area && ptr->room == gRoomControls.room) {
        sub_0801876C(worldEventId, CheckKinstoneFused(kinstoneId));
    }
}

void sub_0801876C(u32 worldEventId, bool32 isKinstoneFused) {
    Entity* roomEnt;
    Entity* ent;
    u32 uVar3;
    u32 tmp;
    u8* puVar4;
    u32 uVar5;
    const WorldEvent* ptr;

    ptr = &gWorldEvents[worldEventId];
    switch (ptr->type) {
        case WORLD_EVENT_TYPE_6:
            if (isKinstoneFused == 0) {
                sub_08018AB4((ptr->x >> 4 & 0x3f) | (ptr->y >> 4 & 0x3f) << 6);
            }
            break;
        case WORLD_EVENT_TYPE_0:
            break;
        case WORLD_EVENT_TYPE_2:
            if (isKinstoneFused != 0) {
                sub_08018BB4(worldEventId);
            }
            break;
        case WORLD_EVENT_TYPE_1:
            if (isKinstoneFused == 0) {
                return;
            }
            if (CheckGlobalFlag(ptr->flag)) {
                return;
            }
            LoadRoomEntity(gUnk_080FEC28 + ptr->entity_idx);
            break;
        case WORLD_EVENT_TYPE_3:
            if (isKinstoneFused == 0) {
                return;
            }
            if (GetInventoryValue(ptr->flag)) {
                return;
            }
            LoadRoomEntity(gUnk_080FEBE8 + ptr->entity_idx);
            break;
        case WORLD_EVENT_TYPE_4:
            if (isKinstoneFused == 0) {
                sub_08018A58(worldEventId);
            }
            break;
        case WORLD_EVENT_TYPE_5:
            if (isKinstoneFused != 0) {
                sub_08018B50(worldEventId);
            }
            break;

        case WORLD_EVENT_TYPE_7:
            if (isKinstoneFused != 0) {
                return;
            }
            if (ptr->entity_idx != 0x80) {
                LoadRoomEntity(gUnk_080FECC8 + ptr->entity_idx);
            } else {
                sub_080189EC(worldEventId);
            }
            break;
        case WORLD_EVENT_TYPE_25:
            roomEnt = LoadRoomEntity(&gUnk_080FED18[ptr->entity_idx]);
            if (roomEnt != 0) {
                roomEnt->type = isKinstoneFused ? 2 : 0;
            }
            break;
        case WORLD_EVENT_TYPE_8:
            if (isKinstoneFused == 0) {
                return;
            }
            SetTileType(TILE_TYPE_360, (ptr->x >> 4 & 0x3f) | (ptr->y >> 4 & 0x3f) << 6, LAYER_BOTTOM);
            break;
        case WORLD_EVENT_TYPE_11:
            if (isKinstoneFused != 0) {
                // lilypad rails
                LoadRoomEntity(&gUnk_080FED58[ptr->entity_idx]);
                gRoomVars.entityRails[ptr->entity_idx] = (void*)gLilypadRails[ptr->entity_idx];
            }
            break;
        case WORLD_EVENT_TYPE_9:
            if (isKinstoneFused == 0) {
                return;
            }
            ent = LoadRoomEntity(&gUnk_080FEE78[ptr->entity_idx]);
            if (ent != 0) {
                *(u16*)&ent->collisionLayer = ptr->x + gRoomControls.origin_x;
                *(u16*)&ent->gustJarState = ptr->y + gRoomControls.origin_y;
            }
            if (ptr->entity_idx == 0) {
                SetTileType(TILE_TYPE_141, (ptr->x >> 4 & 0x3f) | (ptr->y >> 4 & 0x3f) << 6, LAYER_BOTTOM);
            } else {
                uVar5 = (ptr->x >> 4 & 0x3f) | (ptr->y >> 4 & 0x3f) << 6;
                SetTileType(TILE_TYPE_140, uVar5 - 1, LAYER_BOTTOM);
                uVar3 = TILE_TYPE_142;
                SetTileType(uVar3, uVar5, LAYER_BOTTOM);
            }
            break;
        case WORLD_EVENT_TYPE_24:
            if (isKinstoneFused != 0) {
                LoadRoomEntityList(gUnk_080FEE18);
            }
            break;
        case WORLD_EVENT_TYPE_15:
            if (isKinstoneFused != 0) {
                LoadRoomEntity(gUnk_080FEE58);
            } else {
                LoadRoomEntity(gUnk_080FEE48);
            }
            break;
        case WORLD_EVENT_TYPE_17:
            if (isKinstoneFused != 0) {
                SetLocalFlagByBank(FLAG_BANK_1, SOUGEN_05_BOMB_00);
                LoadRoomEntityList(gUnk_080FEE38);
            }
            break;
        case WORLD_EVENT_TYPE_26:
        case WORLD_EVENT_TYPE_27:
        case WORLD_EVENT_TYPE_28:
            break;
    }
}

void sub_080189EC(u32 worldEventId) {
    u32 i;
    int iVar1;
    int tilePos;
    const WorldEvent* ptr;

    ptr = &gWorldEvents[worldEventId];

    tilePos = (ptr->x >> 4) & 0x3f;
    tilePos |= ((ptr->y >> 4) & 0x3f) << 6;
    tilePos -= TILE_POS(2, 1);

    for (i = 0; i < 4; i++) {
        SetTileType(i + TILE_TYPE_479, tilePos + i, LAYER_TOP);
    }

    tilePos += TILE_POS(0, 1);
    for (i = 0; i < 4; i++) {
        SetTileType(i + TILE_TYPE_483, tilePos + i, LAYER_TOP);
        SetTileType(i + TILE_TYPE_475, tilePos + i, LAYER_BOTTOM);
    }
}

void sub_08018A58(u32 worldEventId) {
    u32 i;
    int tileType;
    u32 j;
    int tilePos;
    const WorldEvent* ptr;

    ptr = &gWorldEvents[worldEventId];

    tilePos = (ptr->x >> 4) & 0x3f;
    tilePos |= ((ptr->y >> 4) & 0x3f) << 6;
    tilePos -= TILE_POS(3, 1);
    tileType = TILE_TYPE_562;

    for (i = 0; i < 4; tilePos += TILE_POS(0, 1), i++) {
        for (j = 0; j < 7; j++) {
            SetTileType(tileType++, tilePos + j, LAYER_BOTTOM);
        }
    }
}

void sub_08018AB4(int tilePos) {
    u32 i;
    int iVar2;
    u32 j;
    int iVar6;

    iVar2 = TILE_TYPE_488;
    iVar6 = TILE_TYPE_500;

    for (i = 0; i < 3; i++) {
        j = 0;
        for (; j < 4; j++) {
            SetTileType(iVar2++, tilePos + j, LAYER_BOTTOM);
            SetTileType(iVar6++, tilePos + TILE_POS(0, -1) + j, LAYER_TOP);
        }
        tilePos += TILE_POS(0, 1);
    }
}

void sub_08018B10(int tilePos) {
    int iVar1;
    u32 index;
    int iVar3;
    int iVar4;

    iVar4 = 0x1f0;
    iVar3 = 0x1fc;
    index = 0;
    iVar1 = tilePos - TILE_POS(0, 1);
    for (; index < 4; iVar1++, index++) {
        SetTileType(iVar4++, tilePos + index, LAYER_BOTTOM);
        SetTileType(iVar3++, iVar1, LAYER_TOP);
    }
}

void sub_08018B50(u32 worldEventId) {
    u32 i;
    int tileType;
    u32 j;
    int tilePos;
    const WorldEvent* ptr;

    ptr = &gWorldEvents[worldEventId];
    if ((ptr->entity_idx & 0x80) == 0) {
        tileType = TILE_TYPE_512;
    } else {
        tileType = TILE_TYPE_537;
    }

    tilePos = (ptr->x >> 4) & 0x3f;
    tilePos |= ((ptr->y >> 4) & 0x3f) << 6;
    tilePos -= TILE_POS(2, 2);

    for (i = 0; i < 5; tilePos += 0x40, i++) {
        for (j = 0; j < 5; j++) {
            SetTileType(tileType++, tilePos + j, LAYER_BOTTOM);
        }
    }
}

// TODO world event that loads tile entity
void sub_08018BB4(u32 worldEventId) {
    u32 layer;
    TileEntity tileEntity;
    const WorldEvent* ptr;
    u32 position;

    MemCopy(gUnk_080FEAC8 + worldEventId, &tileEntity, sizeof(TileEntity));
    ptr = &gWorldEvents[worldEventId];
    tileEntity.tilePos = (ptr->x >> 4 & 0x3f) | (((ptr->y) >> 4 & 0x3f) << 6);
    LoadSmallChestTile2(&tileEntity);
    if (CheckLocalFlag(tileEntity.localFlag) == 0) {
        position = tileEntity.tilePos;
        if ((tileEntity._6 & 1) == 0) {
            layer = 1;
        } else {
            layer = 2;
        }
        SetTileType(TILE_TYPE_115, position, layer);
    }
}

void CreateMinishEntrance(u32 tilePos) {
    u32 x, y;
    u32 tileID = 0x185;

    for (y = 0; y <= 3; y++) {
        for (x = 0; x <= 4; x++) {
            SetTileType(tileID++, tilePos + x, LAYER_BOTTOM);
        }
        tilePos += 0x40;
    }
}

void sub_08018C58(u32 tilePos) {
    u32 i;

    for (i = 0; i < 6; i += 2, tilePos += 0x40) {
        SetTileType(TILE_TYPE_608 + i, tilePos, LAYER_BOTTOM);
        SetTileType(TILE_TYPE_609 + i, tilePos + 1, LAYER_BOTTOM);
    }
}
