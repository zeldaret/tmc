/**
 * @file likeLike.c
 * @ingroup Enemies
 *
 * @brief Like Like enemy
 */
#include "enemy.h"
#include "item.h"
#include "message.h"
#include "object.h"
#include "save.h"

typedef struct {
    Entity base;
    u8 filler[0x18];
    u8 stolenItem;
    u8 filler2;
    u8 field_0x82;
    u8 prevSpritePriority;
} LikeLikeEntity;

extern bool32 ItemIsShield(u32);

void LikeLike_ReleasePlayer(LikeLikeEntity*);
void sub_080281A0(LikeLikeEntity*);
bool32 LikeLike_StealItem(u32);
void LikeLike_ReturnStolenItem(u32);

extern void (*const LikeLike_Functions[])(Entity*);
extern void (*const gUnk_080CC714[])(LikeLikeEntity*);

void LikeLike(Entity* this) {
    EnemyFunctionHandler(this, LikeLike_Functions);
    EnemySetFXOffset(this, 0, 1, -0x10);
}

void LikeLike_OnTick(LikeLikeEntity* this) {
    gUnk_080CC714[super->action](this);
}

void LikeLike_OnCollision(LikeLikeEntity* this) {
    if (super->hitType == 1) {
        super->action = 3;
        COLLISION_OFF(super);
        super->hitType = 0x8c;
    } else {
        if (super->action == 7) {
            LikeLike_ReleasePlayer(this);
        } else if (super->contactFlags & CONTACT_NOW) {
            u8 tmp = super->contactFlags & ~CONTACT_NOW;
            if (tmp == 0) {
                super->action = 7;
                super->timer = 95;
                super->subtimer = tmp;
                super->collisionMask &= 0xfc;
                this->prevSpritePriority = gPlayerEntity.base.spritePriority.b1;
            }
        }
    }

    if (super->health == 0) {
        super->timer = 32;
    }

    if (super->confusedTime) {
        EnemyCreateFX(super, FX_STARS);
    }

    EnemyFunctionHandlerAfterCollision(super, LikeLike_Functions);
}

void LikeLike_OnDeath(LikeLikeEntity* this) {
    if (super->timer == 2 && this->stolenItem != 0xff) {
        SetEntityPriority(super, PRIO_NO_BLOCK);
        LikeLike_ReturnStolenItem(this->stolenItem);
    }
    GenericDeath(super);
}

void LikeLike_OnGrabbed(LikeLikeEntity* this) {
}

void LikeLike_Init(LikeLikeEntity* this) {
    sub_0804A720(super);

    switch (super->type) {
        case 0:
            super->action = 3;
            super->spriteSettings.draw = 0;
            COLLISION_OFF(super);
            super->timer = 0;
            break;
        case 1:
            super->action = 1;
            super->spriteSettings.draw = 1;
            super->timer = 8;
            InitializeAnimation(super, 1);
            break;
        case 2:
            super->action = 1;
            super->spriteSettings.draw = 0;
            super->timer = 0;
            super->hitType = 1;
            InitializeAnimation(super, 0);
            break;
    }

    super->direction = 0;
    this->field_0x82 = 0;
    super->animationState = 0;
    this->prevSpritePriority = 0;
    this->stolenItem = 0xff;
}

void sub_08027EFC(LikeLikeEntity* this) {
    if (super->hitType == 1)
        return;

    if (sub_08049FDC(super, 1)) {
        if (!sub_08049FA0(super) && (Random() & 0x30)) {
            super->direction = sub_08049EE4(super);
        } else {
            super->direction = this->field_0x82;
        }

        if (--super->timer == 0) {
            super->direction = sub_08049F84(super, 1);
            this->field_0x82 = super->direction;
            super->timer = 8;
        }
        ProcessMovement0(super);
        GetNextFrame(super);
    } else {
        super->action = 6;
        COLLISION_OFF(super);
        InitializeAnimation(super, 2);
    }
}

void nullsub_12(LikeLikeEntity* this) {
}

void sub_08027F84(LikeLikeEntity* this) {
    if (sub_08049FDC(super, 1)) {
        super->action = 5;
        super->spriteSettings.draw = 1;
        InitializeAnimation(super, 0);
        CreateDust(super);
    }
}

void sub_08027FB4(LikeLikeEntity* this) {
    if (--super->timer == 0) {
        super->action = 1;
        super->timer = 1;
        super->collisionMask |= 1;
    }
    GetNextFrame(super);
}

void sub_08027FE0(LikeLikeEntity* this) {
    GetNextFrame(super);
    if (super->frame & 1) {
        super->action = 1;
        COLLISION_ON(super);
        super->direction = sub_08049F84(super, 1);
        super->timer = 8;
        super->spritePriority.b1 = 1;
        InitializeAnimation(super, 1);
    }
}

