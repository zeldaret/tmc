/**
 * @file playerItemBoomerang.c
 * @ingroup Items
 *
 * @brief Boomerang Player Item
 */
#include "asm.h"
#include "entity.h"
#include "functions.h"
#include "item.h"
#include "sound.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68;
    /*0x69*/ u8 unused1[23];
    /*0x80*/ u8 unk_80;
    /*0x81*/ u8 unused2[1];
    /*0x83*/ union SplitHWord unk_82;
    /*0x84*/ u8 unused3[2];
    /*0x86*/ u16 unk_86;
} PlayerItemBoomerangEntity;

void sub_0801B804(PlayerItemBoomerangEntity* this);
Entity* sub_0801B864(Entity* this);
void PlayerItemBoomerang_Action1(PlayerItemBoomerangEntity* this);
void PlayerItemBoomerang_Init(PlayerItemBoomerangEntity* this);
void PlayerItemBoomerang_Action2(PlayerItemBoomerangEntity* this);
void PlayerItemBoomerang_Action3(PlayerItemBoomerangEntity* this);

extern Entity* DoTileInteractionOffset(Entity*, u32, s32, s32);
extern bool32 sub_080040E2(Entity*, u8*);
extern Hitbox gUnk_081271CC;
extern u8 gUnk_08003E44;

void PlayerItemBoomerang(PlayerItemBoomerangEntity* this) {
    static void (*const PlayerItemBoomerang_Actions[])(PlayerItemBoomerangEntity*) = {
        PlayerItemBoomerang_Init,
        PlayerItemBoomerang_Action1,
        PlayerItemBoomerang_Action2,
        PlayerItemBoomerang_Action3,
    };

    // Unused
    static const u16 gUnk_080B780C[] = { 0x75, 0x1, 0x76, 0x1, 0x3ac, 0x1, 0x4050, 0x1, 0x377, 0x1, 0x378, 0x1, 0x0 };

    PlayerItemBoomerang_Actions[super->action](this);
    if (super->animIndex != 0xb) {
        if (super->animationState == 6) {
            this->unk_86 += 0x2000;
        } else {
            this->unk_86 -= 0x2000;
        }
        SetAffineInfo(super, 0x100, 0x100, this->unk_86);
    }

    super->subtimer--;
    if ((super->subtimer & 0xf) == 0) {
        EnqueueSFX(SFX_FB);
    }
}

void PlayerItemBoomerang_Init(PlayerItemBoomerangEntity* this) {
    gPlayerState.item = super;
    super->action = 1;
    super->hitbox = &gUnk_081271CC;
    super->frameIndex = 0xff;
    this->unk_80 = 0;
#ifdef EU
    super->spriteVramOffset = gPlayerEntity.base.spriteVramOffset;
#endif
    super->animIndex = 11;
    super->parent = &gPlayerEntity.base;
    this->unk_86 = 0;
    if ((super->animationState & 2) != 0) {
        super->spriteSettings.flipX = ~gPlayerEntity.base.spriteSettings.flipX;
    }
    if (this->unk_68 == 12) {
        super->speed = 0x280;
        super->timer = 60;
    } else {
        super->speed = 0x200;
        super->timer = 30;
    }
    if (((s8)gPlayerState.direction) >= 0) {
        super->direction = gPlayerState.direction;
    } else {
        super->direction = super->animationState << 2;
    }
    this->unk_82.HALF.HI = super->direction;
    if (super->collisionLayer == 2) {
        super->type2 = 1;
    }
    LoadSwapGFX(super, 1, 3);
    sub_0801766C(super);
    PlayerItemBoomerang_Action1(this);
}

void PlayerItemBoomerang_Action1(PlayerItemBoomerangEntity* this) {
    static const s8 gUnk_080B7826[] = { 0, -8, 8, -4, 0, 8, -8, -4 };
    u32 frameIndex;
    int iVar2;
    u32 cVar3;

    sub_0801B804(this);
    if ((gPlayerState.attack_status == 0) || (gPlayerState.mobility != 0) || gPlayerState.item != super ||
        (gPlayerState.item == super && gPlayerEntity.base.action != PLAYER_NORMAL)) {
        if (gPlayerState.item == super) {
            gPlayerState.item = NULL;
        }
        DeleteThisEntity();
    }

    if ((gPlayerEntity.base.frame & 1) == 0) {
        if (this->unk_68 == 12) {
            cVar3 = 6;
        } else {
            cVar3 = 0;
        }
        frameIndex = (gPlayerEntity.base.frame >> 4) + cVar3;
        if (super->frameIndex != frameIndex) {
            super->frameIndex = frameIndex;
            sub_080042D0(super, super->frameIndex, super->spriteIndex);
        }
        sub_08078E84(super, &gPlayerEntity.base);
    } else {
        super->action = 2;
        super->spriteVramOffset = 0xd5;
        COLLISION_ON(super);
        super->collisionFlags |= 1;
        super->collisionMask = gPlayerEntity.base.collisionMask;
        super->spriteIndex = 0xa6;
        super->spriteSettings.flipX = 0;
        super->spriteSettings.draw = 1;

        iVar2 = (super->animationState >> 1) * 2;
        super->x.HALF.HI += gUnk_080B7826[iVar2];
        super->y.HALF.HI += gUnk_080B7826[iVar2 + 1];
        InitializeAnimation(super, 0);
        gPlayerState.item = NULL;
        gPlayerState.attack_status |= 0x80;
    }
}

