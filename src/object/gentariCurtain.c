/**
 * @file gentariCurtain.c
 * @ingroup Objects
 *
 * @brief Gentari Curtain object
 */
#include "asm.h"
#include "entity.h"
#include "flags.h"
#include "functions.h"
#include "object.h"
#include "room.h"
#include "tiles.h"

typedef struct {
    Entity base;
    u8 filler[0x8];
    u16 tilePos;
    u16 tilePos2;
    u16 tileIndex;
    u16 tileIndex2;
    u8 filler2[0xe];
    u16 flags;
} GentariCurtainEntity;

void GentariCurtain_Init(GentariCurtainEntity* this);
void GentariCurtain_Action1(GentariCurtainEntity* this);
void GentariCurtain_Action2(GentariCurtainEntity* this);
void GentariCurtain_Action3(GentariCurtainEntity* this);
void sub_0809223C(GentariCurtainEntity* this);
void sub_080921BC(GentariCurtainEntity* this);
void sub_080921F0(GentariCurtainEntity* this);
void sub_08092214(GentariCurtainEntity* this);

void GentariCurtain(Entity* this) {
    static void (*const GentariCurtain_Actions[])(GentariCurtainEntity*) = {
        GentariCurtain_Init,
        GentariCurtain_Action1,
        GentariCurtain_Action2,
        GentariCurtain_Action3,
    };

    GentariCurtain_Actions[this->action]((GentariCurtainEntity*)this);
}

void GentariCurtain_Init(GentariCurtainEntity* this) {
    if (CheckFlags(this->flags)) {
        super->action = 3;
        super->x.HALF.HI += 2;
        sub_0809223C(this);
        InitAnimationForceUpdate(super, 1);
    } else {
        if (super->subAction == 0) {
            super->subAction = 1;
            super->collisionLayer = 1;
            super->spritePriority.b0 = 6;
            super->x.HALF.HI += 2;
            UpdateSpriteForCollisionLayer(super);
            this->tilePos = COORD_TO_TILE_OFFSET(super, 0, 8);
            this->tilePos2 = COORD_TO_TILE_OFFSET(super, 0, -8);
            this->tileIndex = GetTileIndex(this->tilePos, LAYER_BOTTOM);
            this->tileIndex2 = GetTileIndex(this->tilePos2, LAYER_BOTTOM);
            SetTile(SPECIAL_TILE_34, this->tilePos, LAYER_BOTTOM);
            SetTile(SPECIAL_TILE_34, this->tilePos2, LAYER_BOTTOM);
            InitAnimationForceUpdate(super, 0);
        } else {
            super->action = 1;
            sub_080921BC(this);
            sub_080921F0(this);
        }
    }
}

void GentariCurtain_Action1(GentariCurtainEntity* this) {
    if (CheckFlags(this->flags)) {
        super->action = 2;
    }
}

void GentariCurtain_Action2(GentariCurtainEntity* this) {
    UpdateAnimationSingleFrame(super);
    if ((super->frame & ANIM_DONE) != 0) {
        super->action = 3;
        SetTile(this->tileIndex, this->tilePos, LAYER_BOTTOM);
        SetTile(this->tileIndex2, this->tilePos2, LAYER_BOTTOM);
        sub_08092214(this);
        sub_0809223C(this);
        InitAnimationForceUpdate(super, 1);
    }
}

void GentariCurtain_Action3(GentariCurtainEntity* this) {
}

void sub_080921BC(GentariCurtainEntity* this) {
    GenericEntity* pEVar1;
    GenericEntity* end;

    pEVar1 = (GenericEntity*)gAuxPlayerEntities;
    end = pEVar1 + 0x4f;

    do {
        if (pEVar1->base.kind == OBJECT) {
            if (pEVar1->base.id == MINISH_SIZED_ARCHWAY) {
                if (pEVar1->base.type == 2) {
                    super->child = (Entity*)pEVar1;
                    return;
                }
            }
        }
        pEVar1++;
    } while (pEVar1 < end);
    super->child = NULL;
}

void sub_080921F0(GentariCurtainEntity* this) {
    Entity* pEVar1 = super->child;
    if (pEVar1) {
        pEVar1->collisionLayer = 1;
        pEVar1->spritePriority.b0 = 7;
        UpdateSpriteForCollisionLayer(pEVar1);
    }
}

void sub_08092214(GentariCurtainEntity* this) {
    Entity* pEVar1 = super->child;
    if (pEVar1) {
        pEVar1->collisionLayer = 2;
        pEVar1->spritePriority.b0 = 4;
        UpdateSpriteForCollisionLayer(pEVar1);
    }
}

void sub_0809223C(GentariCurtainEntity* this) {
    super->collisionLayer = 2;
    super->spritePriority.b0 = 3;
    UpdateSpriteForCollisionLayer(super);
}
