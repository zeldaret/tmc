
#include "entity.h"
#include "player.h"
#include "functions.h"

extern void (*const gUnk_081271D4[])(Entity*);
extern u8 gUnk_081271DC[];
void sub_080A2E00(Entity* this);

void PlayerItemShield(Entity* this) {
    if (*(int*)&this->field_0x6c != 0) {
        *(int*)&this->field_0x6c += -1;
    }
    gUnk_081271D4[this->action](this);
}

void sub_080A2D98(Entity* this) {
    gPlayerState.item = this;
    this->action = 1;
    this->updatePriority = 6;
    this->frameIndex = 0xff;
    if (this->field_0x68.HALF.LO == 14) {
        this->field_0x70.WORD = 0x27;
        *(u32*)&this->field_0x78 = gUnk_081271DC[1];
        *(u32*)&this->field_0x74 = 0;
        *(u8**)&this->field_0x7c = gUnk_081271DC;
    } else {
        this->field_0x70.WORD = 0;
    }
    this->animationState = gPlayerEntity.animationState & 0xe;
    sub_08079BD8(this);
    LoadSwapGFX(this, 1, 3);
    sub_080A2E00(this);
}

ASM_FUNC("asm/non_matching/playerItemShield/sub_080A2E00.inc", void sub_080A2E00(Entity* this))
