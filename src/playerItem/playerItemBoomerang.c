#include "entity.h"
#include "sound.h"
#include "functions.h"
#include "asm.h"
#include "item.h"

void sub_0801B804(Entity*);
Entity* sub_0801B864(Entity*);
void sub_0801B584(Entity*);
void PlayerItemBoomerang_Init(Entity*);
void sub_0801B680(Entity*);
void sub_0801B7A8(Entity*);

extern Entity* sub_08008782(Entity*, u32, s32, s32);
extern bool32 sub_080040E2(Entity*, u8*);
extern Hitbox gUnk_081271CC;
extern u8 gUnk_08003E44;

void PlayerItemBoomerang(Entity* this) {
    static void (*const PlayerItemBoomerang_Actions[])(Entity*) = {
        PlayerItemBoomerang_Init,
        sub_0801B584,
        sub_0801B680,
        sub_0801B7A8,
    };

    // Unused
    static const u16 gUnk_080B780C[] = { 0x75, 0x1, 0x76, 0x1, 0x3ac, 0x1, 0x4050, 0x1, 0x377, 0x1, 0x378, 0x1, 0x0 };

    PlayerItemBoomerang_Actions[this->action](this);
    if (this->animIndex != 0xb) {
        if (this->animationState == 6) {
            this->field_0x86.HWORD += 0x2000;
        } else {
            this->field_0x86.HWORD -= 0x2000;
        }
        SetAffineInfo(this, 0x100, 0x100, this->field_0x86.HWORD);
    }

    this->subtimer--;
    if ((this->subtimer & 0xf) == 0) {
        EnqueueSFX(SFX_FB);
    }
}

void PlayerItemBoomerang_Init(Entity* this) {
    u32 uVar1;

    gPlayerState.item = this;
    this->action = 1;
    this->hitbox = &gUnk_081271CC;
    this->frameIndex = 0xff;
    this->field_0x80.HALF.LO = 0;
#ifdef EU
    this->spriteVramOffset = gPlayerEntity.spriteVramOffset;
#endif
    this->animIndex = 11;
    this->parent = &gPlayerEntity;
    this->field_0x86.HWORD = 0;
    if ((this->animationState & 2) != 0) {
        this->spriteSettings.flipX = ~gPlayerEntity.spriteSettings.flipX;
    }
    if (this->field_0x68.HALF.LO == 12) {
        this->speed = 0x280;
        uVar1 = 60;
    } else {
        this->speed = 0x200;
        uVar1 = 30;
    }
    this->timer = uVar1;
    if (((s8)gPlayerState.field_0xd) >= 0) {
        this->direction = gPlayerState.field_0xd;
    } else {
        this->direction = this->animationState << 2;
    }
    this->field_0x82.HALF.HI = this->direction;
    if (this->collisionLayer == 2) {
        this->type2 = 1;
    }
    LoadSwapGFX(this, 1, 3);
    sub_0801766C(this);
    sub_0801B584(this);
}

void sub_0801B584(Entity* this) {
    static const s8 gUnk_080B7826[] = { 0, -8, 8, -4, 0, 8, -8, -4 };
    u32 frameIndex;
    int iVar2;
    u32 cVar3;

    sub_0801B804(this);
    if ((gPlayerState.field_0x3[1] == 0) || (gPlayerState.mobility != 0) || gPlayerState.item != this ||
        (gPlayerState.item == this && gPlayerEntity.action != 1)) {
        if (gPlayerState.item == this) {
            gPlayerState.item = NULL;
        }
        DeleteThisEntity();
    }

    if ((gPlayerEntity.frame & 1) == 0) {
        if (this->field_0x68.HALF.LO == 12) {
            cVar3 = 6;
        } else {
            cVar3 = 0;
        }
        frameIndex = (gPlayerEntity.frame >> 4) + cVar3;
        if (this->frameIndex != frameIndex) {
            this->frameIndex = frameIndex;
            sub_080042D0(this, this->frameIndex, this->spriteIndex);
        }
        sub_08078E84(this, &gPlayerEntity);
    } else {
        this->action = 2;
        this->spriteVramOffset = 0xd5;
        COLLISION_ON(this);
        this->collisionFlags |= 1;
        this->flags2 = gPlayerEntity.flags2;
        this->spriteIndex = 0xa6;
        this->spriteSettings.flipX = 0;
        this->spriteSettings.draw = 1;

        iVar2 = (this->animationState >> 1) * 2;
        this->x.HALF.HI += gUnk_080B7826[iVar2];
        this->y.HALF.HI += gUnk_080B7826[iVar2 + 1];
        InitializeAnimation(this, 0);
        gPlayerState.item = NULL;
        gPlayerState.field_0x3[1] |= 0x80;
    }
}