void PlayerItemBoomerang_Action2(PlayerItemBoomerangEntity* this) {
    u32 uVar1;
    bool32 uVar6;

    sub_0801B804(this);
    if ((this->unk_68 == 12) && (this->unk_80 == 0) && !(gPlayerState.direction & DIR_NOT_MOVING_CHECK)) {
        if (((this->unk_82.HALF.HI - gPlayerState.direction) &
             (0x3 | DIR_DIAGONAL | DirectionNorth | DirectionEast | DirectionSouth | DirectionWest)) > DirectionSouth) {
            this->unk_82.HWORD += 0x40;
            this->unk_82.HALF.HI &= 0x1f;
            super->direction = this->unk_82.HALF.HI;
        } else {
            this->unk_82.HWORD -= 0x40;
            this->unk_82.HALF.HI &= 0x1f;
            super->direction = this->unk_82.HALF.HI;
        }
    }
    LinearMoveUpdate(super);
    uVar6 = FALSE;
    if (sub_0801B864(super)) {
        uVar1 = this->unk_68;
        uVar1 ^= 0xc;
        if (uVar1) {
            uVar6 = TRUE;
        } else {
            uVar6 = FALSE;
        }
    }

    if (sub_080B1BA4(COORD_TO_TILE(super), gPlayerEntity.base.collisionLayer, 0x80) == 0) {
        if (!uVar6) {
            uVar6 = sub_080040E2(super, &gUnk_08003E44);
        }
    }

    if (!uVar6) {
        if (--super->timer < 0xc) {
            super->speed = super->speed + -0x10;
        }
        if (super->timer == 0) {
            uVar6 = TRUE;
        }
        if (super->contactFlags & CONTACT_NOW) {
            uVar6 = TRUE;
        }
        if (!uVar6) {
            return;
        }
        if (this->unk_68 == 12) {
            super->timer = 30;
        } else {
            super->timer = 12;
        }
    } else {
        super->timer = 1;
    }

    if (uVar6) {
        super->action++;
        super->speed = 0x1c0;
    }
}

void PlayerItemBoomerang_Action3(PlayerItemBoomerangEntity* this) {
    sub_0801B804(this);
    if (super->timer != 0) {
        super->timer--;
    } else {
        sub_0801B864(super);
        if (super->speed < 0x280) {
            super->speed += 8;
        }
        super->direction = GetFacingDirection(super, &gPlayerEntity.base);
        LinearMoveUpdate(super);
        if (sub_0800419C(super, &gPlayerEntity.base, 2, 2) != 0) {
            DeleteThisEntity();
        }
    }
}

void sub_0801B804(PlayerItemBoomerangEntity* this) {
    EquipSlot equipSlot;
    u32 uVar1;

    equipSlot = IsItemEquipped(ITEM_MAGIC_BOOMERANG);
    switch (equipSlot) {
        case EQUIP_SLOT_A:
            uVar1 = 1;
            break;
        case EQUIP_SLOT_B:
            uVar1 = 2;
            break;
        case EQUIP_SLOT_NONE:
            uVar1 = 0;
            break;
    }

    if ((uVar1 & gPlayerState.playerInput.heldInput) == 0) {
        this->unk_80 = 1;
        gPlayerState.field_0xa &= ~0x80;
        gPlayerState.keepFacing &= ~0x80;
    } else {
        gPlayerState.field_0xa |= 0x80;
        gPlayerState.keepFacing |= 0x80;
    }
}

Entity* sub_0801B864(Entity* this) {
    static const s8 gUnk_080B782E[] = { 0, -6, 4, -4, 4, 0, 4, 4, 0, 4, -4, 4, -4, 0, -4, 0, 0, 0 };
    s32 iVar1;

    if (this->type2 == 0) {
        sub_0800451C(this);
    }
    iVar1 = (this->direction >> 2) * 2;
    return DoTileInteractionOffset(this, 2, gUnk_080B782E[iVar1], gUnk_080B782E[iVar1 + 1]);
}
