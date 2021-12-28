#include "asm.h"
#include "entity.h"
#include "functions.h"
#include "audio.h"

extern void (*const gUnk_0811B98C[])(Entity*);

extern void sub_08017744(Entity*);

void PlayerItem12(Entity* this) {
    gUnk_0811B98C[this->action](this);
}

ASM_FUNC("asm/non_matching/playerItem12/sub_08070100.inc", void sub_08070100(Entity* this))

ASM_FUNC("asm/non_matching/playerItem12/sub_080701F8.inc", void sub_080701F8(Entity* this))

void sub_0807037C(Entity* this) {
    GetNextFrame(this);
    if ((this->frame & 0x80) != 0) {
        DeleteThisEntity();
    }
}

void sub_08070398(Entity* this) {
    GetNextFrame(this);
    sub_0806F69C(this);
    if (GravityUpdate(this, 0x2000) == 0) {
        DeleteThisEntity();
    }
}

ASM_FUNC("asm/non_matching/playerItem12/sub_080703BC.inc", void sub_080703BC(Entity* this))

void sub_08070458(Entity* this) {
    this->action = 2;
    COLLISION_OFF(this);
    this->speed = 0;
    if (this->field_0x7c.WORD != 0) {
        SetTile(this->field_0x7c.WORD, TILE(this->x.HALF.HI, this->y.HALF.HI), this->collisionLayer);
    }
    InitializeAnimation(this, 0x13);
    sub_08017744(this);
    SoundReq(SFX_199);
}
