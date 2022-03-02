
#include "entity.h"
#include "player.h"
#include "functions.h"

extern Entity* sub_08008782(Entity*, u32, s32, s32);

void sub_0801B8FC(Entity*);
void sub_0801B8B0(Entity*);
void sub_0801B938(Entity*);

extern void sub_08017744(Entity*);

void PlayerItemC(Entity* this) {
    static void (*const PlayerItemC_Actions[])(Entity*) = {
        sub_0801B8B0,
        sub_0801B8FC,
    };
    PlayerItemC_Actions[this->action](this);
}

void sub_0801B8B0(Entity* this) {
    if (gPlayerState.dash_state != 0) {
        gPlayerState.item = this;
        this->flags |= ENT_PERSIST;
        this->action = 0x01;
        this->flags2 = 8;
        LoadSwapGFX(this, 1, 3);
        sub_08079BD8(this);
        sub_0801766C(this);
        sub_0801B8FC(this);
    } else {
        DeleteThisEntity();
    }
}

void sub_0801B8FC(Entity* this) {
    Entity* pbVar1;
    pbVar1 = (Entity*)gPlayerState.item;
    if ((Entity*)gPlayerState.item != this) {
        DeleteThisEntity();
    } else {
        if (gPlayerState.dash_state == 0) {
            gPlayerState.item = NULL;
            DeleteThisEntity();
        } else {
            pbVar1->flags |= ENT_COLLIDE;
            pbVar1->field_0x3c = 0x21;
            sub_0801B938(pbVar1);
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
        this->spriteSettings.flipX = gPlayerEntity.spriteSettings.flipX ^ 1;
    } else {
        this->spriteSettings.flipX = gPlayerEntity.spriteSettings.flipX;
    }

    if ((u8)(gPlayerEntity.animIndex + 0x68) < 4) {
        this->frameIndex = gPlayerEntity.frameIndex + 0x2e;
        sub_080042D0(this, this->frameIndex, this->spriteIndex);
    } else {
        this->frameIndex = 0xff;
    }

    this->hitbox = (Hitbox*)&gUnk_080B7850[this->animationState >> 1];
    ptr = &gUnk_080B7848[(this->animationState >> 1) * 2];
    sub_08008782(this, -(gPlayerState.skills & SKILL_ROCK_BREAKER) != 0, ptr[0], ptr[1]);
    sub_08078E84(this, &gPlayerEntity);
}

void sub_0801B9F0(Entity* this) {
    COLLISION_OFF(this);
    sub_08017744(this);
}
