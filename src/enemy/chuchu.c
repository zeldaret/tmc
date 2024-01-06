/**
 * @file chuchu.c
 * @ingroup Enemies
 *
 * @brief Chuchu enemy
 */
#include "asm.h"
#include "enemy.h"
#include "functions.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ Entity* unk_68;
    /*0x6c*/ u8 unused1[6];
    /*0x72*/ u8 unk_72;
    /*0x73*/ u8 unused2[13];
    /*0x80*/ u8 unk_80;
    /*0x81*/ u8 unk_81;
    /*0x82*/ u8 unk_82;
    /*0x83*/ u8 unk_83;
} ChuchuEntity;

extern Entity* gUnk_020000B0;

void sub_0801F328(ChuchuEntity* this);
void sub_0801F340(ChuchuEntity* this);
void sub_0801F360(ChuchuEntity* this);
void sub_0801F3AC(ChuchuEntity* this);
void sub_0801F730(ChuchuEntity* this);
void sub_0801F748(ChuchuEntity* this);
void sub_0801F764(ChuchuEntity* this);
void sub_0801FAE0(ChuchuEntity* this);
void sub_0801FAF8(ChuchuEntity* this);
void sub_0801FB14(ChuchuEntity* this);
void sub_0801FB34(ChuchuEntity* this);
void sub_0801FB68(ChuchuEntity* this);
u32 CheckWaterTile(ChuchuEntity* this);
void Chuchu_JumpAtPlayer(ChuchuEntity* this);

extern void (*const Chuchu_Functions[])(ChuchuEntity*);
extern void (*const gUnk_080CA234[])(ChuchuEntity*);
extern void (*const gUnk_080CA25C[])(ChuchuEntity*);
extern void (*const gUnk_080CA288[])(ChuchuEntity*);

extern const s8 gUnk_080CA2B4[];

void Chuchu(ChuchuEntity* this) {
    s32 index;

    index = sub_080012DC(super);
    switch (index) {
        default:
            gUnk_080012C8[index](super);
            return;
        case 0:
            /* ... */
            break;
        case 2:
            super->gustJarState &= 0xfe;
            if (index != this->unk_81) {
                switch (super->type) {
                    case 0:
                        if (super->flags & ENT_COLLIDE) {
                            super->action = 6;
                            COLLISION_OFF(super);
                            super->speed = 0x20;
                            super->hitType = 0x5c;
                            InitializeAnimation(super, 5);
                        }
                        break;
                    case 1:
                        /* ... */
                        break;
                    case 2:
                        CreateDrownFX(super);
                        return;
                }
            }
            break;
    }
    this->unk_81 = index;
    Chuchu_Functions[GetNextFunction(super)](this);
    if (this->unk_68->type == 0x1c) {
        EnemySetFXOffset(super, 0, 1, -0x10);
    } else if (super->type == 2) {
        sub_0801FB34(this);
    }
}

void Chuchu_OnTick(ChuchuEntity* this) {
    switch (super->type) {
        case 0:
            sub_0801F3AC(this);
            gUnk_080CA234[super->action](this);
            break;
        case 1:
            sub_0801F764(this);
            gUnk_080CA25C[super->action](this);
            break;
        case 2:
            gUnk_080CA288[super->action](this);
            break;
    }
}

void Chuchu_OnCollision(ChuchuEntity* this) {
    u8 health;

    if (super->type == 2) {
        if (super->contactFlags == 0x8e || super->contactFlags == 0x95) {
            COLLISION_OFF(super);
            super->health = 0;
        }
    }

    health = super->health;
    if (health) {
        if (super->contactFlags == 0x94) {
            sub_0801FB68(this);
            EnemyCreateFX(super, FX_STARS);
            InitializeAnimation(super, 6);
        } else if (this->unk_80 != health) {
            sub_0801FB68(this);
            InitializeAnimation(super, 6);
        }
    } else {
        EnemyDetachFX(super);
        super->zVelocity = 0;
        InitializeAnimation(super, 9);
    }
    this->unk_80 = super->health;
    EnemyFunctionHandlerAfterCollision(super, Chuchu_Functions);
}

void Chuchu_OnGrabbed(ChuchuEntity* this) {
    if (!sub_0806F520(super) && super->confusedTime) {
        EnemyCreateFX(super, FX_STARS);
        InitializeAnimation(super, 6);
    } else {
        if (super->animIndex != 8) {
            sub_0801FB68(this);
            InitializeAnimation(super, 8);
        }
        GravityUpdate(super, Q_8_8(24.0));
        GetNextFrame(super);
    }
}

