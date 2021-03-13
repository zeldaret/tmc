#include "entity.h"
#include "functions.h"

typedef struct {
    u8 field_0x0;
    u8 field_0x1;
} PACKED stuct_080CAB14;

void sub_08021218();
void sub_08021588();
void sub_080213D0();
void sub_08021390();
void sub_0802159C();
void sub_0804AA1C();
void sub_080213F0();
u32 sub_080214FC();
void sub_08021540();
void sub_08021600();
void sub_080213B0();
u32 PlayerInRange();
u32 sub_0802169C();
void sub_0802124C();
void sub_08021644();
void sub_08021414();
void sub_08021400();
u32 sub_08021274(u32, u32);
u32 sub_08021664(Entity*, Entity*);
u32 sub_0804A044(Entity*, Entity*, u32);
void sub_08021424(Entity*);

extern Entity* gUnk_020000B0;

extern void (*const gUnk_080CAA98[])(Entity*);
extern void (*const gUnk_080CAAB0[])(Entity*);

extern const s8 gUnk_080CAB00[];
extern const s8 gUnk_080CAB04[];
extern const u8 gUnk_080CAB08[];
extern const s8 gUnk_080CAB0C[];
extern const s8 gUnk_080CAB10[];
extern const stuct_080CAB14 gUnk_080CAB14[];
extern const u8 gUnk_080CAB3A[];
extern const u8 gUnk_080CAB42[];
extern const u8 gUnk_080CAB4A[];
extern const u8 gUnk_080CAB52[];
extern const u8 gUnk_080CAB68[];

extern void (*const gUnk_080CAB58[])(Entity*);

void DarkNut(Entity* this) {
    EnemyFunctionHandler(this, gUnk_080CAA98);
    SetChildOffset(this, 0, 1, -22);
}

void sub_08020BA0(Entity* this) {
    gUnk_080CAAB0[this->action](this);
}

void sub_08020BB8(Entity* this) {
    switch (this->bitfield & 0x7f) {
        case 0x1c:
            this->action = 11;
            this->actionDelay = gUnk_080CAB0C[this->type];
            this->damageType = 81;
            sub_08021218(this, 8, DirectionToAnimationState(this->field_0x3e ^ 0x10));
            sub_08021588(this);
            sub_0804A9FC(this, 0x1c);
            break;
        case 0x16:
            this->action = 11;
            this->actionDelay = gUnk_080CAB10[this->type];
            this->damageType = 81;
            sub_08021218(this, 8, DirectionToAnimationState(this->field_0x3e ^ 0x10));
            sub_08021588(this);
            sub_0804A9FC(this, 0x1c);
            break;
        case 0x4b:
            if (this->action == 13 || this->action == 15 || this->action == 19 || this->action == 18)
                break;
            switch (this->field_0x78.HALF.HI) {
                case 8 ... 12:
                    this->field_0x7a.HALF.LO = gUnk_080CAB04[this->type];
                    break;
                case 4 ... 6:
                    this->field_0x7a.HALF.LO = gUnk_080CAB00[this->type];
                    break;
                default:
                    this->field_0x7a.HALF.LO = 0;
                    break;
            }
            this->action = 10;
            sub_08021218(this, 0xb, this->animationState);
            EnqueueSFX(0x15d);
            sub_08021588(this);
            break;
        case 0x4c:
            if (this->action == 15) {
                u8 bVar3 = 0xff;
                if (this->attachedEntity != NULL) {
                    bVar3 = this->attachedEntity->bitfield & 0x7f;
                }
                if (bVar3 == 2) {
                    sub_080213D0(this, gUnk_080CAB08[this->type]);
                } else {
                    sub_080213D0(this, 0);
                }
            }
            break;
        default:
            if (this->currentHealth != this->field_0x78.HALF.LO) {
                sub_08021588(this);
                sub_08021390(this);
                sub_0804AA1C(this);
            }
            break;
    }
    this->field_0x78.HALF.LO = this->currentHealth;
    sub_0804AA30(this, gUnk_080CAA98);
}

void nullsub_129(Entity* this) {
}

void sub_08020D70(Entity* this) {
    sub_0804A720(this);
    this->action = 1;
    this->field_0x74.HALF.HI = 0;
    this->field_0x78.HALF.LO = this->currentHealth;
    this->animationState = -1;
    sub_08021218(this, 0, 2);
}

