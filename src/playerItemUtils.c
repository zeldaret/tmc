#include "entity.h"
#include "functions.h"
#include "save.h"
#include "common.h"
#include "sound.h"
#include "flags.h"
#include "message.h"
#include "object.h"
#include "player.h"

static Entity* GiveItemWithCutscene(u32, u32, u32);
static void InitTileMessage(u32, u32);

Entity* sub_080A276C(Entity*, u32, u32);
void SetPlayerItemGetState(Entity*, u32, u32);

void CreateItemEntity(u32 type, u32 type2, u32 delay) {
    Entity* e = GiveItemWithCutscene(type, type2, delay);
    if (e != NULL) {
        e->parent = sub_080A276C(e, e->type, 0);
    }
}

void InitItemGetSequence(u32 type, u32 type2, u32 delay) {
    Entity* e = GiveItemWithCutscene(type, type2, delay);
    if (e != NULL) {
        e->parent = &gPlayerEntity;
        SetPlayerItemGetState(e, e->type, 0);
    }
}

static Entity* GiveItemWithCutscene(u32 type, u32 type2, u32 delay) {
    Entity* e;
    if (type == 63 && gSave.stats.hasAllFigurines) {
        type = 87;
        type2 = 0;
    }
    e = CreateItemGetEntity();
    if (e != NULL) {
        e->type = type;
        e->type2 = type2;
        e->timer = delay;
        e->id = OBJECT_B;
        e->kind = OBJECT;
        AppendEntityToList(e, 6);
    }
    return e;
}

void ClearSmallChests(void) {
    MemClear(gSmallChests, sizeof(gSmallChests));
}

void sub_080A7C8C(u32 pos, u32 layer) {
    TileEntity* t = gSmallChests;
    u32 found = 0;
    u32 i;
    for (i = 0; i < 8; ++i, ++t) {
        if (*(u16*)&t->_4 == pos) {
            found = 1;
            break;
        }
    }
    if ((layer >> 1) == ((u32)(t->_6 << 31) >> 31)) {
        if (found) {
            SetLocalFlag(t->_1);
            CreateItemEntity(t->_2, t->_3, 0);
        } else {
            CreateItemEntity(0x60, 0, 0);
        }
        sub_0807B7D8(0x74, pos, layer);
        RequestPriorityDuration(NULL, 120);
        SoundReq(SFX_CHEST_OPEN);
    }
}

u32 sub_080A7CFC(u32 a1) {
    u32 msg = 0x600;
    bool32 hint = FALSE;

    TileEntity* t = GetCurrentRoomProperty(3);
    if (t != 0) {
        do {
            if (t->_4 == a1) {
                switch (t->type) {
                    case SIGN:
                        hint = FALSE;
                        msg = *(u16*)&t->_6;
                        break;
                    case TILE_EZLO_HINT:
                        hint = TRUE;
                        msg = *(u16*)&t->_6;
                        break;
                }
                break;
            }
            t++;
        } while (t->_4 != 0);
    }
    InitTileMessage(msg, hint);
}

static void InitTileMessage(u32 msg, u32 hint) {
    if (hint) {
        CreateEzloHint(msg, 0);
    } else {
        // Read sign text
        MessageFromTarget(msg);
    }
}
