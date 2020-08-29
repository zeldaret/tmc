#include "global.h"
#include "entity.h"
#include "functions.h"

extern void EnemyFunctionHandler();
extern void SetChildOffset();
extern void sub_0804AA30();
extern void sub_0804A7D4();
extern void sub_0801ECFC();
extern u32 sub_0806F520();
extern void sub_0806F4E8();
extern void UpdateAnimationVariableFrames();
extern void sub_0804A720();
extern u32 Random();
extern void sub_0801ED14();
extern u32 sub_0801EDEC();
extern Entity* sub_08049DF4(u32);

extern void (*const gOctorok[6])(Entity*);
extern void (*const gOctorokIdle[4])(Entity*);
extern void (*const gUnk_080CA158[6])(Entity*);

extern Entity* gUnk_020000B0;
extern const u8 gUnk_080CA170[4];
extern const u8 gUnk_080CA174[2];
extern const u8 gUnk_080CA176[8];
extern const s8 gUnk_080CA17E[2];

// Main
void Octorok(Entity* this) {
    EnemyFunctionHandler(this, gOctorok);
    SetChildOffset(this, 0, 1, -16);
}

// Idle
void sub_0801EAD0(Entity* this) {
    gOctorokIdle[this->action](this);
}

// Touch player
void sub_0801EAE8(Entity* this) {
    if (this->field_0x43 != 0) {
        sub_0804A9FC(this, 28);
    }
    sub_0804AA30(this, gOctorok);
}

// Death
void sub_0801EB0C(Entity* this) {
    if ((this->entityType).form == 0) {
        sub_0804A7D4(this);
    } else {
        CreateDeathFx(this, 241, 0);
    }
}

void sub_0801EB2C(Entity* this) {
    s32 iVar1;

    if ((this->previousActionFlag < 3) && (iVar1 = sub_0806F520(this), iVar1 == 0)) {
        sub_0801ECFC(this);
        InitializeAnimation(this, this->animationState);
    } else {
        gUnk_080CA158[this->previousActionFlag](this);
    }
}

void sub_0801EB68(Entity* this) {
    this->previousActionFlag = 1;
    this->field_0x1d = 60;
}

void sub_0801EB74(Entity* this) {
    sub_0806F4E8(this);
}

void sub_0801EB7C(Entity* this) {
    sub_0806F3E4(this);
}

void sub_0801EB84(Entity* this) {
    this->flags &= 0x7f;
    UpdateAnimationVariableFrames(this, 2);
}

void nullsub_3(Entity* this) {
}

void sub_0801EB9C(Entity* this) {
    if (this->flags & 0x80) {
        this->flags |= 0x80;
        this->field_0x3a &= 0xfb;
    } else {
        this->currentHealth = 0;
    }
}

// Init
void sub_0801EBC8(Entity* this) {
    sub_0804A720(this);
    if (this->entityType.form == 2) {
        this->animationState = this->entityType.form;
    } else {
        this->animationState = Random() & 3;
    }
    this->field_0x1c = 18;
    sub_0801ECFC(this);
    InitializeAnimation(this, this->animationState);
}

void sub_0801EBF4(Entity* this) {
    u32 uVar2;

    if (--this->actionDelay == 0) {
        this->action = 2;
        uVar2 = Random();
        this->actionDelay = gUnk_080CA170[uVar2 & 3];
        sub_0801ED14(this);
    }
    GetNextFrame(this);
}

void sub_0801EC2C(Entity* this) {
    sub_080AEF88(this);
    GetNextFrame(this);
    if (--this->actionDelay == 0) {
        if (sub_0801EDEC(this) && gUnk_080CA174[this->entityType.form] <= (Random() & 3)) {
            this->action = 3;
            InitializeAnimation(this, this->animationState + 4);
        } else {
            sub_0801ECFC(this);
        }
    }
}

void sub_0801EC80(Entity* this) {
    GetNextFrame(this);
    if (this->frames.all & 1) {
        Entity* ent = sub_0804A98C(this, 1, 0);
        if (ent) {
            const s8* off;
            ent->direction = this->direction;
            off = &gUnk_080CA176[this->direction / 4];
            ent->x.HALF.HI += off[0];
            ent->y.HALF.HI += off[1];
            ent->height.HALF.HI = -3;
            this->frames.all &= 0xfe;
            sub_08004488(0x18d);
        }
    }

    if (this->frames.all & 0x80)
        sub_0801ECFC(this);
}

void sub_0801ECFC(Entity* this) {
    this->action = 1;
    this->actionDelay = (Random() & 0x38) + 0x18;
}

void sub_0801ED14(Entity* this) {
    if (this->entityType.form != 2) {
        if (sub_08049FA0(this)) {
            if (this->entityType.form == 1 && (Random() & 3) == 0 && sub_08049FDC(this, 1)) {
                this->direction = (GetFacingDirection(this, gUnk_020000B0) + 4) & 0x18;
            } else {
                this->direction = Random() & 0x18;
            }
        } else if ((Random() & 3)) {
            this->direction = (sub_08049EE4(this) + gUnk_080CA17E[Random() & 1]) & 0x18;
        } else {
            this->direction = Random() & 0x18;
        }
    } else {
        if (sub_08049FDC(this, 1) == 0) {
            if (sub_08049FA0(this)) {
                this->direction = Random() & 0x18;
            } else if (Random() & 3) {
                this->direction = (sub_08049EE4(this) + gUnk_080CA17E[Random() & 1]) & 0x18;
            } else {
                this->direction = (GetFacingDirection(this, gUnk_020000B0) + 4) & 0x18;
            }
        } else {
            this->direction = (GetFacingDirection(this, gUnk_020000B0) + 4) & 0x18;
        }
    }
    this->animationState = this->direction >> 3;
    InitializeAnimation(this, this->animationState);
}

u32 sub_0801EDEC(Entity* this) {
    Entity* ent = sub_08049DF4(1);

    if (ent == NULL)
        return 0;

    if (((GetFacingDirection(this, ent) + 4) & 0x18) != this->direction)
        return 0;

    return 1;
}

// clang-format off
void (*const gOctorok[])(Entity*) = {
    sub_0801EAD0,
    sub_0801EAE8,
    sub_08001324,
    sub_0801EB0C,
    sub_08001242,
    sub_0801EB2C,
};

void (*const gOctorokIdle[])(Entity*) = {
    sub_0801EBC8,
    sub_0801EBF4,
    sub_0801EC2C,
    sub_0801EC80,
};

void (*const gUnk_080CA158[])(Entity*) = {
    sub_0801EB68,
    sub_0801EB74,
    sub_0801EB7C,
    sub_0801EB84,
    nullsub_3,
    sub_0801EB9C,
};

const u8 gUnk_080CA170[] = {
    30,
    60,
    60,
    90,
};

const u8 gUnk_080CA174[] = {
    1,
    0,
};

const u8 gUnk_080CA176[] = {
    0x00,
    0xFD,
    0x04,
    0x00,
    0x00,
    0x02,
    0xFC,
    0x00,
};

const s8 gUnk_080CA17E[] = {
    0x04,
    0xFC,
};
// clang-format on
