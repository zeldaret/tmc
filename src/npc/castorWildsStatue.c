/**
 * @file castorWildsStatue.c
 * @ingroup NPCs
 *
 * @brief Castor Wilds Statue NPC
 */
#include "effects.h"
#include "entity.h"
#include "flags.h"
#include "functions.h"
#include "npc.h"
#include "script.h"
#include "sound.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused[12];
    /*0x74*/ u16 tilePos;
} CastorWildsStatueEntity;

static const Hitbox gUnk_08110E94;

typedef struct {
    s8 x;
    s8 y;
} PACKED PosOffset;

void sub_080673C0(Entity*);
void sub_080673F4(Entity*);
void sub_08067410(Entity*);
void sub_0806752C(Entity*);
void sub_08067418(CastorWildsStatueEntity*);
void sub_08067514(CastorWildsStatueEntity*);

void CastorWildsStatue(CastorWildsStatueEntity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_080673C0,
        sub_080673F4,
        sub_08067410,
        sub_0806752C,
    };
    static void (*const scriptedActionFuncs[])(CastorWildsStatueEntity*) = {
        sub_08067418,
        sub_08067514,
    };
    if ((super->flags & ENT_SCRIPTED) != 0) {
        scriptedActionFuncs[super->action](this);
    } else {
        actionFuncs[super->action](super);
        sub_0806ED78(super);
    }
}

void sub_080673C0(Entity* this) {
    if (gRoomTransition.entity_update_type != 0) {
        this->action = 3;
    } else {
        this->action = 1;
    }
    this->frameIndex = this->type & 1;
    if ((this->type & 1) == 0) {
        this->hitbox = (Hitbox*)&gUnk_08110E94;
    }
}

void sub_080673F4(Entity* this) {
    if (this->interactType != INTERACTION_NONE) {
        this->action = 2;
        this->interactType = INTERACTION_NONE;
    }
}

void sub_08067410(Entity* this) {
    this->action = 1;
}

void sub_08067418(CastorWildsStatueEntity* this) {
    super->action = 1;
    this->tilePos = COORD_TO_TILE(super);
    if (super->type == 0) {
        super->hitbox = (Hitbox*)&gUnk_08110E94;
        SetTile(SPECIAL_TILE_34, this->tilePos - 1, super->collisionLayer);
        SetTile(SPECIAL_TILE_34, this->tilePos, super->collisionLayer);
        SetTile(SPECIAL_TILE_34, this->tilePos + 0x3f, super->collisionLayer);
        SetTile(SPECIAL_TILE_34, this->tilePos + 0x40, super->collisionLayer);
    } else {
        super->collisionLayer = 3;
        super->spriteOrientation.flipY = 1;
        super->spriteRendering.b3 = 1;
        super->spritePriority.b0 = 2;
        if (CheckLocalFlag(HIKYOU_00_SEKIZOU) == 0) {
            SetTile(SPECIAL_TILE_34, TILE_POS(1, 58), LAYER_BOTTOM);
            SetTile(SPECIAL_TILE_34, TILE_POS(2, 58), LAYER_BOTTOM);
            SetTile(SPECIAL_TILE_34, TILE_POS(3, 58), LAYER_BOTTOM);
            SetTile(SPECIAL_TILE_34, TILE_POS(3, 59), LAYER_BOTTOM);
        }
    }
    InitScriptForNPC(super);
}

void sub_08067514(CastorWildsStatueEntity* this) {
    ExecuteScriptAndHandleAnimation(super, NULL);
    if (super->type == 0) {
        sub_0806ED78(super);
    }
}

void sub_0806752C(Entity* this) {
    sub_0806FD3C(this);
}

void sub_08067534(Entity* this) {
    static const s8 gUnk_08110E64[] = { -8, 8, 0, 0 };
    Entity* entity;
    s32 i;
    for (i = 0; i < 2; ++i) {
        entity = CreateFx(this, FX_DEATH, 0);
        if (entity != NULL) {
            entity->x.HALF.HI += gUnk_08110E64[i];
            entity->y.HALF.HI += 0x1c;
        }
    }
    EnqueueSFX(SFX_14C);
    InitScreenShake(40, 4);
}