void sub_08020D9C(Entity* this) {
    if (sub_08049FDC(this, 1))
        sub_080213F0(this);
}

void sub_08020DB4(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if (this->frames.all & 0x80)
        sub_08021390(this);
}

void sub_08020DD4(Entity* this) {
    if (sub_080214FC(this)) {
        sub_080213F0(this);
    } else if (--this->field_0x76.HWORD == 0) {
        this->action = 5;
        sub_08021218(this, 5, this->animationState);
    } else {
        if (--this->actionDelay == 0)
            sub_08021540(this);
        ProcessMovement(this);
        UpdateAnimationSingleFrame(this);
    }
}

void sub_08020E28(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if (this->frames.all & 0x80)
        sub_080213B0(this);
}

void sub_08020E48(Entity* this) {
    if (sub_080214FC(this)) {
        sub_080213F0(this);
    } else {
        UpdateAnimationSingleFrame(this);
        if (this->frames.all & 0x80)
            sub_080213B0(this);
    }
}

void sub_08020E78(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if (this->frames.all & 0x80)
        sub_08021390(this);
}

void sub_08020E98(Entity* this) {
    if (PlayerInRange(this, 1, 0x38)) {
        if (sub_0802169C(this, gUnk_020000B0)) {
            this->action = 8;
            sub_08021218(this, 7, this->animationState);
        } else {
            this->direction = GetFacingDirection(gUnk_020000B0, this);
            if (ProcessMovement(this) == 0) {
                this->action = 8;
                sub_08021218(this, 7, this->animationState);
            } else {
                this->direction ^= 0x10;
                sub_0802124C(this);
                sub_08021644(this);
            }
        }
    } else {
        if (gUnk_020000B0 == NULL) {
            sub_08021414(this);
        } else {
            this->direction = GetFacingDirection(this, gUnk_020000B0);
            ProcessMovement(this);
            sub_0802124C(this);
            sub_08021644(this);
        }
    }
}

void sub_08020F28(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if (this->frames.all & 0x80)
        sub_08021400(this);
}

void sub_08020F48(Entity* this) {
    if (PlayerInRange(this, 1, 0x48)) {
        if (sub_08021664(this, gUnk_020000B0)) {
            u32 uVar2 = sub_0804A044(this, gUnk_020000B0, 9);
            if (uVar2 == 0xff) {
                sub_08021424(this);
            } else {
                Entity* pEVar3;

                this->action = 14;
                sub_08021218(this, 13, uVar2 >> 3);
                pEVar3 = sub_0804A98C(this, 0, 1);
                if (pEVar3) {
                    pEVar3->parent = this;
                    this->attachedEntity = pEVar3;
                }
            }
        } else {
            sub_08021424(this);
        }
    } else {
        sub_08021390(this);
    }
}

void sub_08020FAC(Entity* this) {
    if (this->frames.all & 0x80) {
        if (this->field_0x7a.HALF.LO) {
            this->field_0x7a.HALF.LO--;
        } else {
            this->hurtBlinkTime = -8;
            sub_08021390(this);
        }
    } else {
        UpdateAnimationSingleFrame(this);
    }
}

void sub_08020FE4(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if (--this->actionDelay == 0) {
        this->action = 12;
        sub_08021218(this, 9, this->animationState);
        sub_0804AA1C(this);
    }
}

void sub_08021010(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if (this->frames.all & 0x80) {
        this->damageType = 0x56;
        sub_080213F0(this);
    }
}

void sub_08021038(Entity* this) {
    if (this->attachedEntity == NULL && this->frames.all) {
        Entity* pEVar2 = (Entity*)sub_0804A98C(this, 0, 0);
        if (pEVar2) {
            pEVar2->parent = this;
            this->attachedEntity = pEVar2;
        }
        EnqueueSFX(270);
    }

    if (this->frames.all & 0x80) {
        sub_08021588(this);
        if (this->field_0x7c.BYTES.byte0) {
            this->field_0x7c.BYTES.byte0--;
        } else {
            sub_08021390(this);
        }
    } else {
        UpdateAnimationSingleFrame(this);
        if (this->frames.all == 4)
            this->damageType = 81;
    }
}

