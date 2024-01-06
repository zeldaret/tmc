/**
 * @file tektite.c
 * @ingroup Enemies
 *
 * @brief Tektite enemy
 */
#include "collision.h"
#include "enemy.h"
#include "functions.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[20];
    /*0x7c*/ u8 unk_7c;
    /*0x7d*/ u8 unused2[3];
    /*0x80*/ u16 unk_80;
    /*0x82*/ u16 unk_82;
} TektiteEntity;

static void sub_0802F45C(TektiteEntity* this);
static void Tektite_OnTick(TektiteEntity*);
static void Tektite_OnCollision(TektiteEntity*);
static void Tektite_OnConfused(TektiteEntity*);
static void Tektite_OnGrabbed(TektiteEntity*);
static void sub_0802F210(TektiteEntity*);
static void sub_0802F284(TektiteEntity*);
static void sub_0802F300(TektiteEntity*);
static void sub_0802F3F4(TektiteEntity*);

static void (*const Tektite_Functions[])(TektiteEntity*) = {
    Tektite_OnTick,
    Tektite_OnCollision,
    (void (*)(TektiteEntity*))GenericKnockback,
    (void (*)(TektiteEntity*))GenericDeath,
    Tektite_OnConfused,
    Tektite_OnGrabbed,
};

void Tektite(TektiteEntity* this) {
    EnemyFunctionHandler(super, (EntityActionArray)Tektite_Functions);
    EnemySetFXOffset(super, 0, 1, -0x10);
}

void Tektite_OnTick(TektiteEntity* this) {
    static void (*const actionFuncs[])(TektiteEntity*) = {
        sub_0802F210,
        sub_0802F284,
        sub_0802F300,
        sub_0802F3F4,
    };
    actionFuncs[super->action](this);
}

static const u8 gUnk_080CDEF8[] = {
    0x18,
    0x28,
    0x38,
    0x48,
};

void Tektite_OnCollision(TektiteEntity* this) {
    if (super->confusedTime != 0) {
        EnemyCreateFX(super, FX_STARS);
    }
    EnemyFunctionHandlerAfterCollision(super, Tektite_Functions);
    if ((super->contactFlags & CONTACT_NOW) != 0) {
        switch (super->contactFlags & 0x3f) {
            case 0x14:
                super->action = 1;
                super->subAction = 0;
                if (super->type != 0) {
                    super->timer = 192;
                } else {
                    super->timer = gUnk_080CDEF8[Random() & 3];
                }
                super->subtimer = 0;
                this->unk_7c = 0;
                if (super->z.HALF.HI != 0) {
                    super->zVelocity >>= 2;
                } else {
                    super->zVelocity = 0;
                }
                InitializeAnimation(super, 0);
                break;
            case 0xe:
            case 0x15:
                super->health = 0;
                break;
        }
    }
}

void Tektite_OnGrabbed(TektiteEntity* this) {
}

void Tektite_OnConfused(TektiteEntity* this) {
    GenericConfused(super);
    if (super->z.HALF.HI != 0) {
        GravityUpdate(super, this->unk_80);
    }
}

void sub_0802F210(TektiteEntity* this) {
    sub_0804A720(super);
    super->action = 1;
    super->subAction = 0;
    super->timer = gUnk_080CDEF8[Random() & 3];
    super->timer += (Random() & 0x1f);
    super->subtimer = 0;
    this->unk_7c = 0;

    this->unk_80 = super->type == 0 ? Q_8_8(24.0) : Q_8_8(40.0);
    this->unk_82 = super->type == 0 ? (Q_16_16(2.5) >> 4) : (Q_16_16(3.0) >> 4);

    InitializeAnimation(super, 0);
}

void sub_0802F284(TektiteEntity* this) {
    if (super->timer > 0x60) {
        UpdateAnimationVariableFrames(super, 2);
    } else {
        GetNextFrame(super);
    }
    if (super->timer != 0) {
        super->timer--;
    } else if (super->subtimer != 0) {
        if (super->frame & ANIM_DONE) {
            super->action = 2;
            super->timer = 16;
            super->subtimer = super->type;
            super->zVelocity = this->unk_82 << 4;
            sub_0802F45C(this);
            InitializeAnimation(super, 2);
        }
    } else if (super->frame & ANIM_DONE) {
        super->subtimer = 64;
        InitializeAnimation(super, 1);
    }
}

void sub_0802F300(TektiteEntity* this) {
    s32 temp;
    u32 rand;

    GetNextFrame(super);
    ProcessMovement0(super);
    temp = super->z.HALF.HI;
    rand = Random() & 0xf;

    if (BounceUpdate(super, this->unk_80) == BOUNCE_INIT_NEXT) {
        super->action = 3;
        super->subAction = 0;
        if (super->type != 0) {
            rand = 0;
        }

        if (rand == 0) {
            super->timer = 192;
        } else {
            super->timer = gUnk_080CDEF8[rand & 3] + rand;
        }
        super->subtimer = 0;
        InitializeAnimation(super, 3);
        return;
    } else if (super->collisions != COL_NONE) {
        sub_0800417E(super, super->collisions);
    } else if ((GetActTileAtEntity(super) & 0xf0) == 0x50) { // ACT_TILE_240 and ACT_TILE_241?
        super->direction = (super->direction + 0x10) & (0x3 | DirectionNorthWest);
    }

    if (--super->timer == 0) {
        super->timer = 16;
        if (super->subtimer != 0) {
            super->subtimer--;
            sub_0802F45C(this);
        }
    }

    if ((super->subAction == 0) && (temp < super->z.HALF.HI)) {
        InitializeAnimation(super, 4);
        super->subAction = 1;
    }

    if (temp < -0xc) {
        super->spriteRendering.b3 = 1;
        super->spriteOrientation.flipY = 1;
    } else {
        super->spriteRendering.b3 = 2;
        super->spriteOrientation.flipY = 2;
    }
}

void sub_0802F3F4(TektiteEntity* this) {
    GetNextFrame(super);

    if (super->frame & ANIM_DONE) {
        if ((this->unk_7c < 2) && ((super->type % 2) != 0)) {
            super->action = 2;
            super->timer = 16;
            super->subtimer = super->type;
            super->zVelocity = this->unk_82 << 4;
            this->unk_7c++;
            sub_0802F45C(this);
            InitializeAnimation(super, 2);
        } else {
            super->action = 1;
            this->unk_7c = 0;
            InitializeAnimation(super, 0);
        }
    }
}

static void sub_0802F45C(TektiteEntity* this) {
    u32 temp;

    if (sub_08049FA0(super) == 0) {
        super->direction = sub_08049EE4(super);
    } else if (sub_08049FDC(super, 1) != 0) {
        super->direction = sub_08049F84(super, 1);
    } else {
        temp = (Random() & 0xf) + 0x18;
        super->direction = (temp + super->direction) & (0x3 | DirectionNorthWest);
    }
}
