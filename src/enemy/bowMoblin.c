/**
 * @file bowMoblin.c
 * @ingroup Enemies
 *
 * @brief Bow Moblin enemy
 */
#include "enemy.h"
#include "entity.h"
#include "functions.h"

typedef struct {
    Entity base;
    u8 filler[0x12];
    u8 unk_0x7a;
    u8 unk_0x7b;
    u8 filter[0x4];
    u8 unk_0x80;
    u8 unk_0x81;
    u8 unk_0x82;
    u8 unk_0x83;
} BowMoblinEntity;

void sub_0803C5F0(BowMoblinEntity*);
void sub_0803C690(BowMoblinEntity*);
void sub_0803C4B0(BowMoblinEntity*);
void sub_0803C5C4(BowMoblinEntity*);
void sub_0803C624(BowMoblinEntity*);
void sub_0803C6DC(BowMoblinEntity*);
void sub_0803C714(BowMoblinEntity*);
void sub_0803C634(BowMoblinEntity*);
bool32 sub_0803C6F8(BowMoblinEntity*);
bool32 sub_0803C568(BowMoblinEntity*);
void sub_0803C664(BowMoblinEntity*);

void (*const BowMoblin_Functions[])(Entity*);
void (*const gUnk_080CFF90[])(BowMoblinEntity*);

const s8 gUnk_080CFFA4[8];
const s8 gUnk_080CFFAC[16];
const u16 gUnk_080CFFBC[4];
const s8 gUnk_080CFFC4[8];

void BowMoblin(Entity* this) {
    EnemyFunctionHandler(this, BowMoblin_Functions);
    EnemySetFXOffset(this, 0, 1, -0x18);
}

void BowMoblin_OnTick(BowMoblinEntity* this) {
    gUnk_080CFF90[super->action](this);
}

void BowMoblin_OnCollision(BowMoblinEntity* this) {
    Entity* pEVar1;

    if (super->confusedTime != 0) {
        EnemyCreateFX(super, FX_STARS);
    }
    EnemyFunctionHandlerAfterCollision(super, (EntityActionArray)BowMoblin_Functions);
    if (super->contactFlags & CONTACT_NOW) {
        sub_0803C5F0(this);
        pEVar1 = super->child;
        if (pEVar1 != NULL) {
            pEVar1->subtimer++;
        }
    }
}

void BowMoblin_OnGrabbed(BowMoblinEntity* this) {
}

void sub_0803C1E0(BowMoblinEntity* this) {
    sub_0804A720(super);

    super->action = 1;
    this->unk_0x7b = 0;
    this->unk_0x80 = 0;
    this->unk_0x83 = 0;
    this->unk_0x81 = 0;
    this->unk_0x7a = 0;
    this->unk_0x82 = 1;

    if (super->timer != 0) {
        super->animationState = super->type2 << 1;
        super->timer = 30;
        super->speed = 0x80;
        super->direction = super->type2 << 3;
        sub_0803C690(this);
    } else {
        super->animationState = 0x10;
        sub_0803C4B0(this);
    }
}

void sub_0803C234(BowMoblinEntity* this) {
    u8 mask;
    if (this->unk_0x81) {
        this->unk_0x81--;
    }
    mask = 0xff;
    if (((--super->timer) & mask) == 0) {
        u8 tmp = ++this->unk_0x80;

        if ((tmp) > 0xf) {
            sub_0803C5C4(this);
        } else if (((this->unk_0x80 & 0x3) == 0) && (Random() & 0x10)) {
            sub_0803C624(this);
        } else {
            sub_0803C4B0(this);
        }

    } else if (sub_0803C6F8(this)) {
        sub_0800417E(super, super->collisions);
        super->animationState = ((super->direction + 4) & 0x18) >> 2;
        this->unk_0x83++;
        sub_0803C690(this);
    } else if (sub_0803C568(this)) {
        sub_0803C5F0(this);
    }

    sub_0803C6DC(this);
}

