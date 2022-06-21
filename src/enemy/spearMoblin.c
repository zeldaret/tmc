/**
 * @file spearMoblin.c
 * @ingroup Enemies
 *
 * @brief Spear Moblin enemy
 */

#include "enemy.h"
#include "functions.h"

void sub_08028604(Entity*);
void sub_08028754(Entity*);
void sub_08028784(Entity*);
void sub_080287E0(Entity*);
void sub_08028728(Entity*);
bool32 sub_080286CC(Entity*);
bool32 sub_080288A4(Entity*);
void sub_08028858(Entity*);
void sub_080288C0(Entity*);
bool32 sub_08028828(u32, u32);
void sub_080287B4(Entity*);

extern void (*const SpearMoblin_Functions[])(Entity*);
extern void (*const gUnk_080CC7A8[])(Entity*);
extern const u8 gUnk_080CC7BC[];
extern const s8 gUnk_080CC7C0[];
extern const u8 gUnk_080CC7D0[];
extern const u16 gUnk_080CC7D8[];

extern const Hitbox* const gUnk_080CC944[];

void SpearMoblin(Entity* this) {
    EnemyFunctionHandler(this, SpearMoblin_Functions);
    SetChildOffset(this, 0, 1, -0x20);
    if (this->child && this->child->next) {
        CopyPosition(this, this->child);
    }
}

void SpearMoblin_OnTick(Entity* this) {
    gUnk_080CC7A8[this->action](this);
}

void SpearMoblin_OnCollision(Entity* this) {
    if (this->confusedTime != 0)
        Create0x68FX(this, FX_STARS);

    EnemyFunctionHandlerAfterCollision(this, SpearMoblin_Functions);
    if (this->contactFlags & 0x80) {
        if (this->action != 4) {
            sub_08028754(this);
        } else {
            if ((this->contactFlags & 0x3f) == 0) {
                this->field_0x7a.HALF.LO++;
                this->field_0x80.HALF.HI = 0x16;
                sub_08028784(this);
            }
        }
    }

    this->child->iframes = this->iframes;
    if (this->health == 0) {
        this->speed = 0;
        this->field_0x82.HALF.LO = 0;
        sub_080287E0(this);
        DeleteEntity(this->child);
        this->child = NULL;
    }
}

void SpearMoblin_OnGrabbed(Entity* this) {
    /* ... */
}

void sub_08028314(Entity* this) {
    Entity* pEVar2;

    sub_0804A720(this);
    this->action = 1;
    this->animationState = 0;
    this->field_0x7a.HALF.HI = 0;
    this->field_0x80.HALF.LO = 0;
    this->field_0x82.HALF.HI = 0;
    this->field_0x80.HALF.HI = 0;
    this->field_0x7a.HALF.LO = 0;
    this->field_0x82.HALF.LO = 1;

    if (this->timer) {
        this->animationState = this->type2 << 1;
        this->timer = 30;
        this->speed = 0x80;
        this->direction = this->animationState << 2;
        sub_080287E0(this);
    } else {
        this->animationState = 0x10;
        sub_08028604(this);
    }

    pEVar2 = CreateProjectile(MOBLIN_SPEAR);
    if (pEVar2 != NULL) {
        pEVar2->parent = this;
        this->child = pEVar2;
    }
}

void sub_08028378(Entity* this) {
    if (this->field_0x80.HALF.HI != 0) {
        this->field_0x80.HALF.HI--;
    }

    if (--this->timer == 0) {
        if (++this->field_0x80.HALF.LO >= 0x10) {
            sub_08028728(this);
        } else {
            sub_08028604(this);
        }
    } else {
        if (sub_080286CC(this)) {
            this->field_0x7a.HALF.HI |= 1;
        }
        if (sub_080288A4(this)) {
            sub_0800417E(this, this->collisions);
            this->animationState = DirectionRoundUp(this->direction) >> 2;
            this->field_0x82.HALF.HI++;
            sub_080287E0(this);
        }
    }

    if (this->subtimer >= 0xc) {
        if (this->field_0x7a.HALF.HI != 0) {
            sub_08028754(this);
        }
    } else {
        this->subtimer++;
    }

    sub_08028858(this);
}

