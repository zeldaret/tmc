/**
 * @file angryStatueManager.c
 * @ingroup Managers
 *
 * @brief Manages the synchronized shooting and destruction of the AngryStatues.
 */
#include "manager/angryStatueManager.h"
#include "flags.h"
#include "functions.h"
#include "object.h"
#include "room.h"

void sub_0805D11C(AngryStatueManager*);
void AngryStatueManager_Init(AngryStatueManager*);
void AngryStatueManager_Action1(AngryStatueManager*);
void AngryStatueManager_Action2(AngryStatueManager*);

void AngryStatueManager_Main(AngryStatueManager* this) {
    static void (*const AngryStatueManager_Actions[])(AngryStatueManager*) = {
        AngryStatueManager_Init,
        AngryStatueManager_Action1,
        AngryStatueManager_Action2,
    };
    AngryStatueManager_Actions[super->action](this);
}

void AngryStatueManager_Init(AngryStatueManager* this) {
    u32 counter;
    u16* objectData;
    Entity* object;
    if (CheckFlags(this->field_0x3e)) {
        DeleteThisEntity();
    }
    if (gEntCount < 0x44) {
        objectData = GetCurrentRoomProperty(super->type);
        counter = 0;
        while (counter < 4) {
            object = CreateObject(ANGRY_STATUE, objectData[2], counter);
            object->x.HALF.HI = objectData[0] + gRoomControls.origin_x;
            object->y.HALF.HI = objectData[1] + gRoomControls.origin_y;
            object->parent = (Entity*)this;
            ResolveCollisionLayer(object);
            this->field_0x20[counter] = object;
            counter++;
            objectData += 3;
        }
        super->action = 1;
        super->subtimer = 60;
        this->field_0x36 = 0;
    }
}

void AngryStatueManager_Action1(AngryStatueManager* this) {
    if (--super->subtimer == 0) {
        super->subtimer = 180;
    }
    if (this->field_0x36 == 0xf) {
        super->action = 2;
        super->timer = 8;
        SoundReq(SFX_SECRET);
        sub_0805D11C(this);
    }
    this->field_0x36 = 0;
}

void AngryStatueManager_Action2(AngryStatueManager* this) {
    if (--super->timer == 0) {
        SetFlag(this->field_0x3e);
        DeleteManager(super);
    }
}

void sub_0805D11C(AngryStatueManager* this) {
    Entity** entity_iterator;
    u32 counter;
    for (counter = 0; counter < 4; counter++) {
        Entity* entity;
        entity_iterator = &this->field_0x20[counter];
        entity = *entity_iterator;
        *entity_iterator = NULL;
        RestorePrevTileEntity(COORD_TO_TILE(entity), entity->collisionLayer);
        DeleteEntity(entity);
    }
}
