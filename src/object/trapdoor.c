/**
 * @file trapdoor.c
 * @ingroup Objects
 *
 * @brief Trapdoor object
 */
#include "item.h"
#include "object.h"

void sub_08099ECC(Entity*);
void Trapdoor_Init(Entity*);
void Trapdoor_Action1(Entity*);
void Trapdoor_Action2(Entity*);
void Trapdoor_Action3(Entity*);
void Trapdoor_Action4(Entity*);
extern void CreateHoleManager(u32);

void Trapdoor(Entity* this) {
    static void (*const Trapdoor_Actions[])(Entity*) = {
        Trapdoor_Init, Trapdoor_Action1, Trapdoor_Action2, Trapdoor_Action3, Trapdoor_Action4,
    };
    Trapdoor_Actions[this->action](this);
}

void Trapdoor_Init(Entity* this) {
    this->collisionLayer = 1;
    this->spriteRendering.b3 = 3;
    this->spritePriority.b0 = 7;
    this->subAction = 0;
    if (GetInventoryValue(ITEM_FLIPPERS)) {
        this->action = 4;
        this->frameIndex = 0;
    } else {
        this->action = 1;
        InitializeAnimation(this, 0);
    }
}

void Trapdoor_Action1(Entity* this) {
    if (CheckLocalFlag(MIZUKAKI_STAIR)) {
        GetNextFrame(this);
        if ((this->frame == 1) && (this->subAction == 0)) {
            this->frame = 0;
            sub_08099ECC(this);
        }
        if (this->frame & ANIM_DONE) {
            this->action = 2;
            InitializeAnimation(this, 1);
        }
    }
}

void Trapdoor_Action2(Entity* this) {
    GetNextFrame(this);
    if (this->frame & ANIM_DONE) {
        this->frame &= ~0x80;
        this->timer++;
        if (this->timer == 3) {
            this->action = 3;
            this->frameIndex = 4;
        }
    }
}

void Trapdoor_Action3(Entity* this) {
    if (EntityInRectRadius(this, &gPlayerEntity.base, 0xc, 0xc)) {
        if (this->subAction == 0) {
            sub_08099ECC(this);
            RequestPriorityDuration(this, 30);
        }
        if (CheckLocalFlag(MIZUKAKI_STAIR_WARP_OK)) {
            CreateHoleManager(0x7);
        }
    }
}

void Trapdoor_Action4(Entity* this) {
}

void sub_08099ECC(Entity* this) {
    this->subAction = 1;
    CopyPosition(this, &gPlayerEntity.base);
    gPlayerState.queued_action = PLAYER_FALL;
    gPlayerState.field_0x38 = 0;
    gPlayerState.flags |= PL_PIT_IS_EXIT;
}
