/**
 * @file fallingItemManager.c
 * @ingroup Managers
 *
 * @brief Item that is falling from the sky.
 *
 * If you leave the room without picking the item up and enter again, the item falls from the sky again.
 */
#define ENT_DEPRECATED
#include "manager/fallingItemManager.h"
#include "flags.h"
#include "object.h"
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
        Entity* object = CreateObject(GROUND_ITEM, super->type, super->type2);
        if (object != NULL) {
            object->timer = this->field_0x35;
            object->collisionLayer = this->field_0x36;
            object->x.HALF.HI = this->field_0x38 + gRoomControls.origin_x;
            object->y.HALF.HI = this->field_0x3a + gRoomControls.origin_y;
            object->field_0x86.HWORD = this->field_0x3c;
        }
        DeleteThisEntity();
    }
}
