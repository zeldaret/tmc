/**
 * @file doubleBookshelf.c
 * @ingroup Objects
 *
 * @brief Double Bookshelf object
 */
#include "functions.h"
#include "object.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[0x18];
    /*0x80*/ u16 tilePos;
    /*0x82*/ u16 unk_82;
    /*0x84*/ u8 unk_84;
    /*0x85*/ u8 unk_85;
    /*0x86*/ u16 unk_86;
} DoubleBookshelfEntity;

void sub_0809B334(DoubleBookshelfEntity*);
void sub_0809B0B0(DoubleBookshelfEntity*);
void sub_0809B234(DoubleBookshelfEntity*);
void sub_0809B274(DoubleBookshelfEntity*);
void sub_0809B358(DoubleBookshelfEntity*);
void sub_0809B38C(DoubleBookshelfEntity*);
void DoubleBookshelf_Init(DoubleBookshelfEntity*);
void DoubleBookshelf_Action1(DoubleBookshelfEntity*);
void DoubleBookshelf_Action2(DoubleBookshelfEntity*);
void DoubleBookshelf_Action3(DoubleBookshelfEntity*);

void DoubleBookshelf(DoubleBookshelfEntity* this) {
    static void (*const DoubleBookshelf_Actions[])(DoubleBookshelfEntity*) = {
        DoubleBookshelf_Init,
        DoubleBookshelf_Action1,
        DoubleBookshelf_Action2,
        DoubleBookshelf_Action3,
    };
    DoubleBookshelf_Actions[super->action](this);
}

void DoubleBookshelf_Init(DoubleBookshelfEntity* this) {
    DoubleBookshelfEntity* child;
    super->frameIndex = super->type;
    this->tilePos = COORD_TO_TILE(super);
    if (super->type != 0) {
        super->action = 1;
        if (this->unk_84 == 0) {
            super->subAction = 0;
        } else {
            super->subAction = 1;
        }
    } else {
        super->action = 3;
        super->subAction = 4;
        this->unk_84 = 0;
        UpdateSpriteForCollisionLayer(super);
        child = (DoubleBookshelfEntity*)CreateObject(DOUBLE_BOOKSHELF, 1, 0);
        if (child != NULL) {
            (child->base).parent = super;
            super->child = &child->base;
            if (CheckFlags(this->unk_86) == 0) {
                PositionRelative(super, &child->base, 0x100000, 0x100000);
                child->unk_84 = 0;
            } else {
                PositionRelative(super, &child->base, 0, 0x100000);
                child->unk_84 = 1;
            }
        }
        sub_0809B334(this);
    }
    sub_0809B0B0(this);
}

void DoubleBookshelf_Action1(DoubleBookshelfEntity* this) {
    GetTileTypeAtTilePos(this->unk_82, super->collisionLayer);
    sub_0809B234(this);
}

void DoubleBookshelf_Action2(DoubleBookshelfEntity* this) {
    LinearMoveUpdate(super);
    if (--super->timer == 0) {
        super->action = 1;
        this->tilePos = COORD_TO_TILE(super);
        SetPlayerControl(CONTROL_ENABLED);
        sub_0809B0B0(this);
        EnqueueSFX(SFX_BUTTON_PRESS);
    }
}

void DoubleBookshelf_Action3(DoubleBookshelfEntity* this) {
    sub_0809B234(this);
}

