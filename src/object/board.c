#define NENT_DEPRECATED
#include "entity.h"
#include "room.h"
#include "asm.h"
#include "player.h"
#include "functions.h"

typedef struct {
    Entity base;
    u8 filler[0x10];
    u16 unk78;
    u16 unk7a;
    u16 unk7c;
    u16 unk7e;
    u16 tile;
    u8 unk82;
    u8 unk83;
} BoardEntity;

void Board_Init(BoardEntity*);
void sub_08098BE0(BoardEntity*);
void sub_08098BE8(BoardEntity*);
bool32 sub_08098C30(BoardEntity*, Entity*);
void sub_0807AAF8(Entity*, u32);

void Board(Entity* this) {
    static void (*const actionFuncs[])(BoardEntity*) = {
        Board_Init,
        sub_08098BE0,
    };

    actionFuncs[this->action]((BoardEntity*)this);
}

void Board_Init(BoardEntity* this) {
    static const u8 gUnk_0812366C[] = { 0x10, 0x1e, 0xc, 0x6, 0x10, 0x6, 0x0, 0x0 };
    const u8* pbVar2 = &gUnk_0812366C[super->type * 2];

    super->action = 1;
    super->spriteSettings.draw = 1;
    super->frameIndex = super->type;
    this->unk82 = pbVar2[0];
    this->unk83 = pbVar2[1];
    this->unk78 = super->x.HALF.HI - (this->unk82 >> 1);
    this->unk7a = super->y.HALF.HI - (this->unk83 >> 1);
    this->tile = COORD_TO_TILE(super);
    super->collisionLayer = 1;
    UpdateSpriteForCollisionLayer(super);
    super->spritePriority.b0 = 6;
    if (super->type == 0) {
        SetTile(0x4074, this->tile - 0x40, super->collisionLayer);
    }
    sub_08098BE8(this);
}

void sub_08098BE0(BoardEntity* this) {
    sub_08098BE8(this);
}

void sub_08098BE8(BoardEntity* this) {
    if ((gPlayerState.flags & PL_MINISH) && sub_08098C30(this, &gPlayerEntity) && sub_08079F8C() &&
        gPlayerEntity.z.HALF.HI == 0) {
        gPlayerState.field_0x14 = 1;
        sub_0807AAF8(&gPlayerEntity, this->tile);
    }
}

bool32 sub_08098C30(BoardEntity* this, Entity* ent) {
    u32 uVar1 = 0;
    u32 diffx = ent->x.HALF.HI - this->unk78;
    u32 diffy = ent->y.HALF.HI - this->unk7a;

    if (diffx <= this->unk82 && diffy <= this->unk83) {
        uVar1 = 1;
    }
    return uVar1;
}
