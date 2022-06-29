/**
 * @file leever.c
 * @ingroup Enemies
 *
 * @brief Leever enemy
 */

#include "enemy.h"
#include "physics.h"

extern u32 sub_080B1B18(s32, s32, u32);
extern u32 sub_080B1AB4(s32, s32, u32);

extern Entity* gUnk_020000B0;

bool32 Leever_PlayerInRange(Entity*, s32);
void Leever_Move(Entity*);

extern void (*const Leever_Functions[])(Entity*);
extern void (*const gLeeverActions[])(Entity*);
extern const s8 gLeeverDrift[];
extern const u16 gUnk_080CA4CA[];

enum {
    LeeverAnimation_DigUp,
    LeeverAnimation_DigDown,
    LeeverAnimation_Attack,
};

enum {
    LeeverForm_Red,
    LeeverForm_Blue,
};

void Leever(Entity* this) {
    EnemyFunctionHandler(this, Leever_Functions);
    SetChildOffset(this, 0, 1, -0x10);
}

void Leever_OnTick(Entity* this) {
    gLeeverActions[this->action](this);
}

void Leever_OnCollision(Entity* this) {
    if (this->contactFlags == 0x80) {
        if (this->action == 3) {
            this->field_0x74.HWORD = 1;
        }
    } else {
        if (this->confusedTime != 0) {
            Create0x68FX(this, FX_STARS);
        }
    }
    EnemyFunctionHandlerAfterCollision(this, Leever_Functions);
}

void Leever_OnDeath(Entity* this) {
    if (this->type == LeeverForm_Red) {
        GenericDeath(this);
    } else {
        CreateDeathFx(this, 0xf1, 0);
    }
}

void Leever_Initialize(Entity* this) {
    sub_0804A720(this);
    this->action = 1;
    this->timer = Random();
}

void Leever_Idle(Entity* this) {
    if (--this->timer == 0) {
        if (Leever_PlayerInRange(this, Random() & 0x1f)) {
            this->action = 2;
            this->spriteSettings.draw = TRUE;
            this->direction = (GetFacingDirection(this, gUnk_020000B0) + gLeeverDrift[Random() & 1]) & 0x1f;
            InitializeAnimation(this, LeeverAnimation_DigUp);
            UpdateSpriteForCollisionLayer(this);
        } else {
            this->timer = DirectionRound(Random()) + 8;
        }
    }
}

void Leever_DigUp(Entity* this) {
    GetNextFrame(this);

    if (this->frame & ANIM_DONE) {
        this->action = 3;
        if (this->type == LeeverForm_Red) {
            this->field_0x74.HWORD = 180;
        } else {
            this->field_0x74.HWORD = 110;
        }
        InitializeAnimation(this, LeeverAnimation_Attack);
    } else if ((this->frame & 1) != 0) {
        this->frame &= 0xfe;
        COLLISION_ON(this);
    }
}

void Leever_Attack(Entity* this) {
    Leever_Move(this);
    GetNextFrame(this);

    if (--this->field_0x74.HWORD == 0) {
        this->action = 4;
        COLLISION_OFF(this);
        InitializeAnimation(this, LeeverAnimation_DigDown);
    }
}

void Leever_DigDown(Entity* this) {
    Leever_Move(this);
    GetNextFrame(this);
    if (this->frame & ANIM_DONE) {
        this->action = 1;
        this->timer = 240;
        this->spriteSettings.draw = FALSE;
    }
}

u32 sub_0801FDE4(Entity* ent, s32 x, s32 y) {
    u32 uVar3;
    const u16* puVar4;

    if (sub_080B1B18(x, y, gUnk_020000B0->collisionLayer) != 0) {
        return 0;
    } else {
        uVar3 = sub_080B1AB4(x, y, gUnk_020000B0->collisionLayer);
        for (puVar4 = gUnk_080CA4CA; *puVar4 != (u16)-1;) {
            if (*puVar4++ == uVar3) {
                ent->x.HALF.HI = (x & 0xfff0) + 8;
                ent->y.HALF.HI = (y & 0xfff0) + 8;
                ent->collisionLayer = gUnk_020000B0->collisionLayer;
                return 1;
            }
        }
        return 0;
    }
}

bool32 Leever_PlayerInRange(Entity* ent, s32 arg2) {
    s32 sin, cos;
    s32 x, y;
    u32 i;

    if (sub_08049FDC(ent, 1) == 0) {
        return 0;
    } else {
        x = gUnk_020000B0->x.WORD;
        y = gUnk_020000B0->y.WORD;
        sin = gSineTable[arg2 * 8] << 11;
        cos = gSineTable[arg2 * 8 + 0x40] << 11;
        for (i = 0; i < 8; i++) {
            x += sin;
            y += -cos;
            if (sub_0801FDE4(ent, x >> 0x10, y >> 0x10) == 0) {
                return 0;
            }
        }
        return 1;
    }
}

void Leever_Move(Entity* this) {
    if (sub_08049FDC(this, 1) == 0) {
        this->field_0x74.HWORD = 1;
    }

    this->speed = (this->frame & 0xf) * 0x20;
    if (this->type == LeeverForm_Red) {
        if ((this->subtimer++ & 0xf) == 0) {
            sub_08004596(this, sub_0800132C(this, gUnk_020000B0));
        }
    } else {
        this->speed += 0x40;
        if ((this->subtimer++ & 0x7) == 0) {
            sub_08004596(this, sub_0800132C(this, gUnk_020000B0));
        }
    }

    ProcessMovement0(this);
}

// clang-format off
void (*const Leever_Functions[])(Entity*) = {
    Leever_OnTick,
    Leever_OnCollision,
    GenericKnockback,
    Leever_OnDeath,
    GenericConfused,
    Leever_OnTick,
};

void (*const gLeeverActions[])(Entity*) = {
    Leever_Initialize,
    Leever_Idle,
    Leever_DigUp,
    Leever_Attack,
    Leever_DigDown,
};

const s8 gLeeverDrift[] = {
    6, -6,
};

const u16 gUnk_080CA4CA[] = {
    0x000A,
    0x0009,
    0x000C,
    0x000B,
    0xFFFF,
};
// clang-format on
