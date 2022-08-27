#define NENT_DEPRECATED

#include "entity.h"
#include "player.h"
#include "functions.h"
#include "sound.h"
#include "collision.h"
#include "playeritem.h"

typedef struct {
    Entity base;
    u8 unk_68;
    u8 unk_69[3];
    u32 bounceTimer;
    u32 unk_70;
    u32 unk_74;
    u32 unk_78;
    u8* unk_7c;
} PlayerItemShieldEntity;

extern void (*const gUnk_081271D4[])(PlayerItemShieldEntity*);
extern u8 gUnk_081271DC[];
void sub_080A2E00(PlayerItemShieldEntity* this);

void PlayerItemShield(PlayerItemShieldEntity* this) {
    if (this->bounceTimer != 0) {
        this->bounceTimer--;
    }
    gUnk_081271D4[super->action](this);
}

void sub_080A2D98(PlayerItemShieldEntity* this) {
    gPlayerState.item = super;
    super->action = 1;
    super->updatePriority = 6;
    super->frameIndex = 0xff;
    if (this->unk_68 == 14) {
        this->unk_70 = 0x27;
        this->unk_78 = gUnk_081271DC[1];
        this->unk_74 = 0;
        this->unk_7c = gUnk_081271DC;
    } else {
        this->unk_70 = 0;
    }
    super->animationState = gPlayerEntity.animationState & 0xe;
    sub_08079BD8(super);
    LoadSwapGFX(super, 1, 3);
    sub_080A2E00(this);
}

extern Hitbox* gUnk_08127240[];
extern u8 gUnk_08127220[];

void sub_080A2E00(PlayerItemShieldEntity* this) {
    Entity* playerItem;
    u8* pbVar3;
    u32 tmp2;

    if ((gPlayerEntity.iframes == 0) || ((u8)gPlayerEntity.iframes == 0x81)) {
        gPlayerEntity.iframes = super->iframes;
        gPlayerEntity.knockbackDirection = super->knockbackDirection;
        gPlayerEntity.knockbackDuration = super->knockbackDuration;
        super->knockbackDuration = 0;
        super->iframes = 0;
    }

    if ((gPlayerState.shield_status != 0) && (super == gPlayerState.item)) {
        if ((gPlayerState.shield_status & 0x80) != 0) {
            super->hitbox = gUnk_08127240[super->animationState >> 1];
            super->collisionFlags = (gPlayerEntity.collisionFlags + 1) | 0x20;
            COLLISION_ON(super);
            gPlayerState.shield_status &= ~0x80;
            sub_080176E4(super);
        } else {
            if ((super->contactFlags & 0x80) != 0) {
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
                    this->unk_7c = gUnk_08127220;
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

    if (((gPlayerEntity.spriteIndex == 1u) || (gPlayerEntity.spriteIndex == 4u)) &&
        ((u8)(gPlayerEntity.frameIndex - 0x25) < 0x3f)) {
        super->spriteSettings.flipX = gPlayerEntity.spriteSettings.flipX;
        super->spriteSettings.flipY = gPlayerEntity.spriteSettings.flipY;
        if ((gPlayerEntity.frameIndex - 0x25 + this->unk_70 != super->frameIndex) &&
            ((super->frameIndex = gPlayerEntity.frameIndex - 0x25 + this->unk_70,
              this->unk_68 != 0xe || ((gPlayerEntity.frame & 0x7f) == 0)))) {
            sub_080042D0(super, super->frameIndex, super->spriteIndex);
        }
        if (((this->unk_68 == 0xe) && ((gPlayerEntity.frame & 0x7f) != 0))) {
            if (--this->unk_78 == 0) {
                this->unk_74++;
                tmp2 = this->unk_74 * 4;
                pbVar3 = &this->unk_7c[tmp2];
                if (pbVar3[0] == 0xff) {
                    if ((gPlayerState.shield_status & 0x40) != 0) {
                        this->unk_7c = gUnk_081271DC;
                        gPlayerState.shield_status &= ~0x40;
                    }
                    this->unk_74 = 0;
                }
                pbVar3 = &this->unk_7c[this->unk_74 * 4];
                this->unk_78 = pbVar3[1];
                if ((gPlayerState.shield_status & 0x40) != 0) {
                    u32 temp = (gPlayerEntity.frame & 0x7f) + 8;
                    sub_080042D0(super, temp + pbVar3[0], super->spriteIndex);
                } else {
                    sub_080042D0(super, (gPlayerEntity.frame & 0x7f) + pbVar3[0], super->spriteIndex);
                }
            }
        }
        super->frame = gPlayerEntity.frame;
        super->frameSpriteSettings = gPlayerEntity.frameSpriteSettings;
        sub_08078E84(super, &gPlayerEntity);
    } else {
        super->frameIndex = 0xff;
    }
}
