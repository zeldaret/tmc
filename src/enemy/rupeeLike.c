/**
 * @file rupeeLike.c
 * @ingroup Enemies
 *
 * @brief Rupee Like enemy
 */

#include "global.h"
#include "asm.h"
#include "sound.h"
#include "entity.h"
#include "enemy.h"
#include "object.h"
#include "functions.h"
#include "save.h"
#include "hitbox.h"

extern void sub_080293DC(Entity*);
extern void sub_080296D8(Entity*);
extern void sub_08029770(Entity*);
extern void sub_080297F0(Entity*);
extern void sub_080296C8(Entity*);
extern void sub_0802969C(Entity*);

extern void (*const RupeeLike_Functions[])(Entity*);
extern void (*const gUnk_080CCC18[])(Entity*);
extern void (*const gUnk_080CCC3C[])(Entity*);

extern const u8 gUnk_080CCC34[];
extern const s8 gUnk_080CCC44[];
extern const u8 gUnk_080CCC47[];

void RupeeLike(Entity* this) {
    u32 uVar1;

    if (this->type2 == 0) {
        uVar1 = (u8)sub_080043E8(this);
        if (uVar1 != 0) {
            if (this->action == 4) {
                sub_080296D8(this);
            }
            sub_08001290(this, uVar1);
        } else {
            RupeeLike_Functions[GetNextFunction(this)](this);
            SetChildOffset(this, 0, 1, -0x10);
        }
    } else {
        sub_080293DC(this);
    }
}

void RupeeLike_OnTick(Entity* this) {
    gUnk_080CCC18[this->action](this);
}

void RupeeLike_OnCollision(Entity* this) {
    if (this->hitType == 0x8e) {
        sub_08029770(this);
    } else {
        if (this->action == 4) {
            sub_080296D8(this);
        }
        if (*(u8*)(*(u32*)&this->contactedEntity + 8) == 1) {
            if (this->action == 2) {
                InitializeAnimation(this, 0);
                InitializeAnimation(this->child, 4);
            }
            this->action = 4;
            this->timer = 0x3c;
            this->subtimer = 0;
            this->field_0x82.HALF.HI = 0x41;
            this->flags2 &= 0xfc;
            this->field_0x80.HALF.LO = gPlayerEntity.spritePriority.b1;
            EnqueueSFX(SFX_PLACE_OBJ);
        } else {
            if (this->confusedTime != 0) {
                Create0x68FX(this, FX_STARS);
            }
        }
    }
    EnemyFunctionHandlerAfterCollision(this, RupeeLike_Functions);
}

void RupeeLike_OnDeath(Entity* this) {
    CreateDeathFx(this, 0xff, gUnk_080CCC34[this->cutsceneBeh.HALF.LO * 3 + this->type]);
}

void RupeeLike_OnGrabbed(Entity* this) {
}

void sub_080293DC(Entity* this) {
    CopyPositionAndSpriteOffset(this->parent, this);
    this->y.HALF.HI++;
    this->z.HALF.HI--;
    gUnk_080CCC3C[this->action](this);
}

void sub_0802940C(Entity* this) {
    Entity* ent;

    ent = CreateEnemy(RUPEE_LIKE, this->type);
    if (ent != NULL) {
        sub_0804A720(this);
        ent->parent = this;
        ent->type2 = 1;
        this->child = ent;
        this->field_0x80.HALF.HI = 0;
        this->cutsceneBeh.HALF.LO = 0;
        this->field_0x82.HALF.LO = this->palette.b.b0;
        sub_080297F0(this);
    }
}

void sub_0802944C(Entity* this) {
    sub_080296C8(this);
    if ((this->field_0x80.HALF.HI != 0) && sub_08049FDC(this, 1)) {
        sub_08029770(this);
    }
}

void sub_08029474(Entity* this) {
    u32 bVar1;

    sub_080296C8(this);
    if (this->frame & ANIM_DONE) {
        this->action = 3;
        this->timer = 8;
        bVar1 = GetFacingDirection(this, &gPlayerEntity);
        this->direction = bVar1;
        this->animationState = (bVar1 << 0x18) >> 0x1c;
        InitializeAnimation(this, this->animationState);
        InitializeAnimation(this->child, this->animationState + 4);
    } else {
        if (this->frame == 1) {
            this->frame = 0;
            COLLISION_ON(this);
        }
    }
}

void sub_080294D4(Entity* this) {
    if (sub_08049FDC(this, 1) != 0) {
        if (--this->timer == 0) {
            this->timer = 8;
            sub_08004596(this, GetFacingDirection(this, &gPlayerEntity));
            sub_0802969C(this);
        }
        ProcessMovement0(this);
        sub_080296C8(this);
    } else {
        this->action = 6;
        COLLISION_OFF(this);
        InitializeAnimation(this, 3);
        InitializeAnimation(this->child, 7);
    }
}

