/**
 * @file chuchu.c
 * @ingroup Enemies
 *
 * @brief Chuchu enemy
 */

#include "asm.h"
#include "enemy.h"
#include "functions.h"

extern Entity* gUnk_020000B0;

void sub_0801F328(Entity*);
void sub_0801F340(Entity*);
void sub_0801F360(Entity*);
void sub_0801F3AC(Entity*);
void sub_0801F730(Entity*);
void sub_0801F748(Entity*);
void sub_0801F764(Entity*);
void sub_0801FAE0(Entity*);
void sub_0801FAF8(Entity*);
void sub_0801FB14(Entity*);
void sub_0801FB34(Entity*);
void sub_0801FB68(Entity*);
u32 sub_0801FBD0(Entity*);
void Chuchu_JumpAtPlayer(Entity*);

extern void (*const Chuchu_Functions[])(Entity*);
extern void (*const gUnk_080CA234[])(Entity*);
extern void (*const gUnk_080CA25C[])(Entity*);
extern void (*const gUnk_080CA288[])(Entity*);

extern const s8 gUnk_080CA2B4[];

void Chuchu(Entity* this) {
    int index;

    index = sub_080012DC(this);
    switch (index) {
        default:
            gUnk_080012C8[index](this);
            return;
        case 0:
            /* ... */
            break;
        case 2:
            this->gustJarState &= 0xfe;
            if (index != this->field_0x80.HALF.HI) {
                switch (this->type) {
                    case 0:
                        if (this->flags & ENT_COLLIDE) {
                            this->action = 6;
                            COLLISION_OFF(this);
                            this->speed = 0x20;
                            this->hitType = 0x5c;
                            InitializeAnimation(this, 5);
                        }
                        break;
                    case 1:
                        /* ... */
                        break;
                    case 2:
                        sub_080043A8(this);
                        return;
                }
            }
            break;
    }
    this->field_0x80.HALF.HI = index;
    Chuchu_Functions[GetNextFunction(this)](this);
    if (*(char*)(*(int*)&this->field_0x68 + 10) == 0x1c) {
        SetChildOffset(this, 0, 1, -0x10);
    } else if (this->type == 2) {
        sub_0801FB34(this);
    }
}

void Chuchu_OnTick(Entity* this) {
    switch (this->type) {
        case 0:
            sub_0801F3AC(this);
            gUnk_080CA234[this->action](this);
            break;
        case 1:
            sub_0801F764(this);
            gUnk_080CA25C[this->action](this);
            break;
        case 2:
            gUnk_080CA288[this->action](this);
            break;
    }
}

void Chuchu_OnCollision(Entity* this) {
    u8 health;

    if (this->type == 2) {
        if (this->contactFlags == 0x8e || this->contactFlags == 0x95) {
            COLLISION_OFF(this);
            this->health = 0;
        }
    }

    health = this->health;
    if (health) {
        if (this->contactFlags == 0x94) {
            sub_0801FB68(this);
            Create0x68FX(this, FX_STARS);
            InitializeAnimation(this, 6);
        } else if (this->field_0x80.HALF.LO != health) {
            sub_0801FB68(this);
            InitializeAnimation(this, 6);
        }
    } else {
        sub_0804AA1C(this);
        this->zVelocity = 0;
        InitializeAnimation(this, 9);
    }
    this->field_0x80.HALF.LO = this->health;
    EnemyFunctionHandlerAfterCollision(this, Chuchu_Functions);
}

void Chuchu_OnGrabbed(Entity* this) {
    if (!sub_0806F520(this) && this->confusedTime) {
        Create0x68FX(this, FX_STARS);
        InitializeAnimation(this, 6);
    } else {
        if (this->animIndex != 8) {
            sub_0801FB68(this);
            InitializeAnimation(this, 8);
        }
        GravityUpdate(this, Q_8_8(24.0));
        GetNextFrame(this);
    }
}

void Chuchu_OnKnockback(Entity* this) {
    if (this->animIndex == 6)
        GetNextFrame(this);
    sub_08001318(this);
}

