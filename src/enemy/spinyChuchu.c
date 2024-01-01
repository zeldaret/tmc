/**
 * @file spinyChuchu.c
 * @ingroup Enemies
 *
 * @brief Spiny Chuchu enemy
 */
#include "enemy.h"
#include "functions.h"
#include "hitbox.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[24];
    /*0x80*/ u8 unk_80;
    /*0x81*/ u8 unk_81;
} SpinyChuchuEntity;

u32 sub_080228CC(SpinyChuchuEntity*);
u32 sub_080228F0(SpinyChuchuEntity*);

extern void (*const SpinyChuchu_Functions[])(SpinyChuchuEntity*);
extern void (*const gUnk_080CBA40[])(SpinyChuchuEntity*);

extern const u8 gUnk_080CBA60[];

extern Entity* gUnk_020000B0;

void SpinyChuchu(SpinyChuchuEntity* this) {
    EnemyFunctionHandler(super, (EntityActionArray)SpinyChuchu_Functions);
    EnemySetFXOffset(super, 0, 1, -0x10);
}

void SpinyChuchu_OnTick(SpinyChuchuEntity* this) {
    gUnk_080CBA40[super->action](this);
}

void SpinyChuchu_OnCollision(SpinyChuchuEntity* this) {
    if (super->health) {
        if (super->hitType == 0x65) {
            switch (super->contactFlags & 0x7f) {
                case 2:
                case 3:
                    super->action = 2;
                    super->subtimer = 60;
                    super->hitType = 0x5c;
                    super->hitbox = (Hitbox*)&gHitbox_23;
                    InitializeAnimation(super, 0);
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
                    EnemyCreateFX(super, FX_STARS);
                    super->action = 5;
                    super->hitType = 0x5c;
                    InitializeAnimation(super, 1);
            }
        } else if (super->contactFlags == (CONTACT_NOW | 0x14)) {
            EnemyCreateFX(super, FX_STARS);
            super->action = 5;
            InitializeAnimation(super, 1);
        }

        if (this->unk_80 != super->health) {
            super->action = 5;
            super->hitType = 0x5c;
            InitializeAnimation(super, 1);
        } else {
            if (super->action == 3) {
                super->action = 4;
                InitializeAnimation(super, 3);
                EnqueueSFX(SFX_194);
            }
        }
    } else {
        InitializeAnimation(super, 1);
    }

    this->unk_80 = super->health;
    EnemyFunctionHandlerAfterCollision(super, SpinyChuchu_Functions);
}

void SpinyChuchu_OnKnockback(SpinyChuchuEntity* this) {
    if (super->animIndex == 1)
        GetNextFrame(super);
    sub_08001318(super);
}

void SpinyChuchu_OnDeath(SpinyChuchuEntity* this) {
    GravityUpdate(super, Q_8_8(24.0));
    if (super->frame & 1) {
        GenericDeath(super);
    } else {
        GetNextFrame(super);
    }
}

void SpinyChuchu_OnGrabbed(SpinyChuchuEntity* this) {
}

void sub_080225EC(SpinyChuchuEntity* this) {
    sub_0804A720(super);
    this->unk_80 = super->health;
    this->unk_81 = 0x5a;
    if (super->timer == 0) {
        super->action = 2;
        InitializeAnimation(super, 0);
    } else {
        super->action = 1;
        super->subtimer = 60;
        super->spriteSettings.draw = 3;
        super->spriteRendering.b3 = 1;
        super->spriteOrientation.flipY = 1;
        super->z.HALF.HI = -0x80;
        InitializeAnimation(super, 6);
    }
}

void sub_08022654(SpinyChuchuEntity* this) {
    switch (super->subAction) {
        case 0:
            if (--super->subtimer)
                return;
            super->subAction = 1;
            SoundReq(SFX_12D);
            InitializeAnimation(super, 0);
            /* fallthrough */
        case 1:
            if (GravityUpdate(super, Q_8_8(24.0)))
                return;

            super->subAction = 2;
            super->spriteSettings.draw = 1;
            InitializeAnimation(super, 5);
            EnqueueSFX(SFX_PLY_LAND);
            UpdateSpriteForCollisionLayer(super);
            /* fallthrough */
        case 2:
            GetNextFrame(super);
            if (--super->timer == 0) {
                super->action = 3;
                super->hitType = 0x65;
                InitializeAnimation(super, 2);
            }
            break;
    }
}

