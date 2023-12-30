/**
 * @file pushableFurnitureManager.c
 * @ingroup Managers
 *
 * @brief Creates pushable furniture based on a room property list.
 */
#include "manager/pushableFurnitureManager.h"

#include "flags.h"
#include "object.h"
#include "object/pushableFurniture.h"
#include "room.h"

void PushableFurnitureManager_Init(PushableFurnitureManager*);
void PushableFurnitureManager_Action1(PushableFurnitureManager*);
void PushableFurnitureManager_Action2(PushableFurnitureManager*);

void sub_0805C7CC(PushableFurnitureManager*);

void PushableFurnitureManager_Main(PushableFurnitureManager* this) {
    static void (*const PushableFurnitureManager_Actions[])(PushableFurnitureManager*) = {
        PushableFurnitureManager_Init,
        PushableFurnitureManager_Action1,
        PushableFurnitureManager_Action2,
    };
    PushableFurnitureManager_Actions[super->action](this);
}

void PushableFurnitureManager_Init(PushableFurnitureManager* this) {
    UnkPushableFurnitureManagerHelperStruct* tmp = GetCurrentRoomProperty(super->type);
    if (!tmp) {
        DeleteManager(super);
        return;
    }
    this->unk_2a = gRoomControls.origin_y + super->timer;
    super->timer = 0;
    this->unk_28 = 0;
    this->unk_29 = 0;
    while (tmp->unk_00 != 0xFF && super->timer < 0x20) {
        PushableFurnitureEntity* furniture =
            (PushableFurnitureEntity*)CreateObject(PUSHABLE_FURNITURE, tmp->unk_01, tmp->unk_02);
        if (furniture) {
            furniture->base.timer = tmp->unk_03;
            furniture->base.x.HALF.HI = gRoomControls.origin_x + tmp->unk_04;
            furniture->base.y.HALF.HI = gRoomControls.origin_y + tmp->unk_06;
            furniture->base.parent = (Entity*)this;
            furniture->base.collisionLayer = 1;
            furniture->unk_83 = super->timer;
            furniture->unk_82 = tmp->unk_00;
            this->unk_29 |= 1 << super->timer;
        }
        tmp++;
        super->timer++;
    }
    if (super->type2 == 0xFF) {
        super->action = 2;
    } else {
        if (CheckLocalFlag(super->type2)) {
            super->action = 2;
        } else {
            super->action = 1;
        }
    }
}

void PushableFurnitureManager_Action1(PushableFurnitureManager* this) {
    if (this->unk_28 == this->unk_29) {
        super->action = 2;
        SetLocalFlag(super->type2);
    }
    sub_0805C7CC(this);
}

void PushableFurnitureManager_Action2(PushableFurnitureManager* this) {
    sub_0805C7CC(this);
}

void sub_0805C7CC(PushableFurnitureManager* this) {
    if (gPlayerState.flags & PL_MINISH) {
        if (gPlayerEntity.base.y.HALF.HI < this->unk_2a + 0x10) {
            super->subAction = 1;
        } else {
            super->subAction = 0;
        }
    } else {
        if (gPlayerEntity.base.y.HALF.HI < this->unk_2a + 0x28) {
            super->subAction = 3;
        } else {
            super->subAction = 2;
        }
    }
}