void Chuchu_OnKnockback(ChuchuEntity* this) {
    if (super->animIndex == 6)
        GetNextFrame(super);
    sub_08001318(super);
}

void Chuchu_OnDeath(ChuchuEntity* this) {
    GravityUpdate(super, Q_8_8(24.0));
    GetNextFrame(super);
    if (super->type == 0) {
        GenericDeath(super);
    } else if (super->type == 1) {
        EnemyCreateDeathFX((Enemy*)super, 0xf2, 0);
    } else {
        EnemyCreateDeathFX((Enemy*)super, 0xf1, 0);
    }
}

void Chuchu_OnConfused(ChuchuEntity* this) {
    if ((super->frame & ANIM_DONE) == 0)
        GetNextFrame(super);
    GenericConfused(super);
}

void sub_0801F0A4(ChuchuEntity* this) {
    sub_0804A720(super);
    super->action = 1;
    this->unk_80 = super->health;
    this->unk_82 = 0;
}

void nullsub_4(ChuchuEntity* this) {
    (void)super;
}

void sub_0801F0C8(ChuchuEntity* this) {
    GetNextFrame(super);
    if (super->frame & ANIM_DONE) {
        super->action = 3;
        super->timer = (Random() & 3) + 12;
        super->subtimer = Random();
        super->direction = sub_08049F84(super, 1);
        COLLISION_ON(super);
        super->spritePriority.b0 = 4;
        super->spritePriority.b1 = 3;
        InitializeAnimation(super, 2);
    }
}

void sub_0801F12C(ChuchuEntity* this) {
    if (CheckWaterTile(this)) {
        sub_0801F328(this);
    } else {
        if ((super->subtimer++ & 7) == 0) {
            super->direction = sub_08049F84(super, 1);
        }
        ProcessMovement0(super);
        GetNextFrame(super);
        if (--super->timer == 0) {
            if (PlayerInRange(super, 1, 0x38)) {
                super->action = 4;
                Chuchu_JumpAtPlayer(this);
            } else if (PlayerInRange(super, 1, 0x48)) {
                super->timer = (Random() & 3) + 12;
            } else {
                sub_0801F328(this);
            }
        }
    }
}

void sub_0801F1B0(ChuchuEntity* this) {
    if (super->frame & 0x10) {
        if (super->frame & 1) {
            super->frame ^= 1;
            super->hitType = 90;
            EnqueueSFX(SFX_12B);
        }
        ProcessMovement2(super);
        if (GravityUpdate(super, Q_8_8(64.0)) == 0)
            GetNextFrame(super);
    } else {
        GetNextFrame(super);
    }

    if (super->frame & ANIM_DONE) {
        if (CheckWaterTile(this)) {
            sub_0801F328(this);
        } else {
            sub_0801F340(this);
        }
    }
}

void sub_0801F228(ChuchuEntity* this) {
    if (--super->timer == 0) {
        super->action = 3;
        super->direction = sub_08049F84(super, 1);
    }
    GetNextFrame(super);
}

void sub_0801F250(ChuchuEntity* this) {
    GetNextFrame(super);
    if (super->frame & ANIM_DONE)
        sub_0801F360(this);
}

void sub_0801F270(ChuchuEntity* this) {
    if ((super->subtimer++ & 7) == 0) {
        super->direction = sub_08049F84(super, 1);
    }

    ProcessMovement5(super);
    GetNextFrame(super);
    if (CheckWaterTile(this))
        return;

    if (--super->timer != 0)
        return;

    if (this->unk_81 == 0) {
        super->action = 2;
        InitializeAnimation(super, 4);
    } else {
        super->timer = 8;
    }
}

void sub_0801F2CC(ChuchuEntity* this) {
    GetNextFrame(super);
    if (super->frame & ANIM_DONE) {
        super->action = 1;
        super->spriteSettings.draw = 0;
        InitializeAnimation(super, 4);
    }
}

void sub_0801F2F8(ChuchuEntity* this) {
    GravityUpdate(super, Q_8_8(24.0));
    GetNextFrame(super);
    if (super->frame & ANIM_DONE) {
        sub_0801F340(this);
        EnemyDetachFX(super);
    }
}

void sub_0801F328(ChuchuEntity* this) {
    super->action = 6;
    COLLISION_OFF(super);
    InitializeAnimation(super, 5);
}

void sub_0801F340(ChuchuEntity* this) {
    super->action = 5;
    super->timer = 60;
    super->speed = 0x20;
    super->hitType = 92;
    InitializeAnimation(super, 2);
}

