/**
 * @file cameraTargetManager.c
 * @ingroup Managers
 *
 * @brief Creates a camera target object when a flag is set.
 */
#include "manager/cameraTargetManager.h"
#include "flags.h"
#include "object.h"
#include "room.h"

void CameraTargetManager_Init(CameraTargetManager*);
void CameraTargetManager_Action1(CameraTargetManager*);
void CameraTargetManager_Action2(CameraTargetManager*);
void CameraTargetManager_Action3(CameraTargetManager*);

void CameraTargetManager_Main(CameraTargetManager* this) {
    static void (*const CameraTargetManager_Actions[])(CameraTargetManager*) = {
        CameraTargetManager_Init,
        CameraTargetManager_Action1,
        CameraTargetManager_Action2,
        CameraTargetManager_Action3,
    };
    CameraTargetManager_Actions[super->action](this);
}

void CameraTargetManager_Init(CameraTargetManager* this) {
    if (CheckFlags(this->field_0x3c) != 0) {
        DeleteThisEntity();
    }
    if (CheckFlags(this->field_0x3e) != 0) {
        SetFlag(this->field_0x3c);
        DeleteThisEntity();
    }
    super->action = 1;
}

void CameraTargetManager_Action1(CameraTargetManager* this) {
    Entity* object;

    if (CheckFlags(this->field_0x3e) != 0) {
        super->action = 2;
        super->timer = this->field_0x35;
        if (super->timer == 0) {
            super->timer = 30;
        }
        super->parent = gRoomControls.camera_target;
        object = CreateObject(CUTSCENE_ORCHESTRATOR, 0, 0);
        if (object != NULL) {
            object->x.HALF.HI = this->field_0x38 + gRoomControls.origin_x;
            object->y.HALF.HI = this->field_0x3a + gRoomControls.origin_y;
            super->child = object;
            gRoomControls.camera_target = object;
            RequestPriorityDuration(object, 30);
        }
    }
}

void CameraTargetManager_Action2(CameraTargetManager* this) {
    RequestPriorityDuration(0, 8);
    if ((gRoomControls.scroll_flags & 4) == 0 && --super->timer == 0) {
        super->action = 3;
        SetFlag(this->field_0x3c);
        if (this->field_0x36 == 0) {
            this->field_0x36 = 1;
        }
    }
}

void CameraTargetManager_Action3(CameraTargetManager* this) {
    RequestPriorityDuration(0, 8);
    if (this->field_0x36 != 0) {
        if (--this->field_0x36 == 0) {
            gRoomControls.camera_target = super->parent;
        }
    } else {
        if ((gRoomControls.scroll_flags & 4) == 0) {
            Entity* entity = super->child;
            if (entity != NULL) {
                DeleteEntity(entity);
            }
            DeleteThisEntity();
        }
    }
}
