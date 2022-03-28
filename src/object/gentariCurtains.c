#define NENT_DEPRECATED
#include "entity.h"
#include "room.h"
#include "asm.h"
#include "flags.h"
#include "functions.h"
#include "object.h"

typedef struct {
    Entity base;
    u8 filler[0x8];
    u16 tile;
    u16 tile2;
    u16 tileIndex;
    u16 tileIndex2;
    u8 filler2[0xe];
    u16 flags;
} GentariCurtainEntity;

void sub_08092050(GentariCurtainEntity* this);
void sub_0809214C(GentariCurtainEntity* this);
void sub_08092164(GentariCurtainEntity* this);
void nullsub_118(GentariCurtainEntity* this);
void sub_0809223C(GentariCurtainEntity* this);
void sub_080921BC(GentariCurtainEntity* this);
void sub_080921F0(GentariCurtainEntity* this);
void sub_08092214(GentariCurtainEntity* this);

void GentariCurtain(Entity* this) {
    static void (*const actionFuncs[])(GentariCurtainEntity*) = {
        sub_08092050,
        sub_0809214C,
        sub_08092164,
        nullsub_118,
    };

    actionFuncs[this->action]((GentariCurtainEntity*)this);
}

void sub_08092050(GentariCurtainEntity* this) {
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
            this->tile = COORD_TO_TILE_OFFSET(super, 0, 8);
            this->tile2 = COORD_TO_TILE_OFFSET(super, 0, -8);
            this->tileIndex = GetTileIndex(this->tile, 1);
            this->tileIndex2 = GetTileIndex(this->tile2, 1);
            SetTile(0x4022, this->tile, 1);
            SetTile(0x4022, this->tile2, 1);
            InitAnimationForceUpdate(super, 0);
        } else {
            super->action = 1;
            sub_080921BC(this);
            sub_080921F0(this);
        }
    }
}

void sub_0809214C(GentariCurtainEntity* this) {
    if (CheckFlags(this->flags)) {
        super->action = 2;
    }
}

void sub_08092164(GentariCurtainEntity* this) {
    UpdateAnimationSingleFrame(super);
    if ((super->frame & ANIM_DONE) != 0) {
        super->action = 3;
        SetTile(this->tileIndex, this->tile, 1);
        SetTile(this->tileIndex2, this->tile2, 1);
        sub_08092214(this);
        sub_0809223C(this);
        InitAnimationForceUpdate(super, 1);
    }
}

void nullsub_118(GentariCurtainEntity* this) {
}

void sub_080921BC(GentariCurtainEntity* this) {
    GenericEntity* pEVar1;
    GenericEntity* end;

    pEVar1 = (GenericEntity*)gItemGetEntities;
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
