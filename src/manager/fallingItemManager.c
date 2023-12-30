/**
 * @file fallingItemManager.c
 * @ingroup Managers
 *
 * @brief Item that is falling from the sky.
 *
 * If you leave the room without picking the item up and enter again, the item falls from the sky again.
 */
#include "manager/fallingItemManager.h"

#include "flags.h"
#include "object.h"
#include "object/itemOnGround.h"
#include "room.h"

void FallingItemManager_Init(FallingItemManager*);
void FallingItemManager_Action1(FallingItemManager*);

void FallingItemManager_Main(FallingItemManager* this) {
    static void (*const FallingItemManager_Actions[])(FallingItemManager*) = {
        FallingItemManager_Init,
        FallingItemManager_Action1,
    };
    FallingItemManager_Actions[super->action](this);
}

void FallingItemManager_Init(FallingItemManager* this) {
    super->action = 1;
    if (CheckFlags(this->field_0x3c)) {
        DeleteThisEntity();
    }
    FallingItemManager_Action1(this);
}

void FallingItemManager_Action1(FallingItemManager* this) {
    if (CheckFlags(this->field_0x3e)) {
        ItemOnGroundEntity* object = (ItemOnGroundEntity*)CreateObject(GROUND_ITEM, super->type, super->type2);
        if (object != NULL) {
            object->base.timer = this->field_0x35;
            object->base.collisionLayer = this->field_0x36;
            object->base.x.HALF.HI = this->field_0x38 + gRoomControls.origin_x;
            object->base.y.HALF.HI = this->field_0x3a + gRoomControls.origin_y;
            object->unk_86 = this->field_0x3c;
        }
        DeleteThisEntity();
    }
}
