#include "global.h"
#include "entity.h"
#include "enemy.h"
#include "random.h"
#include "script.h"
#include "structures.h"
#include "functions.h"
#include "effects.h"

extern void sub_0807B600(u32);

extern const u16 script_08012E20[];
extern const u8 gEntCount;

void sub_08034E18(Entity*);
void sub_08034FA0(Entity*);
u32 sub_08035084(Entity*);
void sub_08034F70(Entity*);
void sub_08035120(Entity*);
void sub_08035050(Entity*);

void sub_08034C7C(Entity* this);
void sub_08034CA4(Entity* this);
void sub_08034CBC(Entity* this);
void sub_08034CC4(Entity* this);
void sub_08034D4C(Entity* this);
void sub_08034DC8(Entity* this);
void sub_08034E30(Entity* this);
void sub_08034E68(Entity* this);
void sub_08034EC0(Entity* this);
void sub_08034ED8(Entity* this);
void sub_08034EE4(Entity* this);
void sub_08034F58(Entity* this);

void (*const gUnk_080CEE90[])(Entity*) = {
    sub_08034C7C, sub_08034CA4, sub_08001324, sub_08034CBC, sub_08001242,
};
void (*const gUnk_080CEEA4[])(Entity*) = {
    sub_08034CC4,
    sub_08034D4C,
    sub_08034DC8,
};
void (*const gUnk_080CEEB0[])(Entity*) = {
    sub_08034E30, sub_08034E68, sub_08034EC0, sub_08034ED8, sub_08034EE4, sub_08034F58,
};

const u8 gUnk_080CEEC8[] = { FX_GIANT_EXPLOSION, FX_GIANT_EXPLOSION, FX_GIANT_EXPLOSION2, FX_GIANT_EXPLOSION3 };
const u8 gUnk_080CEECC[] = { 0x58, 0x68, 0x88, 0x68, 0xb8, 0x68, 0x58, 0xa8, 0x88, 0xa8, 0xb8, 0xa8 };
const s16 gUnk_080CEED8[] = { -0x82, -0x81, -0x80, -0x7f, -0x7e, -0x42, -0x41, -0x40, -0x3f, -0x3e, -2,   -1,
                              1,     2,     0x3e,  0x3f,  0x40,  0x41,  0x42,  0x7e,  0x7f,  0x80,  0x81, 0x82 };

extern const ScreenTransitionData gUnk_0813ABA8;

void MazaalMacro(Entity* this) {
    gUnk_080CEE90[GetNextFunction(this)](this);
}

void sub_08034C7C(Entity* this) {
    if (this->type != 2) {
        gUnk_080CEEA4[this->action](this);
    } else {
        sub_08034E18(this);
    }
}

void sub_08034CA4(Entity* this) {
    sub_08034FA0(this);
    sub_0804AA30(this, gUnk_080CEE90);
}

void sub_08034CBC(Entity* this) {
    sub_0804A7D4(this);
}

void sub_08034CC4(Entity* this) {
    Entity* entity;

    if (sub_08035084(this) != 0) {
        this->action = this->type + 1;
        this->field_0xf = 0;
        this->field_0x6c.HALF.HI |= 1;
        this->field_0x78.HWORD = 0x4b0;
        sub_08034F70(this);
        InitializeAnimation(this, this->type);
        SetTile(0x4022, COORD_TO_TILE(this), this->collisionLayer);
        entity = CreateEnemy(MAZAAL_MACRO, 2);
        if (entity != NULL) {
            this->attachedEntity = entity;
            entity->parent = this;
            CopyPosition(this, entity);
        }
    }
}

void sub_08034D4C(Entity* this) {
    Entity* entity;

    GetNextFrame(this);
    if (--this->field_0x78.HWORD == 0) {
        if ((this->field_0xf < 8) && (entity = CreateEnemy(VAATI_PROJECTILE, 0), entity != (Entity*)0x0)) {
            entity->direction = (s32)Random() % 5 + 0xc;
            entity->x.HALF.HI = (gRoomControls.width / 2) + gRoomControls.roomOriginX;
            entity->y.HALF.HI = gRoomControls.roomOriginY + 8;
            entity->collisionLayer = 3;
            entity->parent = this;
            UpdateSpriteForCollisionLayer(entity);
            this->field_0x78.HWORD = 600;
            this->field_0xf = this->field_0xf + 1;
        } else {
            this->field_0x78.HWORD = 0x78;
        }
    }
}

void sub_08034DC8(Entity* this) {
    if (gScreenTransition.field_0x39 == 0) {
        CreateFx(this, FX_GIANT_EXPLOSION4, 0);
        sub_0807BA8C(COORD_TO_TILE(this), this->collisionLayer);
        DeleteThisEntity();
    }
}

void sub_08034E18(Entity* this) {
    gUnk_080CEEB0[this->action](this);
}

