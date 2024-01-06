/**
 * @file leever.c
 * @ingroup Enemies
 *
 * @brief Leever enemy
 */
#include "asm.h"
#include "enemy.h"
#include "physics.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[12];
    /*0x74*/ u16 unk_74;
} LeeverEntity;

extern Entity* gUnk_020000B0;

bool32 Leever_PlayerInRange(Entity*, s32);
void Leever_Move(LeeverEntity*);

extern void (*const Leever_Functions[])(LeeverEntity*);
extern void (*const gLeeverActions[])(LeeverEntity*);
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

void Leever(LeeverEntity* this) {
    EnemyFunctionHandler(super, (EntityActionArray)Leever_Functions);
    EnemySetFXOffset(super, 0, 1, -0x10);
}

void Leever_OnTick(LeeverEntity* this) {
    gLeeverActions[super->action](this);
}

void Leever_OnCollision(LeeverEntity* this) {
    if (super->contactFlags == CONTACT_NOW) {
        if (super->action == 3) {
            this->unk_74 = 1;
        }
    } else {
        if (super->confusedTime != 0) {
            EnemyCreateFX(super, FX_STARS);
        }
    }
    EnemyFunctionHandlerAfterCollision(super, Leever_Functions);
}

void Leever_OnDeath(LeeverEntity* this) {
    if (super->type == LeeverForm_Red) {
        GenericDeath(super);
    } else {
        EnemyCreateDeathFX((Enemy*)super, 0xf1, 0);
    }
}

void Leever_Initialize(LeeverEntity* this) {
    sub_0804A720(super);
    super->action = 1;
    super->timer = Random();
}

void Leever_Idle(LeeverEntity* this) {
    if (--super->timer == 0) {
        if (Leever_PlayerInRange(super, Random() & 0x1f)) {
            super->action = 2;
            super->spriteSettings.draw = TRUE;
            super->direction =
                (GetFacingDirection(super, gUnk_020000B0) + gLeeverDrift[Random() & 1]) & (0x3 | DirectionNorthWest);
            InitializeAnimation(super, LeeverAnimation_DigUp);
            UpdateSpriteForCollisionLayer(super);
        } else {
            super->timer = DirectionRound(Random()) + 8;
        }
    }
}

void Leever_DigUp(LeeverEntity* this) {
    GetNextFrame(super);

    if (super->frame & ANIM_DONE) {
        super->action = 3;
        if (super->type == LeeverForm_Red) {
            this->unk_74 = 180;
        } else {
            this->unk_74 = 110;
        }
        InitializeAnimation(super, LeeverAnimation_Attack);
    } else if ((super->frame & 1) != 0) {
        super->frame &= 0xfe;
        COLLISION_ON(super);
    }
}

void Leever_Attack(LeeverEntity* this) {
    Leever_Move(this);
    GetNextFrame(super);

    if (--this->unk_74 == 0) {
        super->action = 4;
        COLLISION_OFF(super);
        InitializeAnimation(super, LeeverAnimation_DigDown);
    }
}

void Leever_DigDown(LeeverEntity* this) {
    Leever_Move(this);
    GetNextFrame(super);
    if (super->frame & ANIM_DONE) {
        super->action = 1;
        super->timer = 240;
        super->spriteSettings.draw = FALSE;
    }
}

bool32 sub_0801FDE4(Entity* entity, s32 x, s32 y) {
    u32 actTile;
    const u16* puVar4;

    if (GetCollisionDataAtWorldCoords(x, y, gUnk_020000B0->collisionLayer) != 0) {
        return FALSE;
    } else {
        actTile = GetActTileAtWorldCoords(x, y, gUnk_020000B0->collisionLayer);
        for (puVar4 = gUnk_080CA4CA; *puVar4 != (u16)-1;) {
            if (*puVar4++ == actTile) {
                entity->x.HALF.HI = (x & 0xfff0) + 8;
                entity->y.HALF.HI = (y & 0xfff0) + 8;
                entity->collisionLayer = gUnk_020000B0->collisionLayer;
                return TRUE;
            }
        }
        return FALSE;
    }
}

bool32 Leever_PlayerInRange(Entity* entity, s32 arg2) {
    s32 sin, cos;
    s32 x, y;
    u32 i;

    if (sub_08049FDC(entity, 1) == 0) {
        return 0;
    } else {
        x = gUnk_020000B0->x.WORD;
        y = gUnk_020000B0->y.WORD;
        sin = gSineTable[arg2 * 8] << 11;
        cos = gSineTable[arg2 * 8 + 0x40] << 11;
        for (i = 0; i < 8; i++) {
            x += sin;
            y += -cos;
            if (sub_0801FDE4(entity, x >> 0x10, y >> 0x10) == 0) {
                return 0;
            }
        }
        return 1;
    }
}

void Leever_Move(LeeverEntity* this) {
    if (sub_08049FDC(super, 1) == 0) {
        this->unk_74 = 1;
    }

    super->speed = (super->frame & 0xf) * 0x20;
    if (super->type == LeeverForm_Red) {
        if ((super->subtimer++ & 0xf) == 0) {
            sub_08004596(super, sub_0800132C(super, gUnk_020000B0));
        }
    } else {
        super->speed += 0x40;
        if ((super->subtimer++ & 0x7) == 0) {
            sub_08004596(super, sub_0800132C(super, gUnk_020000B0));
        }
    }

    ProcessMovement0(super);
}

// clang-format off
void (*const Leever_Functions[])(LeeverEntity*) = {
    Leever_OnTick,
    Leever_OnCollision,
    (void (*)(LeeverEntity*))GenericKnockback,
    Leever_OnDeath,
    (void (*)(LeeverEntity*))GenericConfused,
    Leever_OnTick,
};

void (*const gLeeverActions[])(LeeverEntity*) = {
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
    ACT_TILE_10,
    ACT_TILE_9,
    ACT_TILE_12,
    ACT_TILE_11,
    0xFFFF,
};
// clang-format on
