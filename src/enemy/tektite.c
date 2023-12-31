/**
 * @file tektite.c
 * @ingroup Enemies
 *
 * @brief Tektite enemy
 */

#include "collision.h"
#include "enemy.h"
#include "functions.h"

static void sub_0802F45C(Entity* this);
static void Tektite_OnTick(Entity*);
static void Tektite_OnCollision(Entity*);
static void Tektite_OnConfused(Entity*);
static void Tektite_OnGrabbed(Entity*);
static void sub_0802F210(Entity*);
static void sub_0802F284(Entity*);
static void sub_0802F300(Entity*);
static void sub_0802F3F4(Entity*);

static void (*const Tektite_Functions[])(Entity*) = {
    Tektite_OnTick, Tektite_OnCollision, GenericKnockback, GenericDeath, Tektite_OnConfused, Tektite_OnGrabbed,
};

void Tektite(Entity* this) {
    EnemyFunctionHandler(this, Tektite_Functions);
    SetChildOffset(this, 0, 1, -0x10);
}

void Tektite_OnTick(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_0802F210,
        sub_0802F284,
        sub_0802F300,
        sub_0802F3F4,
    };
    actionFuncs[this->action](this);
}

static const u8 gUnk_080CDEF8[] = {
    0x18,
    0x28,
    0x38,
    0x48,
};

void Tektite_OnCollision(Entity* this) {
    u32 bVar1;
    u32 uVar2;

    if (this->confusedTime != 0) {
        Create0x68FX(this, FX_STARS);
    }
    EnemyFunctionHandlerAfterCollision(this, Tektite_Functions);
    if ((this->contactFlags & 0x80) != 0) {
        switch (this->contactFlags & 0x3f) {
            case 0x14:
                this->action = 1;
                this->subAction = 0;
                if (this->type != 0) {
                    this->timer = 192;
                } else {
                    this->timer = gUnk_080CDEF8[Random() & 3];
                }
                this->subtimer = 0;
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
    this->timer = gUnk_080CDEF8[Random() & 3];
    this->timer += (Random() & 0x1f);
    this->subtimer = 0;
    *(u8*)&this->field_0x7c = 0;

    this->field_0x80.HWORD = this->type == 0 ? Q_8_8(24.0) : Q_8_8(40.0);

    this->field_0x82.HWORD = this->type == 0 ? (Q_16_16(2.5) >> 4) : (Q_16_16(3.0) >> 4);

    InitializeAnimation(this, 0);
}

void sub_0802F284(Entity* this) {
    if (this->timer > 0x60) {
        UpdateAnimationVariableFrames(this, 2);
    } else {
        GetNextFrame(this);
    }
    if (this->timer != 0) {
        this->timer--;
    } else if (this->subtimer != 0) {
        if (this->frame & ANIM_DONE) {
            this->action = 2;
            this->timer = 16;
            this->subtimer = this->type;
            this->zVelocity = this->field_0x82.HWORD << 4;
            sub_0802F45C(this);
            InitializeAnimation(this, 2);
        }
    } else if (this->frame & ANIM_DONE) {
        this->subtimer = 64;
        InitializeAnimation(this, 1);
    }
}

void sub_0802F300(Entity* this) {
    s32 temp;
    u32 rand;

    GetNextFrame(this);
    ProcessMovement0(this);
    temp = this->z.HALF.HI;
    rand = Random() & 0xf;

    if (BounceUpdate(this, this->field_0x80.HWORD) == BOUNCE_INIT_NEXT) {
        this->action = 3;
        this->subAction = 0;
        if (this->type != 0) {
            rand = 0;
        }

        if (rand == 0) {
            this->timer = 192;
        } else {
            this->timer = gUnk_080CDEF8[rand & 3] + rand;
        }
        this->subtimer = 0;
        InitializeAnimation(this, 3);
        return;
    } else if (this->collisions != COL_NONE) {
        sub_0800417E(this, this->collisions);
    } else if ((GetActTile(this) & 0xf0) == 0x50) {
        this->direction = (this->direction + 0x10) & (0x3 | DirectionNorthWest);
    }

    if (--this->timer == 0) {
        this->timer = 16;
        if (this->subtimer != 0) {
            this->subtimer--;
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

    if (this->frame & ANIM_DONE) {
        if ((*(u8*)&this->field_0x7c.HALF.LO < 2) && ((this->type % 2) != 0)) {
            this->action = 2;
            this->timer = 16;
            this->subtimer = this->type;
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
        this->direction = (temp + this->direction) & (0x3 | DirectionNorthWest);
    }
}
