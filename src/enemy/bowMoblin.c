#include "global.h"
#include "entity.h"
#include "enemy.h"
#include "functions.h"

extern void sub_0803C5F0(Entity*);
extern void sub_0803C690(Entity*);
extern void sub_0803C4B0(Entity*);
extern void sub_0803C5C4(Entity*);
extern void sub_0803C624(Entity*);
extern void sub_0803C6DC(Entity*);
extern void sub_0803C714(Entity*);
extern void sub_0803C634(Entity*);
extern u32 sub_0803C6F8(Entity*);
extern u32 sub_0803C568(Entity*);
extern Entity* sub_08049DF4(u32);
extern u32 sub_0806FC80(Entity*, Entity*, s32);
extern void sub_0803C664(Entity*);

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

void sub_0803C180(Entity* this) {
    gUnk_080CFF90[this->action](this);
}

void sub_0803C198(Entity* this) {
    Entity* pEVar1;

    if (this->field_0x43 != 0) {
        sub_0804A9FC(this, 0x1c);
    }
    sub_0804AA30(this, gUnk_080CFF78);
    if ((this->bitfield & 0x80) != 0) {
        sub_0803C5F0(this);
        pEVar1 = this->child;
        if (pEVar1 != NULL) {
            pEVar1->field_0xf++;
        }
    }
}

void nullsub_168(Entity* this) {
}

void sub_0803C1E0(Entity* this) {
    sub_0804A720(this);

    this->action = 1;
    this->field_0x7a.HALF.HI = 0;
    this->field_0x80.HALF.LO = 0;
    this->field_0x82.HALF.HI = 0;
    this->field_0x80.HALF.HI = 0;
    this->field_0x7a.HALF.LO = 0;
    this->field_0x82.HALF.LO = 1;

    if (this->actionDelay) {
        this->animationState = this->type2 << 1;
        this->actionDelay = 0x1e;
        this->speed = 0x80;
        this->direction = this->type2 << 3;
        sub_0803C690(this);
    } else {
        this->animationState = 0x10;
        sub_0803C4B0(this);
    }
}

void sub_0803C234(Entity* this) {
    u8 mask;
    if (this->field_0x80.HALF.HI) {
        this->field_0x80.HALF.HI--;
    }
    mask = 0xff;
    if (((--this->actionDelay) & mask) == 0) {
        u8 tmp = ++this->field_0x80.HALF.LO;

        if ((tmp) > 0xf) {
            sub_0803C5C4(this);
        } else if (((this->field_0x80.HALF.LO & 0x3) == 0) && (Random() & 0x10)) {
            sub_0803C624(this);
        } else {
            sub_0803C4B0(this);
        }

    } else if (sub_0803C6F8(this)) {
        sub_0800417E(this, this->collisions);
        this->animationState = ((this->direction + 4) & 0x18) >> 2;
        this->field_0x82.HALF.HI++;
        sub_0803C690(this);
    } else if (sub_0803C568(this)) {
        sub_0803C5F0(this);
    }

    sub_0803C6DC(this);
}

void sub_0803C2DC(Entity* this) {
    u32 res;
    u32 actionDelay = --this->actionDelay;
    if (actionDelay == 0) {
        this->action = 3;
        this->field_0x82.HALF.LO = actionDelay;
        this->field_0x80.HALF.LO = actionDelay;
        this->animationState = 0x10;
        sub_0803C4B0(this);
    } else if (res = sub_0803C568(this), res) {
        this->field_0x7a.HALF.HI |= 0x1;
    }

    if (this->field_0xf > 0xb) {
        if (this->field_0x7a.HALF.HI != 0) {
            sub_0803C5F0(this);
        }
    } else {
        this->field_0xf++;
    }

    sub_0803C6DC(this);
}

void sub_0803C344(Entity* this) {
    if (--this->actionDelay == 0) {
        switch (this->field_0x82.HALF.LO) {
            case 3: {
                this->action = 4;
                this->speed = 0x80;
                this->direction = sub_08049F84(this, 1);
                break;
            }
            case 5: {
                this->action = 4;
                this->speed = 0x80;
                break;
            }
            case 2: {
                u32 tmp;
                this->action = 2;
                this->speed = 0;
                tmp = Random() & 0x7;
                this->actionDelay = (tmp << 1) + tmp + 0x40;
                break;
            }
            case 4: {
                this->direction = (this->direction + 0x10) & 0x18;
            }
            case 0:
            case 1:
            default: {
                u32 tmp;
                this->action = 1;
                this->field_0x82.HALF.LO = 1;
                this->speed = 0x80;
                tmp = (Random() & 0x7);
                this->actionDelay = (tmp << 1) + tmp + 0x22;
                break;
            }
        }

        this->field_0xf = 0;
        this->animationState = ((this->direction + 4) & 0x18) >> 2;
        sub_0803C690(this);
    }
    sub_0803C6DC(this);
}

