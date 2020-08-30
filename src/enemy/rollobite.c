#include "entity.h"
#include "functions.h"

extern void (*const gUnk_080CA66C[])(Entity*);
extern void (*const gUnk_080CA684[])(Entity*);
extern void (*const gUnk_080CA6A4[])(Entity*);
extern void (*const gUnk_080CA6BC[])(Entity*);

extern const u8 gUnk_080CA6CC[];
extern const s8 gUnk_080CA6D4[];

void sub_08020A30(Entity*);
void sub_08020A7C(Entity*);
u32 sub_08020AD0(Entity*);
u32 sub_08020B6C(Entity*);

extern void sub_080AE58C();
extern void sub_080AE7E8();
extern void sub_08078930();

void Rollobite(Entity* this) {
    EnemyFunctionHandler(this, gUnk_080CA66C);
}

void sub_08020648(Entity* this) {
    sub_08020AD0(this);
    gUnk_080CA684[this->action](this);
}

void sub_08020668(Entity* this) {
    if (this->damageType == 34 && this->currentHealth != 0xff) {
        this->action = 4;
        this->field_0x20 = 0x20000;
        this->direction = -1;
        this->currentHealth = -1;
        this->damageType = 35;
        InitializeAnimation(this, this->animationState + 8);
    }

    if (this->bitfield != 0x80) {
        u8 tmp = this->action - 4;
        if (tmp < 2) {
            this->action = 4;
            this->actionDelay = -76;
            this->direction = -1;
            InitializeAnimation(this, this->animationState + 0x10);
        }
    }

    if (this->bitfield == 0x93)
        sub_08020648(this);
}

void sub_080206E0(Entity* this) {
    if (sub_08020AD0(this)) {
        this->field_0x42 = 0;
    } else {
        if (sub_08020B6C(this)) {
            this->field_0x42--;
            sub_080AE58C(this, this->field_0x3e, 10);
            sub_080AE7E8(this, this->field_0x46, this->field_0x3e, 10);
        } else {
            sub_08001324(this);
        }
    }
}

void sub_08020734(Entity* this) {
    if (this->previousActionFlag < 3 && !sub_0806F520(this)) {
        this->action = 4;
        this->flags |= 0x80;
        this->direction = -1;
        InitializeAnimation(this, this->animationState + 0x10);
    } else {
        gUnk_080CA6A4[this->previousActionFlag](this);
    }
}

void sub_0802077C(Entity* this) {
    this->previousActionFlag = 1;
    this->field_0x1d = 60;
}

void sub_08020788(Entity* this) {
    sub_0806F4E8(this);
}

void sub_08020790(Entity* this) {
    sub_0806F3E4(this);
}

void sub_08020798(Entity* this) {
    this->flags &= ~0x80;
}

void nullsub_6(Entity* this) {
}

void sub_080207A8(Entity* this) {
    this->action = 4;
    this->flags |= 0x80;
    this->spritePriority.b0 = 4;
    this->field_0x3a &= 0xfb;
    this->direction ^= 0x10;
    this->field_0x20 = 0x18000;
    this->nonPlanarMovement = 0x80;
    InitializeAnimation(this, this->animationState + 0x10);
}

void sub_080207F4(Entity* this) {
    sub_0804A720(this);
    this->field_0x16 = 0x30;
    this->field_0x1c = 18;
    this->cutsceneBeh.HALF.LO = 0;
    this->direction = Random() & 0x18;
    sub_08020A30(this);
}

void sub_08020820(Entity* this) {
    GetNextFrame(this);
    if (this->frames.all & 0x1) {
        this->frames.all &= ~0x1;
        if (!sub_080AEF88(this))
            this->actionDelay = 1;
    }

    if (this->frames.all & 0x10) {
        this->frames.all &= ~0x10;
        if (--this->actionDelay == 0) {
            this->action = 3;
            this->actionDelay = 60;
        }
    }
}

void sub_08020874(Entity* this) {
    gUnk_080CA6BC[this->previousActionFlag](this);
}

void sub_0802088C(Entity* this) {
    this->previousActionFlag = 1;
    this->flags &= ~0x80;
    this->cutsceneBeh.HALF.HI = gPlayerEntity.animationState;
    this->spritePriority.b1 = 0;
}

void sub_080208B4(Entity* this) {
    s8 uVar1 = (this->cutsceneBeh.HALF.HI - gPlayerEntity.animationState) / 2;
    if (uVar1) {
        this->animationState = (this->animationState + uVar1) & 3;
        InitializeAnimation(this, this->animationState + 0x10);
    }
    this->cutsceneBeh.HALF.HI = gPlayerEntity.animationState;
}

