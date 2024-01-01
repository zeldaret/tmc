/**
 * @file spearMoblin.c
 * @ingroup Enemies
 *
 * @brief Spear Moblin enemy
 */
#include "enemy.h"
#include "functions.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[18];
    /*0x7a*/ u8 unk_7a;
    /*0x7b*/ u8 unk_7b;
    /*0x7c*/ u8 unused2[4];
    /*0x80*/ u8 unk_80;
    /*0x81*/ u8 unk_81;
    /*0x82*/ u8 unk_82;
    /*0x83*/ u8 unk_83;
} SpearMoblinEntity;

void sub_08028604(SpearMoblinEntity*);
void sub_08028754(SpearMoblinEntity*);
void sub_08028784(SpearMoblinEntity*);
void sub_080287E0(SpearMoblinEntity*);
void sub_08028728(SpearMoblinEntity*);
bool32 sub_080286CC(SpearMoblinEntity*);
bool32 sub_080288A4(SpearMoblinEntity*);
void sub_08028858(SpearMoblinEntity*);
void sub_080288C0(SpearMoblinEntity*);
bool32 sub_08028828(u32, u32);
void sub_080287B4(SpearMoblinEntity*);

extern void (*const SpearMoblin_Functions[])(SpearMoblinEntity*);
extern void (*const gUnk_080CC7A8[])(SpearMoblinEntity*);
extern const u8 gUnk_080CC7BC[];
extern const s8 gUnk_080CC7C0[];
extern const s8 gUnk_080CC7D0[];
extern const u16 gUnk_080CC7D8[];

extern const Hitbox* const gUnk_080CC944[];

void SpearMoblin(SpearMoblinEntity* this) {
    EnemyFunctionHandler(super, (EntityActionArray)SpearMoblin_Functions);
    EnemySetFXOffset(super, 0, 1, -0x20);
    if (super->child && super->child->next) {
        CopyPosition(super, super->child);
    }
}

void SpearMoblin_OnTick(SpearMoblinEntity* this) {
    gUnk_080CC7A8[super->action](this);
}

void SpearMoblin_OnCollision(SpearMoblinEntity* this) {
    if (super->confusedTime != 0)
        EnemyCreateFX(super, FX_STARS);

    EnemyFunctionHandlerAfterCollision(super, SpearMoblin_Functions);
    if (super->contactFlags & CONTACT_NOW) {
        if (super->action != 4) {
            sub_08028754(this);
        } else {
            if ((super->contactFlags & 0x3f) == 0) {
                this->unk_7a++;
                this->unk_81 = 0x16;
                sub_08028784(this);
            }
        }
    }

    super->child->iframes = super->iframes;
    if (super->health == 0) {
        super->speed = 0;
        this->unk_82 = 0;
        sub_080287E0(this);
        DeleteEntity(super->child);
        super->child = NULL;
    }
}

void SpearMoblin_OnGrabbed(SpearMoblinEntity* this) {
    /* ... */
}

void sub_08028314(SpearMoblinEntity* this) {
    Entity* pEVar2;

    sub_0804A720(super);
    super->action = 1;
    super->animationState = 0;
    this->unk_7b = 0;
    this->unk_80 = 0;
    this->unk_83 = 0;
    this->unk_81 = 0;
    this->unk_7a = 0;
    this->unk_82 = 1;

    if (super->timer) {
        super->animationState = super->type2 << 1;
        super->timer = 30;
        super->speed = 0x80;
        super->direction = super->animationState << 2;
        sub_080287E0(this);
    } else {
        super->animationState = 0x10;
        sub_08028604(this);
    }

    pEVar2 = CreateProjectile(MOBLIN_SPEAR);
    if (pEVar2 != NULL) {
        pEVar2->parent = super;
        super->child = pEVar2;
    }
}

