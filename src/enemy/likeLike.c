/**
 * @file likeLike.c
 * @ingroup Enemies
 *
 * @brief Like Like enemy
 */

#include "enemy.h"
#include "message.h"
#include "save.h"
#include "object.h"
#include "functions.h"
#include "item.h"

extern bool32 ItemIsShield(u32);

void sub_0802810C(Entity*);
void sub_080281A0(Entity*);
bool32 sub_080281E0(u32);
void sub_08028224(u32);

extern void (*const LikeLike_Functions[])(Entity*);
extern void (*const gUnk_080CC714[])(Entity*);

void LikeLike(Entity* this) {
    EnemyFunctionHandler(this, LikeLike_Functions);
    SetChildOffset(this, 0, 1, -0x10);
}

void LikeLike_OnTick(Entity* this) {
    gUnk_080CC714[this->action](this);
}

void LikeLike_OnCollision(Entity* this) {
    if (this->hitType == 1) {
        this->action = 3;
        COLLISION_OFF(this);
        this->hitType = 0x8c;
    } else {
        if (this->action == 7) {
            sub_0802810C(this);
        } else if (this->contactFlags & 0x80) {
            u8 tmp = this->contactFlags & ~0x80;
            if (!tmp) {
                this->action = 7;
                this->timer = 0x5f;
                this->subtimer = tmp;
                this->flags2 &= 0xfc;
                this->field_0x82.HALF.HI = gPlayerEntity.spritePriority.b1;
            }
        }
    }

    if (this->health == 0) {
        this->timer = 0x20;
    }

    if (this->confusedTime) {
        Create0x68FX(this, FX_STARS);
    }

    EnemyFunctionHandlerAfterCollision(this, LikeLike_Functions);
}

void LikeLike_OnDeath(Entity* this) {
    if (this->timer == 2 && this->field_0x80.HALF.LO != 0xff) {
        SetDefaultPriority(this, PRIO_NO_BLOCK);
        sub_08028224(this->field_0x80.HALF.LO);
    }
    GenericDeath(this);
}

void LikeLike_OnGrabbed(Entity* this) {
    /* ... */
}

void sub_08027E70(Entity* this) {
    sub_0804A720(this);

    switch (this->type) {
        case 0:
            this->action = 3;
            this->spriteSettings.draw = 0;
            COLLISION_OFF(this);
            this->timer = 0;
            break;
        case 1:
            this->action = 1;
            this->spriteSettings.draw = 1;
            this->timer = 8;
            InitializeAnimation(this, 1);
            break;
        case 2:
            this->action = 1;
            this->spriteSettings.draw = 0;
            this->timer = 0;
            this->hitType = 1;
            InitializeAnimation(this, 0);
            break;
    }

    this->direction = 0;
    this->field_0x82.HALF.LO = 0;
    this->animationState = 0;
    this->field_0x82.HALF.HI = 0;
    this->field_0x80.HALF.LO = 0xff;
}

void sub_08027EFC(Entity* this) {
    if (this->hitType == 1)
        return;

    if (sub_08049FDC(this, 1)) {
        if (!sub_08049FA0(this) && (Random() & 0x30)) {
            this->direction = sub_08049EE4(this);
        } else {
            this->direction = this->field_0x82.HALF.LO;
        }

        if (--this->timer == 0) {
            this->direction = sub_08049F84(this, 1);
            this->field_0x82.HALF.LO = this->direction;
            this->timer = 8;
        }
        ProcessMovement0(this);
        GetNextFrame(this);
    } else {
        this->action = 6;
        COLLISION_OFF(this);
        InitializeAnimation(this, 2);
    }
}

void nullsub_12(Entity* this) {
    /* ... */
}

void sub_08027F84(Entity* this) {
    if (sub_08049FDC(this, 1)) {
        this->action = 5;
        this->spriteSettings.draw = 1;
        InitializeAnimation(this, 0);
        CreateDust(this);
    }
}

void sub_08027FB4(Entity* this) {
    if (--this->timer == 0) {
        this->action = 1;
        this->timer = 1;
        this->flags2 |= 1;
    }
    GetNextFrame(this);
}

void sub_08027FE0(Entity* this) {
    GetNextFrame(this);
    if (this->frame & 1) {
        this->action = 1;
        COLLISION_ON(this);
        this->direction = sub_08049F84(this, 1);
        this->timer = 8;
        this->spritePriority.b1 = 1;
        InitializeAnimation(this, 1);
    }
}

