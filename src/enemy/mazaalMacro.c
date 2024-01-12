/**
 * @file mazaalMacro.c
 * @ingroup Enemies
 *
 * @brief Mazaal Macro enemy
 */
#include "enemy.h"
#include "functions.h"
#include "screenTransitions.h"
#include "script.h"
#include "structures.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[5];
    /*0x6d*/ u8 unk_6d;
    /*0x6e*/ u8 unused2[10];
    /*0x78*/ u16 unk_78;
    /*0x7a*/ u8 unused3[10];
    /*0x84*/ ScriptExecutionContext* context;
} MazaalMacroEntity;

extern void sub_0807B600(u32);

extern const u16 script_MazaalMacroDefeated[];

void sub_08034E18(MazaalMacroEntity* this);
void sub_08034FA0(MazaalMacroEntity* this);
u32 sub_08035084(MazaalMacroEntity* this);
void sub_08034F70(MazaalMacroEntity* this);
void sub_08035120(MazaalMacroEntity* this);
void sub_08035050(MazaalMacroEntity* this);

void MazaalMacro_OnTick(MazaalMacroEntity* this);
void MazaalMacro_OnCollision(MazaalMacroEntity* this);
void MazaalMacro_OnDeath(MazaalMacroEntity* this);
void sub_08034CC4(MazaalMacroEntity* this);
void sub_08034D4C(MazaalMacroEntity* this);
void sub_08034DC8(MazaalMacroEntity* this);
void sub_08034E30(MazaalMacroEntity* this);
void sub_08034E68(MazaalMacroEntity* this);
void sub_08034EC0(MazaalMacroEntity* this);
void sub_08034ED8(MazaalMacroEntity* this);
void sub_08034EE4(MazaalMacroEntity* this);
void sub_08034F58(MazaalMacroEntity* this);

void (*const MazaalMacro_Functions[])(MazaalMacroEntity*) = {
    MazaalMacro_OnTick,
    MazaalMacro_OnCollision,
    (void (*)(MazaalMacroEntity*))GenericKnockback,
    MazaalMacro_OnDeath,
    (void (*)(MazaalMacroEntity*))GenericConfused,
};
void (*const gUnk_080CEEA4[])(MazaalMacroEntity*) = {
    sub_08034CC4,
    sub_08034D4C,
    sub_08034DC8,
};
void (*const gUnk_080CEEB0[])(MazaalMacroEntity*) = {
    sub_08034E30, sub_08034E68, sub_08034EC0, sub_08034ED8, sub_08034EE4, sub_08034F58,
};

const u8 gUnk_080CEEC8[] = { FX_GIANT_EXPLOSION, FX_GIANT_EXPLOSION, FX_GIANT_EXPLOSION2, FX_GIANT_EXPLOSION3 };
const u8 gUnk_080CEECC[] = { 0x58, 0x68, 0x88, 0x68, 0xb8, 0x68, 0x58, 0xa8, 0x88, 0xa8, 0xb8, 0xa8 };
const s16 gUnk_080CEED8[] = { -0x82, -0x81, -0x80, -0x7f, -0x7e, -0x42, -0x41, -0x40, -0x3f, -0x3e, -2,   -1,
                              1,     2,     0x3e,  0x3f,  0x40,  0x41,  0x42,  0x7e,  0x7f,  0x80,  0x81, 0x82 };

void MazaalMacro(MazaalMacroEntity* this) {
    MazaalMacro_Functions[GetNextFunction(super)](this);
}

void MazaalMacro_OnTick(MazaalMacroEntity* this) {
    if (super->type != 2) {
        gUnk_080CEEA4[super->action](this);
    } else {
        sub_08034E18(this);
    }
}

void MazaalMacro_OnCollision(MazaalMacroEntity* this) {
    sub_08034FA0(this);
    EnemyFunctionHandlerAfterCollision(super, MazaalMacro_Functions);
}

void MazaalMacro_OnDeath(MazaalMacroEntity* this) {
    GenericDeath(super);
}

void sub_08034CC4(MazaalMacroEntity* this) {
    Entity* entity;

    if (sub_08035084(this) != 0) {
        super->action = super->type + 1;
        super->subtimer = 0;
        this->unk_6d |= 1;
        this->unk_78 = 0x4b0;
        sub_08034F70(this);
        InitializeAnimation(super, super->type);
        SetTile(SPECIAL_TILE_34, COORD_TO_TILE(super), super->collisionLayer);
        entity = CreateEnemy(MAZAAL_MACRO, 2);
        if (entity != NULL) {
            super->child = entity;
            entity->parent = super;
            CopyPosition(super, entity);
        }
    }
}

void sub_08034D4C(MazaalMacroEntity* this) {
    Entity* entity;

    GetNextFrame(super);
    if (--this->unk_78 == 0) {
        if ((super->subtimer < 8) && (entity = CreateEnemy(VAATI_PROJECTILE, 0), entity != (Entity*)0x0)) {
            entity->direction = (s32)Random() % 5 + 0xc;
            entity->x.HALF.HI = (gRoomControls.width / 2) + gRoomControls.origin_x;
            entity->y.HALF.HI = gRoomControls.origin_y + 8;
            entity->collisionLayer = 3;
            entity->parent = super;
            UpdateSpriteForCollisionLayer(entity);
            this->unk_78 = 600;
            super->subtimer = super->subtimer + 1;
        } else {
            this->unk_78 = 0x78;
        }
    }
}

