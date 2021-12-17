#include "global.h"
#include "utils.h"
#include "textbox.h"
#include "save.h"
#include "audio.h"
#include "flags.h"
#include "functions.h"
#include "object.h"

extern Entity* GiveItemWithCutscene();
extern Entity* sub_080A276C(Entity*, u32, u32);
extern void sub_08078AF0(Entity*, u32, u32);
extern Entity* sub_0805E744(void);

extern TileEntityData gSmallChests[8];

void sub_080A7D44(u32, bool32);

void CreateItemEntity(u32 type, u32 type2, u32 actionDelay) {
    Entity* entity = GiveItemWithCutscene(type, type2, actionDelay);
    if (entity != NULL) {
        Entity* new_entity = sub_080A276C(entity, entity->type, 0);
        entity->parent = new_entity;
    }
}

void sub_080A7C18(u32 type, u32 type2, u32 actionDelay) {
    Entity* entity = GiveItemWithCutscene(type, type2, actionDelay);
    if (entity != NULL) {
        entity->parent = &gPlayerEntity;
        sub_08078AF0(entity, entity->type, 0);
    }
}

Entity* GiveItemWithCutscene(s32 type, u32 type2, u32 actionDelay) {
    Entity* entity;

    if ((type == 0x3f) && (gSave.stats.filler3[0] != 0)) {
        type = 0x57;
        type2 = 0;
    }
    entity = sub_0805E744();
    if (entity != NULL) {
        entity->type = type;
        entity->type2 = type2;
        entity->actionDelay = actionDelay;
        entity->id = OBJECT_B;
        entity->kind = OBJECT;
        AppendEntityToList(entity, 6);
    }
    return entity;
}

void ClearSmallChests(void) {
    MemClear(&gSmallChests, sizeof(gSmallChests));
}

void sub_080A7C8C(u32 tilePos, u32 param_2) {
    TileEntityData* data = gSmallChests;
    bool32 found = FALSE;
    u32 index;
    for (index = 0; index < 8; data++) {
        if (data->tilePos == tilePos) {
            found = TRUE;
            break;
        }
        index++;
    }
    if (param_2 >> 1 == ((u32)(*((u8*)&data->unk_0x6) << 0x1f) >> 0x1f)) {
        if (found) {
            SetLocalFlag(data->unk_0x1);
            CreateItemEntity(data->unk_0x2, data->unk_0x3, 0);
        } else {
            CreateItemEntity(0x60, 0, 0);
        }
        sub_0807B7D8(0x74, tilePos, param_2);
        RequestPriorityDuration(NULL, 0x78);
        SoundReq(SFX_11B);
    }
}

void sub_080A7CFC(u32 tilePos) {
    u32 messageId = 0x600;
    bool32 isTileEntity6 = FALSE;
    TileEntityData* data = (TileEntityData*)GetCurrentRoomProperty(3);
    if (data != NULL) {
        do {
            if (data->tilePos == tilePos) {
                switch (data->type) {
                    case SIGN:
                        isTileEntity6 = FALSE;
                        messageId = data->unk_0x6; // message id
                        break;
                    case TILE_ENTITY_6:
                        isTileEntity6 = TRUE;
                        messageId = data->unk_0x6;
                        break;
                }
                break;
            }
            data += 1;
        } while (data->tilePos != 0);
    }
    sub_080A7D44(messageId, isTileEntity6);
}

void sub_080A7D44(u32 messageId, bool32 isTileEntity6) {
    if (isTileEntity6) {
        // TILE_ENTITY_6
        sub_08078AA8(messageId, 0);
    } else {
        // Read sign text
        MessageFromTarget(messageId);
    }
}
