/**
 * @file rupeeLike.c
 * @ingroup Enemies
 *
 * @brief Rupee Like enemy
 */
#include "enemy.h"
#include "entity.h"
#include "hitbox.h"
#include "object.h"
#include "room.h"
#include "save.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[24];
    /*0x80*/ u8 unk_80;
    /*0x81*/ u8 unk_81;
    /*0x82*/ u8 unk_82;
    /*0x83*/ u8 unk_83;
    /*0x84*/ u8 unk_84;
} RupeeLikeEntity;

extern void sub_080293DC(RupeeLikeEntity* this);
extern void sub_080296D8(RupeeLikeEntity* this);
extern void sub_08029770(RupeeLikeEntity* this);
extern void sub_080297F0(RupeeLikeEntity* this);
extern void sub_080296C8(RupeeLikeEntity* this);
extern void sub_0802969C(RupeeLikeEntity* this);

extern void (*const RupeeLike_Functions[])(RupeeLikeEntity*);
extern void (*const gUnk_080CCC18[])(RupeeLikeEntity*);
extern void (*const gUnk_080CCC3C[])(RupeeLikeEntity*);

extern const u8 gUnk_080CCC34[];
extern const s8 gUnk_080CCC44[];
extern const u8 gUnk_080CCC47[];

void RupeeLike(RupeeLikeEntity* this) {
    u32 uVar1;

    if (super->type2 == 0) {
        uVar1 = (u8)GetTileHazardType(super);
        if (uVar1 != 0) {
            if (super->action == 4) {
                sub_080296D8(this);
            }
            sub_08001290(super, uVar1);
        } else {
            RupeeLike_Functions[GetNextFunction(super)](this);
            EnemySetFXOffset(super, 0, 1, -0x10);
        }
    } else {
        sub_080293DC(this);
    }
}

void RupeeLike_OnTick(RupeeLikeEntity* this) {
    gUnk_080CCC18[super->action](this);
}

void RupeeLike_OnCollision(RupeeLikeEntity* this) {
    if (super->hitType == 0x8e) {
        sub_08029770(this);
    } else {
        if (super->action == 4) {
            sub_080296D8(this);
        }
        if (*(u8*)(*(u32*)&super->contactedEntity + 8) == 1) {
            if (super->action == 2) {
                InitializeAnimation(super, 0);
                InitializeAnimation(super->child, 4);
            }
            super->action = 4;
            super->timer = 60;
            super->subtimer = 0;
            this->unk_83 = 0x41;
            super->collisionMask &= 0xfc;
            this->unk_80 = gPlayerEntity.base.spritePriority.b1;
            EnqueueSFX(SFX_PLACE_OBJ);
        } else {
            if (super->confusedTime != 0) {
                EnemyCreateFX(super, FX_STARS);
            }
        }
    }
    EnemyFunctionHandlerAfterCollision(super, RupeeLike_Functions);
}

void RupeeLike_OnDeath(RupeeLikeEntity* this) {
    EnemyCreateDeathFX((Enemy*)super, 0xff, gUnk_080CCC34[this->unk_84 * 3 + super->type]);
}

void RupeeLike_OnGrabbed(RupeeLikeEntity* this) {
}

void sub_080293DC(RupeeLikeEntity* this) {
    CopyPositionAndSpriteOffset(super->parent, super);
    super->y.HALF.HI++;
    super->z.HALF.HI--;
    gUnk_080CCC3C[super->action](this);
}

void sub_0802940C(RupeeLikeEntity* this) {
    Entity* entity;

    entity = CreateEnemy(RUPEE_LIKE, super->type);
    if (entity != NULL) {
        sub_0804A720(super);
        entity->parent = super;
        entity->type2 = 1;
        super->child = entity;
        this->unk_81 = 0;
        this->unk_84 = 0;
        this->unk_82 = super->palette.b.b0;
        sub_080297F0(this);
    }
}

void sub_0802944C(RupeeLikeEntity* this) {
    sub_080296C8(this);
    if ((this->unk_81 != 0) && sub_08049FDC(super, 1)) {
        sub_08029770(this);
    }
}

void sub_08029474(RupeeLikeEntity* this) {
    u32 bVar1;

    sub_080296C8(this);
    if (super->frame & ANIM_DONE) {
        super->action = 3;
        super->timer = 8;
        bVar1 = GetFacingDirection(super, &gPlayerEntity.base);
        super->direction = bVar1;
        super->animationState = (bVar1 << 0x18) >> 0x1c;
        InitializeAnimation(super, super->animationState);
        InitializeAnimation(super->child, super->animationState + 4);
    } else {
        if (super->frame == 1) {
            super->frame = 0;
            COLLISION_ON(super);
        }
    }
}

void sub_080294D4(RupeeLikeEntity* this) {
    if (sub_08049FDC(super, 1) != 0) {
        if (--super->timer == 0) {
            super->timer = 8;
            sub_08004596(super, GetFacingDirection(super, &gPlayerEntity.base));
            sub_0802969C(this);
        }
        ProcessMovement0(super);
        sub_080296C8(this);
    } else {
        super->action = 6;
        COLLISION_OFF(super);
        InitializeAnimation(super, 3);
        InitializeAnimation(super->child, 7);
    }
}

