/**
 * @file wallMaster.c
 * @ingroup Enemies
 *
 * @brief Wall Master enemy
 */
//#define NENT_DEPRECATED
#include "area.h"
#include "enemy.h"
#include "functions.h"
#include "screenTransitions.h"

void sub_0802A78C(Entity*);
void sub_0802A7D0(Entity*);

extern void (*const WallMaster_Functions[])(Entity*);
extern void (*const gUnk_080CD094[])(Entity*);
extern const s8 gUnk_080CD0B0[];

void WallMaster(Entity* this) {
    WallMaster_Functions[GetNextFunction(this)](this);
    SetChildOffset(this, 0, 1, -0x10);
}

void WallMaster_OnTick(Entity* this) {
    sub_0802A78C(this);
    gUnk_080CD094[this->action](this);
}

void WallMaster_OnCollision(Entity* this) {
    if (this->hitType != 0x75 && ((this->contactFlags & 0x7f) == 0 || (this->contactFlags & 0x7f) == 0x1e)) {
        this->action = 5;
        COLLISION_OFF(this);
        this->field_0x7c.HALF.HI = gPlayerEntity.x.HALF.HI;
        this->field_0x80.HWORD = gPlayerEntity.y.HALF.HI;
        this->field_0x82.HWORD = gPlayerEntity.z.HALF.HI;
        if (this->action != 3) {
            InitializeAnimation(this, 1);
        }
    }

    if (this->knockbackDuration != 0)
        if (this->knockbackDuration > 4)
            this->knockbackDuration -= 4;

    if (this->confusedTime != 0) {
        Create0x68FX(this, FX_STARS);
    }

    EnemyFunctionHandlerAfterCollision(this, WallMaster_Functions);
}

void WallMaster_OnGrabbed(Entity* this) {
    /* ... */
}

void sub_0802A4E4(Entity* this) {
    sub_0804A720(this);
    this->action = 1;
    this->collisionLayer = 3;
    this->field_0x7c.BYTES.byte1 = Random();
    this->field_0x7a.HWORD = this->type2 * 0x3c;
    this->field_0x7c.BYTES.byte0 = this->timer;
    this->field_0x78.HWORD = this->timer * 0x3c;
    UpdateSpriteForCollisionLayer(this);
    sub_0802A7D0(this);
}

void sub_0802A534(Entity* this) {
    if (this->field_0x78.HWORD) {
        this->field_0x78.HWORD--;
    } else if (this->field_0x7a.HWORD == 0) {
        Entity* entity = sub_08049DF4(1);
        if (entity != NULL) {
            this->action = 2;
            this->timer = 90;
            COLLISION_ON(this);
            this->spriteSettings.draw = 3;
            this->x.HALF.HI = entity->x.HALF.HI;
            this->y.HALF.HI = entity->y.HALF.HI;
            this->z.HALF.HI = -0x80;
            this->spritePriority.b1 = 1;
            this->spriteSettings.shadow = 2;
            InitializeAnimation(this, 2);
            sub_0802A7D0(this);
        }
    }
}

void sub_0802A5B8(Entity* this) {
    sub_0802A7D0(this);
    if (this->timer) {
        if (--this->timer == 0) {
            EnqueueSFX(SFX_12D);
            InitializeAnimation(this, 0);
        }
    } else {
        this->z.HALF.HI += 3;
        if (-1 < this->z.HALF.HI) {
            this->action = 3;
            this->spriteSettings.draw = 1;
            this->z.HALF.HI = 0;
            InitializeAnimation(this, 1);
        }
    }
}

/* Kids... don't try to optimize code like this... */
void sub_0802A610(Entity* this) {
    u32 flags;

    GetNextFrame(this);
    sub_0802A7D0(this);
    flags = this->frame & ANIM_DONE;
    if (flags) {
        this->action = 4;
        this->timer = 30;
    } else if (this->frame & 1) {
        this->frame = flags;
        this->hitType = 0x75;
    }
}

void sub_0802A650(Entity* this) {
    sub_0802A7D0(this);
    this->z.HALF.HI -= 2;
    if (-0xa0 > this->z.HALF.HI) {
        this->action = 1;
        COLLISION_OFF(this);
        this->spriteSettings.draw = 0;
        this->hitType = 0x74;
        this->field_0x78.HWORD = this->field_0x7c.BYTES.byte0 * 0x3c;
    }
}

void sub_0802A69C(Entity* this) {
    u32 flags;

    sub_0802A7D0(this);
    gPlayerState.field_0xa |= 0x80;
    gPlayerState.mobility |= 0x80;
    gPlayerEntity.x.HALF.HI = this->field_0x7c.HALF.HI;
    gPlayerEntity.y.HALF.HI = this->field_0x80.HWORD;
    gPlayerEntity.z.HALF.HI = this->field_0x82.HWORD;

    if (gPlayerEntity.z.HALF.HI != this->z.HALF.HI) {
        if (gPlayerEntity.z.HALF.HI < this->z.HALF.HI) {
            this->z.HALF.HI--;
        } else {
            this->z.HALF.HI++;
        }
    }

    /* sigh... */
    GetNextFrame(this);
    flags = this->frame & ANIM_DONE;
    if (flags) {
        this->action = 6;
        this->timer = 30;
    } else if (this->frame & 0x1) {
        this->frame = flags;
        this->spriteOffsetY = 3;
        gPlayerEntity.spriteSettings.draw = 0;
    }
}

void sub_0802A734(Entity* this) {
    sub_0802A7D0(this);
    if (--this->timer == 0) {
        SetInitializationPriority();
        DoExitTransition(gWallMasterScreenTransitions[gArea.dungeon_idx]);
    } else {
        this->z.WORD -= Q_16_16(2);
        gPlayerState.field_0xa |= 0x80;
        gPlayerState.mobility |= 0x80;
    }
}

void sub_0802A78C(Entity* this) {
    if (this->action != 0) {
        if (sub_08049FDC(this, 1)) {
            if (this->field_0x78.HWORD == 0) {
                if (this->field_0x7a.HWORD) {
                    this->field_0x7a.HWORD--;
                }
            }
        } else {
            this->field_0x7a.HWORD = this->type2 * 0x3c + 1;
        }
    }
}

void sub_0802A7D0(Entity* this) {
    u32 unk = gUnk_080CD0B0[(this->field_0x7c.BYTES.byte1++ >> 3) & 7] + 0x100;
    SetAffineInfo(this, unk, unk, 0);
}
// clang-format off
void (*const WallMaster_Functions[])(Entity*) = {
    WallMaster_OnTick,
    WallMaster_OnCollision,
    GenericKnockback2,
    GenericDeath,
    GenericConfused,
    WallMaster_OnGrabbed,
};

void (*const gUnk_080CD094[])(Entity*) = {
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
