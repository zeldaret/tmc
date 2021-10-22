#include "entity.h"
#include "audio.h"
#include "functions.h"

extern void (*const gUnk_0811B9D8[])(Entity*);

void sub_080704FC(Entity*);

void PlayerItemPacciCane(Entity* this) {
    gUnk_0811B9D8[this->action](this);
}

void sub_080704D4(Entity* this) {
    this->action = 1;
    this->frameIndex = -1;
    sub_080AE008(this, 1, 3);
    SoundReq(SFX_10E);
    sub_080704FC(this);
}

ASM_FUNC("asm/non_matching/playerItemPacciCane/sub_080704FC.inc", void sub_080704FC(Entity* this))