void sub_0801F360(ChuchuEntity* this) {
    super->action = 7;
    super->timer = (Random() & 0x38) + 180;
    super->subtimer = Random();
    super->direction = sub_08049F84(super, 1);
    super->spritePriority.b1 = 2;
    super->spritePriority.b0 = 6;
    InitializeAnimation(super, 1);
}

void sub_0801F3AC(ChuchuEntity* this) {
    if (super->action == 9 || super->action == 0)
        return;

    if (sub_08049FDC(super, 1)) {
        if (this->unk_82 || PlayerInRange(super, 1, 0x48)) {
            if (super->action == 1) {
                super->action = 2;
                super->spriteSettings.draw = 1;
                this->unk_82 = 1;
                InitializeAnimation(super, 0);
            }
        } else if (super->action == 3) {
            sub_0801F328(this);
        }
    } else if (super->action == 3) {
        sub_0801F328(this);
    } else if (super->action == 7) {
        super->action = 8;
        InitializeAnimation(super, 7);
    }
}

void sub_0801F428(ChuchuEntity* this) {
    sub_0804A720(super);
    super->action = 1;
    super->timer = Random();
    this->unk_80 = super->health;
    this->unk_82 = 0;
    if (super->type2 == 0)
        return;

    super->action = 3;
    super->subtimer = 30;

#ifdef EU
    super->direction = sub_08049F84(super, 1);
#endif

    COLLISION_ON(super);
    super->spritePriority.b1 = 3;

#ifndef EU
    super->spriteSettings.draw = 1;
#endif

    InitializeAnimation(super, 2);
}

void sub_0801F48C(ChuchuEntity* this) {
    GetNextFrame(super);
}

void sub_0801F494(ChuchuEntity* this) {
    GetNextFrame(super);
    if (super->frame & ANIM_DONE) {
        super->action = 3;
        super->subtimer = 30;
        super->direction = sub_08049F84(super, 1);
        COLLISION_ON(super);
        super->spritePriority.b0 = 4;
        super->spritePriority.b1 = 3;
        InitializeAnimation(super, 2);
    }
}

void sub_0801F4EC(ChuchuEntity* this) {
    GetNextFrame(super);
    if (--super->subtimer == 0)
        super->action = 4;
}

void sub_0801F508(ChuchuEntity* this) {
    if (CheckWaterTile(this)) {
        this->unk_83 = 0;
        sub_0801F730(this);
    } else {
        u8 tmp = ++super->timer & 7;
        if (tmp == 0 && PlayerInRange(super, 1, 0x38)) {
            if (Random() & 1) {
                super->action = 5;
                Chuchu_JumpAtPlayer(this);
            } else {
                this->unk_83 = 120;
                sub_0801F730(this);
            }
        } else {
            if (tmp == 4) {
                super->direction = sub_08049F84(super, 1);
            }
            ProcessMovement0(super);
            GetNextFrame(super);
        }
    }
}

void sub_0801F584(ChuchuEntity* this) {
    if (super->frame & 0x10) {
        if (super->frame & 0x1) {
            super->frame ^= 1;
            super->hitType = 91;
            EnqueueSFX(SFX_12B);
        }
        ProcessMovement2(super);
        if (GravityUpdate(super, Q_8_8(64.0)) == 0)
            GetNextFrame(super);

    } else {
        GetNextFrame(super);
    }

    if (super->frame & ANIM_DONE) {
        if (CheckWaterTile(this)) {
            this->unk_83 = 0;
            sub_0801F730(this);
        } else {
            super->action = 6;
            super->subtimer = 60;
            super->speed = 0x20;
            super->hitType = 92;
            InitializeAnimation(super, 2);
        }
    }
}

void sub_0801F61C(ChuchuEntity* this) {
    if (--super->subtimer == 0)
        super->action = 4;
    GetNextFrame(super);
}

void sub_0801F638(ChuchuEntity* this) {
    GetNextFrame(super);
    if (super->frame & ANIM_DONE) {
        super->action = 8;
        super->subtimer = 30;
        super->direction = sub_08049F84(super, 1);
        super->spritePriority.b1 = 2;
        super->spritePriority.b0 = 6;
        InitializeAnimation(super, 1);
    }
}

void sub_0801F688(ChuchuEntity* this) {
    if (this->unk_83)
        this->unk_83--;

    if (CheckWaterTile(this) || this->unk_83) {
        super->direction = sub_08049F84(super, 1);
        ProcessMovement5(super);
        GetNextFrame(super);
    } else {
        sub_0801F748(this);
    }
}

