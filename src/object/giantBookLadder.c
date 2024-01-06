/**
 * @file giantBookLadder.c
 * @ingroup Objects
 *
 * @brief Giant Book Ladder object
 */
#include "manager.h"
#include "map.h"
#include "object.h"
#include "tiles.h"

typedef struct {
    Entity base;
    u8 filler[0xc];
    u16 unk74;
    u16 unk76;
} GiantBookLadderEntity;

void sub_0808E55C(GiantBookLadderEntity*);
u32 sub_0808E670(GiantBookLadderEntity*);

void GiantBookLadder(Entity* this) {
    static const u8 spriteDefs[] = {
        3, 7, 3, 7, 3, 6, 0, 0,
    };
    const u8* spriteDefPtr = &spriteDefs[this->type * 2];
    if (this->action == 0) {
        this->action = 1;
        this->spriteSettings.draw = this->type2 == 0;
        this->frameIndex = this->type;
        this->collisionLayer = 1;
        this->spriteRendering.b3 = spriteDefPtr[0];
        this->spritePriority.b0 = spriteDefPtr[1];
        ((GiantBookLadderEntity*)this)->unk76 = 0;
        ((GiantBookLadderEntity*)this)->unk74 = COORD_TO_TILE(this);
        sub_0808E55C((GiantBookLadderEntity*)this);
        RegisterTransitionManager(this, sub_0808E55C, 0);
    } else if ((this->type & 1) == 0) {
        sub_0808E670((GiantBookLadderEntity*)this);
    }
}

void sub_0808E55C(GiantBookLadderEntity* this) {
    u32 type;
    u32 uVar4;
    u32 unaff_r9;
    u32 uVar5;
    u32 tilePos;

    switch (super->type) {
        case 0:
        case 2:
            tilePos = this->unk74;
            unaff_r9 = tilePos + TILE_POS(-1, -4);
            SetTile(SPECIAL_TILE_143, unaff_r9, super->collisionLayer);
            SetTile(SPECIAL_TILE_143, tilePos + TILE_POS(0, -4), super->collisionLayer);
            SetTile(SPECIAL_TILE_108, tilePos + TILE_POS(-2, -4), super->collisionLayer);
            SetTile(SPECIAL_TILE_109, tilePos + TILE_POS(1, -4), super->collisionLayer);
            type = super->type;
            uVar5 = 6;
            if (type != 0) {
                uVar5 = 4;
                SetTile(SPECIAL_TILE_114, tilePos + TILE_POS(-1, 1), super->collisionLayer);
                SetTile(SPECIAL_TILE_114, tilePos + TILE_POS(0, 1), super->collisionLayer);
                SetTile(SPECIAL_TILE_114, tilePos + TILE_POS(-1, 2), super->collisionLayer);
                SetTile(SPECIAL_TILE_114, tilePos + TILE_POS(0, 2), super->collisionLayer);
            }
            break;
        case 1:
            tilePos = this->unk74;
            unaff_r9 = tilePos - 1;
            SetTile(SPECIAL_TILE_142, unaff_r9, super->collisionLayer);
            SetTile(SPECIAL_TILE_142, tilePos, super->collisionLayer);
            uVar5 = 2;
            break;
    }

    for (uVar4 = 0; uVar4 < uVar5; uVar4++) {
        unaff_r9 += 0x40;
        SetTile(SPECIAL_TILE_142, unaff_r9, super->collisionLayer);
        SetTile(SPECIAL_TILE_142, unaff_r9 + 1, super->collisionLayer);
    }
}

u32 sub_0808E670(GiantBookLadderEntity* this) {
    return GetTileTypeAtTilePos(this->unk74 - 0x101, LAYER_BOTTOM);
}
