#include "entity.h"
#include "functions.h"
#include "room.h"
#include "save.h"
#include "utils.h"
#include "audio.h"
#include "flags.h"
#include "textbox.h"

Entity* GiveItemWithCutscene(u32, u32, u32);
Entity* sub_080A276C(Entity*, u32, u32);
void sub_08078AF0(Entity*, u32, u32);
Entity* sub_0805E744(void);
void sub_080A7D44(u32, u32);

void CreateItemEntity(u32 a, u32 b, u32 c) {
    Entity* e = GiveItemWithCutscene(a, b, c);
    if (e != NULL) {
        e->parent = sub_080A276C(e, e->type, 0);
    }
}

void sub_080A7C18(u32 a, u32 b, u32 c) {
    Entity* e = GiveItemWithCutscene(a, b, c);
    if (e != NULL) {
        e->parent = &gPlayerEntity;
        sub_08078AF0(e, e->type, 0);
    }
}

Entity* GiveItemWithCutscene(u32 type, u32 type2, u32 delay) {
    Entity* e;
    if (type == 63 && gSave.stats.filler3[0]) {
        type = 87;
        type2 = 0;
    }
    e = sub_0805E744();
    if (e != NULL) {
        e->type = type;
        e->type2 = type2;
        e->actionDelay = delay;
        e->id = 11;
        e->kind = 6;
        AppendEntityToList(e, 6);
    }
    return e;
}

void sub_080A7C7C(void) {
    MemClear(gUnk_02017660, 0x40);
}

void sub_080A7C8C(u32 pos, u32 layer) {
    TileEntity* t = gUnk_02017660;
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
        SoundReq(283);
    }
}

u32 sub_080A7CFC(u32 a1) {
    u32 ta = 0x600;
    u32 tb = 0;
    TileEntity* t = GetCurrentRoomProperty(3);
    if (t != 0) {
        do {
            if (t->_4 == a1) {
                switch (t->type) {
                    case 5:
                        tb = 0;
                        ta = *(u16*)&t->_6;
                        break;
                    case 6:
                        tb = 1;
                        ta = *(u16*)&t->_6;
                        break;
                }
                break;
            }
            t++;
        } while (t->_4 != 0);
    }
    sub_080A7D44(ta, tb);
}

void sub_080A7D44(u32 msg, u32 a2) {
    if (a2)
        sub_08078AA8(msg, 0);
    else
        MessageFromTarget(msg);
}
