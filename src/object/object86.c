#include "global.h"
#include "entity.h"
#include "coord.h"
#include "player.h"
#include "flags.h"
#include "functions.h"

void sub_08099ECC(Entity*);
extern void RequestPriorityDuration(Entity*, u32);
extern void sub_0805B390(u32);

extern void (*const gUnk_081237F8[])(Entity*);

void Object86(Entity* this) {
    gUnk_081237F8[this->action](this);
}

void sub_08099DD0(Entity* this) {
    this->collisionLayer = 1;
    this->spriteRendering.b3 = 3;
    this->spritePriority.b0 = 7;
    this->subAction = 0;
    if (GetInventoryValue(0x46)) {
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
        if (this->frame & 0x80) {
            this->action = 2;
            InitializeAnimation(this, 1);
        }
    }
}

void sub_08099E58(Entity* this) {
    GetNextFrame(this);
    if (this->frame & 0x80) {
        this->frame &= ~0x80;
        this->actionDelay++;
        if (this->actionDelay == 3) {
            this->action = 3;
            this->frameIndex = 4;
        }
    }
}

void sub_08099E8C(Entity* this) {
    if (sub_080041A0(this, &gPlayerEntity, 0xc, 0xc)) {
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
    gPlayerState.playerAction = 3;
    gPlayerState.field_0x34[4] = 0;
    gPlayerState.flags |= 0x8000;
}
