
#include "entity.h"
#include "player.h"
#include "functions.h"
#include "sound.h"
#include "collision.h"
#include "playeritem.h"

extern void (*const gUnk_081271D4[])(Entity*);
extern u8 gUnk_081271DC[];
void sub_080A2E00(Entity* this);

void PlayerItemShield(Entity* this) {
    if (*(int*)&this->field_0x6c != 0) {
        *(int*)&this->field_0x6c += -1;
    }
    gUnk_081271D4[this->action](this);
}

void sub_080A2D98(Entity* this) {
    gPlayerState.item = this;
    this->action = 1;
    this->updatePriority = 6;
    this->frameIndex = 0xff;
    if (this->field_0x68.HALF.LO == 14) {
        this->field_0x70.WORD = 0x27;
        *(u32*)&this->field_0x78 = gUnk_081271DC[1];
        *(u32*)&this->field_0x74 = 0;
        *(u8**)&this->field_0x7c = gUnk_081271DC;
    } else {
        this->field_0x70.WORD = 0;
    }
    this->animationState = gPlayerEntity.animationState & 0xe;
    sub_08079BD8(this);
    LoadSwapGFX(this, 1, 3);
    sub_080A2E00(this);
}

extern Hitbox* gUnk_08127240[];
extern u8 gUnk_08127220[];

NONMATCH("asm/non_matching/playerItemShield/sub_080A2E00.inc", void sub_080A2E00(Entity* this)) {
    Entity* pEVar1;
    u8* iVar2;
    u8* pbVar3;
    u8 uVar4;
    int iVar5;
    u32 tmp;

    if ((gPlayerEntity.iframes == 0) || ((u8)gPlayerEntity.iframes == 0x81)) {
        gPlayerEntity.iframes = this->iframes;
        gPlayerEntity.knockbackDirection = this->knockbackDirection;
        gPlayerEntity.knockbackDuration = this->knockbackDuration;
        this->knockbackDuration = 0;
        this->iframes = 0;
    }

    uVar4 = gPlayerState.shield_status;
    if ((uVar4 != 0) && (this == gPlayerState.item)) {
        if ((uVar4 & 0x80) != 0) {
            this->hitbox = gUnk_08127240[this->animationState >> 1];
            this->collisionFlags = (gPlayerEntity.collisionFlags + 1) | 0x20;
            this->flags = this->flags | 0x80;
            gPlayerState.shield_status = uVar4 & 0x7f;
            sub_080176E4(this);
        } else {
            if ((this->contactFlags & 0x80) != 0) {
                if ((((this->contactFlags & 0x7f) == 0x42) && (*(char*)&this->field_0x68 == 0xe)) &&
                    ((uVar4 & 0x40) == 0)) {
                    pEVar1 = CreatePlayerItem(PLAYER_ITEM_FIRE_ROD_PROJECTILE, 0, 0, *(char*)&this->field_0x68);
                    this->child = pEVar1;
                    if (pEVar1 != NULL) {
                        pEVar1->subtimer = 1;
                        this->child->direction = this->knockbackDirection ^ 0x10;
                        this->child->parent = this;
                    }
                    *(u32*)&this->field_0x78 = gUnk_08127220[1];
                    *(u32*)&this->field_0x74 = uVar4 & 0x40;
                    *(u8**)&this->field_0x7c = gUnk_08127220;
                    gPlayerState.shield_status |= 0x40;
                }
                if (*(int*)&this->field_0x6c == 0) {
                    SoundReq(0x118);
                    *(u32*)&this->field_0x6c = 8;
                }
            }
        }
    } else {
        gPlayerState.shield_status = 0;
        if (gPlayerState.item == this) {
            gPlayerState.item = NULL;
        }
        DeleteThisEntity();
    }

    if (((gPlayerEntity.spriteIndex == 1U) || (gPlayerEntity.spriteIndex == 4U)) &&
        ((u8)(gPlayerEntity.frameIndex - 0x25) < 0x3f)) {
        this->spriteSettings.flipX = gPlayerEntity.spriteSettings.flipX;
        this->spriteSettings.flipY = gPlayerEntity.spriteSettings.flipY;
        if ((gPlayerEntity.frameIndex - 0x25 + this->field_0x70.WORD != (u32)this->frameIndex) &&
            ((this->frameIndex = gPlayerEntity.frameIndex - 0x25 + this->field_0x70.WORD,
              *(char*)&this->field_0x68 != 0xe || ((gPlayerEntity.frame & 0x7f) == 0)))) {
            sub_080042D0(this, this->frameIndex, (u16)this->spriteIndex);
        }
        if (((*(char*)&this->field_0x68 == 0xe) && ((gPlayerEntity.frame & 0x7f) != 0))) {
            (*(int*)&this->field_0x78)--;
            if ((*(int*)&this->field_0x78) == 0) {
                (*(int*)&this->field_0x74)++;
                iVar5 = (*(int*)&this->field_0x74) * 4;
                iVar2 = *(u8**)&this->field_0x7c;
                if (iVar2[iVar5] == 0xff) {
                    if ((gPlayerState.shield_status & 0x40) != 0) {
                        *(u8**)&this->field_0x7c = gUnk_081271DC;
                        gPlayerState.shield_status = gPlayerState.shield_status & 0xbf;
                    }
                    *(u32*)&this->field_0x74 = 0;
                    iVar2 = *(u8**)&this->field_0x7c;
                }
                pbVar3 = &iVar2[*(int*)&this->field_0x74 * 4];
                *(u32*)&this->field_0x78 = pbVar3[1];
                if ((gPlayerState.shield_status & 0x40) != 0) {
                    u32 temp = (gPlayerEntity.frame & 0x7f) + 8;
                    sub_080042D0(this, temp + *pbVar3, (u16)this->spriteIndex);
                } else {
                    sub_080042D0(this, (gPlayerEntity.frame & 0x7f) + *pbVar3, (u16)this->spriteIndex);
                }
            }
        }
        this->frame = gPlayerEntity.frame;
        this->frameSpriteSettings = gPlayerEntity.frameSpriteSettings;
        sub_08078E84(this, &gPlayerEntity);
    } else {
        this->frameIndex = 0xff;
    }
}
END_NONMATCH
