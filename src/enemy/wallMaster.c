/**
 * @file wallMaster.c
 * @ingroup Enemies
 *
 * @brief Wall Master enemy
 */

#include "enemy.h"
#include "area.h"
#include "functions.h"

extern ScreenTransitionData* gUnk_0813AB1C[];

void sub_0802A78C(Entity*);
void sub_0802A7D0(Entity*);

extern void (*const gUnk_080CD07C[])(Entity*);
extern void (*const gUnk_080CD094[])(Entity*);
extern const s8 gUnk_080CD0B0[];

void WallMaster(Entity* this) {
    gUnk_080CD07C[GetNextFunction(this)](this);
    SetChildOffset(this, 0, 1, -0x10);
}

void sub_0802A434(Entity* this) {
    sub_0802A78C(this);
    gUnk_080CD094[this->action](this);
}

void sub_0802A454(Entity* this) {
    if (this->hitType != 0x75 && ((this->bitfield & 0x7f) == 0 || (this->bitfield & 0x7f) == 0x1e)) {
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

    if (this->field_0x43 != 0) {
        sub_0804A9FC(this, 0x1c);
    }

    sub_0804AA30(this, gUnk_080CD07C);
}

void nullsub_142(Entity* this) {
    /* ... */
}

void sub_0802A4E4(Entity* this) {
    sub_0804A720(this);
    this->action = 1;
    this->collisionLayer = 3;
    this->field_0x7c.BYTES.byte1 = Random();
    this->field_0x7a.HWORD = this->type2 * 0x3c;
    this->field_0x7c.BYTES.byte0 = this->actionDelay;
    this->field_0x78.HWORD = this->actionDelay * 0x3c;
    UpdateSpriteForCollisionLayer(this);
    sub_0802A7D0(this);
}

void sub_0802A534(Entity* this) {
    if (this->field_0x78.HWORD) {
        this->field_0x78.HWORD--;
    } else if (this->field_0x7a.HWORD == 0) {
        Entity* ent = sub_08049DF4(1);
        if (ent != NULL) {
            this->action = 2;
            this->actionDelay = 0x5a;
            COLLISION_ON(this);
            this->spriteSettings.draw = 3;
            this->x.HALF.HI = ent->x.HALF.HI;
            this->y.HALF.HI = ent->y.HALF.HI;
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
    if (this->actionDelay) {
        if (--this->actionDelay == 0) {
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
    flags = this->frame & 0x80;
    if (flags) {
        this->action = 4;
        this->actionDelay = 0x1e;
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
    flags = this->frame & 0x80;
    if (flags) {
        this->action = 6;
        this->actionDelay = 0x1e;
    } else if (this->frame & 0x1) {
        this->frame = flags;
        this->spriteOffsetY = 3;
        gPlayerEntity.spriteSettings.draw = 0;
    }
}

void sub_0802A734(Entity* this) {
    sub_0802A7D0(this);
    if (--this->actionDelay == 0) {
        SetInitializationPriority();
        DoExitTransition(gUnk_0813AB1C[gArea.dungeon_idx]);
    } else {
        this->z.WORD -= 0x20000;
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
    sub_0805EC9C(this, unk, unk, 0);
}
// clang-format off
void (*const gUnk_080CD07C[])(Entity*) = {
    sub_0802A434,
    sub_0802A454,
    sub_08001328,
    sub_0804A7D4,
    sub_08001242,
    nullsub_142,
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