void sub_080210A8(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if (this->frames.all & 1) {
        this->frames.all = 0;
        sub_08021588(this);
        EnqueueSFX(349);
    } else if (this->frames.all & 0x80) {
        sub_08021390(this);
    }
}

void sub_080210E4(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if (this->frames.all & 1) {
        Entity* ent;

        this->frames.all &= ~1;
        ent = sub_0804A98C(this, 0, 2);
        if (ent) {
            ent->parent = this;
            this->attachedEntity = ent;
        }

        EnqueueSFX(270);
    }

    sub_08021644(this);
    if ((this->frames.all & 0x10) &&
        (!ProcessMovement(this) || (this->attachedEntity && (this->attachedEntity->bitfield & 0x80)))) {
        sub_080213D0(this, 0);
    } else {
        if (--this->field_0x76.HWORD == 0)
            sub_080213D0(this, 0);
    }
}

void sub_08021170(Entity* this) {
    if (this->frames.all & 0x80) {
        if (this->field_0x7a.HALF.HI) {
            this->field_0x7a.HALF.HI--;
        } else {
            sub_08021390(this);
        }
    } else {
        UpdateAnimationSingleFrame(this);
    }
}

void sub_080211A0(Entity* this) {
    if (sub_080214FC(this)) {
        sub_08021390(this);
    } else {
        UpdateAnimationSingleFrame(this);
        if (this->frames.all & 0x80)
            sub_080213B0(this);
    }
}

void sub_080211D0(Entity* this)

{
    UpdateAnimationSingleFrame(this);
    sub_0802159C(this);

    if (this->frames.all & 0x80)
        sub_08021390(this);
}

void sub_080211F4(Entity* this) {
    UpdateAnimationSingleFrame(this);
    sub_08021600(this);

    if (this->frames.all & 0x80)
        sub_08021390(this);
}

void sub_08021218(Entity* this, u32 param_2, u32 param_3) {
    const stuct_080CAB14* unk;

    if (this->field_0x74.HALF.LO == param_2 && this->animationState == param_3)
        return;

    this->animationState = param_3;
    this->field_0x74.HALF.LO = param_2;

    unk = &gUnk_080CAB14[param_2];
    this->spriteIndex = unk->field_0x1;
    InitAnimationForceUpdate(this, unk->field_0x0 + param_3);
}

void sub_0802124C(Entity* this) {
    u32 iVar1 = sub_08021274(this->animationState, this->direction);
    if (iVar1 != 0xff) {
        sub_08021218(this, this->field_0x74.HALF.LO, iVar1);
    } else {
        UpdateAnimationSingleFrame(this);
    }
}

NAKED
u32 sub_08021274(u32 a, u32 b) {
    asm(".include \"asm/non_matching/darkNut/sub_08021274.inc\"");
}

void sub_080212B0(Entity* this) {
    u8 tmp;

    switch (this->field_0x74.HALF.HI) {
        default:
            this->field_0x74.HALF.HI = 1;
            tmp = gUnk_080CAB3A[Random() & 7];
            break;
        case 1:
            this->field_0x74.HALF.HI = 2;
            tmp = gUnk_080CAB42[Random() & 7];
            break;
        case 2:
            this->field_0x74.HALF.HI = 0;
            tmp = gUnk_080CAB4A[Random() & 7];
            break;
    }

    if (this->type < 2 && tmp == 2)
        tmp = gUnk_080CAB52[Random() & 3];

    this->attachedEntity = NULL;
    gUnk_080CAB58[tmp](this);
}

void sub_08021328(Entity* this) {
    this->action = 13;
    this->field_0x7c.BYTES.byte0 = gUnk_080CAB68[this->type];
    sub_08021218(this, 0xc, this->animationState);
}

void sub_0802134C(Entity* this) {
    this->action = 15;
    this->direction = DirectionFromAnimationState(this->animationState);
    this->speed = 0x200;
    this->field_0x76.HWORD = 0x78;
    sub_08021218(this, 0xe, this->animationState);
}

void sub_08021370(Entity* this) {
    this->action = 18;
    sub_08021218(this, 0x10, this->animationState);
}