void sub_08028420(Entity* this) {
    if (--this->timer == 0) {
        this->action = 3;
        this->field_0x82.HALF.LO = 0;
        this->field_0x80.HALF.LO = 0;
        this->animationState = 0x10;
        sub_08028604(this);
    } else {
        if (sub_080286CC(this)) {
            this->field_0x7a.HALF.HI |= 1;
        }
    }

    if (this->subtimer >= 0xc) {
        if (this->field_0x7a.HALF.HI != 0) {
            sub_08028754(this);
        }
    } else {
        this->subtimer++;
    }

    sub_08028858(this);
}

void sub_08028488(Entity* this) {
    if (--this->timer == 0) {
        switch (this->field_0x82.HALF.LO) {
            case 3:
                this->action = 4;
                this->speed = 0x180;
                this->direction = sub_08049F84(this, 1);
                EnqueueSFX(SFX_EM_MOBLIN_SPEAR);
                break;
            case 2:
                this->action = 2;
                this->speed = 0;
                this->timer = (Random() & 7) * 3 + 0x40;
                break;
            case 4:
                this->direction = (this->direction + 0x10) & 0x18;
                /* fallthrough */
            case 1:
            default:
                this->action = 1;
                this->field_0x82.HALF.LO = 1;
                this->speed = 0x80;
                this->timer = (Random() & 7) * 3 + 0x22;
                break;
        }

        this->subtimer = 0;
        this->animationState = DirectionRoundUp(this->direction) >> 2;
        sub_080287E0(this);
    }

    sub_08028858(this);
}

void sub_08028528(Entity* this) {
    Entity* ent = sub_08049DF4(1);
    const Hitbox* box;

    if (ent == NULL) {
        this->subtimer = 0;
        sub_08028728(this);
    } else {
        sub_080288C0(this);
        box = gUnk_080CC944[this->animationState >> 1];
        this->hitbox->offset_x = box->offset_x;
        this->hitbox->offset_y = box->offset_y;
        this->hitbox->width = box->width;
        this->hitbox->height = box->height;

        if (this->field_0x7a.HALF.LO != 0) {
            this->field_0x7a.HALF.LO = 0;
            this->field_0x80.HALF.HI = 0x16;
            sub_08028784(this);
        } else {
            if (++this->timer == 0x20) {
                u32 direction;
                this->timer = 0;
                direction = GetFacingDirection(this, ent);
                if (sub_08028828(this->direction, direction)) {
                    this->direction = direction;
                }
            }

            if ((this->timer & 7) == 0) {
                EnqueueSFX(SFX_F0);
                CreateFx(this, FX_DEATH, 0x40);
            }

            if (++this->field_0x7a.HALF.HI == 0x80) {
                this->field_0x7a.HALF.LO++;
            }
        }

        if (0x20 < this->field_0x7a.HALF.HI) {
            ProcessMovement0(this);
        }

        GetNextFrame(this);
    }
}

NONMATCH("asm/non_matching/spearMoblin/sub_08028604.inc", void sub_08028604(Entity* this)) {
    this->subtimer = 0;
    if (this->field_0x82.HALF.LO == 1) {
        this->timer = gUnk_080CC7BC[Random() & 3];
        this->speed = 0x80;
        if (sub_08049FA0(this) != 0) {
            this->direction = gUnk_080CC7D0[Random() & 7] + 0x18 + (this->direction & 0x18);
        } else {
            u32 iVar3 = sub_08049EE4(this);
            u32 uVar1;
            if (this->field_0x82.HALF.HI == 0) {
                uVar1 = gUnk_080CC7C0[Random() & 0xf];
            } else {
                uVar1 = gUnk_080CC7C0[Random() & 7];
                this->timer = this->timer + 0x10;
                this->field_0x82.HALF.HI--;
            }
            this->direction = iVar3 + uVar1 + (4U & 0x18);
        }
    } else {
        this->timer = 0xc;
        this->speed = 0;
    }

    if (this->direction >> 2 != this->animationState) {
        this->animationState = this->direction >> 2;
        sub_080287E0(this);
    }
}
END_NONMATCH

bool32 sub_080286CC(Entity* this) {
    if (this->field_0x80.HALF.HI == 0) {
        Entity* ent = sub_08049DF4(1);
        if (ent != NULL) {
            if (this->field_0x82.HALF.LO == 2 && sub_0806FC80(this, ent, 0x30))
                return TRUE;

            if (sub_0806FC80(this, ent, 0x40) &&
                DirectionRoundUp(GetFacingDirection(this, ent)) >> 2 == this->animationState)
                return TRUE;
        }
    }

    return FALSE;
}

