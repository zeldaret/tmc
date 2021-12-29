#include "entity.h"
#include "sound.h"
#include "functions.h"
#include "utils.h"
#include "message.h"
#include "save.h"

extern void (*const gUnk_0811B9D8[])(Entity*);

void sub_080704FC(Entity*);
extern void sub_080A4D88(void);

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

void sub_0807059C() {
    MemClear(gUnk_02034490, sizeof(gUnk_02034490));
}

NONMATCH("asm/non_matching/playerItemPacciCane/sub_080705AC.inc", u32 sub_080705AC(void)) {
    if (!((gInput.newKeys & 8) == 0 || gFadeControl.active || gUnk_02034490[0] || (gMessage.doTextBox & 0x7F) != 0 ||
          !gSave.stats.health || !gSave.fillerD0[34] || gPlayerState.controlMode || gPriorityHandler.priority_timer)) {
        u32 tmp = gPlayerState.framestate ? gPlayerState.framestate : gPlayerState.framestate_last;
        switch (tmp) {
            case 18:
            case 19:
            case 21:
            case 22:
            case 28:
                return 0;
        }
        sub_080A4D88();
        return 1;
    }
    return 0;
}
END_NONMATCH
