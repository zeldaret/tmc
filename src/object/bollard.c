/**
 * @file bollard.c
 * @ingroup Objects
 *
 * @brief Bollard object
 */
#include "asm.h"
#include "entity.h"
#include "flags.h"
#include "functions.h"
#include "room.h"
#include "sound.h"
#include "tiles.h"

typedef struct {
    Entity base;
    u8 filler[0x8];
    u16 tilePos;
    u16 tileIndex;
    u8 collisionData;
    u8 unk75;
    u8 filler2[0x10];
    u16 flags;
} BollardEntity;

void Bollard_Init(BollardEntity*);
void Bollard_Action1(BollardEntity*);
void Bollard_Action2(BollardEntity*);
void Bollard_Action3(BollardEntity*);
void Bollard_Action4(BollardEntity*);
void sub_0808B41C(BollardEntity*);
void sub_0808B3AC(BollardEntity*);
void sub_0808B42C(BollardEntity*);

void Bollard(Entity* this) {
    static void (*const Bollard_Actions[])(BollardEntity*) = {
        Bollard_Init, Bollard_Action1, Bollard_Action2, Bollard_Action3, Bollard_Action4,
    };

    Bollard_Actions[this->action]((BollardEntity*)this);
}

void Bollard_Init(BollardEntity* this) {
    if (super->type2 == 0) {
        sub_0808B41C(this);
        sub_0808B3AC(this);
    } else {
        sub_0808B42C(this);
    }
}

void Bollard_Action1(BollardEntity* this) {
    if (super->type2 == 0) {
        if (CheckFlags(this->flags) == 0) {
            return;
        }
    } else if (CheckFlags(this->flags) != 0) {
        return;
    }
    super->action = 2;
    InitializeAnimation(super, 3);
    SetTile(this->tileIndex, this->tilePos, super->collisionLayer);
    EnqueueSFX(SFX_1A5);
}

void Bollard_Action2(BollardEntity* this) {
    GetNextFrame(super);
    if (super->frame & ANIM_DONE) {
        sub_0808B42C(this);
    }
}

void Bollard_Action3(BollardEntity* this) {
    if (super->type2 == 0) {
        if (CheckFlags(this->flags) != 0) {
            return;
        }
    } else if (CheckFlags(this->flags) == 0) {
        return;
    }
    super->action = 4;
    InitializeAnimation(super, 2);
    sub_0808B3AC(this);
    EnqueueSFX(SFX_1A5);
}

void Bollard_Action4(BollardEntity* this) {
    GetNextFrame(super);
    if (super->frame & ANIM_DONE) {
        sub_0808B41C(this);
    }
}

void sub_0808B3AC(BollardEntity* this) {
    super->spritePriority.b0 = 4;
    this->tilePos = COORD_TO_TILE(super);
    this->tileIndex = GetTileIndex(this->tilePos, super->collisionLayer);
    this->collisionData = GetCollisionDataAtTilePos(this->tilePos, super->collisionLayer);
    SetTile(SPECIAL_TILE_11, this->tilePos, super->collisionLayer);
}

void sub_0808B41C(BollardEntity* this) {
    super->action = 1;
    InitializeAnimation(super, 0);
}

void sub_0808B42C(BollardEntity* this) {
    super->action = 3;
    super->spritePriority.b0 = 7;
    InitializeAnimation(super, 1);
}