void sub_0803C400(Entity* this) {
    if (this->field_0xf) {
        u8 mask;
        this->field_0xf--;
        mask = 0xff;
        if ((this->field_0xf & mask) == 0) {
            if (this->field_0x82.HALF.LO == 3) {
                this->field_0x7a.HALF.LO++;
                if ((this->field_0x7a.HALF.LO & mask) <= 2) {
                    if (Random() & 0xc0) {
                        this->actionDelay = 0;
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
        switch (++this->actionDelay) {
            case 1:
                this->direction = this->animationState << 2;
                projectile = CreateProjectileWithParent(this, 0xd, this->animationState >> 1);
                if (projectile) {
                    this->child = projectile;
                    projectile->direction = (this->direction + 4) & 0x18;
                    projectile->parent = this;
                }
                break;
            case 24:
                this->actionDelay = 0;
                this->field_0xf = 0x20;
                break;
        }

        sub_0803C6DC(this);
        if (this->child) {
            sub_0803C714(this);
        }
    }
}

NONMATCH("asm/non_matching/bowMoblin/sub_0803C4B0.inc", void sub_0803C4B0(Entity* this)) {
    u32 dir;
    this->field_0xf = 0;
    if (this->field_0x82.HALF.LO == 1) {
        this->actionDelay = gUnk_080CFFA4[Random() & 7];
        this->speed = 0x80;

        if (sub_08049FA0(this)) {
            this->direction = (Random() & 6) << 2;
        } else {
            dir = sub_08049EE4(this);
            if (this->field_0x82.HALF.HI == 0) {
                dir += gUnk_080CFFAC[Random() & 0xf];
            } else {
                dir += gUnk_080CFFAC[Random() & 0x7];
                this->actionDelay += 0x10;
                this->field_0x82.HALF.HI--;
            }

            dir = (dir + 4) & 0x18;
            this->direction = dir;
            dir <<= 2;
        }
    } else {
        this->actionDelay = 0xc;
        this->speed = this->field_0xf;
        dir = this->direction;
        dir <<= 2;
    }

    if (this->animationState != dir) {
        this->animationState = dir;
        sub_0803C690(this);
    }
}
END_NONMATCH

u32 sub_0803C568(Entity* this) {
    if (this->field_0x80.HALF.HI == 0) {
        Entity* ent = sub_08049DF4(1);
        if (ent) {
            if (this->field_0x82.HALF.LO == 2) {
                if (sub_0806FC80(this, ent, 0x30)) {
                    return 1;
                }
            }

            if (sub_0806FC80(this, ent, 0x40)) {
                u32 direction = (GetFacingDirection(this, ent) + 4) & 0x18;
                direction = direction >> 2;
                if (direction == this->animationState) {
                    return 1;
                }
            }
        }
    }

    return 0;
}

void sub_0803C5C4(Entity* this) {
    u32 state = ((this->direction + 4) & 0x18) >> 2;
    this->animationState = state;
    this->direction = state << 2;
    this->field_0x82.HALF.HI >>= 1;
    sub_0803C664(this);
    this->field_0x82.HALF.LO = 2;
}

void sub_0803C5F0(Entity* this) {
    this->direction = sub_08049F84(this, 1);
    this->animationState = ((this->direction + 4) & 0x18) >> 2;
    this->field_0x82.HALF.HI = 0;
    this->field_0x7a.HALF.LO = 0;
    sub_0803C664(this);
    this->field_0x82.HALF.LO = 3;
}

void sub_0803C624(Entity* this) {
    sub_0803C664(this);
    this->field_0x82.HALF.LO = 5;
}

void sub_0803C634(Entity* this) {
    this->animationState = ((this->direction + 4) & 0x18) >> 2;
    this->direction = this->animationState << 2;
    this->field_0x82.HALF.HI = 0;
    sub_0803C664(this);
    this->actionDelay <<= 1;
    this->field_0x82.HALF.LO = 4;
}

void sub_0803C664(Entity* this) {
    this->action = 3;
    this->actionDelay = 0x20;
    this->field_0xf = 0;
    this->field_0x80.HALF.LO = 0;
    this->field_0x7a.HALF.HI = 0;
    this->speed = 0;
    this->field_0x82.HALF.LO = 0;
    sub_0803C690(this);
}

void sub_0803C690(Entity* this) {
    u32 tmp = this->animationState >> 1;
    switch (this->field_0x82.HALF.LO) {
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

    InitializeAnimation(this, tmp);
}

void sub_0803C6DC(Entity* this) {
    u8 tmp = this->field_0x82.HALF.LO;
    if (tmp == 0) {
        this->speed = tmp;
    }

    ProcessMovement(this);
    GetNextFrame(this);
}

u32 sub_0803C6F8(Entity* this) {
    u32 tmp = (this->collisions & gUnk_080CFFBC[(this->animationState ^ 1) / 2]);
    u32 tmp2 = -tmp;
    return (tmp2 | tmp) >> 0x1f;
}

void sub_0803C714(Entity* this) {
    Entity* child = this->child; // Unused
    const s8* tmp;
    u32 offsetX;
    u32 offsetY;
    tmp = &gUnk_080CFFC4[this->animationState];
    // TODO fix array access
    offsetX = tmp[0] << 0x10;
    offsetY = tmp[1] << 0x10;

    PositionRelative(this, child, offsetX, offsetY);
}