void sub_08034DC8(MazaalMacroEntity* this) {
    if (gRoomTransition.field_0x39 == 0) {
        CreateFx(super, FX_GIANT_EXPLOSION4, 0);
        RestorePrevTileEntity(COORD_TO_TILE(super), super->collisionLayer);
        DeleteThisEntity();
    }
}

void sub_08034E18(MazaalMacroEntity* this) {
    gUnk_080CEEB0[super->action](this);
}

void sub_08034E30(MazaalMacroEntity* this) {
    super->action = super->parent->type + 1;
    super->collisionLayer = 2;
    super->spritePriority.b0 = 7;
    super->spritePriority.b1 = 0;
    UpdateSpriteForCollisionLayer(super);
    InitializeAnimation(super, 2);
}

void sub_08034E68(MazaalMacroEntity* this) {
    ScriptExecutionContext* scriptExecutionContext;

    if (super->parent->next == NULL) {
        if (super->spriteSettings.draw != 0) {
            super->spriteSettings.draw = 0;
            sub_08035120(this);
        }
        if (gRoomTransition.field_0x39 == 0) {
            if (PlayerCanBeMoved()) {
                super->action = 3;
                scriptExecutionContext = StartCutscene(super, (u16*)script_MazaalMacroDefeated);
                this->context = scriptExecutionContext;
            }
        } else {
            DeleteThisEntity();
        }
    }
}

void sub_08034EC0(MazaalMacroEntity* this) {
    if (super->parent->next == NULL) {
        sub_08035120(this);
        DeleteThisEntity();
    }
}

void sub_08034ED8(MazaalMacroEntity* this) {
    ExecuteScriptForEntity(super, NULL);
}

void sub_08034EE4(MazaalMacroEntity* this) {
    u32 randomValue;
    Entity* entity;

    if ((++super->timer & 0xf) == 0) {
        randomValue = Random();
        entity = CreateFx(super, gUnk_080CEEC8[randomValue & 3], 0);
        if (entity != NULL) {
            entity->x.HALF.HI = (((randomValue >> 2) & 0x77) << 1) + 1 + gRoomControls.scroll_x;
            entity->y.HALF.HI = ((randomValue >> 9) & 0x7e) + 1 + gRoomControls.scroll_y;
            entity->collisionLayer = 2;
            UpdateSpriteForCollisionLayer(entity);
        }
    }
    ExecuteScriptForEntity(super, NULL);
}

void sub_08034F58(MazaalMacroEntity* this) {
    DoExitTransition(&gUnk_0813ABA8);
    DeleteEntity(super);
}

void sub_08034F70(MazaalMacroEntity* this) {
    super->health = gRoomTransition.field_0x39;
    if (gRoomTransition.field_0x39 >= 0x3d) {
        super->type2 = 0;
    } else if (gRoomTransition.field_0x39 >= 0x1f) {
        super->type2 = 1;
    } else {
        super->type2 = 2;
    }
}

void sub_08034FA0(MazaalMacroEntity* this) {
    if (0 < super->iframes) {
        super->child->iframes = super->iframes;
        InitScreenShake(12, 1);
    }
    switch (super->type2) {
        case 0:
            if (super->health < 0x3c) {
                gRoomTransition.field_0x39 = 0x3c;
                sub_08035050(this);
                return;
            }
            break;
        case 1:
            if (super->health < 0x1e) {
                gRoomTransition.field_0x39 = 0x1e;
                sub_08035050(this);
                return;
            }
            break;
        default:
            if (super->health == 0) {
                RestorePrevTileEntity(COORD_TO_TILE(super), super->collisionLayer);
            }
            break;
    }
    gRoomTransition.field_0x39 = super->health;
}

void sub_08035050(MazaalMacroEntity* this) {
    Entity* entity;

    COLLISION_OFF(super);
    super->health = 0;
    entity = CreateEnemy(VAATI_PROJECTILE, 0);
    if (entity != NULL) {
        entity->type2 = 1;
        entity->collisionLayer = 3;
        entity->parent = NULL;
        UpdateSpriteForCollisionLayer(entity);
    }
}

u32 sub_08035084(MazaalMacroEntity* this) {
    u32 vulnPillar;
    Entity* entity;
    u32 i;
    const u8* coords;

    if (super->type == 0) {
        if (0x42 < gEntCount) {
            return 0;
        }
        do {
            vulnPillar = (s32)Random() % 6;
        } while (vulnPillar == gRoomTransition.field_0x38 >> 4);
        gRoomTransition.field_0x38 = (gRoomTransition.field_0x38 & 0xf) | (vulnPillar << 4);
        for (i = 0, coords = gUnk_080CEECC; i < 6; i++, coords += 2) {
            if (i == vulnPillar) {
                entity = super;
            } else {
                entity = CreateEnemy(MAZAAL_MACRO, 1);
            }
            entity->x.HALF.HI = gRoomControls.origin_x + *coords;
            entity->y.HALF.HI = gRoomControls.origin_y + *(coords + 1);
            entity->collisionLayer = 1;
            UpdateSpriteForCollisionLayer(entity);
        }
    }
    return 1;
}

void sub_08035120(MazaalMacroEntity* this) {
    s32 tilePos;
    u32 i;

    tilePos = COORD_TO_TILE(super);
    for (i = 0; i < 0x18; i++) {
        sub_0807B600(tilePos + gUnk_080CEED8[i]);
    }
}
