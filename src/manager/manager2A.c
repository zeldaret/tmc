#include "manager.h"
#include "room.h"
#include "flags.h"
#include "functions.h"

typedef struct {
    u8 field_0x0;
    u8 tileLayer;
    u16 flag;
    u16 tilePos;
    u16 tileType; // If the tile type at tilePos, tileLayer is tileType, set the local flag.
} Manager2A_unk; // TODO result of GetCurrentRoomProperty(3)?

void sub_0805CFF0(Manager2A_unk*);

void Manager2A_Main(Manager* manager) {
    Manager2A_unk* data;

    if (manager->action == 0) {
        manager->action += 1;
    }
    data = (Manager2A_unk*)GetCurrentRoomProperty(3);
    if (data != NULL) {
        for (; data->field_0x0 != 0; data = data + 1) {
            if (data->field_0x0 == 10) {
                sub_0805CFF0(data);
            }
        }
    }
}

void sub_0805CFF0(Manager2A_unk* param_1) {
    if (CheckLocalFlag(param_1->flag) == 0) {
        u32 tileType = GetTileType(param_1->tilePos, param_1->tileLayer);
        if (param_1->tileType == tileType) {
            SetLocalFlag(param_1->flag);
        }
    }
}