void sub_0806757C(Entity* this) {
    static const u32 gUnk_08110E68[] = { 0xc8, 0xc9, 0xca, 0xc8 };
    if (this->subAction != 0) {
        if (this->subAction >= 3) {
            RestorePrevTileEntity(0xe81, 1);
            RestorePrevTileEntity(0xe82, 1);
            RestorePrevTileEntity(0xe83, 1);
            RestorePrevTileEntity(0xec3, 1);
        } else {
            LoadFixedGFX(this, gUnk_08110E68[this->subAction]);
        }
    }
}

void sub_080675D4(Entity* this) {
    static const PosOffset gUnk_08110E78[] = { { 0x0, 0x0 },    { 0x0, -0x10 }, { 0x0, 0x10 },
                                               { -0x10, 0x0 },  { 0x10, 0x0 },  { -0x10, -0x10 },
                                               { -0x10, 0x10 }, { 0x10, 0x10 }, { 0x10, -0x10 } };
    static const PosOffset gUnk_08110E8A[] = {
        { -0xc, -0xc }, { 0xc, -0xc }, { -0xc, 0xc }, { 0xc, 0xc }, { 0x0, 0x0 }
    };
    const PosOffset* gUnk = gUnk_08110E78;
    u32 subAction = (this->subAction << 2) - 0xc;
    s32 i;

    for (i = 0; i < 9; i++, gUnk++) {
        Entity* ent = CreateFx(this, FX_DEATH, 0);
        if (ent != NULL) {
            ent->x.HALF.HI += gUnk->x;
            ent->y.HALF.HI += gUnk->y;
            ent->z.HALF.HI = subAction;
            ent->collisionLayer = this->collisionLayer;
            ent->spriteOrientation.flipY = this->spriteOrientation.flipY;
            ent->spriteRendering.b3 = this->spriteRendering.b3;
            SortEntityAbove(this, ent);
        }
    };
    gUnk = gUnk_08110E8A;
    for (i = 0; i < 4; i++, gUnk++) {
        Entity* ent = CreateFx(this, FX_ROCK, 0);
        if (ent != NULL) {
            ent->x.HALF.HI = gUnk->x + ent->x.HALF.HI;
            ent->y.HALF.HI = gUnk->y + ent->y.HALF.HI;
            ent->z.HALF.HI = subAction;
            ent->collisionLayer = this->collisionLayer;
            ent->spriteOrientation.flipY = this->spriteOrientation.flipY;
            ent->spriteRendering.b3 = this->spriteRendering.b3;
            SortEntityAbove(this, ent);
        }
    };
    if (this->subAction > 2) {
        this->spriteSettings.draw = 0;
    }
}

static const Hitbox gUnk_08110E94 = { 0, 3, { 5, 3, 3, 5 }, 12, 20 };

void sub_080676D8(Entity* this) {
    this->subAction++;
}

void sub_080676E0(Entity* this, ScriptExecutionContext* context) {
    switch (context->unk_18) {
        case 0: {
            context->unk_18 = 1;
            context->unk_19 = 0x20;
            break;
        }
        case 1: {
            this->z.HALF.HI = (context->unk_19 >> 1) - 0x10;
            if (--context->unk_19 == 0) {
                context->unk_18 = 2;
                context->unk_19 = 0x24;
            }

            break;
        }
        case 2: {
            if (--context->unk_19 == 0) {
                context->unk_18 = 3;
            }
            break;
        }
        default: {
            if (GravityUpdate(this, Q_8_8(24.0)) == 0) {
                return;
            }
            break;
        }
    }

    gActiveScriptInfo.commandSize = 0;
}

void CastorWildsStatue_Fusion(Entity* this) {
    if (this->action == 0) {
        this->action++;
        this->spriteSettings.draw = 1;
        this->y.HALF.HI -= 0x18;
        InitializeAnimation(this, 1);
        ChangeObjPalette(this, 0x17b);
    } else {
        GetNextFrame(this);
    }
}