void sub_0802953C(RupeeLikeEntity* this) {
    u8* pbVar3;

    sub_080296C8(this);
    sub_080296C8(this);
    if (sub_0807953C() != 0) {
        super->subtimer++;
    }
    if (super->timer != 0) {
        super->timer--;
    }
    if (((super->subtimer > 0x2d) || (gSave.stats.rupees == 0)) && (super->timer == 0)) {
        sub_080296D8(this);
    } else {
        ResetActiveItems();
        gPlayerState.mobility |= 0x80;
        PositionRelative(super, &gPlayerEntity.base, 0, Q_16_16(1.0));
        pbVar3 = GetSpriteSubEntryOffsetDataPointer((u16)super->spriteIndex, super->frameIndex);
        gPlayerEntity.base.spriteOffsetX = pbVar3[0];
        gPlayerEntity.base.spriteOffsetY = pbVar3[1] - 1;
        gPlayerEntity.base.spritePriority.b1 = 0;
        if (--this->unk_83 == 0) {
            this->unk_83 = 0x41;
            if (gSave.stats.rupees != 0) {
                ModRupees(gUnk_080CCC44[super->type]);
                this->unk_84 = 1;
            }
        }
    }
}

void sub_08029610(RupeeLikeEntity* this) {
    if (--super->subtimer == 0) {
        super->action = 3;
        super->timer = 1;
    }
    sub_080296C8(this);
}

void sub_08029630(RupeeLikeEntity* this) {
    sub_080296C8(this);
    if (super->frame & ANIM_DONE) {
        this->unk_81 = 1;
        super->child->spriteSettings.draw = FALSE;
        sub_080297F0(this);
    }
}

void sub_08029660(RupeeLikeEntity* this) {
    u32 temp;
    super->action = 1;
    super->spriteIndex = 0xd1;
    temp = gUnk_080CCC47[super->type];
    super->palette.b.b0 = temp;
}

void sub_08029688(RupeeLikeEntity* this) {
    if (super->parent->next == NULL) {
        DeleteEntity(super);
    }
}

void sub_0802969C(RupeeLikeEntity* this) {
    u32 bVar1;

    if (super->direction & (0x3 | DIR_DIAGONAL | DirectionEast)) {

        bVar1 = super->direction >> 4;
        if (bVar1 != super->animationState) {
            super->animationState = bVar1;
            InitializeAnimation(super, bVar1);
            InitializeAnimation(super->child, bVar1 + 4);
        }
    }
}

void sub_080296C8(RupeeLikeEntity* this) {
    GetNextFrame(super);
    GetNextFrame(super->child);
}

void sub_080296D8(RupeeLikeEntity* this) {
    gPlayerState.jump_status = 0x41;
    gPlayerState.flags &= ~PL_CAPTURED;
    gPlayerEntity.base.flags |= ENT_COLLIDE;
    gPlayerEntity.base.zVelocity = Q_16_16(1.5);
    gPlayerEntity.base.iframes = 0xa6;
    gPlayerEntity.base.z.HALF.HI = -2;
    gPlayerEntity.base.direction = gPlayerEntity.base.animationState << 2;
    gPlayerEntity.base.spritePriority.b1 = this->unk_80;
    gPlayerEntity.base.spriteOffsetY = 0;
    gPlayerEntity.base.speed = 0x140;
    super->action = 5;
    super->subtimer = 60;
    super->collisionMask |= 3;
    if ((s8)super->iframes == 0) {
        super->iframes = 0xf4;
    }
}

void sub_08029770(RupeeLikeEntity* this) {
    u32 temp;
    if (LoadFixedGFX(super, 0x73) != 0) {
        super->action = 2;
        COLLISION_OFF(super);
        super->spriteIndex = 0xd1;
        super->spritePriority.b1 = 3;
        temp = this->unk_82;
        super->palette.b.b0 = temp;
        super->hitType = 0x8d;
        super->hitbox = (Hitbox*)&gUnk_080FD260;
        InitializeAnimation(super, 2);
        super->child->spriteSettings.draw = TRUE;
        InitializeAnimation(super->child, 6);
        CreateDust(super);
    }
}

void sub_080297F0(RupeeLikeEntity* this) {
    u32 temp;
    super->action = 1;
    super->timer = 120;
    COLLISION_ON(super);
    super->spriteSettings.draw = TRUE;
    super->hitType = 0x8e;
    UnloadGFXSlots(super);
#ifdef EU
    super->spriteIndex = 0x142;
#else
    super->spriteIndex = 0x143;
#endif
    temp = gUnk_080CCC47[super->type];
    super->palette.b.b0 = temp;
    super->spriteVramOffset = 9;
    InitializeAnimation(super, 0x54);
}

// clang-format off
void (*const RupeeLike_Functions[])(RupeeLikeEntity*) = {
    RupeeLike_OnTick,
    RupeeLike_OnCollision,
    (void (*)(RupeeLikeEntity*))GenericKnockback,
    RupeeLike_OnDeath,
    (void (*)(RupeeLikeEntity*))GenericConfused,
    RupeeLike_OnGrabbed,
};

void (*const gUnk_080CCC18[])(RupeeLikeEntity*) = {
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

void (*const gUnk_080CCC3C[])(RupeeLikeEntity*) = {
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