void sub_08028378(SpearMoblinEntity* this) {
    if (this->unk_81 != 0) {
        this->unk_81--;
    }

    if (--super->timer == 0) {
        if (++this->unk_80 >= 0x10) {
            sub_08028728(this);
        } else {
            sub_08028604(this);
        }
    } else {
        if (sub_080286CC(this)) {
            this->unk_7b |= 1;
        }
        if (sub_080288A4(this)) {
            sub_0800417E(super, super->collisions);
            super->animationState = DirectionRoundUp(super->direction) >> 2;
            this->unk_83++;
            sub_080287E0(this);
        }
    }

    if (super->subtimer >= 0xc) {
        if (this->unk_7b != 0) {
            sub_08028754(this);
        }
    } else {
        super->subtimer++;
    }

    sub_08028858(this);
}

void sub_08028420(SpearMoblinEntity* this) {
    if (--super->timer == 0) {
        super->action = 3;
        this->unk_82 = 0;
        this->unk_80 = 0;
        super->animationState = 0x10;
        sub_08028604(this);
    } else {
        if (sub_080286CC(this)) {
            this->unk_7b |= 1;
        }
    }

    if (super->subtimer >= 0xc) {
        if (this->unk_7b != 0) {
            sub_08028754(this);
        }
    } else {
        super->subtimer++;
    }

    sub_08028858(this);
}

void sub_08028488(SpearMoblinEntity* this) {
    if (--super->timer == 0) {
        switch (this->unk_82) {
            case 3:
                super->action = 4;
                super->speed = 0x180;
                super->direction = sub_08049F84(super, 1);
                EnqueueSFX(SFX_EM_MOBLIN_SPEAR);
                break;
            case 2:
                super->action = 2;
                super->speed = 0;
                super->timer = (Random() & 7) * 3 + 64;
                break;
            case 4:
                super->direction = (super->direction + 0x10) & DirectionWest;
                /* fallthrough */
            case 1:
            default:
                super->action = 1;
                this->unk_82 = 1;
                super->speed = 0x80;
                super->timer = (Random() & 7) * 3 + 0x22;
                break;
        }

        super->subtimer = 0;
        super->animationState = DirectionRoundUp(super->direction) >> 2;
        sub_080287E0(this);
    }

    sub_08028858(this);
}

void sub_08028528(SpearMoblinEntity* this) {
    Entity* entity = sub_08049DF4(1);
    const Hitbox* box;

    if (entity == NULL) {
        super->subtimer = 0;
        sub_08028728(this);
    } else {
        sub_080288C0(this);
        box = gUnk_080CC944[super->animationState >> 1];
        super->hitbox->offset_x = box->offset_x;
        super->hitbox->offset_y = box->offset_y;
        super->hitbox->width = box->width;
        super->hitbox->height = box->height;

        if (this->unk_7a != 0) {
            this->unk_7a = 0;
            this->unk_81 = 0x16;
            sub_08028784(this);
        } else {
            if (++super->timer == 0x20) {
                u32 direction;
                super->timer = 0;
                direction = GetFacingDirection(super, entity);
                if (sub_08028828(super->direction, direction)) {
                    super->direction = direction;
                }
            }

            if ((super->timer & 7) == 0) {
                EnqueueSFX(SFX_F0);
                CreateFx(super, FX_DEATH, 0x40);
            }

            if (++this->unk_7b == 0x80) {
                this->unk_7a++;
            }
        }

        if (0x20 < this->unk_7b) {
            ProcessMovement0(super);
        }

        GetNextFrame(super);
    }
}

void sub_08028604(SpearMoblinEntity* this) {
    u32 iVar3;
    super->subtimer = 0;
    if (this->unk_82 == 1) {
        super->timer = gUnk_080CC7BC[Random() & 3];
        super->speed = 0x80;
        if (sub_08049FA0(super) != 0) {
            u32 rand = Random();
            u32 tmp;
            tmp = gUnk_080CC7D0[rand & 7] + 0x18;
            super->direction = DirectionRound(tmp + super->direction);
            iVar3 = Direction8ToAnimationState(super->direction);
        } else {
            iVar3 = sub_08049EE4(super);
            if (this->unk_83 == 0) {
                u32 rand = Random();
                iVar3 += gUnk_080CC7C0[rand & 0xf];
            } else {
                u32 rand = Random();
                iVar3 += gUnk_080CC7C0[rand & 7];
                super->timer = super->timer + 0x10;
                this->unk_83--;
            }
            super->direction = (iVar3 + 4U) & DirectionWest;
            iVar3 = Direction8ToAnimationState(super->direction);
        }
    } else {
        super->timer = 12;
        super->speed = 0;
        iVar3 = Direction8ToAnimationState(super->direction);
    }

    if (iVar3 != super->animationState) {
        super->animationState = iVar3;
        sub_080287E0(this);
    }
}