void sub_08021380(Entity* this) {
    this->action = 19;
    sub_08021218(this, 0x11, this->animationState);
}

void sub_08021390(Entity* this) {
    this->action = 7;
    this->speed = 0x200;
    this->damageType = 0x56;
    sub_08021218(this, 6, this->animationState);
}

void sub_080213B0(Entity* this) {
    this->action = 3;
    this->actionDelay = 1;
    this->speed = 0xc0;
    this->field_0x76.HWORD = 0xf0;
    sub_08021218(this, 3, this->animationState);
}

void sub_080213D0(Entity* this, u32 param_2) {
    this->action = 16;
    this->field_0x7a.HALF.HI = param_2;
    sub_08021218(this, 0xf, this->animationState);
    sub_08021588(this);
}

void sub_080213F0(Entity* this) {
    this->action = 6;
    sub_08021218(this, 1, this->animationState);
}

void sub_08021400(Entity* this) {
    this->action = 9;
    this->speed = 0x60;
    sub_08021218(this, 10, this->animationState);
}

void sub_08021414(Entity* this) {
    this->action = 17;
    sub_08021218(this, 5, this->animationState);
}

void sub_08021424(Entity* this) {
    s32 x, y;
    u32 tmp;

    u32 dir = GetFacingDirection(this, gUnk_020000B0);
    tmp = sub_08021274(this->animationState, dir);
    if (tmp != 0xff) {
        sub_08021218(this, this->field_0x74.HALF.LO, tmp);
    } else {
        tmp = this->animationState;
    }

    switch (tmp) {
        case 0:
            x = gUnk_020000B0->x.HALF.HI;
            y = gUnk_020000B0->y.HALF.HI + 0x2c;
            break;
        case 1:
            x = gUnk_020000B0->x.HALF.HI - 0x24;
            y = gUnk_020000B0->y.HALF.HI;
            break;
        case 2:
            x = gUnk_020000B0->x.HALF.HI;
            y = gUnk_020000B0->y.HALF.HI - 0x1d;
            break;
        default:
            x = gUnk_020000B0->x.HALF.HI + 0x24;
            y = gUnk_020000B0->y.HALF.HI;
            break;
    }

    if (!(6 < (x - this->x.HALF.HI) + 3U) && !(4 < (y - this->y.HALF.HI) + 2U)) {
        sub_080212B0(this);
    } else {
        this->direction = sub_080045D4(this->x.HALF.HI, this->y.HALF.HI, x, y);
        if (!ProcessMovement(this)) {
            sub_080212B0(this);
        } else {
            UpdateAnimationSingleFrame(this);
        }
    }
}

u32 sub_080214FC(Entity* this) {
    u32 direction;

    if (!sub_08049FDC(this, 1))
        return 0;

    direction = GetFacingDirection(this, gUnk_020000B0);
    if (4 < (direction - (this->frames.all & 0x1f)) - 2)
        return 0;

    this->animationState = DirectionToAnimationState(direction);
    return 1;
}

void sub_08021540(Entity* this) {
    u32 tmp, tmp2;
    u32 rand;

    rand = Random();
    if (!sub_08049FA0(this) && (rand & 1)) {
        tmp2 = DirectionRoundUp(sub_08049EE4(this));
    } else {
        tmp2 = DirectionRound(rand >> 0x10);
    }
    this->direction = tmp2;

    tmp = sub_08021274(this->animationState, tmp2);
    if (tmp != 0xff)
        sub_08021218(this, 3, tmp);

    this->actionDelay = 30;
}

void sub_08021588(Entity* this) {
    if (this->attachedEntity) {
        this->attachedEntity->parent = NULL;
        this->attachedEntity = NULL;
    }
}

void sub_0802159C(Entity* this) {
    if (this->frames.all == 1) {
        Entity* ent;

        this->frames.all = 0;
        this->damageType = 0x51;
        ent = sub_0804A98C(this, 0, 3);
        if (ent) {
            ent->parent = this;
            this->attachedEntity = ent;
        }
        EnqueueSFX(0x116);
    } else if (this->frames.all == 2) {
        this->frames.all = 0;
        sub_08021588(this);
    } else if (this->frames.all & 0x20) {
        this->frames.all &= ~0x20;
        EnqueueSFX(0x115);
    }
}