void sub_0801B680(Entity* this) {
    u32 uvar1;
    u32 uVar6;

    sub_0801B804(this);
    if ((this->field_0x68.HALF.LO == 12) && (this->field_0x80.HALF.LO == 0) && ((gPlayerState.field_0xd & 0x80) == 0)) {
        if (((this->field_0x82.HALF.HI - gPlayerState.field_0xd) & 0x1f) > 0x10) {
            this->field_0x82.HWORD += 0x40;
            this->field_0x82.HALF.HI &= 0x1f;
            this->direction = this->field_0x82.HALF.HI;
        } else {
            this->field_0x82.HWORD -= 0x40;
            this->field_0x82.HALF.HI &= 0x1f;
            this->direction = this->field_0x82.HALF.HI;
        }
    }
    LinearMoveUpdate(this);
    uVar6 = 0;
    if (sub_0801B864(this)) {
        uvar1 = this->field_0x68.HALF.LO;
        uvar1 ^= 0xc;
        if (uvar1) {
            uVar6 = TRUE;
        } else {
            uVar6 = FALSE;
        }
    }

    if (sub_080B1BA4(COORD_TO_TILE(this), gPlayerEntity.collisionLayer, 0x80) == 0) {
        if (uVar6 == 0) {
            uVar6 = sub_080040E2(this, &gUnk_08003E44);
        }
    }

    if (uVar6 == 0) {
        if (--this->timer < 0xc) {
            this->speed = this->speed + -0x10;
        }
        if (this->timer == 0) {
            uVar6 = 1;
        }
        if (this->contactFlags & 0x80) {
            uVar6 = 1;
        }
        if (uVar6 == 0) {
            return;
        }
        if (this->field_0x68.HALF.LO == 12) {
            this->timer = 30;
        } else {
            this->timer = 12;
        }
    } else {
        this->timer = 1;
    }

    if (uVar6) {
        this->action++;
        this->speed = 0x1c0;
    }
}

void sub_0801B7A8(Entity* this) {
    sub_0801B804(this);
    if (this->timer != 0) {
        this->timer--;
    } else {
        sub_0801B864(this);
        if (this->speed < 0x280) {
            this->speed += 8;
        }
        this->direction = GetFacingDirection(this, &gPlayerEntity);
        LinearMoveUpdate(this);
        if (sub_0800419C(this, &gPlayerEntity, 2, 2) != 0) {
            DeleteThisEntity();
        }
    }
}

void sub_0801B804(Entity* this) {
    u32 itemSlot;
    u32 uVar1;

    itemSlot = IsItemEquipped(ITEM_MAGIC_BOOMERANG);
    switch (itemSlot) {
        case 0:
            uVar1 = 1;
            break;
        case 1:
            uVar1 = 2;
            break;
        case 2:
            uVar1 = 0;
            break;
    }

    if ((uVar1 & gPlayerState.playerInput.field_0x90) == 0) {
        this->field_0x80.HALF.LO = 1;
        gPlayerState.field_0xa &= 0x7f;
        gPlayerState.keepFacing &= 0x7f;
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
    return sub_08008782(this, 2, gUnk_080B782E[iVar1], gUnk_080B782E[iVar1 + 1]);
}