bool32 sub_080286CC(SpearMoblinEntity* this) {
    if (this->unk_81 == 0) {
        Entity* entity = sub_08049DF4(1);
        if (entity != NULL) {
            if (this->unk_82 == 2 && sub_0806FC80(super, entity, 0x30))
                return TRUE;

            if (sub_0806FC80(super, entity, 0x40) &&
                DirectionRoundUp(GetFacingDirection(super, entity)) >> 2 == super->animationState)
                return TRUE;
        }
    }

    return FALSE;
}

void sub_08028728(SpearMoblinEntity* this) {
    super->animationState = DirectionRoundUp(super->direction) >> 2;
    super->direction = super->animationState << 2;
    this->unk_83 >>= 1;
    sub_080287B4(this);
    this->unk_82 = 2;
}

void sub_08028754(SpearMoblinEntity* this) {
    super->direction = sub_08049F84(super, 1);
    super->animationState = DirectionRoundUp(super->direction) >> 2;
    this->unk_83 = 0;
    sub_080287B4(this);
    this->unk_82 = 3;
}

void sub_08028784(SpearMoblinEntity* this) {
    super->animationState = DirectionRoundUp(super->direction) >> 2;
    super->direction = super->animationState << 2;
    this->unk_83 = 0;
    sub_080287B4(this);
    super->timer <<= 1;
    this->unk_82 = 4;
}

void sub_080287B4(SpearMoblinEntity* this) {
    super->action = 3;
    super->timer = 32;
    super->subtimer = 0;
    this->unk_80 = 0;
    this->unk_7b = 0;
    super->speed = 0;
    this->unk_82 = 0;
    sub_080287E0(this);
}

void sub_080287E0(SpearMoblinEntity* this) {
    u32 sprite = super->animationState >> 1;
    switch (this->unk_82) {
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
    InitializeAnimation(super, sprite);
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

void sub_08028858(SpearMoblinEntity* this) {
    const Hitbox* box;

    sub_080288C0(this);
    box = gUnk_080CC944[super->animationState >> 1];
    super->hitbox->offset_x = box->offset_x;
    super->hitbox->offset_y = box->offset_y;
    super->hitbox->width = box->width;
    super->hitbox->height = box->height;

    if (this->unk_82 == 0) {
        super->speed = 0;
    }

    ProcessMovement0(super);
    GetNextFrame(super);
}

bool32 sub_080288A4(SpearMoblinEntity* this) {
    return (super->collisions & gUnk_080CC7D8[super->animationState >> 1]) != 0;
}

void sub_080288C0(SpearMoblinEntity* this) {
    Entity* entity = super->child;
    if ((entity != NULL) && (entity->contactFlags & CONTACT_NOW)) {
        super->knockbackDirection = entity->knockbackDirection;
        super->iframes = -entity->iframes;
        super->knockbackSpeed = entity->knockbackSpeed;
        super->knockbackDuration = entity->knockbackDuration;
        entity->knockbackDuration = 0;
    }
}

// clang-format off
void (*const SpearMoblin_Functions[])(SpearMoblinEntity*) = {
    SpearMoblin_OnTick,
    SpearMoblin_OnCollision,
    (void (*)(SpearMoblinEntity*))GenericKnockback,
    (void (*)(SpearMoblinEntity*))GenericDeath,
    (void (*)(SpearMoblinEntity*))GenericConfused,
    SpearMoblin_OnGrabbed,
};

void (*const gUnk_080CC7A8[])(SpearMoblinEntity*) = {
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

const s8 gUnk_080CC7D0[] = {
    0x08, 0x10,
    0x08, 0x00,
    0x10, 0x08,
    0x10, 0x00,
};

const u16 gUnk_080CC7D8[] = {
    0xE, 0xE000, 0xE0, 0xE00,
};
// clang-format on