void sub_08021600(Entity* this) {
    if (this->frames.all == 1) {
        Entity* ent;

        this->frames.all = 0;
        this->damageType = 0x51;
        ent = sub_0804A98C(this, 0, 4);
        if (ent) {
            ent->parent = this;
            this->attachedEntity = ent;
        }
        EnqueueSFX(0x10e);
    } else if (this->frames.all == 2) {
        this->frames.all = 0;
        sub_08021588(this);
    }
}

void sub_08021644(Entity* this) {
    if (this->frames.all & 0x20) {
        this->frames.all &= ~0x20;
        EnqueueSFX(0x7d);
    }
}

extern u32 sub_08049F1C(Entity*, Entity*, u32);

u32 sub_08021664(Entity* this, Entity* ent) {
    switch (this->animationState) {
        case 0:
            return sub_08049F1C(this, ent, 0x22);
        case 1:
            return sub_08049F1C(this, ent, 0x1a);
        case 2:
            return sub_08049F1C(this, ent, 0x13);
        case 3:
            return sub_08049F1C(this, ent, 0x1a);
    }
    return 0;
}

u32 sub_0802169C(Entity* this, Entity* ent) {
    u32 ret;

    switch (this->animationState) {
        case 0:
            ret = 0x2c;
            break;
        case 2:
            ret = 0x1d;
            break;
        case 1:
        case 3:
            ret = 0x24;
            break;
        default:
            return 0;
    }

    if (sub_08049F1C(this, ent, ret)) {
        return 0;
    } else {
        return 1;
    }
}

// clang-format off
void (*const gUnk_080CAA98[])(Entity*) = {
    sub_08020BA0,
    sub_08020BB8,
    sub_08001324,
    sub_0804A7D4,
    sub_08001242,
    nullsub_129,
};
void (*const gUnk_080CAAB0[])(Entity*) = {
    sub_08020D70,
    sub_08020D9C,
    sub_08020DB4,
    sub_08020DD4,
    sub_08020E28,
    sub_08020E48,
    sub_08020E78,
    sub_08020E98,
    sub_08020F28,
    sub_08020F48,
    sub_08020FAC,
    sub_08020FE4,
    sub_08021010,
    sub_08021038,
    sub_080210A8,
    sub_080210E4,
    sub_08021170,
    sub_080211A0,
    sub_080211D0,
    sub_080211F4,
};

const s8 gUnk_080CAB00[] = {
    30, 30, 20, 10,
};

const s8 gUnk_080CAB04[] = {
    60, 60, 45, 30,
};

const u8 gUnk_080CAB08[] = {
    90, 90, 60, 30,
};

const s8 gUnk_080CAB0C[] = {
    90, 90, 60, 30,
};

const s8 gUnk_080CAB10[] = {
    90, 90, 45, 8,
};

const stuct_080CAB14 gUnk_080CAB14[] = {
    {0x00, 0x62},
    {0x04, 0x62},
    {0x08, 0x62},
    {0x0C, 0x62},
    {0x10, 0x62},
    {0x14, 0x62},
    {0x18, 0x62},
    {0x1C, 0x62},
    {0x20, 0x62},
    {0x24, 0x62},
    {0x28, 0x62},
    {0x2C, 0x62},
    {0x00, 0x63},
    {0x04, 0x63},
    {0x08, 0x63},
    {0x0C, 0x63},
    {0x10, 0x63},
    {0x14, 0x63},
    {0x18, 0x63},
};

const u8 gUnk_080CAB3A[] = {
    0, 1, 1, 0, 3, 0, 1, 0,
};

const u8 gUnk_080CAB42[] = {
    1, 1, 3, 0, 1, 2, 0, 0,
};

const u8 gUnk_080CAB4A[] = {
    0, 0, 3, 1, 2, 2, 3, 1,
};

const u8 gUnk_080CAB52[] = {
    0, 3, 1, 0, 0, 0
};

void (*const gUnk_080CAB58[])(Entity*) = {
    sub_08021328,
    sub_0802134C,
    sub_08021370,
    sub_08021380,
};

const u8 gUnk_080CAB68[] = {
    90, 90, 45, 7,
};
// clang-format on
