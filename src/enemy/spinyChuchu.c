/**
 * @file spinyChuchu.c
 * @ingroup Enemies
 *
 * @brief Spiny Chuchu enemy
 */

#include "enemy.h"
#include "functions.h"
#include "hitbox.h"

u32 sub_080228CC(Entity*);
u32 sub_080228F0(Entity*);

extern void (*const SpinyChuchu_Functions[])(Entity*);
extern void (*const gUnk_080CBA40[])(Entity*);

extern const u8 gUnk_080CBA60[];

extern Entity* gUnk_020000B0;

void SpinyChuchu(Entity* this) {
    EnemyFunctionHandler(this, SpinyChuchu_Functions);
    SetChildOffset(this, 0, 1, -0x10);
}

void SpinyChuchu_OnTick(Entity* this) {
    gUnk_080CBA40[this->action](this);
}

void SpinyChuchu_OnCollision(Entity* this) {
    if (this->health) {
        if (this->hitType == 0x65) {
            switch (this->contactFlags & 0x7f) {
                case 2:
                case 3:
                    this->action = 2;
                    this->subtimer = 0x3c;
                    this->hitType = 0x5c;
                    this->hitbox = (Hitbox*)&gHitbox_23;
                    InitializeAnimation(this, 0);
                    break;
                case 8:
                case 9:
                case 10:
                case 0xb:
                case 0xc:
                case 0x16:
                case 0x18:
                case 0x19:
                case 0x1a:
                    Create0x68FX(this, FX_STARS);
                    this->action = 5;
                    this->hitType = 0x5c;
                    InitializeAnimation(this, 1);
            }
        } else if (this->contactFlags == 0x94) {
            Create0x68FX(this, FX_STARS);
            this->action = 5;
            InitializeAnimation(this, 1);
        }

        if (this->field_0x80.HALF.LO != this->health) {
            this->action = 5;
            this->hitType = 0x5c;
            InitializeAnimation(this, 1);
        } else {
            if (this->action == 3) {
                this->action = 4;
                InitializeAnimation(this, 3);
                EnqueueSFX(SFX_194);
            }
        }
    } else {
        InitializeAnimation(this, 1);
    }

    this->field_0x80.HALF.LO = this->health;
    EnemyFunctionHandlerAfterCollision(this, SpinyChuchu_Functions);
}

void SpinyChuchu_OnKnockback(Entity* this) {
    if (this->animIndex == 1)
        GetNextFrame(this);
    sub_08001318(this);
}

void SpinyChuchu_OnDeath(Entity* this) {
    GravityUpdate(this, Q_8_8(24.0));
    if (this->frame & 1) {
        GenericDeath(this);
    } else {
        GetNextFrame(this);
    }
}

void SpinyChuchu_OnGrabbed(Entity* this) {
}

void sub_080225EC(Entity* this) {
    sub_0804A720(this);
    this->field_0x80.HALF.LO = this->health;
    this->field_0x80.HALF.HI = 0x5a;
    if (this->timer == 0) {
        this->action = 2;
        InitializeAnimation(this, 0);
    } else {
        this->action = 1;
        this->subtimer = 0x3c;
        this->spriteSettings.draw = 3;
        this->spriteRendering.b3 = 1;
        this->spriteOrientation.flipY = 1;
        this->z.HALF.HI = -0x80;
        InitializeAnimation(this, 6);
    }
}

void sub_08022654(Entity* this) {
    switch (this->subAction) {
        case 0:
            if (--this->subtimer)
                return;
            this->subAction = 1;
            SoundReq(SFX_12D);
            InitializeAnimation(this, 0);
            /* fallthrough */
        case 1:
            if (GravityUpdate(this, Q_8_8(24.0)))
                return;

            this->subAction = 2;
            this->spriteSettings.draw = 1;
            InitializeAnimation(this, 5);
            EnqueueSFX(SFX_PLY_LAND);
            UpdateSpriteForCollisionLayer(this);
            /* fallthrough */
        case 2:
            GetNextFrame(this);
            if (--this->timer == 0) {
                this->action = 3;
                this->hitType = 0x65;
                InitializeAnimation(this, 2);
            }
            break;
    }
}