void sub_0803C2DC(BowMoblinEntity* this) {
    u32 timer = --super->timer;
    if (timer == 0) {
        super->action = 3;
        this->unk_0x82 = timer;
        this->unk_0x80 = timer;
        super->animationState = 0x10;
        sub_0803C4B0(this);
    } else if (sub_0803C568(this)) {
        this->unk_0x7b |= 0x1;
    }

    if (super->subtimer > 11) {
        if (this->unk_0x7b != 0) {
            sub_0803C5F0(this);
        }
    } else {
        super->subtimer++;
    }

    sub_0803C6DC(this);
}

void sub_0803C344(BowMoblinEntity* this) {
    if (--super->timer == 0) {
        switch (this->unk_0x82) {
            case 3: {
                super->action = 4;
                super->speed = 0x80;
                super->direction = sub_08049F84(super, 1);
                break;
            }
            case 5: {
                super->action = 4;
                super->speed = 0x80;
                break;
            }
            case 2: {
                u32 tmp;
                super->action = 2;
                super->speed = 0;
                tmp = Random() & 0x7;
                super->timer = 3 * tmp + 64;
                break;
            }
            case 4: {
                super->direction = (super->direction + 0x10) & 0x18;
            }
            case 0:
            case 1:
            default: {
                u32 tmp;
                super->action = 1;
                this->unk_0x82 = 1;
                super->speed = 0x80;
                tmp = (Random() & 0x7);
                super->timer = 3 * tmp + 34;
                break;
            }
        }

        super->subtimer = 0;
        super->animationState = ((super->direction + 4) & 0x18) >> 2;
        sub_0803C690(this);
    }
    sub_0803C6DC(this);
}

void sub_0803C400(BowMoblinEntity* this) {
    if (super->subtimer) {
        u8 mask;
        super->subtimer--;
        mask = 0xff;
        if ((super->subtimer & mask) == 0) {
            if (this->unk_0x82 == 3) {
                this->unk_0x7a++;
                if ((this->unk_0x7a & mask) <= 2) {
                    if (Random() & 0xc0) {
                        super->timer = 0;
                        sub_0803C690(this);
                        sub_0803C6DC(this);
                        return;
                    }
                }
            }
            sub_0803C634(this);
        }
    } else {
        Entity* projectile;

        switch (++super->timer) {
            case 1:
                super->direction = super->animationState << 2;
                projectile = EnemyCreateProjectile(super, ARROW_PROJECTILE, super->animationState >> 1);
                if (projectile) {
                    super->child = projectile;
                    projectile->direction = (super->direction + 4) & 0x18;
                    projectile->parent = super;
                }
                break;
            case 24:
                super->timer = 0;
                super->subtimer = 32;
                break;
        }

        sub_0803C6DC(this);
        if (super->child != NULL) {
            sub_0803C714(this);
        }
    }
}

void sub_0803C4B0(BowMoblinEntity* this) {
    u32 dir;
    super->subtimer = 0;
    if (this->unk_0x82 == 1) {
        super->timer = gUnk_080CFFA4[Random() & 7];
        super->speed = 0x80;
        if (sub_08049FA0(super)) {
            dir = Random();
            dir &= 6;
            super->direction = dir << 2;
        } else {
            dir = sub_08049EE4(super);
            if (this->unk_0x83 == 0) {
                dir += gUnk_080CFFAC[Random() & 0xf];
            } else {
                dir += gUnk_080CFFAC[Random() & 0x7];
                super->timer += 16;
                this->unk_0x83--;
            }
            dir = (super->direction = (dir + 4) & 0x18) >> 2;
        }
    } else {
        super->timer = 12;
        super->speed = super->subtimer;
        dir = super->direction >> 2;
    }
    if (dir != super->animationState) {
        super->animationState = dir;
        sub_0803C690(this);
    }
}

bool32 sub_0803C568(BowMoblinEntity* this) {
    if (this->unk_0x81 == 0) {
        Entity* entity = sub_08049DF4(1);
        if (entity != NULL) {
            if (this->unk_0x82 == 2) {
                if (sub_0806FC80(super, entity, 0x30)) {
                    return TRUE;
                }
            }

            if (sub_0806FC80(super, entity, 0x40)) {
                u32 direction = (GetFacingDirection(super, entity) + 4) & 0x18;
                direction = direction >> 2;
                if (direction == super->animationState) {
                    return TRUE;
                }
            }
        }
    }

    return FALSE;
}

