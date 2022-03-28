#define NENT_DEPRECATED
#include "entity.h"
#include "player.h"
#include "functions.h"
#include "asm.h"
#include "item.h"

typedef struct {
    Entity base;
    u32 unk_68;
} PlayerItemBombEntity;

extern void (*const gUnk_080B77C8[])(Entity*);
void sub_0801B418(Entity*);
void sub_0801B3A4(PlayerItemBombEntity*);

extern void (*const gUnk_080B77D8[])(Entity*);

extern const Hitbox gUnk_080B77F4;

void PlayerItemBomb(PlayerItemBombEntity* this) {
    u8 uVar1, uVar2;

    gUnk_080B77C8[super->action](super);
    GetNextFrame(super);
    uVar2 = uVar1 = super->action;
    if (uVar1 != 0x03) {
        if (super->actionDelay != 0) {
            if (*(u8*)&this->unk_68 == 7) {
                super->actionDelay -= 1;
            }
            if (super->actionDelay == 0) {
                super->field_0xf = 0x50;
                this->unk_68 = 0;
                super->spriteRendering.b0 = 3;
                SetAffineInfo(super, 0x100, 0x100, 0);
            }
        } else {
            if (super->field_0xf != 0) {
                if (super->field_0xf-- == 0x01) {
                    if ((uVar1 == 0x02) && (super->subAction == 1)) {
                        gPlayerState.heldObject = 0;
                    }
                    super->action = 0x03;
                    super->spritePriority.b1 = 2;
                    super->actionDelay = 0x0f;
                    super->spriteSettings.draw = 0;
                    sub_0805EC60(super);
                    FreeCarryEntity(super);
                    CreateObjectWithParent(super, 0x20, 0, 0);
                    sub_0801B418(super);
                } else {
                    sub_0801B3A4(this);
                }
            }
        }
    }
}

void sub_0801B250(PlayerItemBombEntity* this) {
    super->spriteSettings.draw = 1;
    super->action = 1;
    super->spritePriority.b1 = 3;
    super->flags &= 0x7f;
    if (super->type == 0xff) {
        super->actionDelay = 0x3c;
    } else if (super->type == 0xfe) {
        super->actionDelay = 0x0f;
        super->type = 0xff;
    } else {
        super->actionDelay = 0x96;
    }
    super->hitbox = (Hitbox*)&gUnk_080B77F4;
    super->field_0x16 = 0;
    if (*(u8*)&this->unk_68 == 7) {
        InitializeAnimation(super, 5);
    } else {
        InitializeAnimation(super, 0x15);
    }
}

void sub_0801B2CC(PlayerItemBombEntity* this) {
    u16 unaff_r5;

    if (!sub_0800442E(super)) {
        RegisterCarryEntity(super);
    }
    switch (IsItemEquipped(ITEM_REMOTE_BOMBS)) {
        case 0:
            unaff_r5 = 1;
            break;
        case 1:
            unaff_r5 = 2;
            break;
        case 2:
            unaff_r5 = 0;
            break;
    }
    if ((unaff_r5 & gPlayerState.field_0x92) != 0) {
        super->actionDelay = 0;
        super->field_0xf = 1;
    }
}

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

void sub_0801B3A4(PlayerItemBombEntity* this) {
    u32 tmp;
    if (super->field_0xf >= 0x29) {
        tmp = 8;
    } else {
        tmp = 4;
        if ((this->unk_68 & 0x8000) != 0) {
            this->unk_68 -= 0x10;
        } else {
            this->unk_68 += 0x10;
        }
        if (0x7f < (this->unk_68 & 0xf0) - 1) {
            this->unk_68 ^= 0x8000;
        }
        SetAffineInfo(super, 0x130 - (this->unk_68 & 0xf0), 0x130 - (this->unk_68 & 0xf0), 0);
    }
    if ((super->field_0xf & tmp) == 0) {
        super->palette.b.b0 = 0;
    } else {
        super->palette.b.b0 = super->palette.b.b4;
    }
}

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
