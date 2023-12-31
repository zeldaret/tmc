/**
 * @file wallMaster.c
 * @ingroup Enemies
 *
 * @brief Wall Master enemy
 */
#include "area.h"
#include "enemy.h"
#include "functions.h"
#include "screenTransitions.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[16];
    /*0x78*/ u16 unk_78;
    /*0x7a*/ u16 unk_7a;
    /*0x7c*/ u8 unk_7c;
    /*0x7d*/ u8 unk_7d;
    /*0x7e*/ u16 unk_7e;
    /*0x80*/ u16 unk_80;
    /*0x82*/ u16 unk_82;
} WallMasterEntity;

void sub_0802A78C(WallMasterEntity*);
void sub_0802A7D0(WallMasterEntity*);

extern void (*const WallMaster_Functions[])(WallMasterEntity*);
extern void (*const gUnk_080CD094[])(WallMasterEntity*);
extern const s8 gUnk_080CD0B0[];

void WallMaster(WallMasterEntity* this) {
    WallMaster_Functions[GetNextFunction(super)](this);
    EnemySetFXOffset(super, 0, 1, -0x10);
}

void WallMaster_OnTick(WallMasterEntity* this) {
    sub_0802A78C(this);
    gUnk_080CD094[super->action](this);
}

void WallMaster_OnCollision(WallMasterEntity* this) {
    if (super->hitType != 0x75 && ((super->contactFlags & 0x7f) == 0 || (super->contactFlags & 0x7f) == 0x1e)) {
        super->action = 5;
        COLLISION_OFF(super);
        this->unk_7e = gPlayerEntity.base.x.HALF.HI;
        this->unk_80 = gPlayerEntity.base.y.HALF.HI;
        this->unk_82 = gPlayerEntity.base.z.HALF.HI;
        if (super->action != 3) {
            InitializeAnimation(super, 1);
        }
    }

    if (super->knockbackDuration != 0)
        if (super->knockbackDuration > 4)
            super->knockbackDuration -= 4;

    if (super->confusedTime != 0) {
        EnemyCreateFX(super, FX_STARS);
    }

    EnemyFunctionHandlerAfterCollision(super, (EntityActionArray)WallMaster_Functions);
}

void WallMaster_OnGrabbed(WallMasterEntity* this) {
    /* ... */
}

void sub_0802A4E4(WallMasterEntity* this) {
    sub_0804A720(super);
    super->action = 1;
    super->collisionLayer = 3;
    this->unk_7d = Random();
    this->unk_7a = super->type2 * 0x3c;
    this->unk_7c = super->timer;
    this->unk_78 = super->timer * 0x3c;
    UpdateSpriteForCollisionLayer(super);
    sub_0802A7D0(this);
}

void sub_0802A534(WallMasterEntity* this) {
    if (this->unk_78) {
        this->unk_78--;
    } else if (this->unk_7a == 0) {
        Entity* entity = sub_08049DF4(1);
        if (entity != NULL) {
            super->action = 2;
            super->timer = 90;
            COLLISION_ON(super);
            super->spriteSettings.draw = 3;
            super->x.HALF.HI = entity->x.HALF.HI;
            super->y.HALF.HI = entity->y.HALF.HI;
            super->z.HALF.HI = -0x80;
            super->spritePriority.b1 = 1;
            super->spriteSettings.shadow = 2;
            InitializeAnimation(super, 2);
            sub_0802A7D0(this);
        }
    }
}

void sub_0802A5B8(WallMasterEntity* this) {
    sub_0802A7D0(this);
    if (super->timer) {
        if (--super->timer == 0) {
            EnqueueSFX(SFX_12D);
            InitializeAnimation(super, 0);
        }
    } else {
        super->z.HALF.HI += 3;
        if (-1 < super->z.HALF.HI) {
            super->action = 3;
            super->spriteSettings.draw = 1;
            super->z.HALF.HI = 0;
            InitializeAnimation(super, 1);
        }
    }
}

/* Kids... don't try to optimize code like super... */
void sub_0802A610(WallMasterEntity* this) {
    u32 flags;

    GetNextFrame(super);
    sub_0802A7D0(this);
    flags = super->frame & ANIM_DONE;
    if (flags) {
        super->action = 4;
        super->timer = 30;
    } else if (super->frame & 1) {
        super->frame = flags;
        super->hitType = 0x75;
    }
}

void sub_0802A650(WallMasterEntity* this) {
    sub_0802A7D0(this);
    super->z.HALF.HI -= 2;
    if (-0xa0 > super->z.HALF.HI) {
        super->action = 1;
        COLLISION_OFF(super);
        super->spriteSettings.draw = 0;
        super->hitType = 0x74;
        this->unk_78 = this->unk_7c * 0x3c;
    }
}

void sub_0802A69C(WallMasterEntity* this) {
    u32 flags;

    sub_0802A7D0(this);
    gPlayerState.field_0xa |= 0x80;
    gPlayerState.mobility |= 0x80;
    gPlayerEntity.base.x.HALF.HI = this->unk_7e;
    gPlayerEntity.base.y.HALF.HI = this->unk_80;
    gPlayerEntity.base.z.HALF.HI = this->unk_82;

    if (gPlayerEntity.base.z.HALF.HI != super->z.HALF.HI) {
        if (gPlayerEntity.base.z.HALF.HI < super->z.HALF.HI) {
            super->z.HALF.HI--;
        } else {
            super->z.HALF.HI++;
        }
    }

    /* sigh... */
    GetNextFrame(super);
    flags = super->frame & ANIM_DONE;
    if (flags) {
        super->action = 6;
        super->timer = 30;
    } else if (super->frame & 0x1) {
        super->frame = flags;
        super->spriteOffsetY = 3;
        gPlayerEntity.base.spriteSettings.draw = 0;
    }
}

void sub_0802A734(WallMasterEntity* this) {
    sub_0802A7D0(this);
    if (--super->timer == 0) {
        SetInitializationPriority();
        DoExitTransition(gWallMasterScreenTransitions[gArea.dungeon_idx]);
    } else {
        super->z.WORD -= Q_16_16(2);
        gPlayerState.field_0xa |= 0x80;
        gPlayerState.mobility |= 0x80;
    }
}

void sub_0802A78C(WallMasterEntity* this) {
    if (super->action != 0) {
        if (sub_08049FDC(super, 1)) {
            if (this->unk_78 == 0) {
                if (this->unk_7a) {
                    this->unk_7a--;
                }
            }
        } else {
            this->unk_7a = super->type2 * 0x3c + 1;
        }
    }
}

void sub_0802A7D0(WallMasterEntity* this) {
    u32 unk = gUnk_080CD0B0[(this->unk_7d++ >> 3) & 7] + 0x100;
    SetAffineInfo(super, unk, unk, 0);
}
// clang-format off
void (*const WallMaster_Functions[])(WallMasterEntity*) = {
    WallMaster_OnTick,
    WallMaster_OnCollision,
    (void (*)(WallMasterEntity*))GenericKnockback2,
    (void (*)(WallMasterEntity*))GenericDeath,
    (void (*)(WallMasterEntity*))GenericConfused,
    WallMaster_OnGrabbed,
};

void (*const gUnk_080CD094[])(WallMasterEntity*) = {
    sub_0802A4E4,
    sub_0802A534,
    sub_0802A5B8,
    sub_0802A610,
    sub_0802A650,
    sub_0802A69C,
    sub_0802A734,
};

const s8 gUnk_080CD0B0[] = {
    -2, -4, -2, 0, 2, 4, 2, 0,
};
// clang-format on
