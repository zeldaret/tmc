/**
 * @file playerItemDashSword.c
 * @ingroup Items
 *
 * @brief Dash Sword Player Item
 */
#include "entity.h"
#include "functions.h"
#include "player.h"

extern Entity* DoTileInteractionOffset(Entity*, u32, s32, s32);

void PlayerItemDashSword_Action1(Entity* this);
void PlayerItemDashSword_Init(Entity* this);
void sub_0801B938(Entity* this);

extern void sub_08017744(Entity*);

void PlayerItemDashSword(Entity* this) {
    static void (*const PlayerItemDashSword_Actions[])(Entity*) = {
        PlayerItemDashSword_Init,
        PlayerItemDashSword_Action1,
    };
    PlayerItemDashSword_Actions[this->action](this);
}

void PlayerItemDashSword_Init(Entity* this) {
    if (gPlayerState.dash_state != 0) {
        gPlayerState.item = this;
        this->flags |= ENT_PERSIST;
        this->action = 1;
        this->collisionMask = 8;
        LoadSwapGFX(this, 1, 3);
        sub_08079BD8(this);
        sub_0801766C(this);
        PlayerItemDashSword_Action1(this);
    } else {
        DeleteThisEntity();
    }
}

void PlayerItemDashSword_Action1(Entity* this) {
    if (gPlayerState.item != this) {
        DeleteThisEntity();
    } else {
        if (gPlayerState.dash_state == 0) {
            gPlayerState.item = NULL;
            DeleteThisEntity();
        } else {
            this->flags |= ENT_COLLIDE;
            this->collisionFlags = 0x21;
            sub_0801B938(this);
        }
    }
}

void sub_0801B938(Entity* this) {
    static const s8 gUnk_080B7848[] = {
        0, -15, 12, -3, 0, 9, -12, -3,
    };
    static const Hitbox gUnk_080B7850[] = {
        { 0, -18, { 0 }, 4, 8 },
        { 16, 0, { 0 }, 8, 4 },
        { 2, 11, { 0 }, 4, 8 },
        { -16, 0, { 0 }, 8, 4 },
    };
    const s8* ptr;

    if ((this->animationState & 2)) {
        this->spriteSettings.flipX = gPlayerEntity.base.spriteSettings.flipX ^ 1;
    } else {
        this->spriteSettings.flipX = gPlayerEntity.base.spriteSettings.flipX;
    }

    if ((u8)(gPlayerEntity.base.animIndex + 0x68) < 4) {
        this->frameIndex = gPlayerEntity.base.frameIndex + 0x2e;
        sub_080042D0(this, this->frameIndex, this->spriteIndex);
    } else {
        this->frameIndex = 0xff;
    }

    this->hitbox = (Hitbox*)&gUnk_080B7850[this->animationState >> 1];
    ptr = &gUnk_080B7848[(this->animationState >> 1) * 2];
    DoTileInteractionOffset(this, -(gPlayerState.skills & SKILL_ROCK_BREAKER) != 0, ptr[0], ptr[1]);
    sub_08078E84(this, &gPlayerEntity.base);
}

void sub_0801B9F0(Entity* this) {
    COLLISION_OFF(this);
    sub_08017744(this);
}
