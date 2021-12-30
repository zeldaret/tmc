#define NENT_DEPRECATED
#include "global.h"
#include "entity.h"
#include "enemy.h"
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
u32 sub_0803C6F8(BowMoblinEntity*);
u32 sub_0803C568(BowMoblinEntity*);
extern Entity* sub_08049DF4(u32);
extern u32 sub_0806FC80(Entity*, Entity*, s32);
void sub_0803C664(BowMoblinEntity*);

extern void (*const gUnk_080CFF78[])(Entity*);
extern void (*const gUnk_080CFF90[])(Entity*);

extern const s8 gUnk_080CFFC4[8];
extern const s8 gUnk_080CFFA4[8];
extern const s8 gUnk_080CFFAC[16];
extern const u16 gUnk_080CFFBC[4];

void BowMoblin(Entity* this) {
    EnemyFunctionHandler(this, gUnk_080CFF78);
    SetChildOffset(this, 0, 1, -0x18);
}

void sub_0803C180(BowMoblinEntity* this) {
    gUnk_080CFF90[super->action](super);
}

void sub_0803C198(BowMoblinEntity* this) {
    Entity* pEVar1;

    if (super->field_0x43 != 0) {
        sub_0804A9FC(super, 0x1c);
    }
    sub_0804AA30(super, gUnk_080CFF78);
    if ((super->bitfield & 0x80) != 0) {
        sub_0803C5F0(this);
        pEVar1 = super->child;
        if (pEVar1 != NULL) {
            pEVar1->field_0xf++;
        }
    }
}

void nullsub_168(BowMoblinEntity* this) {
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

    if (super->actionDelay) {
        super->animationState = super->type2 << 1;
        super->actionDelay = 0x1e;
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
    if (((--super->actionDelay) & mask) == 0) {
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
    u32 res;
    u32 actionDelay = --super->actionDelay;
    if (actionDelay == 0) {
        super->action = 3;
        this->unk_0x82 = actionDelay;
        this->unk_0x80 = actionDelay;
        super->animationState = 0x10;
        sub_0803C4B0(this);
    } else if (res = sub_0803C568(this), res) {
        this->unk_0x7b |= 0x1;
    }

    if (super->field_0xf > 0xb) {
        if (this->unk_0x7b != 0) {
            sub_0803C5F0(this);
        }
    } else {
        super->field_0xf++;
    }

    sub_0803C6DC(this);
}

void sub_0803C344(BowMoblinEntity* this) {
    if (--super->actionDelay == 0) {
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
                super->actionDelay = (tmp << 1) + tmp + 0x40;
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
                super->actionDelay = (tmp << 1) + tmp + 0x22;
                break;
            }
        }

        super->field_0xf = 0;
        super->animationState = ((super->direction + 4) & 0x18) >> 2;
        sub_0803C690(this);
    }
    sub_0803C6DC(this);
}

void sub_0803C400(BowMoblinEntity* this) {
    if (super->field_0xf) {
        u8 mask;
        super->field_0xf--;
        mask = 0xff;
        if ((super->field_0xf & mask) == 0) {
            if (this->unk_0x82 == 3) {
                this->unk_0x7a++;
                if ((this->unk_0x7a & mask) <= 2) {
                    if (Random() & 0xc0) {
                        super->actionDelay = 0;
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
        switch (++super->actionDelay) {
            case 1:
                super->direction = super->animationState << 2;
                projectile = CreateProjectileWithParent(super, 0xd, super->animationState >> 1);
                if (projectile) {
                    super->child = projectile;
                    projectile->direction = (super->direction + 4) & 0x18;
                    projectile->parent = super;
                }
                break;
            case 24:
                super->actionDelay = 0;
                super->field_0xf = 0x20;
                break;
        }

        sub_0803C6DC(this);
        if (super->child) {
            sub_0803C714(this);
        }
    }
}

void sub_0803C4B0(BowMoblinEntity* this) {
    u32 dir;
    super->field_0xf = 0;
    if (this->unk_0x82 == 1) {
        super->actionDelay = gUnk_080CFFA4[Random() & 7];
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
                super->actionDelay += 0x10;
                this->unk_0x83--;
            }
            dir = (super->direction = (dir + 4) & 0x18) >> 2;
        }
    } else {
        super->actionDelay = 0xc;
        super->speed = super->field_0xf;
        dir = super->direction >> 2;
    }
    if (dir != super->animationState) {
        super->animationState = dir;
        sub_0803C690(this);
    }
}

u32 sub_0803C568(BowMoblinEntity* this) {
    if (this->unk_0x81 == 0) {
        Entity* ent = sub_08049DF4(1);
        if (ent) {
            if (this->unk_0x82 == 2) {
                if (sub_0806FC80(super, ent, 0x30)) {
                    return 1;
                }
            }

            if (sub_0806FC80(super, ent, 0x40)) {
                u32 direction = (GetFacingDirection(super, ent) + 4) & 0x18;
                direction = direction >> 2;
                if (direction == super->animationState) {
                    return 1;
                }
            }
        }
    }

    return 0;
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
    super->actionDelay <<= 1;
    this->unk_0x82 = 4;
}

void sub_0803C664(BowMoblinEntity* this) {
    super->action = 3;
    super->actionDelay = 0x20;
    super->field_0xf = 0;
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

    ProcessMovement(super);
    GetNextFrame(super);
}

u32 sub_0803C6F8(BowMoblinEntity* this) {
    u32 tmp = (super->collisions & gUnk_080CFFBC[(super->animationState ^ 1) / 2]);
    u32 tmp2 = -tmp;
    return (tmp2 | tmp) >> 0x1f;
}

void sub_0803C714(BowMoblinEntity* this) {
    Entity* child = super->child; // Unused
    const s8* tmp;
    u32 offsetX;
    u32 offsetY;
    tmp = &gUnk_080CFFC4[super->animationState];
    // TODO fix array access
    offsetX = tmp[0] << 0x10;
    offsetY = tmp[1] << 0x10;

    PositionRelative(super, child, offsetX, offsetY);
}
