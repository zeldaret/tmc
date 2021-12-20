#include "entity.h"
#include "audio.h"
#include "functions.h"

extern void (*const gUnk_080B77FC[])(Entity*);

void sub_0801B804(Entity*);
void sub_0801B864(Entity*);

extern s8 gUnk_080B782E[];
extern void sub_08008782(Entity*, u32, s32, s32);

void PlayerItem3(Entity* this) {
    gUnk_080B77FC[this->action](this);
    if (this->animIndex != 0xb) {
        if (this->animationState == 6) {
            this->field_0x86.HWORD += 0x2000;
        } else {
            this->field_0x86.HWORD -= 0x2000;
        }
        sub_0805EC9C(this, 0x100, 0x100, this->field_0x86.HWORD);
    }

    this->field_0xf--;
    if ((this->field_0xf & 0xf) == 0) {
        EnqueueSFX(0xfb);
    }
}

#ifdef EU
ASM_FUNC("asm/non_matching/eu/sub_0801B4C8.inc", void sub_0801B4C8(Entity* this))
#else
ASM_FUNC("asm/non_matching/playerItem3/sub_0801B4C8.inc", void sub_0801B4C8(Entity* this))
#endif

ASM_FUNC("asm/non_matching/playerItem3/sub_0801B584.inc", void sub_0801B584(Entity* this))

ASM_FUNC("asm/non_matching/playerItem3/sub_0801B680.inc", void sub_0801B680(Entity* this))

void sub_0801B7A8(Entity* this) {
    sub_0801B804(this);
    if (this->actionDelay != 0) {
        this->actionDelay -= 1;
    } else {
        sub_0801B864(this);
        if (this->speed < 0x280) {
            this->speed += 8;
        }
        this->direction = GetFacingDirection(this, &gPlayerEntity);
        sub_0806F69C(this);
        if (sub_0800419C(this, &gPlayerEntity, 2, 2) != 0) {
            DeleteThisEntity();
        }
    }
}

ASM_FUNC("asm/non_matching/playerItem3/sub_0801B804.inc", void sub_0801B804(Entity* this))

void sub_0801B864(Entity* this) {
    s32 iVar1;

    if (this->type2 == 0) {
        sub_0800451C(this);
    }
    iVar1 = (this->direction >> 2) * 2;
    sub_08008782(this, 2, gUnk_080B782E[iVar1], gUnk_080B782E[iVar1 + 1]);
}
