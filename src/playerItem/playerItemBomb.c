/**
 * @file playerItemBomb.c
 * @ingroup Items
 *
 * @brief Bomb Player Item
 */
#include "asm.h"
#include "entity.h"
#include "functions.h"
#include "item.h"
#include "object.h"
#include "player.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u32 unk_68;
} PlayerItemBombEntity;

void sub_0801B418(Entity* this);
void sub_0801B3A4(PlayerItemBombEntity* this);
void PlayerItemBomb_Init(PlayerItemBombEntity* this);
void PlayerItemBomb_Action1(PlayerItemBombEntity* this);
void PlayerItemBomb_Action2(PlayerItemBombEntity* this);
void PlayerItemBomb_Action3(PlayerItemBombEntity* this);
void PlayerItemBomb_SubAction0(PlayerItemBombEntity* this);
void PlayerItemBomb_SubAction1(PlayerItemBombEntity* this);
void PlayerItemBomb_SubAction2(PlayerItemBombEntity* this);
void PlayerItemBomb_SubAction3(PlayerItemBombEntity* this);
void PlayerItemBomb_SubAction4(PlayerItemBombEntity* this);

static void (*const PlayerItemBomb_Actions[])(PlayerItemBombEntity*) = {
    PlayerItemBomb_Init,
    PlayerItemBomb_Action1,
    PlayerItemBomb_Action2,
    PlayerItemBomb_Action3,
};

static void (*const PlayerItemBomb_SubActions[])(PlayerItemBombEntity*) = {
    PlayerItemBomb_SubAction0, PlayerItemBomb_SubAction1, PlayerItemBomb_SubAction2,
    PlayerItemBomb_SubAction3, PlayerItemBomb_SubAction4,
};

static const Hitbox unusedHitbox = { 0, 0, { 4, 0, 0, 4 }, 22, 22 };
static const Hitbox gUnk_080B77F4 = { 0, 0, 6, 0, 0, 6, 4, 4 };

void PlayerItemBomb(PlayerItemBombEntity* this) {
    u8 action, uVar2;

    PlayerItemBomb_Actions[super->action](this);
    GetNextFrame(super);
    uVar2 = action = super->action;
    if (action != 3) {
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
                if (super->subtimer-- == 1) {
                    if ((action == 2) && (super->subAction == 1)) {
                        gPlayerState.heldObject = 0;
                    }
                    super->action = 3;
                    super->spritePriority.b1 = 2;
                    super->timer = 15;
                    super->spriteSettings.draw = 0;
                    sub_0805EC60(super);
                    FreeCarryEntity(super);
                    CreateObjectWithParent(super, SMOKE_PARTICLE, 0, 0);
                    sub_0801B418(super);
                } else {
                    sub_0801B3A4(this);
                }
            }
        }
    }
}

void PlayerItemBomb_Init(PlayerItemBombEntity* this) {
    super->spriteSettings.draw = 1;
    super->action = 1;
    super->spritePriority.b1 = 3;
    super->flags &= ~0x80;
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

void PlayerItemBomb_Action1(PlayerItemBombEntity* this) {
    u16 input;

    if (!sub_0800442E(super)) {
        RegisterCarryEntity(super);
    }
    switch (IsItemEquipped(ITEM_REMOTE_BOMBS)) {
        case EQUIP_SLOT_A:
            input = INPUT_USE_ITEM1;
            break;
        case EQUIP_SLOT_B:
            input = INPUT_USE_ITEM2;
            break;
        case EQUIP_SLOT_NONE:
            input = 0;
            break;
    }
    if ((gPlayerState.playerInput.newInput & input) != 0) {
        super->timer = 0;
        super->subtimer = 1;
    }
}

void PlayerItemBomb_Action2(PlayerItemBombEntity* this) {
    PlayerItemBomb_SubActions[super->subAction](this);
}

void PlayerItemBomb_SubAction0(PlayerItemBombEntity* this) {
    super->subAction++;
    sub_08079BD8(super);
}

void PlayerItemBomb_SubAction1(PlayerItemBombEntity* this) {
    super->spritePriority.b1 = 2;
}

void PlayerItemBomb_SubAction2(PlayerItemBombEntity* this) {
    super->spritePriority.b1 = 3;
}

void PlayerItemBomb_SubAction3(PlayerItemBombEntity* this) {
    super->action--;
    super->subAction = 0;
    if (super->timer > 60) {
        super->timer = 60;
    }
}

void PlayerItemBomb_SubAction4(PlayerItemBombEntity* this) {
    DeleteThisEntity();
}

void PlayerItemBomb_Action3(PlayerItemBombEntity* this) {
    if (super->timer-- == 0) {
        DeleteThisEntity();
    }
}

void sub_0801B3A4(PlayerItemBombEntity* this) {
    u32 tmp;
    if (super->subtimer > 40) {
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
            DoTileInteraction(this, 3, this->x.HALF.HI + x, this->y.HALF.HI + y);
            x -= 0x10;
        }
        y = iVar3;
    }
}