void Chuchu_OnDeath(Entity* this) {
    GravityUpdate(this, Q_8_8(24.0));
    GetNextFrame(this);
    if (this->type == 0) {
        GenericDeath(this);
    } else if (this->type == 1) {
        CreateDeathFx(this, 0xf2, 0);
    } else {
        CreateDeathFx(this, 0xf1, 0);
    }
}

void Chuchu_OnConfused(Entity* this) {
    if ((this->frame & ANIM_DONE) == 0)
        GetNextFrame(this);
    GenericConfused(this);
}

void sub_0801F0A4(Entity* this) {
    sub_0804A720(this);
    this->action = 1;
    this->field_0x80.HALF.LO = this->health;
    this->field_0x82.HALF.LO = 0;
}

void nullsub_4(Entity* this) {
    (void)this;
}

void sub_0801F0C8(Entity* this) {
    GetNextFrame(this);
    if (this->frame & ANIM_DONE) {
        this->action = 3;
        this->timer = (Random() & 3) + 12;
        this->subtimer = Random();
        this->direction = sub_08049F84(this, 1);
        COLLISION_ON(this);
        this->spritePriority.b0 = 4;
        this->spritePriority.b1 = 3;
        InitializeAnimation(this, 2);
    }
}

void sub_0801F12C(Entity* this) {
    if (sub_0801FBD0(this)) {
        sub_0801F328(this);
    } else {
        if ((this->subtimer++ & 7) == 0) {
            this->direction = sub_08049F84(this, 1);
        }
        ProcessMovement0(this);
        GetNextFrame(this);
        if (--this->timer == 0) {
            if (PlayerInRange(this, 1, 0x38)) {
                this->action = 4;
                Chuchu_JumpAtPlayer(this);
            } else if (PlayerInRange(this, 1, 0x48)) {
                this->timer = (Random() & 3) + 12;
            } else {
                sub_0801F328(this);
            }
        }
    }
}

void sub_0801F1B0(Entity* this) {
    if (this->frame & 0x10) {
        if (this->frame & 1) {
            this->frame ^= 1;
            this->hitType = 90;
            EnqueueSFX(SFX_12B);
        }
        ProcessMovement2(this);
        if (GravityUpdate(this, Q_8_8(64.0)) == 0)
            GetNextFrame(this);
    } else {
        GetNextFrame(this);
    }

    if (this->frame & ANIM_DONE) {
        if (sub_0801FBD0(this)) {
            sub_0801F328(this);
        } else {
            sub_0801F340(this);
        }
    }
}

void sub_0801F228(Entity* this) {
    if (--this->timer == 0) {
        this->action = 3;
        this->direction = sub_08049F84(this, 1);
    }
    GetNextFrame(this);
}

void sub_0801F250(Entity* this) {
    GetNextFrame(this);
    if (this->frame & ANIM_DONE)
        sub_0801F360(this);
}

void sub_0801F270(Entity* this) {
    if ((this->subtimer++ & 7) == 0) {
        this->direction = sub_08049F84(this, 1);
    }

    ProcessMovement5(this);
    GetNextFrame(this);
    if (sub_0801FBD0(this))
        return;

    if (--this->timer != 0)
        return;

    if (this->field_0x80.HALF.HI == 0) {
        this->action = 2;
        InitializeAnimation(this, 4);
    } else {
        this->timer = 8;
    }
}

void sub_0801F2CC(Entity* this) {
    GetNextFrame(this);
    if (this->frame & ANIM_DONE) {
        this->action = 1;
        this->spriteSettings.draw = 0;
        InitializeAnimation(this, 4);
    }
}

void sub_0801F2F8(Entity* this) {
    GravityUpdate(this, Q_8_8(24.0));
    GetNextFrame(this);
    if (this->frame & ANIM_DONE) {
        sub_0801F340(this);
        sub_0804AA1C(this);
    }
}

void sub_0801F328(Entity* this) {
    this->action = 6;
    COLLISION_OFF(this);
    InitializeAnimation(this, 5);
}

void sub_0801F340(Entity* this) {
    this->action = 5;
    this->timer = 60;
    this->speed = 0x20;
    this->hitType = 92;
    InitializeAnimation(this, 2);
}

