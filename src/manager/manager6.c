#include "global.h"
#include "entity.h"
#include "player.h"
#include "manager.h"

extern void* GetCurrentRoomProperty(u8);
extern u32 CheckPlayerInRegion(u16, u16, u8, u8);
extern void DoExitTransition(void*);
extern void DeleteManager(Entity*);

void sub_08057CB4(Manager6* this) {
    u32 tmp;
    Manager6WarpData* i;
    if (this->manager.action == 0) {
        this->manager.action = 1;
        this->warpList = GetCurrentRoomProperty(this->manager.unk_0a);
        if (!this->warpList) {
            DeleteManager((Entity*)this);
            return;
        }
    }
    if (this->manager.unk_0e == 0 || gPlayerState.field_0x10[2] == 0x1e) {
        for (i = this->warpList; i->posX != 0xFFFF; i++) {
            tmp = (i->unk_07.all & 0x3);
            if (((tmp & (gPlayerEntity.collisionLayer)) != 0) &&
                (((gPlayerState.flags.all & 0x80) != 0) || ((i->unk_07.b.unk2) != 0)) &&
                (CheckPlayerInRegion(i->posX, i->posY, i->width, i->height) != 0) &&
                (gPlayerEntity.height.HALF.HI == 0)) {
                DoExitTransition(GetCurrentRoomProperty(i->unk_06));
            }
        }
    }
}