void sub_08034E30(Entity* this) {
    this->action = this->parent->type + 1;
    this->collisionLayer = 2;
    this->spritePriority.b0 = 7;
    this->spritePriority.b1 = 0;
    UpdateSpriteForCollisionLayer(this);
    InitializeAnimation(this, 2);
}

void sub_08034E68(Entity* this) {
    ScriptExecutionContext* scriptExecutionContext;

    if (this->parent->next == NULL) {
        if (this->spriteSettings.b.draw != 0) {
            this->spriteSettings.b.draw = 0;
            sub_08035120(this);
        }
        if (gScreenTransition.field_0x39 == 0) {
            if (sub_08079F8C() != 0) {
                this->action = 3;
                scriptExecutionContext = StartCutscene(this, (u16*)script_08012E20);
                *(ScriptExecutionContext**)&this->cutsceneBeh = scriptExecutionContext;
            }
        } else {
            DeleteThisEntity();
        }
    }
}

void sub_08034EC0(Entity* this) {
    if (this->parent->next == NULL) {
        sub_08035120(this);
        DeleteThisEntity();
    }
}

void sub_08034ED8(Entity* this) {
    ExecuteScriptForEntity(this, NULL);
}

void sub_08034EE4(Entity* this) {
    u32 randomValue;
    Entity* entity;

    if ((++this->actionDelay & 0xf) == 0) {
        randomValue = Random();
        entity = CreateFx(this, gUnk_080CEEC8[randomValue & 3], 0);
        if (entity != NULL) {
            entity->x.HALF.HI = (((randomValue >> 2) & 0x77) << 1) + 1 + gRoomControls.roomScrollX;
            entity->y.HALF.HI = ((randomValue >> 9) & 0x7e) + 1 + gRoomControls.roomScrollY;
            entity->collisionLayer = 2;
            UpdateSpriteForCollisionLayer(entity);
        }
    }
    ExecuteScriptForEntity(this, NULL);
}

void sub_08034F58(Entity* this) {
    DoExitTransition((ScreenTransitionData*)&gUnk_0813ABA8);
    DeleteEntity(this);
}

void sub_08034F70(Entity* this) {
    this->currentHealth = gScreenTransition.field_0x39;
    if (gScreenTransition.field_0x39 >= 0x3d) {
        this->type2 = 0;
    } else if (gScreenTransition.field_0x39 >= 0x1f) {
        this->type2 = 1;
    } else {
        this->type2 = 2;
    }
}

void sub_08034FA0(Entity* this) {
    if (0 < this->iframes) {
        this->attachedEntity->iframes = this->iframes;
        sub_08080964(0xc, 1);
    }
    switch (this->type2) {
        case 0:
            if (this->currentHealth < 0x3c) {
                gScreenTransition.field_0x39 = 0x3c;
                sub_08035050(this);
                return;
            }
            break;
        case 1:
            if (this->currentHealth < 0x1e) {
                gScreenTransition.field_0x39 = 0x1e;
                sub_08035050(this);
                return;
            }
            break;
        default:
            if (this->currentHealth == 0) {
                sub_0807BA8C(COORD_TO_TILE(this), this->collisionLayer);
            }
            break;
    }
    gScreenTransition.field_0x39 = this->currentHealth;
}

void sub_08035050(Entity* this) {
    Entity* entity;

    COLLISION_OFF(this);
    this->currentHealth = 0;
    entity = CreateEnemy(VAATI_PROJECTILE, 0);
    if (entity != NULL) {
        entity->type2 = 1;
        entity->collisionLayer = 3;
        entity->parent = NULL;
        UpdateSpriteForCollisionLayer(entity);
    }
}

u32 sub_08035084(Entity* this) {
    u32 vulnPillar;
    Entity* entity;
    u32 i;
    const u8* coords;

    if (this->type == 0) {
        if (0x42 < gEntCount) {
            return 0;
        }
        do {
            vulnPillar = (s32)Random() % 6;
        } while (vulnPillar == gScreenTransition.field_0x38 >> 4);
        gScreenTransition.field_0x38 = (gScreenTransition.field_0x38 & 0xf) | (vulnPillar << 4);
        for (i = 0, coords = gUnk_080CEECC; i < 6; i++, coords += 2) {
            if (i == vulnPillar) {
                entity = this;
            } else {
                entity = CreateEnemy(MAZAAL_MACRO, 1);
            }
            entity->x.HALF.HI = gRoomControls.roomOriginX + *coords;
            entity->y.HALF.HI = gRoomControls.roomOriginY + *(coords + 1);
            entity->collisionLayer = 1;
            UpdateSpriteForCollisionLayer(entity);
        }
    }
    return 1;
}

void sub_08035120(Entity* this) {
    s32 tile;
    u32 i;

    tile = COORD_TO_TILE(this);
    for (i = 0; i < 0x18; i++) {
        sub_0807B600(tile + gUnk_080CEED8[i]);
    }
}