void sub_0801F360(Entity* this) {
    this->action = 7;
    this->timer = (Random() & 0x38) + 180;
    this->subtimer = Random();
    this->direction = sub_08049F84(this, 1);
    this->spritePriority.b1 = 2;
    this->spritePriority.b0 = 6;
    InitializeAnimation(this, 1);
}

void sub_0801F3AC(Entity* this) {
    if (this->action == 9 || this->action == 0)
        return;

    if (sub_08049FDC(this, 1)) {
        if (this->field_0x82.HALF.LO || PlayerInRange(this, 1, 0x48)) {
            if (this->action == 1) {
                this->action = 2;
                this->spriteSettings.draw = 1;
                this->field_0x82.HALF.LO = 1;
                InitializeAnimation(this, 0);
            }
        } else if (this->action == 3) {
            sub_0801F328(this);
        }
    } else if (this->action == 3) {
        sub_0801F328(this);
    } else if (this->action == 7) {
        this->action = 8;
        InitializeAnimation(this, 7);
    }
}

void sub_0801F428(Entity* this) {
    sub_0804A720(this);
    this->action = 1;
    this->timer = Random();
    this->field_0x80.HALF.LO = this->health;
    this->field_0x82.HALF.LO = 0;
    if (this->type2 == 0)
        return;

    this->action = 3;
    this->subtimer = 30;

#ifdef EU
    this->direction = sub_08049F84(this, 1);
#endif

    COLLISION_ON(this);
    this->spritePriority.b1 = 3;

#ifndef EU
    this->spriteSettings.draw = 1;
#endif

    InitializeAnimation(this, 2);
}

void sub_0801F48C(Entity* this) {
    GetNextFrame(this);
}

void sub_0801F494(Entity* this) {
    GetNextFrame(this);
    if (this->frame & ANIM_DONE) {
        this->action = 3;
        this->subtimer = 30;
        this->direction = sub_08049F84(this, 1);
        COLLISION_ON(this);
        this->spritePriority.b0 = 4;
        this->spritePriority.b1 = 3;
        InitializeAnimation(this, 2);
    }
}

void sub_0801F4EC(Entity* this) {
    GetNextFrame(this);
    if (--this->subtimer == 0)
        this->action = 4;
}

void sub_0801F508(Entity* this) {
    if (sub_0801FBD0(this)) {
        this->field_0x82.HALF.HI = 0;
        sub_0801F730(this);
    } else {
        u8 tmp = ++this->timer & 7;
        if (tmp == 0 && PlayerInRange(this, 1, 0x38)) {
            if (Random() & 1) {
                this->action = 5;
                Chuchu_JumpAtPlayer(this);
            } else {
                this->field_0x82.HALF.HI = 120;
                sub_0801F730(this);
            }
        } else {
            if (tmp == 4) {
                this->direction = sub_08049F84(this, 1);
            }
            ProcessMovement0(this);
            GetNextFrame(this);
        }
    }
}

void sub_0801F584(Entity* this) {
    if (this->frame & 0x10) {
        if (this->frame & 0x1) {
            this->frame ^= 1;
            this->hitType = 91;
            EnqueueSFX(SFX_12B);
        }
        ProcessMovement2(this);
        if (GravityUpdate(this, Q_8_8(64.0)) == 0)
            GetNextFrame(this);

    } else {
        GetNextFrame(this);
    }

    if (this->frame & ANIM_DONE) {
        if (sub_0801FBD0(this)) {
            this->field_0x82.HALF.HI = 0;
            sub_0801F730(this);
        } else {
            this->action = 6;
            this->subtimer = 60;
            this->speed = 0x20;
            this->hitType = 92;
            InitializeAnimation(this, 2);
        }
    }
}

void sub_0801F61C(Entity* this) {
    if (--this->subtimer == 0)
        this->action = 4;
    GetNextFrame(this);
}

void sub_0801F638(Entity* this) {
    GetNextFrame(this);
    if (this->frame & ANIM_DONE) {
        this->action = 8;
        this->subtimer = 30;
        this->direction = sub_08049F84(this, 1);
        this->spritePriority.b1 = 2;
        this->spritePriority.b0 = 6;
        InitializeAnimation(this, 1);
    }
}

