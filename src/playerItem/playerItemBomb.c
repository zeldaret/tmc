#include "entity.h"
#include "player.h"
#include "functions.h"

extern void (*const gUnk_080B77C8[])(Entity*);
extern void sub_08078954(Entity*);
void sub_0801B418(Entity*);
void sub_0801B3A4(Entity*);

extern void (*const gUnk_080B77D8[])(Entity*);

extern void sub_08079BD8(Entity*);

extern void sub_08008796(Entity*, u32, u32, u32);

NONMATCH("asm/non_matching/playerItemBomb/PlayerItemBomb.inc", void PlayerItemBomb(Entity* this)) {
    u8 uVar1;

    gUnk_080B77C8[this->action](this);
    GetNextFrame(this);
    // TODO regalloc
    uVar1 = this->action;
    if (uVar1 != 0x03) {
        if (this->actionDelay != 0) {
            if (this->field_0x68.HALF.LO == 7) {
                this->actionDelay -= 1;
            }
            if (this->actionDelay == 0) {
                this->field_0xf = 0x50;
                *(u32*)&this->field_0x68 = 0;
                this->spriteRendering.b0 = 3;
                sub_0805EC9C(this, 0x100, 0x100, 0);
            }
        } else {
            if (this->field_0xf != 0) {
                if (this->field_0xf-- == 0x01) {
                    if ((uVar1 == 0x02) && (this->subAction == 1)) {
                        gPlayerState.heldObject = 0;
                    }
                    this->action = 0x03;
                    this->spritePriority.b1 = 2;
                    this->actionDelay = 0x0f;
                    this->spriteSettings.b.draw = 0;
                    sub_0805EC60(this);
                    sub_08078954(this);
                    CreateObjectWithParent(this, 0x20, 0, 0);
                    sub_0801B418(this);
                } else {
                    sub_0801B3A4(this);
                }
            }
        }
    }
}
END_NONMATCH

ASM_FUNC("asm/non_matching/playerItemBomb/sub_0801B250.inc", void sub_0801B250(Entity* this))

ASM_FUNC("asm/non_matching/playerItemBomb/sub_0801B2CC.inc", void sub_0801B2CC(Entity* this))

void sub_0801B318(Entity* this) {
    gUnk_080B77D8[this->subAction](this);
}

void sub_0801B330(Entity* this) {
    this->subAction += 1;
    sub_08079BD8(this);
}

void sub_0801B340(Entity* this) {
    this->spritePriority.b1 = 2;
}

void sub_0801B354(Entity* this) {
    this->spritePriority.b1 = 3;
}

void sub_0801B368(Entity* this) {
    this->action -= 1;
    this->subAction = 0;
    if (0x3c < this->actionDelay) {
        this->actionDelay = 0x3c;
    }
}

void sub_0801B384(Entity* this) {
    DeleteThisEntity();
}

void sub_0801B38C(Entity* this) {
    if (this->actionDelay-- == 0) {
        DeleteThisEntity();
    }
}

ASM_FUNC("asm/non_matching/playerItemBomb/sub_0801B3A4.inc", void sub_0801B3A4(Entity* this))

void sub_0801B418(Entity* this) {
    s32 x;
    s32 y;
    s32 iVar3 = 0;

    y = 0x10;
    while (iVar3 >= -0x10) {
        x = 0x10;
        iVar3 = y - 0x10;
        while (x >= -0x10) {
            sub_08008796(this, 3, this->x.HALF.HI + x, this->y.HALF.HI + y);
            x -= 0x10;
        }
        y = iVar3;
    }
}