void sub_080226EC(Entity* this) {
    if (sub_08049FDC(this, 1)) {
        if (sub_080228CC(this)) {
            this->action = 3;
            this->hitType = 0x65;
            InitializeAnimation(this, 2);
            return;
        }

        if (sub_080228F0(this)) {
            this->action = 6;
            this->zVelocity = Q_16_16(1.125);
            this->speed = 0x140;
            this->direction = GetFacingDirection(this, gUnk_020000B0);
            this->hitType = 0x5a;
            InitializeAnimation(this, 4);
            return;
        }

        if ((this->timer++ & 7) == 0) {
            this->direction = sub_08049F84(this, 1);
        }

        ProcessMovement0(this);
    }

    GetNextFrame(this);
}

void sub_08022780(Entity* this) {
    GetNextFrame(this);
    if (this->frame & ANIM_DONE) {
        this->action = 4;
        InitializeAnimation(this, 3);
        EnqueueSFX(SFX_194);
    }
}

void sub_080227AC(Entity* this) {
    GetNextFrame(this);
    if (this->frame & 1) {
        this->hitbox = (Hitbox*)&gHitbox_32;
    } else {
        this->hitbox = (Hitbox*)&gHitbox_23;
    }

    if (this->frame & 2) {
        this->frame &= ~2;
        this->hitType = 0x5c;
    }

    if (this->frame & ANIM_DONE) {
        this->action = 2;
        this->subtimer = gUnk_080CBA60[Random() & 3];
        InitializeAnimation(this, 0);
    }
}

void sub_0802281C(Entity* this) {
    GravityUpdate(this, Q_8_8(24.0));
    GetNextFrame(this);
    if (this->frame & ANIM_DONE) {
        this->action = 2;
        this->speed = 0x20;
        InitializeAnimation(this, 0);
        sub_0804AA1C(this);
    }
}

void sub_08022854(Entity* this) {
    GetNextFrame(this);
    if (this->frame & 1) {
        ProcessMovement2(this);
        if (GravityUpdate(this, Q_8_8(24.0)) == 0) {
            this->action = 7;
            this->hitType = 0x5c;
            InitializeAnimation(this, 5);
            EnqueueSFX(SFX_PLY_LAND);
        }
    }
}

void sub_0802289C(Entity* this) {
    GetNextFrame(this);
    if (this->frame & ANIM_DONE) {
        this->action = 2;
        this->speed = 0x20;
        this->field_0x80.HALF.HI = 0x78;
        InitializeAnimation(this, 0);
    }
}

u32 sub_080228CC(Entity* this) {
    if (this->subtimer == 0) {
        if (PlayerInRange(this, 1, 0x28))
            return 1;
    } else {
        this->subtimer--;
    }
    return 0;
}

u32 sub_080228F0(Entity* this) {
    if (this->field_0x80.HALF.HI == 0) {
        if (PlayerInRange(this, 1, 0x40))
            return 1;
    } else {
        this->field_0x80.HALF.HI--;
    }
    return 0;
}

// clang-format off
void (*const SpinyChuchu_Functions[])(Entity*) = {
    SpinyChuchu_OnTick,
    SpinyChuchu_OnCollision,
    SpinyChuchu_OnKnockback,
    SpinyChuchu_OnDeath,
    GenericConfused,
    SpinyChuchu_OnGrabbed,
};

void (*const gUnk_080CBA40[])(Entity*) = {
    sub_080225EC,
    sub_08022654,
    sub_080226EC,
    sub_08022780,
    sub_080227AC,
    sub_0802281C,
    sub_08022854,
    sub_0802289C,
};

const u8 gUnk_080CBA60[] = {
    10, 20, 30, 20,
};
// clang-format on
