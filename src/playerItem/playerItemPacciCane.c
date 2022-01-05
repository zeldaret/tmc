#include "entity.h"
#include "sound.h"
#include "functions.h"
#include "common.h"
#include "message.h"
#include "save.h"

extern void (*const gUnk_0811B9D8[])(Entity*);

void sub_080704FC(Entity*);

extern u8 gUnk_02034490[0x18];

void PlayerItemPacciCane(Entity* this) {
    gUnk_0811B9D8[this->action](this);
}

void sub_080704D4(Entity* this) {
    this->action = 1;
    this->frameIndex = -1;
    LoadSwapGFX(this, 1, 3);
    SoundReq(SFX_10E);
    sub_080704FC(this);
}

ASM_FUNC("asm/non_matching/playerItemPacciCane/sub_080704FC.inc", void sub_080704FC(Entity* this))

void ClearMenuSavestate(void) {
    MemClear(gUnk_02034490, sizeof(gUnk_02034490));
}