void sub_080226EC(SpinyChuchuEntity* this) {
    if (sub_08049FDC(super, 1)) {
        if (sub_080228CC(this)) {
            super->action = 3;
            super->hitType = 0x65;
            InitializeAnimation(super, 2);
            return;
        }

        if (sub_080228F0(this)) {
            super->action = 6;
            super->zVelocity = Q_16_16(1.125);
            super->speed = 0x140;
            super->direction = GetFacingDirection(super, gUnk_020000B0);
            super->hitType = 0x5a;
            InitializeAnimation(super, 4);
            return;
        }

        if ((super->timer++ & 7) == 0) {
            super->direction = sub_08049F84(super, 1);
        }

        ProcessMovement0(super);
    }

    GetNextFrame(super);
}

void sub_08022780(SpinyChuchuEntity* this) {
    GetNextFrame(super);
    if (super->frame & ANIM_DONE) {
        super->action = 4;
        InitializeAnimation(super, 3);
        EnqueueSFX(SFX_194);
    }
}

void sub_080227AC(SpinyChuchuEntity* this) {
    GetNextFrame(super);
    if (super->frame & 1) {
        super->hitbox = (Hitbox*)&gHitbox_32;
    } else {
        super->hitbox = (Hitbox*)&gHitbox_23;
    }

    if (super->frame & 2) {
        super->frame &= ~2;
        super->hitType = 0x5c;
    }

    if (super->frame & ANIM_DONE) {
        super->action = 2;
        super->subtimer = gUnk_080CBA60[Random() & 3];
        InitializeAnimation(super, 0);
    }
}

void sub_0802281C(SpinyChuchuEntity* this) {
    GravityUpdate(super, Q_8_8(24.0));
    GetNextFrame(super);
    if (super->frame & ANIM_DONE) {
        super->action = 2;
        super->speed = 0x20;
        InitializeAnimation(super, 0);
        EnemyDetachFX(super);
    }
}

void sub_08022854(SpinyChuchuEntity* this) {
    GetNextFrame(super);
    if (super->frame & 1) {
        ProcessMovement2(super);
        if (GravityUpdate(super, Q_8_8(24.0)) == 0) {
            super->action = 7;
            super->hitType = 0x5c;
            InitializeAnimation(super, 5);
            EnqueueSFX(SFX_PLY_LAND);
        }
    }
}

void sub_0802289C(SpinyChuchuEntity* this) {
    GetNextFrame(super);
    if (super->frame & ANIM_DONE) {
        super->action = 2;
        super->speed = 0x20;
        this->unk_81 = 0x78;
        InitializeAnimation(super, 0);
    }
}

u32 sub_080228CC(SpinyChuchuEntity* this) {
    if (super->subtimer == 0) {
        if (PlayerInRange(super, 1, 0x28))
            return 1;
    } else {
        super->subtimer--;
    }
    return 0;
}

u32 sub_080228F0(SpinyChuchuEntity* this) {
    if (this->unk_81 == 0) {
        if (PlayerInRange(super, 1, 0x40))
            return 1;
    } else {
        this->unk_81--;
    }
    return 0;
}

// clang-format off
void (*const SpinyChuchu_Functions[])(SpinyChuchuEntity*) = {
    SpinyChuchu_OnTick,
    SpinyChuchu_OnCollision,
    SpinyChuchu_OnKnockback,
    SpinyChuchu_OnDeath,
    (void (*)(SpinyChuchuEntity*))GenericConfused,
    SpinyChuchu_OnGrabbed,
};

void (*const gUnk_080CBA40[])(SpinyChuchuEntity*) = {
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
