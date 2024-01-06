/**
 * @file playerItemShield.c
 * @ingroup Items
 *
 * @brief Shield Player Item
 */
#include "collision.h"
#include "entity.h"
#include "functions.h"
#include "player.h"
#include "playeritem.h"
#include "sound.h"

const Hitbox gUnk_081271CC = { 0, 0, { 1, 0, 0, 1 }, 8, 8 };

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68;
    /*0x69*/ u8 unk_69[3];
    /*0x6c*/ u32 bounceTimer;
    /*0x70*/ u32 unk_70;
    /*0x74*/ u32 unk_74;
    /*0x78*/ u32 unk_78;
    /*0x7c*/ u8* unk_7c;
} PlayerItemShieldEntity;

void PlayerItemShield_Init(PlayerItemShieldEntity* this);
void PlayerItemShield_Action1(PlayerItemShieldEntity* this);
void (*const PlayerItemShield_Actions[])(PlayerItemShieldEntity*) = {
    PlayerItemShield_Init,
    PlayerItemShield_Action1,
};
const u8 gUnk_081271DC[] = {
    7, 60, 0, 0, 0, 2, 0, 0, 1, 2, 0, 0, 2, 2, 0, 0, 3, 2, 0, 0, 4, 2, 0, 0, 5, 2, 0, 0, 6, 2, 0,   0, 7, 20,
    0, 0,  0, 2, 0, 0, 1, 2, 0, 0, 2, 2, 0, 0, 3, 2, 0, 0, 4, 2, 0, 0, 5, 2, 0, 0, 6, 2, 0, 0, 255, 0, 0, 0,
};
const u8 gUnk_08127220[] = {
    0, 1, 0, 0, 1, 2, 0, 0, 2, 4, 0, 0, 3, 2, 0, 0, 4, 3, 0, 0, 5, 2, 0, 0, 3, 2, 0, 0, 255, 0, 0, 0,
};

const Hitbox gUnk_08127250;
const Hitbox gUnk_08127258;
const Hitbox gUnk_08127260;
const Hitbox gUnk_08127268;
const Hitbox* const gUnk_08127240[] = {
    &gUnk_08127250,
    &gUnk_08127258,
    &gUnk_08127260,
    &gUnk_08127268,
};
const Hitbox gUnk_08127250 = { 0, -7, { 0, 0, 0, 0 }, 6, 7 };
const Hitbox gUnk_08127258 = { 5, -4, { 0, 0, 0, 0 }, 5, 7 };
const Hitbox gUnk_08127260 = { 0, 0, { 0, 0, 0, 0 }, 6, 7 };
const Hitbox gUnk_08127268 = { -5, -4, { 0, 0, 0, 0 }, 5, 7 };

void PlayerItemShield_Action1(PlayerItemShieldEntity* this);

void PlayerItemShield(PlayerItemShieldEntity* this) {
    if (this->bounceTimer != 0) {
        this->bounceTimer--;
    }
    PlayerItemShield_Actions[super->action](this);
}

void PlayerItemShield_Init(PlayerItemShieldEntity* this) {
    gPlayerState.item = super;
    super->action = 1;
    super->updatePriority = 6;
    super->frameIndex = 0xff;
    if (this->unk_68 == 14) {
        this->unk_70 = 0x27;
        this->unk_78 = gUnk_081271DC[1];
        this->unk_74 = 0;
        this->unk_7c = (u8*)gUnk_081271DC;
    } else {
        this->unk_70 = 0;
    }
    super->animationState = gPlayerEntity.base.animationState & 0xe;
    sub_08079BD8(super);
    LoadSwapGFX(super, 1, 3);
    PlayerItemShield_Action1(this);
}