void sub_0801F688(Entity* this) {
    if (this->field_0x82.HALF.HI)
        this->field_0x82.HALF.HI--;

    if (sub_0801FBD0(this) || this->field_0x82.HALF.HI) {
        this->direction = sub_08049F84(this, 1);
        ProcessMovement5(this);
        GetNextFrame(this);
    } else {
        sub_0801F748(this);
    }
}

void sub_0801F6CC(Entity* this) {
    GetNextFrame(this);
    if (this->frame & ANIM_DONE) {
        this->action = 1;
        this->spriteSettings.draw = 0;
        InitializeAnimation(this, 4);
    }
}

void sub_0801F6F8(Entity* this) {
    GravityUpdate(this, Q_8_8(24.0));
    GetNextFrame(this);
    if (this->frame & ANIM_DONE) {
        this->action = 4;
        this->speed = 0x20;
        sub_0804AA1C(this);
        InitializeAnimation(this, 2);
    }
}

void sub_0801F730(Entity* this) {
    this->action = 7;
    COLLISION_OFF(this);
    InitializeAnimation(this, 5);
}

void sub_0801F748(Entity* this) {
    this->action = 2;
    this->spriteSettings.draw = 1;
    InitializeAnimation(this, 4);
}

void sub_0801F764(Entity* this) {
    if (this->action == 10 || this->action == 0)
        return;

    if (sub_08049FDC(this, 1)) {
        if (this->action == 1) {
            if (this->field_0x82.HALF.LO || PlayerInRange(this, 1, 0x48)) {
                this->action = 2;
                this->spriteSettings.draw = 1;
                this->field_0x82.HALF.LO = 1;
                InitializeAnimation(this, 0);
            }
        }
    } else if (this->action == 4) {
        sub_0801F730(this);
    } else if (this->action == 8) {
        this->action = 9;
        InitializeAnimation(this, 7);
    }
}

void sub_0801F7D8(Entity* this) {
    sub_0804A720(this);
    this->action = 1;
    this->timer = Random();
    this->field_0x80.HALF.LO = this->health;
    this->field_0x82.HALF.LO = 0;
}

void sub_0801F7FC(Entity* this) {
    if (sub_08049FDC(this, 1) == 0)
        return;

    if (this->field_0x82.HALF.LO || PlayerInRange(this, 1, 0x48)) {
        this->action = 2;
        this->spriteSettings.draw = 1;
        this->field_0x82.HALF.LO = 1;
        InitializeAnimation(this, 0);
    }
}

void sub_0801F840(Entity* this) {
    GetNextFrame(this);
    if (this->frame & ANIM_DONE) {
        sub_0801FB14(this);
        COLLISION_ON(this);
        this->spritePriority.b0 = 4;
        this->spritePriority.b1 = 3;
    }
}

void sub_0801F884(Entity* this) {
    GetNextFrame(this);
    if (this->subtimer) {
        this->subtimer--;
    } else {
        Entity* ent = Create0x68FX(this, FX_LIGHTNING_STRIKE);
        if (ent != NULL) {
            ent->type2 = 64;
            this->action = 4;
            this->hitType = 165;
            EnqueueSFX(SFX_193);
        }
    }
}

void sub_0801F8C0(Entity* this) {
    if (sub_0801FBD0(this)) {
        sub_0801FAE0(this);
    } else if (sub_08049FDC(this, 1) == 0) {
        sub_0801F730(this);
    } else {
        u8 tmp = ++this->timer & 7;
        if (tmp == 0 && sub_08049F1C(this, gUnk_020000B0, 0x38)) {
            this->action = 5;
            Chuchu_JumpAtPlayer(this);
        } else {
            if (tmp == 4) {
                this->direction = GetFacingDirection(this, gUnk_020000B0);
            }
            ProcessMovement0(this);
            GetNextFrame(this);
        }
    }
}

