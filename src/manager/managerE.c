#include "entity.h"
#include "manager.h"
#include "flags.h"
#include "room.h"
#include "sound.h"
#include "functions.h"

void ManagerE_Main(ManagerE* this) {
    if (!this->manager.action) {
        this->manager.action = 1;
        if (CheckFlags(this->unk_3e)) {
            DeleteManager(&this->manager);
            return;
        }
    }
    if (!CheckFlags(this->unk_3e))
        return;
    if (this->manager.unk_0b != 0) {
        this->manager.unk_0b = 0;
        SetPlayerControl(0xff);
        sub_08078B48();
    }
    if (this->unk_3a == 0) {
        if (this->unk_38 != 0) {
            SoundReq(this->unk_38);
        }
        LoadRoomEntityList(GetCurrentRoomProperty(this->manager.unk_0a));
        DeleteThisEntity();
    } else {
        this->unk_3a -= 1;
    }
}