void sub_08028728(Entity* this) {
    this->animationState = DirectionRoundUp(this->direction) >> 2;
    this->direction = this->animationState << 2;
    this->field_0x82.HALF.HI >>= 1;
    sub_080287B4(this);
    this->field_0x82.HALF.LO = 2;
}

void sub_08028754(Entity* this) {
    this->direction = sub_08049F84(this, 1);
    this->animationState = DirectionRoundUp(this->direction) >> 2;
    this->field_0x82.HALF.HI = 0;
    sub_080287B4(this);
    this->field_0x82.HALF.LO = 3;
}

void sub_08028784(Entity* this) {
    this->animationState = DirectionRoundUp(this->direction) >> 2;
    this->direction = this->animationState << 2;
    this->field_0x82.HALF.HI = 0;
    sub_080287B4(this);
    this->timer <<= 1;
    this->field_0x82.HALF.LO = 4;
}

void sub_080287B4(Entity* this) {
    this->action = 3;
    this->timer = 0x20;
    this->subtimer = 0;
    this->field_0x80.HALF.LO = 0;
    this->field_0x7a.HALF.HI = 0;
    this->speed = 0;
    this->field_0x82.HALF.LO = 0;
    sub_080287E0(this);
}

void sub_080287E0(Entity* this) {
    u32 sprite = this->animationState >> 1;
    switch (this->field_0x82.HALF.LO) {
        case 0:
            /* ... */
            break;
        case 1:
        case 4:
            sprite += 4;
            break;
        case 3:
            sprite += 8;
            break;
        case 2:
            sprite += 0xc;
            break;
    }
    InitializeAnimation(this, sprite);
}

bool32 sub_08028828(u32 arg0, u32 arg1) {
    if (DirectionRoundUp(arg1) == DirectionRoundUp(arg0)) {
        u32 angle1 = (arg1 + 5) & 7;
        u32 angle0 = (arg0 + 5) & 7;
        if (angle1 < 3 && angle0 < 3)
            return TRUE;
    }

    return FALSE;
}

void sub_08028858(Entity* this) {
    const Hitbox* box;

    sub_080288C0(this);
    box = gUnk_080CC944[this->animationState >> 1];
    this->hitbox->offset_x = box->offset_x;
    this->hitbox->offset_y = box->offset_y;
    this->hitbox->width = box->width;
    this->hitbox->height = box->height;

    if (this->field_0x82.HALF.LO == 0) {
        this->speed = 0;
    }

    ProcessMovement0(this);
    GetNextFrame(this);
}

bool32 sub_080288A4(Entity* this) {
    return (this->collisions & gUnk_080CC7D8[this->animationState >> 1]) != 0;
}

void sub_080288C0(Entity* this) {
    Entity* ent = this->child;
    if ((ent != NULL) && (ent->contactFlags & 0x80)) {
        this->knockbackDirection = ent->knockbackDirection;
        this->iframes = -ent->iframes;
        this->knockbackSpeed = ent->knockbackSpeed;
        this->knockbackDuration = ent->knockbackDuration;
        ent->knockbackDuration = 0;
    }
}

// clang-format off
void (*const SpearMoblin_Functions[])(Entity*) = {
    SpearMoblin_OnTick,
    SpearMoblin_OnCollision,
    GenericKnockback,
    GenericDeath,
    GenericConfused,
    SpearMoblin_OnGrabbed,
};

void (*const gUnk_080CC7A8[])(Entity*) = {
    sub_08028314,
    sub_08028378,
    sub_08028420,
    sub_08028488,
    sub_08028528,
};

const u8 gUnk_080CC7BC[] = {
    0x30, 0x60, 0x6C, 0x91,
};

const s8 gUnk_080CC7C0[] = {
    0xF8, 0x0C,
    0xF4, 0x08,
    0x04, 0xFA,
    0x06, 0xFC,
    0x00, 0xFD,
    0x01, 0x03,
    0xFF, 0x02,
    0x00, 0xFE,
};

const u8 gUnk_080CC7D0[] = {
    0x08, 0x10,
    0x08, 0x00,
    0x10, 0x08,
    0x10, 0x00,
};

const u16 gUnk_080CC7D8[] = {
    0xE, 0xE000, 0xE0, 0xE00,
};
// clang-format on
