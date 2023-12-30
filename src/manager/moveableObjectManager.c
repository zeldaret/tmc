/**
 * @file moveableObjectManager.c
 * @ingroup Managers
 *
 * @brief Create object at different place depending on if the flag is set.
 *
 * E.g. for pushable rock.
 */
#include "manager/moveableObjectManager.h"
#include "flags.h"
#include "room.h"

void MoveableObjectManager_Main(MoveableObjectManager* this) {
    Entity* object = CreateObject(super->timer, super->type, super->type2);
    if (!object)
        return;
    ((GenericEntity*)object)->field_0x86.HWORD = this->flags;
    if (CheckFlags(this->flags)) {
        object->x.HALF.HI = this->unk_36 | (this->unk_37 & 0xF) << 8; // r1
        object->y.HALF.HI = this->unk_3c & 0xFFF;
        object->collisionLayer = this->unk_3c >> 0xC;
    } else {
        object->x.HALF.HI = this->unk_38;
        object->y.HALF.HI = this->unk_3a;
        object->collisionLayer = this->unk_37 >> 4;
    }
    object->x.HALF.HI += gRoomControls.origin_x;
    object->y.HALF.HI += gRoomControls.origin_y;
    DeleteManager(super);
}