void sub_0801F6CC(ChuchuEntity* this) {
    GetNextFrame(super);
    if (super->frame & ANIM_DONE) {
        super->action = 1;
        super->spriteSettings.draw = 0;
        InitializeAnimation(super, 4);
    }
}

void sub_0801F6F8(ChuchuEntity* this) {
    GravityUpdate(super, Q_8_8(24.0));
    GetNextFrame(super);
    if (super->frame & ANIM_DONE) {
        super->action = 4;
        super->speed = 0x20;
        EnemyDetachFX(super);
        InitializeAnimation(super, 2);
    }
}

void sub_0801F730(ChuchuEntity* this) {
    super->action = 7;
    COLLISION_OFF(super);
    InitializeAnimation(super, 5);
}

void sub_0801F748(ChuchuEntity* this) {
    super->action = 2;
    super->spriteSettings.draw = 1;
    InitializeAnimation(super, 4);
}

void sub_0801F764(ChuchuEntity* this) {
    if (super->action == 10 || super->action == 0)
        return;

    if (sub_08049FDC(super, 1)) {
        if (super->action == 1) {
            if (this->unk_82 || PlayerInRange(super, 1, 0x48)) {
                super->action = 2;
                super->spriteSettings.draw = 1;
                this->unk_82 = 1;
                InitializeAnimation(super, 0);
            }
        }
    } else if (super->action == 4) {
        sub_0801F730(this);
    } else if (super->action == 8) {
        super->action = 9;
        InitializeAnimation(super, 7);
    }
}

void sub_0801F7D8(ChuchuEntity* this) {
    sub_0804A720(super);
    super->action = 1;
    super->timer = Random();
    this->unk_80 = super->health;
    this->unk_82 = 0;
}

void sub_0801F7FC(ChuchuEntity* this) {
    if (sub_08049FDC(super, 1) == 0)
        return;

    if (this->unk_82 || PlayerInRange(super, 1, 0x48)) {
        super->action = 2;
        super->spriteSettings.draw = 1;
        this->unk_82 = 1;
        InitializeAnimation(super, 0);
    }
}

void sub_0801F840(ChuchuEntity* this) {
    GetNextFrame(super);
    if (super->frame & ANIM_DONE) {
        sub_0801FB14(this);
        COLLISION_ON(super);
        super->spritePriority.b0 = 4;
        super->spritePriority.b1 = 3;
    }
}

void sub_0801F884(ChuchuEntity* this) {
    GetNextFrame(super);
    if (super->subtimer) {
        super->subtimer--;
    } else {
        Entity* entity = EnemyCreateFX(super, FX_LIGHTNING_STRIKE);
        if (entity != NULL) {
            entity->type2 = 64;
            super->action = 4;
            super->hitType = 165;
            EnqueueSFX(SFX_193);
        }
    }
}

void sub_0801F8C0(ChuchuEntity* this) {
    if (CheckWaterTile(this)) {
        sub_0801FAE0(this);
    } else if (sub_08049FDC(super, 1) == 0) {
        sub_0801F730(this);
    } else {
        u8 tmp = ++super->timer & 7;
        if (tmp == 0 && sub_08049F1C(super, gUnk_020000B0, 0x38)) {
            super->action = 5;
            Chuchu_JumpAtPlayer(this);
        } else {
            if (tmp == 4) {
                super->direction = GetFacingDirection(super, gUnk_020000B0);
            }
            ProcessMovement0(super);
            GetNextFrame(super);
        }
    }
}

void sub_0801F940(ChuchuEntity* this) {
    if (super->frame & 0x10) {
        if (super->frame & 1) {
            super->frame ^= 1;
            EnqueueSFX(SFX_12B);
        }
        ProcessMovement2(super);
        if (GravityUpdate(super, Q_8_8(64.0)) == 0)
            GetNextFrame(super);
    } else {
        GetNextFrame(super);
    }

    if (super->frame & ANIM_DONE) {
        if (CheckWaterTile(this)) {
            sub_0801FAE0(this);
        } else {
            super->action = 6;
            super->subtimer = 60;
            super->speed = 0x20;
            InitializeAnimation(super, 2);
        }
    }
}

void sub_0801F9C4(ChuchuEntity* this) {
    if (--super->subtimer == 0)
        super->action = 4;
    GetNextFrame(super);
}

