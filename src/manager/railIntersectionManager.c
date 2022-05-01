/**
 * @file railIntersectionManager.c
 * @ingroup Managers
 *
 * @brief Change the rail next to the rotating rail so that it connects.
 */
#include "manager/railIntersectionManager.h"
#include "flags.h"
#include "room.h"

void sub_0805B778(RailIntersectionManager*);
void RailIntersectionManager_Init(RailIntersectionManager*);
void RailIntersectionManager_Action1(RailIntersectionManager*);

void RailIntersectionManager_Main(RailIntersectionManager* this) {
    static void (*const RailIntersectionManager_Actions[])(RailIntersectionManager*) = {
        RailIntersectionManager_Init,
        RailIntersectionManager_Action1,
    };
    RailIntersectionManager_Actions[super->action](this);
}

void RailIntersectionManager_Init(RailIntersectionManager* this) {
    if (CheckFlags(this->flags)) {
        super->type2 = 1;
    }
    super->action = 1;
    this->field_0x38 = (this->field_0x38 >> 4 & 0x3fU) | (((this->field_0x3a << 0x10) >> 0x14 & 0x3fU) << 6);
    sub_0805B778(this);
}

void RailIntersectionManager_Action1(RailIntersectionManager* this) {
    if (CheckFlags(this->flags)) {
        if (super->type2 == 0) {
            super->type2 = 1;
            sub_0805B778(this);
        }
    } else {
        if (super->type2 == 1) {
            super->type2 = 0;
            sub_0805B778(this);
        }
    }
}

void sub_0805B778(RailIntersectionManager* this) {
    static const u16 gUnk_08108C9C[] = { 0x358, 0x359, 0x356, 0x35a, 0x35a, 0x357 };
    SetTileType(gUnk_08108C9C[super->type * 2 + super->type2], this->field_0x38, this->field_0x36);
}