void sub_0802802C(Entity* this) {
    GetNextFrame(this);
    if (this->frame & 1) {
        this->action = 3;
        this->spriteSettings.draw = 0;
        this->direction = 0;
        this->timer = 0;
        CreateDust(this);
    }
}

void sub_0802805C(Entity* this) {
    u8* tmp;

    UpdateAnimationVariableFrames(this, 2);

    if (sub_0807953C()) {
        u32 tmp2 = Random();
        u32 tmp3 = this->subtimer + 1;
        tmp3 += (tmp2 & 1);
        this->subtimer = tmp3;
    }

    if (this->subtimer >= 0x19 || gSave.stats.health == 0) {
        sub_0802810C(this);
    } else {
        ResetPlayerItem();
        gPlayerState.mobility |= 0x80;
        PositionRelative(this, &gPlayerEntity, 0, Q_16_16(1.0));

        tmp = GetSpriteSubEntryOffsetDataPointer((u16)this->spriteIndex, this->frameIndex);
        gPlayerEntity.spriteOffsetX = tmp[0];
        gPlayerEntity.spriteOffsetY = tmp[1];
        gPlayerEntity.spritePriority.b1 = 0;

        if (--this->timer == 0) {
            sub_080281A0(this);
        }

        if ((this->timer & 3) == 0) {
            EnqueueSFX(SFX_PLACE_OBJ);
        }
    }
}

NONMATCH("asm/non_matching/likeLike/sub_0802810C.inc", void sub_0802810C(Entity* this)) {
    gPlayerState.jump_status = 0x41;
    gPlayerState.field_0xa = 0;
    gPlayerState.flags &= PL_CAPTURED;
    gPlayerEntity.flags |= ENT_COLLIDE;
    gPlayerEntity.zVelocity = Q_16_16(1.5);
    gPlayerEntity.iframes = -60;
    gPlayerEntity.direction = gPlayerEntity.animationState << 2;
    gPlayerEntity.spritePriority.b1 = this->field_0x82.HALF.HI;
    gPlayerEntity.z.HALF.HI = gPlayerEntity.spriteOffsetY;
    gPlayerEntity.spriteOffsetY = 0;
    this->action = 4;
    this->timer = 0x50;
    this->subtimer = 0;
    this->flags2 |= 2;
    if (this->iframes == 0) {
        this->iframes = -18;
    }
}
END_NONMATCH

void sub_080281A0(Entity* this) {
    this->subtimer = 0x19;
    if (sub_080281E0(ITEM_MIRROR_SHIELD)) {
        this->field_0x80.HALF.LO = ITEM_MIRROR_SHIELD;
        MessageFromTarget(0x578);
    } else if (sub_080281E0(ITEM_SHIELD)) {
        this->field_0x80.HALF.LO = ITEM_SHIELD;
        MessageFromTarget(0x578);
    } else {
        ModHealth(-1);
    }
}

/** Can steal item */
bool32 sub_080281E0(u32 item) {
    bool32 ret = FALSE;
    if (GetInventoryValue(item) == 1) {
        if (ItemIsShield(gSave.stats.itemButtons[SLOT_A])) {
            gSave.stats.itemButtons[SLOT_A] = 0;
        }

        if (ItemIsShield(gSave.stats.itemButtons[SLOT_B])) {
            gSave.stats.itemButtons[SLOT_B] = 0;
        }

        SetInventoryValue(item, 0);
        ret = TRUE;
    }

    return ret;
}

/** Return stolen item */
void sub_08028224(u32 item) {
#ifdef EU
    CreateItemEntity(item, 0, 1);
#else
    InitItemGetSequence(item, 0, 1);
#endif
    MessageFromTarget(0x579);
}

void (*const LikeLike_Functions[])(Entity*) = {
    LikeLike_OnTick, LikeLike_OnCollision, GenericKnockback, LikeLike_OnDeath, GenericConfused, LikeLike_OnGrabbed,
};

void (*const gUnk_080CC714[])(Entity*) = {
    sub_08027E70, sub_08027EFC, nullsub_12, sub_08027F84, sub_08027FB4, sub_08027FE0, sub_0802802C, sub_0802805C,
};
