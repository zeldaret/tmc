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

void sub_0801B418(Entity*);
void sub_0801B3A4(PlayerItemBombEntity*);
void sub_0801B250(PlayerItemBombEntity*);
void sub_0801B2CC(PlayerItemBombEntity*);
void sub_0801B318(PlayerItemBombEntity*);
void sub_0801B38C(PlayerItemBombEntity*);
void sub_0801B330(PlayerItemBombEntity*);
void sub_0801B340(PlayerItemBombEntity*);
void sub_0801B354(PlayerItemBombEntity*);
void sub_0801B368(PlayerItemBombEntity*);
void sub_0801B384(PlayerItemBombEntity*);

static void (*const actionFuncs[])(PlayerItemBombEntity*) = {
    sub_0801B250,
    sub_0801B2CC,
    sub_0801B318,
    sub_0801B38C,
};

static void (*const subActionFuncs[])(PlayerItemBombEntity*) = {
    sub_0801B330, sub_0801B340, sub_0801B354, sub_0801B368, sub_0801B384,
};

static const Hitbox unusedHitbox = { 0, 0, { 4, 0, 0, 4 }, 22, 22 };
static const Hitbox gUnk_080B77F4 = { 0, 0, 6, 0, 0, 6, 4, 4 };

void PlayerItemBomb(PlayerItemBombEntity* this) {
    u8 uVar1, uVar2;

    actionFuncs[super->action](this);
    GetNextFrame(super);
    uVar2 = uVar1 = super->action;
    if (uVar1 != 0x03) {
        if (super->timer != 0) {
            if (*(u8*)&this->unk_68 == 7) {
                super->timer--;
            }
            if (super->timer == 0) {
                super->subtimer = 80;
                this->unk_68 = 0;
                super->spriteRendering.b0 = 3;
                SetAffineInfo(super, 0x100, 0x100, 0);
            }
        } else {
            if (super->subtimer != 0) {
                if (super->subtimer-- == 0x01) {
                    if ((uVar1 == 0x02) && (super->subAction == 1)) {
                        gPlayerState.heldObject = 0;
                    }
                    super->action = 0x03;
                    super->spritePriority.b1 = 2;
                    super->timer = 15;
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
        super->timer = 60;
    } else if (super->type == 0xfe) {
        super->timer = 15;
        super->type = 0xff;
    } else {
        super->timer = 150;
    }
    super->hitbox = (Hitbox*)&gUnk_080B77F4;
    super->carryFlags = 0;
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
            unaff_r5 = PLAYER_INPUT_1;
            break;
        case 1:
            unaff_r5 = PLAYER_INPUT_2;
            break;
        case 2:
            unaff_r5 = 0;
            break;
    }
    if ((gPlayerState.playerInput.field_0x92 & unaff_r5) != 0) {
        super->timer = 0;
        super->subtimer = 1;
    }
}

void sub_0801B318(PlayerItemBombEntity* this) {
    subActionFuncs[super->subAction](this);
}

void sub_0801B330(PlayerItemBombEntity* this) {
    super->subAction++;
    sub_08079BD8(super);
}

void sub_0801B340(PlayerItemBombEntity* this) {
    super->spritePriority.b1 = 2;
}

void sub_0801B354(PlayerItemBombEntity* this) {
    super->spritePriority.b1 = 3;
}

void sub_0801B368(PlayerItemBombEntity* this) {
    super->action--;
    super->subAction = 0;
    if (0x3c < super->timer) {
        super->timer = 60;
    }
}

void sub_0801B384(PlayerItemBombEntity* this) {
    DeleteThisEntity();
}

void sub_0801B38C(PlayerItemBombEntity* this) {
    if (super->timer-- == 0) {
        DeleteThisEntity();
    }
}

void sub_0801B3A4(PlayerItemBombEntity* this) {
    u32 tmp;
    if (super->subtimer >= 0x29) {
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
    if ((super->subtimer & tmp) == 0) {
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