void PlayerItemShield_Action1(PlayerItemShieldEntity* this) {
    Entity* playerItem;
    u8* pbVar3;
    u32 tmp2;

    if ((gPlayerEntity.base.iframes == 0) || ((u8)gPlayerEntity.base.iframes == 0x81)) {
        gPlayerEntity.base.iframes = super->iframes;
        gPlayerEntity.base.knockbackDirection = super->knockbackDirection;
        gPlayerEntity.base.knockbackDuration = super->knockbackDuration;
        super->knockbackDuration = 0;
        super->iframes = 0;
    }

    if ((gPlayerState.shield_status != 0) && (super == gPlayerState.item)) {
        if ((gPlayerState.shield_status & 0x80) != 0) {
            super->hitbox = (Hitbox*)gUnk_08127240[super->animationState >> 1];
            super->collisionFlags = (gPlayerEntity.base.collisionFlags + 1) | 0x20;
            COLLISION_ON(super);
            gPlayerState.shield_status &= ~0x80;
            sub_080176E4(super);
        } else {
            if ((super->contactFlags & CONTACT_NOW) != 0) {
                if ((((super->contactFlags & 0x7f) == 0x42) && this->unk_68 == 0xe) &&
                    ((gPlayerState.shield_status & 0x40) == 0)) {
                    playerItem = CreatePlayerItem(PLAYER_ITEM_FIRE_ROD_PROJECTILE, 0, 0, this->unk_68);
                    super->child = playerItem;
                    if (playerItem != NULL) {
                        playerItem->subtimer = 1;
                        super->child->direction = DirectionTurnAround(super->knockbackDirection);
                        super->child->parent = super;
                    }
                    this->unk_78 = gUnk_08127220[1];
                    this->unk_74 = 0;
                    this->unk_7c = (u8*)gUnk_08127220;
                    gPlayerState.shield_status |= 0x40;
                }
                if (this->bounceTimer == 0) {
                    SoundReq(SFX_ITEM_SHIELD_BOUNCE);
                    this->bounceTimer = 8;
                }
            }
        }
    } else {
        gPlayerState.shield_status = 0;
        if (gPlayerState.item == super) {
            gPlayerState.item = NULL;
        }
        DeleteThisEntity();
    }

    if (((gPlayerEntity.base.spriteIndex == 1u) || (gPlayerEntity.base.spriteIndex == 4u)) &&
        ((u8)(gPlayerEntity.base.frameIndex - 0x25) < 0x3f)) {
        super->spriteSettings.flipX = gPlayerEntity.base.spriteSettings.flipX;
        super->spriteSettings.flipY = gPlayerEntity.base.spriteSettings.flipY;
        if ((gPlayerEntity.base.frameIndex - 0x25 + this->unk_70 != super->frameIndex) &&
            ((super->frameIndex = gPlayerEntity.base.frameIndex - 0x25 + this->unk_70,
              this->unk_68 != 0xe || ((gPlayerEntity.base.frame & 0x7f) == 0)))) {
            sub_080042D0(super, super->frameIndex, super->spriteIndex);
        }
        if (((this->unk_68 == 0xe) && ((gPlayerEntity.base.frame & 0x7f) != 0))) {
            if (--this->unk_78 == 0) {
                this->unk_74++;
                tmp2 = this->unk_74 * 4;
                pbVar3 = &this->unk_7c[tmp2];
                if (pbVar3[0] == 0xff) {
                    if ((gPlayerState.shield_status & 0x40) != 0) {
                        this->unk_7c = (u8*)gUnk_081271DC;
                        gPlayerState.shield_status &= ~0x40;
                    }
                    this->unk_74 = 0;
                }
                pbVar3 = &this->unk_7c[this->unk_74 * 4];
                this->unk_78 = pbVar3[1];
                if ((gPlayerState.shield_status & 0x40) != 0) {
                    u32 temp = (gPlayerEntity.base.frame & 0x7f) + 8;
                    sub_080042D0(super, temp + pbVar3[0], super->spriteIndex);
                } else {
                    sub_080042D0(super, (gPlayerEntity.base.frame & 0x7f) + pbVar3[0], super->spriteIndex);
                }
            }
        }
        super->frame = gPlayerEntity.base.frame;
        super->frameSpriteSettings = gPlayerEntity.base.frameSpriteSettings;
        sub_08078E84(super, &gPlayerEntity.base);
    } else {
        super->frameIndex = 0xff;
    }
}