void sub_0803C5C4(BowMoblinEntity* this) {
    u32 state = ((super->direction + 4) & 0x18) >> 2;
    super->animationState = state;
    super->direction = state << 2;
    this->unk_0x83 >>= 1;
    sub_0803C664(this);
    this->unk_0x82 = 2;
}

void sub_0803C5F0(BowMoblinEntity* this) {
    super->direction = sub_08049F84(super, 1);
    super->animationState = ((super->direction + 4) & 0x18) >> 2;
    this->unk_0x83 = 0;
    this->unk_0x7a = 0;
    sub_0803C664(this);
    this->unk_0x82 = 3;
}

void sub_0803C624(BowMoblinEntity* this) {
    sub_0803C664(this);
    this->unk_0x82 = 5;
}

void sub_0803C634(BowMoblinEntity* this) {
    super->animationState = ((super->direction + 4) & 0x18) >> 2;
    super->direction = super->animationState << 2;
    this->unk_0x83 = 0;
    sub_0803C664(this);
    super->timer *= 2;
    this->unk_0x82 = 4;
}

void sub_0803C664(BowMoblinEntity* this) {
    super->action = 3;
    super->timer = 32;
    super->subtimer = 0;
    this->unk_0x80 = 0;
    this->unk_0x7b = 0;
    super->speed = 0;
    this->unk_0x82 = 0;
    sub_0803C690(this);
}

void sub_0803C690(BowMoblinEntity* this) {
    u32 tmp = super->animationState >> 1;
    switch (this->unk_0x82) {
        case 1:
        case 4: {
            tmp += 0x4;
            break;
        }
        case 3:
        case 5: {
            tmp += 0x8;
            break;
        }
        case 2: {
            tmp += 0xc;
            break;
        }
        case 0: {
            break;
        }
    }

    InitializeAnimation(super, tmp);
}

void sub_0803C6DC(BowMoblinEntity* this) {
    u8 tmp = this->unk_0x82;
    if (tmp == 0) {
        super->speed = tmp;
    }

    ProcessMovement0(super);
    GetNextFrame(super);
}

bool32 sub_0803C6F8(BowMoblinEntity* this) {
    return (super->collisions & gUnk_080CFFBC[(super->animationState ^ 1) / 2]) != 0;
}

void sub_0803C714(BowMoblinEntity* this) {
    Entity* child = super->child;
    const s8* tmp;
    u32 offsetX;
    u32 offsetY;
    tmp = &gUnk_080CFFC4[super->animationState];
    // TODO fix array access
    offsetX = tmp[0] << 0x10;
    offsetY = tmp[1] << 0x10;

    PositionRelative(super, child, offsetX, offsetY);
}

void (*const BowMoblin_Functions[])(Entity*) = {
    (EntityActionPtr)BowMoblin_OnTick,
    (EntityActionPtr)BowMoblin_OnCollision,
    GenericKnockback,
    GenericDeath,
    GenericConfused,
    (EntityActionPtr)BowMoblin_OnGrabbed,
};

void (*const gUnk_080CFF90[])(BowMoblinEntity*) = {
    sub_0803C1E0, sub_0803C234, sub_0803C2DC, sub_0803C344, sub_0803C400,
};

const s8 gUnk_080CFFA4[8] = {
    24, 32, 48, 64, 96, 108, 120, 145,
};

const s8 gUnk_080CFFAC[16] = {
    0xf8, 0xc, 0xf4, 0x8, 0x4, 0xfa, 0x6, 0xfc, 0x0, 0xfd, 0x1, 0x3, 0xff, 0x2, 0x0, 0xfe,
};

const u16 gUnk_080CFFBC[4] = {
    0xe,
    0xe000,
    0xe0,
    0xe00,
};

const s8 gUnk_080CFFC4[8] = {
    -5, -20, 15, -12, 4, -4, -15, -12,
};