void sub_0802953C(Entity* this) {
    u8* pbVar3;

    sub_080296C8(this);
    sub_080296C8(this);
    if (sub_0807953C() != 0) {
        this->subtimer++;
    }
    if (this->timer != 0) {
        this->timer--;
    }
    if (((this->subtimer > 0x2d) || (gSave.stats.rupees == 0)) && (this->timer == 0)) {
        sub_080296D8(this);
    } else {
        ResetPlayerItem();
        gPlayerState.mobility |= 0x80;
        PositionRelative(this, &gPlayerEntity, 0, Q_16_16(1.0));
        pbVar3 = GetSpriteSubEntryOffsetDataPointer((u16)this->spriteIndex, this->frameIndex);
        gPlayerEntity.spriteOffsetX = pbVar3[0];
        gPlayerEntity.spriteOffsetY = pbVar3[1] - 1;
        gPlayerEntity.spritePriority.b1 = 0;
        if (--this->field_0x82.HALF.HI == 0) {
            this->field_0x82.HALF.HI = 0x41;
            if (gSave.stats.rupees != 0) {
                ModRupees(gUnk_080CCC44[this->type]);
                this->cutsceneBeh.HALF.LO = 1;
            }
        }
    }
}

void sub_08029610(Entity* this) {
    if (--this->subtimer == 0) {
        this->action = 3;
        this->timer = 1;
    }
    sub_080296C8(this);
}

void sub_08029630(Entity* this) {
    sub_080296C8(this);
    if (this->frame & ANIM_DONE) {
        this->field_0x80.HALF.HI = 1;
        this->child->spriteSettings.draw = FALSE;
        sub_080297F0(this);
    }
}

void sub_08029660(Entity* this) {
    u32 temp;
    this->action = 1;
    this->spriteIndex = 0xd1;
    temp = gUnk_080CCC47[this->type];
    this->palette.b.b0 = temp;
}

void sub_08029688(Entity* this) {
    if (this->parent->next == NULL) {
        DeleteEntity(this);
    }
}

void sub_0802969C(Entity* this) {
    u32 bVar1;

    if ((this->direction & 0xf) != 0) {

        bVar1 = this->direction >> 4;
        if (bVar1 != this->animationState) {
            this->animationState = bVar1;
            InitializeAnimation(this, bVar1);
            InitializeAnimation(this->child, bVar1 + 4);
        }
    }
}

void sub_080296C8(Entity* this) {
    GetNextFrame(this);
    GetNextFrame(this->child);
}

void sub_080296D8(Entity* this) {
    gPlayerState.jump_status = 0x41;
    gPlayerState.flags &= ~PL_CAPTURED;
    gPlayerEntity.flags |= ENT_COLLIDE;
    gPlayerEntity.zVelocity = Q_16_16(1.5);
    gPlayerEntity.iframes = 0xa6;
    gPlayerEntity.z.HALF.HI = -2;
    gPlayerEntity.direction = gPlayerEntity.animationState << 2;
    gPlayerEntity.spritePriority.b1 = this->field_0x80.HALF.LO;
    gPlayerEntity.spriteOffsetY = 0;
    gPlayerEntity.speed = 0x140;
    this->action = 5;
    this->subtimer = 0x3c;
    this->flags2 |= 3;
    if ((s8)this->iframes == 0) {
        this->iframes = 0xf4;
    }
}

void sub_08029770(Entity* this) {
    u32 temp;
    if (LoadFixedGFX(this, 0x73) != 0) {
        this->action = 2;
        COLLISION_OFF(this);
        this->spriteIndex = 0xd1;
        this->spritePriority.b1 = 3;
        temp = this->field_0x82.HALF.LO;
        this->palette.b.b0 = temp;
        this->hitType = 0x8d;
        this->hitbox = (Hitbox*)&gUnk_080FD260;
        InitializeAnimation(this, 2);
        this->child->spriteSettings.draw = TRUE;
        InitializeAnimation(this->child, 6);
        CreateDust(this);
    }
}

void sub_080297F0(Entity* this) {
    u32 temp;
    this->action = 1;
    this->timer = 0x78;
    COLLISION_ON(this);
    this->spriteSettings.draw = TRUE;
    this->hitType = 0x8e;
    UnloadGFXSlots(this);
#ifdef EU
    this->spriteIndex = 0x142;
#else
    this->spriteIndex = 0x143;
#endif
    temp = gUnk_080CCC47[this->type];
    this->palette.b.b0 = temp;
    this->spriteVramOffset = 9;
    InitializeAnimation(this, 0x54);
}

// clang-format off
void (*const RupeeLike_Functions[])(Entity*) = {
    RupeeLike_OnTick,
    RupeeLike_OnCollision,
    GenericKnockback,
    RupeeLike_OnDeath,
    GenericConfused,
    RupeeLike_OnGrabbed,
};

void (*const gUnk_080CCC18[])(Entity*) = {
    sub_0802940C,
    sub_0802944C,
    sub_08029474,
    sub_080294D4,
    sub_0802953C,
    sub_08029610,
    sub_08029630,
};

const u8 gUnk_080CCC34[] = {
    0x54, 0x55,
    0x56, 0x55,
    0x56, 0x57,
};

void (*const gUnk_080CCC3C[])(Entity*) = {
    sub_08029660,
    sub_08029688,
};

const s8 gUnk_080CCC44[] = {
    -1, -5, -20,
};

const u8 gUnk_080CCC47[] = {
    2, 1, 0,
};
// clang-format on