void sub_080208F0(Entity* this) {
    this->spritePriority.b1 = 3;
}

void sub_08020904(Entity* this) {
    this->action = 4;
    this->flags |= 0x80;
    this->direction = -1;
    InitializeAnimation(this, this->animationState + 0x10);
}

void sub_08020920(Entity* this) {
    if (--this->actionDelay == 0)
        sub_08020A30(this);
}

void sub_08020938(Entity* this) {
    u32 unk;

    if ((this->frames.all & 0x80) == 0)
        GetNextFrame(this);

    unk = sub_080044EC(this, 0x2800);

    if (unk == 0) {
        if (--this->actionDelay == 0) {
            this->action = 5;
            InitializeAnimation(this, this->animationState + 12);
        }
        sub_08078930(this);
    } else {
        if (unk == 1)
            sub_08004488(260);

        if ((this->direction & 0x80) == 0)
            sub_080AEFE0(this);
    }
}

void sub_080209A0(Entity* this) {
    GetNextFrame(this);
    if (this->frames.all & 0x80) {
        this->flags |= 0x80;
        this->nonPlanarMovement = 0x100;
        this->damageType = 34;
        sub_08020A30(this);
        this->direction = this->animationState << 3;
        InitializeAnimation(this, this->animationState);
    } else {
        if ((this->frames.all & 1) == 0)
            sub_08078930(this);
    }
}

void sub_080209F4(Entity* this) {
    if (sub_08003FC4(this, 0x1c00) == 0) {
        this->action = 7;
        this->spritePriority.b0 = 7;
    }

    if (this->frames.all == 0)
        GetNextFrame(this);
}

void sub_08020A28(Entity* this) {
    GetNextFrame(this);
}

void sub_08020A30(Entity* this) {
    if (this->cutsceneBeh.HALF.LO < 2) {
        this->actionDelay = gUnk_080CA6CC[Random() & 7];
        if (this->actionDelay == 0) {
            this->action = 3;
            this->actionDelay = 60;
            this->cutsceneBeh.HALF.LO++;
            return;
        }
    }
    this->action = 1;
    this->cutsceneBeh.HALF.LO = 0;
    sub_08020A7C(this);
}

void sub_08020A7C(Entity* this) {
    int tmp = Random();
    u32 state = (this->direction + gUnk_080CA6D4[tmp % 3]) & 0x18;

    if (sub_08049FA0(this) == 0) {
        int tmp = (sub_08049EE4(this) + 4) & 0x18;
        if ((state ^ 0x10) == tmp)
            state ^= 0x10;
    }

    this->direction = state;
    this->animationState = (u8)(state >> 3);
    InitializeAnimation(this, this->animationState);
}

u32 sub_08020AD0(Entity* this) {
    if (sub_08020B6C(this) && this->height.HALF.HI == 0) {
        int tile = COORD_TO_TILE(this);
        int iVar1 = GetTileType(tile, this->collisionLayer);
        if ((iVar1 * 0x10000 - 0x710000U) >> 0x10 < 2) {
            this->action = 6;
            this->flags &= ~0x80;
            this->x.HALF.HI &= 0xfff0;
            this->x.HALF.HI += 8;
            this->y.HALF.HI &= 0xfff0;
            this->y.HALF.HI += 13;
            this->field_0x20 = 0x20000;
            InitializeAnimation(this, this->animationState + 0x14);
            SetTile(0x4034, tile, this->collisionLayer);
            return 1;
        }
    }
    return 0;
}

u32 sub_08020B6C(Entity* this) {
    u32 tmp = this->animIndex - 0x10;
    if (tmp < 4) {
        return 1;
    } else {
        return 0;
    }
}

// clang-format off
void (*const gUnk_080CA66C[])(Entity*) = {
    sub_08020648,
    sub_08020668,
    sub_080206E0,
    sub_0804A7D4,
    sub_08001242,
    sub_08020734,
};

void (*const gUnk_080CA684[])(Entity*) = {
    sub_080207F4,
    sub_08020820,
    sub_08020874,
    sub_08020920,
    sub_08020938,
    sub_080209A0,
    sub_080209F4,
    sub_08020A28,
};

void (*const gUnk_080CA6A4[])(Entity*) = {
    sub_0802077C,
    sub_08020788,
    sub_08020790,
    sub_08020798,
    nullsub_6,
    sub_080207A8,
};

void (*const gUnk_080CA6BC[])(Entity*) = {
    sub_0802088C,
    sub_080208B4,
    sub_080208F0,
    sub_08020904,
};

const u8 gUnk_080CA6CC[] = {
    0,6,9,0,6,6,0,7
};
// clang-format on