void sub_0801F940(Entity* this) {
    if (this->frame & 0x10) {
        if (this->frame & 1) {
            this->frame ^= 1;
            EnqueueSFX(SFX_12B);
        }
        ProcessMovement2(this);
        if (GravityUpdate(this, Q_8_8(64.0)) == 0)
            GetNextFrame(this);
    } else {
        GetNextFrame(this);
    }

    if (this->frame & ANIM_DONE) {
        if (sub_0801FBD0(this)) {
            sub_0801FAE0(this);
        } else {
            this->action = 6;
            this->subtimer = 60;
            this->speed = 0x20;
            InitializeAnimation(this, 2);
        }
    }
}

void sub_0801F9C4(Entity* this) {
    if (--this->subtimer == 0)
        this->action = 4;
    GetNextFrame(this);
}

void sub_0801F9E0(Entity* this) {
    GetNextFrame(this);
    if (this->frame & ANIM_DONE) {
        this->action = 8;
        this->subtimer = 30;
        this->direction = sub_08049F84(this, 1);
        this->spritePriority.b1 = 2;
        this->spritePriority.b0 = 6;
        InitializeAnimation(this, 1);
    }
}

void sub_0801FA30(Entity* this) {
    if (sub_0801FBD0(this)) {
        this->direction = sub_08049F84(this, 1);
        ProcessMovement5(this);
        GetNextFrame(this);
    } else if (sub_08049FDC(this, 1) == 0) {
        this->action = 9;
        InitializeAnimation(this, 7);
    } else {
        sub_0801FAF8(this);
    }
}

void sub_0801FA78(Entity* this) {
    GetNextFrame(this);
    if (this->frame & ANIM_DONE) {
        this->action = 1;
        this->spriteSettings.draw = 0;
        InitializeAnimation(this, 4);
        sub_0804AA1C(this);
    }
}

void sub_0801FAAC(Entity* this) {
    GravityUpdate(this, Q_8_8(24.0));
    GetNextFrame(this);
    if (this->frame & ANIM_DONE) {
        sub_0801FB14(this);
        this->speed = 0x20;
        sub_0804AA1C(this);
    }
}

void sub_0801FAE0(Entity* this) {
    this->action = 7;
    COLLISION_OFF(this);
    InitializeAnimation(this, 5);
}

void sub_0801FAF8(Entity* this) {
    this->action = 2;
    this->spriteSettings.draw = 1;
    InitializeAnimation(this, 4);
}

void sub_0801FB14(Entity* this) {
    this->action = 3;
    this->subtimer = 30;
    this->direction = sub_08049F84(this, 1);
    InitializeAnimation(this, 2);
}

void sub_0801FB34(Entity* this) {
    if (*(Entity**)&this->field_0x68) {
        sub_0806FA90(this, *(Entity**)&this->field_0x68, gUnk_080CA2B4[this->frame & 0xf], 1);
        (*(Entity**)&this->field_0x68)->spriteOffsetY--;
    }
}

void sub_0801FB68(Entity* this) {
    switch (this->type) {
        case 0:
            this->action = 9;
            break;
        case 1:
            this->action = 10;
            COLLISION_ON(this);
            this->spriteSettings.draw = 1;
            this->spritePriority.b1 = 3;
            break;
        case 2:
            this->action = 10;
            this->hitType = 92;
            sub_0804AA1C(this);
            break;
    }

    this->zVelocity = 0;
}

bool32 sub_0801FBD0(Entity* this) {
    if (GetVvvAtEntity(this) == 0x10) {
        return TRUE;
    } else {
        return FALSE;
    }
}

void Chuchu_JumpAtPlayer(Entity* this) {
    this->speed = 0x180;
    this->zVelocity = Q_16_16(2.0);
    this->direction = sub_08049F84(this, 1);
    InitializeAnimation(this, 3);
}

// clang-format off
void (*const Chuchu_Functions[])(Entity*) = {
    Chuchu_OnTick,
    Chuchu_OnCollision,
    Chuchu_OnKnockback,
    Chuchu_OnDeath,
    Chuchu_OnConfused,
    Chuchu_OnGrabbed,
};

void (*const gUnk_080CA234[])(Entity*) = {
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

void (*const gUnk_080CA25C[])(Entity*) = {
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

void (*const gUnk_080CA288[])(Entity*) = {
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