void sub_0801F9E0(ChuchuEntity* this) {
    GetNextFrame(super);
    if (super->frame & ANIM_DONE) {
        super->action = 8;
        super->subtimer = 30;
        super->direction = sub_08049F84(super, 1);
        super->spritePriority.b1 = 2;
        super->spritePriority.b0 = 6;
        InitializeAnimation(super, 1);
    }
}

void sub_0801FA30(ChuchuEntity* this) {
    if (CheckWaterTile(this)) {
        super->direction = sub_08049F84(super, 1);
        ProcessMovement5(super);
        GetNextFrame(super);
    } else if (sub_08049FDC(super, 1) == 0) {
        super->action = 9;
        InitializeAnimation(super, 7);
    } else {
        sub_0801FAF8(this);
    }
}

void sub_0801FA78(ChuchuEntity* this) {
    GetNextFrame(super);
    if (super->frame & ANIM_DONE) {
        super->action = 1;
        super->spriteSettings.draw = 0;
        InitializeAnimation(super, 4);
        EnemyDetachFX(super);
    }
}

void sub_0801FAAC(ChuchuEntity* this) {
    GravityUpdate(super, Q_8_8(24.0));
    GetNextFrame(super);
    if (super->frame & ANIM_DONE) {
        sub_0801FB14(this);
        super->speed = 0x20;
        EnemyDetachFX(super);
    }
}

void sub_0801FAE0(ChuchuEntity* this) {
    super->action = 7;
    COLLISION_OFF(super);
    InitializeAnimation(super, 5);
}

void sub_0801FAF8(ChuchuEntity* this) {
    super->action = 2;
    super->spriteSettings.draw = 1;
    InitializeAnimation(super, 4);
}

void sub_0801FB14(ChuchuEntity* this) {
    super->action = 3;
    super->subtimer = 30;
    super->direction = sub_08049F84(super, 1);
    InitializeAnimation(super, 2);
}

void sub_0801FB34(ChuchuEntity* this) {
    if (this->unk_68) {
        sub_0806FA90(super, this->unk_68, gUnk_080CA2B4[super->frame & 0xf], 1);
        (this->unk_68)->spriteOffsetY--;
    }
}

void sub_0801FB68(ChuchuEntity* this) {
    switch (super->type) {
        case 0:
            super->action = 9;
            break;
        case 1:
            super->action = 10;
            COLLISION_ON(super);
            super->spriteSettings.draw = 1;
            super->spritePriority.b1 = 3;
            break;
        case 2:
            super->action = 10;
            super->hitType = 92;
            EnemyDetachFX(super);
            break;
    }

    super->zVelocity = 0;
}

bool32 CheckWaterTile(ChuchuEntity* this) {
    if (GetActTileAtEntity(super) == ACT_TILE_16) {
        return TRUE;
    } else {
        return FALSE;
    }
}

void Chuchu_JumpAtPlayer(ChuchuEntity* this) {
    super->speed = 0x180;
    super->zVelocity = Q_16_16(2.0);
    super->direction = sub_08049F84(super, 1);
    InitializeAnimation(super, 3);
}

// clang-format off
void (*const Chuchu_Functions[])(ChuchuEntity*) = {
    Chuchu_OnTick,
    Chuchu_OnCollision,
    Chuchu_OnKnockback,
    Chuchu_OnDeath,
    Chuchu_OnConfused,
    Chuchu_OnGrabbed,
};

void (*const gUnk_080CA234[])(ChuchuEntity*) = {
    sub_0801F0A4,
    nullsub_4,
    sub_0801F0C8,
    sub_0801F12C,
    sub_0801F1B0,
    sub_0801F228,
    sub_0801F250,
    sub_0801F270,
    sub_0801F2CC,
    sub_0801F2F8,
};

void (*const gUnk_080CA25C[])(ChuchuEntity*) = {
    sub_0801F428,
    sub_0801F48C,
    sub_0801F494,
    sub_0801F4EC,
    sub_0801F508,
    sub_0801F584,
    sub_0801F61C,
    sub_0801F638,
    sub_0801F688,
    sub_0801F6CC,
    sub_0801F6F8,
};

void (*const gUnk_080CA288[])(ChuchuEntity*) = {
    sub_0801F7D8,
    sub_0801F7FC,
    sub_0801F840,
    sub_0801F884,
    sub_0801F8C0,
    sub_0801F940,
    sub_0801F9C4,
    sub_0801F9E0,
    sub_0801FA30,
    sub_0801FA78,
    sub_0801FAAC,
};
// clang-format on