void sub_0802802C(LikeLikeEntity* this) {
    GetNextFrame(super);
    if (super->frame & 1) {
        super->action = 3;
        super->spriteSettings.draw = 0;
        super->direction = 0;
        super->timer = 0;
        CreateDust(super);
    }
}

void sub_0802805C(LikeLikeEntity* this) {
    u8* tmp;

    UpdateAnimationVariableFrames(super, 2);

    if (sub_0807953C()) {
        u32 tmp2 = Random();
        u32 tmp3 = super->subtimer + 1;
        tmp3 += (tmp2 & 1);
        super->subtimer = tmp3;
    }

    if (super->subtimer >= 0x19 || gSave.stats.health == 0) {
        LikeLike_ReleasePlayer(this);
    } else {
        ResetActiveItems();
        gPlayerState.mobility |= 0x80;
        PositionRelative(super, &gPlayerEntity.base, 0, Q_16_16(1.0));

        tmp = GetSpriteSubEntryOffsetDataPointer((u16)super->spriteIndex, super->frameIndex);
        gPlayerEntity.base.spriteOffsetX = tmp[0];
        gPlayerEntity.base.spriteOffsetY = tmp[1];
        gPlayerEntity.base.spritePriority.b1 = 0;

        if (--super->timer == 0) {
            sub_080281A0(this);
        }

        if ((super->timer & 3) == 0) {
            EnqueueSFX(SFX_PLACE_OBJ);
        }
    }
}

void LikeLike_ReleasePlayer(LikeLikeEntity* this) {
// This matches but ugly
#ifndef NON_MATCHING
    register u32 tmp asm("r3");
#else
    u32 tmp;
#endif
    gPlayerState.jump_status = 0x41;
    gPlayerState.field_0xa = 0;
    gPlayerState.flags &= ~PL_CAPTURED;
    gPlayerEntity.base.flags |= ENT_COLLIDE;
    gPlayerEntity.base.zVelocity = Q_16_16(1.5);
    gPlayerEntity.base.iframes = -60;
    tmp = 0;
    gPlayerEntity.base.direction = Direction8FromAnimationState(gPlayerEntity.base.animationState);
    gPlayerEntity.base.spritePriority.b1 = this->prevSpritePriority;
    gPlayerEntity.base.z.HALF.HI = gPlayerEntity.base.spriteOffsetY;
    gPlayerEntity.base.spriteOffsetY = tmp;
    super->action = 4;
    super->timer = 80;
    super->subtimer = tmp;
    super->collisionMask |= 2;
    if (super->iframes == 0) {
        super->iframes = -18;
    }
}

void sub_080281A0(LikeLikeEntity* this) {
    super->subtimer = 25;
    if (LikeLike_StealItem(ITEM_MIRROR_SHIELD)) {
        this->stolenItem = ITEM_MIRROR_SHIELD;
        MessageFromTarget(TEXT_INDEX(TEXT_ITEM_GET, 0x78));
    } else if (LikeLike_StealItem(ITEM_SHIELD)) {
        this->stolenItem = ITEM_SHIELD;
        MessageFromTarget(TEXT_INDEX(TEXT_ITEM_GET, 0x78));
    } else {
        ModHealth(-1);
    }
}

bool32 LikeLike_StealItem(u32 item) {
    bool32 ret = FALSE;
    if (GetInventoryValue(item) == 1) {
        if (ItemIsShield(gSave.stats.equipped[SLOT_A])) {
            gSave.stats.equipped[SLOT_A] = ITEM_NONE;
        }

        if (ItemIsShield(gSave.stats.equipped[SLOT_B])) {
            gSave.stats.equipped[SLOT_B] = ITEM_NONE;
        }

        SetInventoryValue(item, 0);
        ret = TRUE;
    }

    return ret;
}

void LikeLike_ReturnStolenItem(u32 item) {
#ifdef EU
    CreateItemEntity(item, 0, 1);
#else
    InitItemGetSequence(item, 0, 1);
#endif
    MessageFromTarget(TEXT_INDEX(TEXT_ITEM_GET, 0x79));
}

void (*const LikeLike_Functions[])(Entity*) = {
    (EntityActionPtr)LikeLike_OnTick,
    (EntityActionPtr)LikeLike_OnCollision,
    GenericKnockback,
    (EntityActionPtr)LikeLike_OnDeath,
    GenericConfused,
    (EntityActionPtr)LikeLike_OnGrabbed,
};

void (*const gUnk_080CC714[])(LikeLikeEntity*) = {
    LikeLike_Init, sub_08027EFC, nullsub_12, sub_08027F84, sub_08027FB4, sub_08027FE0, sub_0802802C, sub_0802805C,
};
