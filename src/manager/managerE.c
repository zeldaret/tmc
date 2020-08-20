#include "global.h"
#include "entity.h"
#include "manager.h"
#include "flags.h"
#include "room.h"

extern Entity* GetCurrentRoomProperty(u8);
extern void LoadRoomEntityList(Entity*);
extern void DeleteThisEntity(void);
extern void DeleteManager(Manager*);
extern void sub_08078A90(u32);
extern void sub_08078B48(void);
extern void PlaySFX(u32);

void sub_08058E60(Manager* this) {
    if (!this->unk_0c) {
        this->unk_0c = 1;
        if (CheckFlags(this->unk_3e)) {
            DeleteManager(this);
            return;
        }
    }
    if (!CheckFlags(this->unk_3e))
        return;
    if (this->unk_0b != 0) {
        this->unk_0b = 0;
        sub_08078A90(0xff);
        sub_08078B48();
    }
    if (this->unk_3a.SHWORD == 0){
        if (this->unk_38.SHWORD != 0) {
            PlaySFX(this->unk_38.SHWORD);
        }
        LoadRoomEntityList(GetCurrentRoomProperty(this->unk_0a));
        DeleteThisEntity();
    } else {
        this->unk_3a.SHWORD -= 1;
    }
}
