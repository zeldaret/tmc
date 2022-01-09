#include "entity.h"
#include "player.h"
#include "functions.h"

extern void (*const gUnk_080FEEA8[])(Entity*);

extern bool32 AllocMutableHitbox(Entity*);
void sub_08054AC8(Entity*);

void PlayerItemLantern(Entity* this) {
    gUnk_080FEEA8[this->action](this);
    this->bitfield = 0;
}

void sub_08054A60(Entity* this) {
    this->flags |= 0xa0;
    this->action = 0x01;
    this->actionDelay = 0x04;
    this->frameIndex = -1;
    // TODO regalloc and mov 6 too early
    this->updatePriority = 6;
    this->field_0x3c = 7;
    this->flags2 = -0x80;
    this->animationState = gPlayerEntity.animationState & 0xe;
    if (AllocMutableHitbox(this) == FALSE) {
        DeleteThisEntity();
    }
    sub_0801766C(this);
    LoadSwapGFX(this, 1, 3);
    sub_08054AC8(this);
}

ASM_FUNC("asm/non_matching/playerItemLantern/sub_08054AC8.inc", void sub_08054AC8(Entity* this))
