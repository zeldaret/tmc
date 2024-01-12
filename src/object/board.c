/**
 * @file board.c
 * @ingroup Objects
 *
 * @brief Board object
 */
#include "asm.h"
#include "entity.h"
#include "functions.h"
#include "player.h"
#include "room.h"
#include "tiles.h"

typedef struct {
    Entity base;
    u8 filler[0x10];
    u16 x;
    u16 y;
    u16 unk7c;
    u16 unk7e;
    u16 tilePos;
    u8 width;
    u8 height;
} BoardEntity;

void Board_Init(BoardEntity*);
void Board_Action1(BoardEntity*);
void sub_08098BE8(BoardEntity*);
bool32 sub_08098C30(BoardEntity*, Entity*);
void sub_0807AAF8(Entity*, u32);

void Board(Entity* this) {
    static void (*const Board_Actions[])(BoardEntity*) = {
        Board_Init,
        Board_Action1,
    };

    Board_Actions[this->action]((BoardEntity*)this);
}

void Board_Init(BoardEntity* this) {
    static const u8 Board_Sizes[] = { 0x10, 0x1e, 0xc, 0x6, 0x10, 0x6, 0x0, 0x0 };
    const u8* size = &Board_Sizes[super->type * 2];

    super->action = 1;
    super->spriteSettings.draw = 1;
    super->frameIndex = super->type;
    this->width = size[0];
    this->height = size[1];
    this->x = super->x.HALF.HI - (this->width >> 1);
    this->y = super->y.HALF.HI - (this->height >> 1);
    this->tilePos = COORD_TO_TILE(super);
    super->collisionLayer = 1;
    UpdateSpriteForCollisionLayer(super);
    super->spritePriority.b0 = 6;
    if (super->type == 0) {
        SetTile(SPECIAL_TILE_116, this->tilePos + TILE_POS(0, -1), super->collisionLayer);
    }
    sub_08098BE8(this);
}

void Board_Action1(BoardEntity* this) {
    sub_08098BE8(this);
}

void sub_08098BE8(BoardEntity* this) {
    if ((gPlayerState.flags & PL_MINISH) && sub_08098C30(this, &gPlayerEntity.base) && PlayerCanBeMoved() &&
        gPlayerEntity.base.z.HALF.HI == 0) {
        gPlayerState.field_0x14 = 1;
        sub_0807AAF8(&gPlayerEntity.base, this->tilePos);
    }
}

bool32 sub_08098C30(BoardEntity* this, Entity* ent) {
    u32 result = FALSE;
    u32 diffX = ent->x.HALF.HI - this->x;
    u32 diffY = ent->y.HALF.HI - this->y;

    if (diffX <= this->width && diffY <= this->height) {
        result = TRUE;
    }
    return result;
}
