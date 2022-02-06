/**
 * @file tektite.c
 * @ingroup Enemies
 *
 * @brief Tektite enemy
 */

#include "enemy.h"
#include "functions.h"

static void sub_0802F45C(Entity* this);

extern void (*const Tektite_Functions[])(Entity*);
extern void (*const gUnk_080CDEE8[])(Entity*);

void Tektite(Entity* this) {
    EnemyFunctionHandler(this, Tektite_Functions);
    SetChildOffset(this, 0, 1, -0x10);
}

void Tektite_OnTick(Entity* this) {
    gUnk_080CDEE8[this->action](this);
}

extern u8 gUnk_080CDEF8[];

void Tektite_OnCollision(Entity* this) {
    u32 bVar1;
    u32 uVar2;

    if (this->confusedTime != 0) {
        Create0x68FX(this, FX_STARS);
    }
    EnemyFunctionHandlerAfterCollision(this, Tektite_Functions);
    if ((this->bitfield & 0x80) != 0) {
        switch (this->bitfield & 0x3f) {
            case 0x14:
                this->action = 1;
                this->subAction = 0;
                if (this->type != 0) {
                    this->actionDelay = 0xc0;
                } else {
                    this->actionDelay = gUnk_080CDEF8[Random() & 3];
                }
                this->field_0xf = 0;
                *(u8*)&this->field_0x7c = 0;
                if (this->z.HALF.HI != 0) {
                    this->zVelocity >>= 2;
                } else {
                    this->zVelocity = 0;
                }
                InitializeAnimation(this, 0);
                break;
            case 0xe:
            case 0x15:
                this->health = 0;
                break;
        }
    }
}

void Tektite_OnGrabbed(Entity* this) {
}

void Tektite_OnConfused(Entity* this) {
    GenericConfused(this);
    if (this->z.HALF.HI != 0) {
        GravityUpdate(this, this->field_0x80.HWORD);
    }
}

void sub_0802F210(Entity* this) {
    u32 temp;
    u32 temp2;

    sub_0804A720(this);
    this->action = 1;
    this->subAction = 0;
    this->actionDelay = gUnk_080CDEF8[Random() & 3];
    this->actionDelay = (Random() & 0x1f) + this->actionDelay;
    this->field_0xf = 0;
    *(u8*)&this->field_0x7c = 0;

    this->field_0x80.HWORD = this->type == 0 ? 0x1800 : 0x2800;

    this->field_0x82.HWORD = this->type == 0 ? 0x2800 : 0x3000;

    InitializeAnimation(this, 0);
}

void sub_0802F284(Entity* this) {
    if (this->actionDelay > 0x60) {
        UpdateAnimationVariableFrames(this, 2);
    } else {
        GetNextFrame(this);
    }
    if (this->actionDelay != 0) {
        this->actionDelay--;
    } else if (this->field_0xf != 0) {
        if (this->frame & 0x80) {
            this->action = 2;
            this->actionDelay = 0x10;
            this->field_0xf = this->type;
            this->zVelocity = this->field_0x82.HWORD << 4;
            sub_0802F45C(this);
            InitializeAnimation(this, 2);
        }
    } else if (this->frame & 0x80) {
        this->field_0xf = 0x40;
        InitializeAnimation(this, 1);
    }
}

void sub_0802F300(Entity* this) {
    s32 temp;
    u32 rand;

    GetNextFrame(this);
    ProcessMovement(this);
    temp = this->z.HALF.HI;
    rand = Random() & 0xf;

    if (sub_080044EC(this, this->field_0x80.HWORD) == 1) {
        this->action = 3;
        this->subAction = 0;
        if (this->type != 0) {
            rand = 0;
        }

        if (rand == 0) {
            this->actionDelay = 0xc0;
        } else {
            this->actionDelay = gUnk_080CDEF8[rand & 3] + rand;
        }
        this->field_0xf = 0;
        InitializeAnimation(this, 3);
        return;
    } else if (this->collisions != 0) {
        sub_0800417E(this, this->collisions);
    } else if ((sub_080002B8(this) & 0xf0) == 0x50) {
        this->direction = (this->direction + 0x10) & 0x1f;
    }

    if (--this->actionDelay == 0) {
        this->actionDelay = 0x10;
        if (this->field_0xf != 0) {
            this->field_0xf--;
            sub_0802F45C(this);
        }
    }

    if ((this->subAction == 0) && (temp < this->z.HALF.HI)) {
        InitializeAnimation(this, 4);
        this->subAction = 1;
    }

    if (temp < -0xc) {
        this->spriteRendering.b3 = 1;
        this->spriteOrientation.flipY = 1;
    } else {
        this->spriteRendering.b3 = 2;
        this->spriteOrientation.flipY = 2;
    }
}

void sub_0802F3F4(Entity* this) {

    GetNextFrame(this);

    if (this->frame & 0x80) {
        if ((*(u8*)&this->field_0x7c.HALF.LO < 2) && ((this->type % 2) != 0)) {
            this->action = 2;
            this->actionDelay = 0x10;
            this->field_0xf = this->type;
            this->zVelocity = this->field_0x82.HWORD << 4;
            (*(u8*)&this->field_0x7c.HALF.LO)++;
            sub_0802F45C(this);
            InitializeAnimation(this, 2);
        } else {
            this->action = 1;
            *(u8*)&this->field_0x7c.HALF.LO = 0;
            InitializeAnimation(this, 0);
        }
    }
}

static void sub_0802F45C(Entity* this) {
    u32 temp;

    if (sub_08049FA0(this) == 0) {
        this->direction = sub_08049EE4(this);
    } else if (sub_08049FDC(this, 1) != 0) {
        this->direction = sub_08049F84(this, 1);
    } else {
        temp = (Random() & 0xf) + 0x18;
        this->direction = (temp + this->direction) & 0x1f;
    }
}
