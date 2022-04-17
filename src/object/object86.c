#include "object.h"
#include "item.h"

void sub_08099ECC(Entity*);
void sub_08099DD0(Entity*);
void sub_08099E10(Entity*);
void sub_08099E58(Entity*);
void sub_08099E8C(Entity*);
void nullsub_534(Entity*);
extern void sub_0805B390(u32);

void Object86(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_08099DD0, sub_08099E10, sub_08099E58, sub_08099E8C, nullsub_534,
    };
    actionFuncs[this->action](this);
}

void sub_08099DD0(Entity* this) {
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

void sub_08099E10(Entity* this) {
    if (CheckLocalFlag(0x74)) {
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

void sub_08099E58(Entity* this) {
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

void sub_08099E8C(Entity* this) {
    if (EntityInRectRadius(this, &gPlayerEntity, 0xc, 0xc)) {
        if (this->subAction == 0) {
            sub_08099ECC(this);
            RequestPriorityDuration(this, 0x1e);
        }
        if (CheckLocalFlag(0x75)) {
            sub_0805B390(0x7);
        }
    }
}

void nullsub_534(Entity* this) {
}

void sub_08099ECC(Entity* this) {
    this->subAction = 1;
    CopyPosition(this, &gPlayerEntity);
    gPlayerState.queued_action = PLAYER_FALL;
    gPlayerState.field_0x38 = 0;
    gPlayerState.flags |= PL_PIT_IS_EXIT;
}