void sub_0809B0B0(DoubleBookshelfEntity* this) {
    u32 tilePos = this->tilePos - 1;
    u32 layer = super->collisionLayer;
    switch (super->subAction) {
        case 0:
            this->unk_84 = 0;
            this->unk_82 = tilePos + 2;
            SetTile(SPECIAL_TILE_130, tilePos - 1, layer);
            SetTile(SPECIAL_TILE_34, tilePos, layer);
            SetTile(SPECIAL_TILE_34, tilePos + 1, layer);
            SetTile(SPECIAL_TILE_34, tilePos + 2, layer);
            break;
        case 1:
            this->unk_84 = 1;
            this->unk_82 = tilePos;
            SetTile(SPECIAL_TILE_95, tilePos, layer);
            SetTile(SPECIAL_TILE_34, tilePos + 1, layer);
            SetTile(SPECIAL_TILE_34, tilePos + 2, layer);
            SetTile(SPECIAL_TILE_130, tilePos + 3, layer);
            break;
        case 2:
            this->unk_84 = 1;
            this->unk_82 = tilePos;
            SetTile(SPECIAL_TILE_130, tilePos + 3, layer);
            SetTile(SPECIAL_TILE_34, tilePos + 2, layer);
            SetTile(SPECIAL_TILE_95, tilePos, layer);
            SetFlag(((DoubleBookshelfEntity*)super->parent)->unk_86);
            break;
        case 3:
            this->unk_84 = 0;
            this->unk_82 = tilePos + 2;
            SetTile(SPECIAL_TILE_130, tilePos - 1, layer);
            SetTile(SPECIAL_TILE_34, tilePos, layer);
            SetTile(SPECIAL_TILE_95, tilePos + 2, layer);
            ClearFlag(((DoubleBookshelfEntity*)super->parent)->unk_86);
            break;
        case 4:
            SetTile(SPECIAL_TILE_34, tilePos, layer);
            SetTile(SPECIAL_TILE_34, tilePos + 1, layer);
            SetTile(SPECIAL_TILE_34, tilePos + 2, layer);
            break;
    }
}

void sub_0809B234(DoubleBookshelfEntity* this) {
    if (super->type != 0) {
        super->spriteRendering.b3 = super->parent->spriteRendering.b3;
        super->spritePriority.b0 = super->parent->spritePriority.b0;
    } else {
        sub_0809B274(this);
    }
}

void sub_0809B274(DoubleBookshelfEntity* this) {
    Entity* player = &gPlayerEntity.base;
    switch (this->unk_84) {
        case 0:
            if (player->y.HALF.HI + 0x14 >= super->y.HALF.HI) {
                return;
            }
            this->unk_84 = 1;
            super->spritePriority.b0 = 5;
            break;
        case 1:
            if (player->x.HALF.HI + 0x1c > super->x.HALF.HI) {
                this->unk_84 = 2;
                SetTile(SPECIAL_TILE_34, this->tilePos + 2, LAYER_BOTTOM);
                sub_0809B358((DoubleBookshelfEntity*)super->child);
                return;
            }
            if (player->y.HALF.HI + 0x10 <= super->y.HALF.HI) {
                return;
            }
            this->unk_84 = 0;
            super->spritePriority.b0 = 4;
            break;
        case 2:
            if (player->x.HALF.HI + 0x20 >= super->x.HALF.HI) {
                return;
            }
            this->unk_84 = 1;
            RestorePrevTileEntity(this->tilePos + 2, 1);
            sub_0809B38C((DoubleBookshelfEntity*)super->child);
            return;
    }
}

void sub_0809B334(DoubleBookshelfEntity* this) {
    s32 index;
    u32 tilePos = this->tilePos - 0x81;
    for (index = 2; index >= 0; index--, tilePos++) {
        SetTile(SPECIAL_TILE_38, tilePos, LAYER_BOTTOM);
    }
}

void sub_0809B358(DoubleBookshelfEntity* this) {
    static const u16 gUnk_08123D68[] = { SPECIAL_TILE_34,  SPECIAL_TILE_34,  SPECIAL_TILE_116, SPECIAL_TILE_38,
                                         SPECIAL_TILE_116, SPECIAL_TILE_116, SPECIAL_TILE_38,  SPECIAL_TILE_116,
                                         SPECIAL_TILE_34,  SPECIAL_TILE_34 };
    s32 index;
    const u16* array = &gUnk_08123D68[this->unk_84];
    u32 tilePos = this->tilePos + TILE_POS(-2, -2);
    for (index = 4; index >= 0;) {
        SetTile(*array, tilePos, LAYER_BOTTOM);
        index--;
        tilePos++;
        array += 2;
    }
}

void sub_0809B38C(DoubleBookshelfEntity* this) {
    s32 index;
    u32 tilePos = this->tilePos + TILE_POS(-2, -2);
    for (index = 4; index >= 0;) {
        RestorePrevTileEntity(tilePos, 1);
        index--;
        tilePos++;
    }
}
