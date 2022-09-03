/**
 * @file vaati3InsideArmManager.c
 * @ingroup Managers
 *
 * @brief Manages the inside of the arms of Vaati3.
 */
#include "manager/vaati3InsideArmManager.h"
#include "functions.h"
#include "screenTransitions.h"
#include "sound.h"
#include "structures.h"

void sub_0805DBF0(Vaati3InsideArmManager*);
void Vaati3InsideArmManager_Init(Vaati3InsideArmManager*);
void Vaati3InsideArmManager_Action1(Vaati3InsideArmManager*);
void Vaati3InsideArmManager_Action2(Vaati3InsideArmManager*);

void sub_0805DC70(void);

void Vaati3InsideArmManager_Main(Vaati3InsideArmManager* this) {
    static void (*const Vaati3InsideArmManager_Actions[])(Vaati3InsideArmManager*) = {
        Vaati3InsideArmManager_Init,
        Vaati3InsideArmManager_Action1,
        Vaati3InsideArmManager_Action2,
    };
    Vaati3InsideArmManager_Actions[super->action](this);
    sub_0805DBF0(this);
}

void Vaati3InsideArmManager_Init(Vaati3InsideArmManager* this) {
    super->action = 1;
    this->field_0x20 = gRoomTransition.field_0x3d * 0x3c;
}

void Vaati3InsideArmManager_Action1(Vaati3InsideArmManager* this) {
    if (((super->parent)->next == NULL) && (super->action = 2, 0x12d < this->field_0x20)) {
        this->field_0x20 = 0x12d;
    }
}

void Vaati3InsideArmManager_Action2(Vaati3InsideArmManager* this) {
}

void sub_0805DBF0(Vaati3InsideArmManager* this) {
    if (--this->field_0x20 == 0) {
        sub_0805DC70();
    } else {
        if (this->field_0x20 == 0x78) {
            InitScreenShake(120, 2);
        } else if (this->field_0x20 == 0xd2) {
            InitScreenShake(90, 1);
        } else if (this->field_0x20 == 0x12c) {
            InitScreenShake(90, 0);
        }

        if (this->field_0x20 < 0x78) {
            if ((this->field_0x20 & 0xf) == 0) {
                SoundReq(SFX_126);
            }
        } else if (0xd1 >= this->field_0x20) {
            if ((this->field_0x20 & 0x1f) == 0) {
                SoundReq(SFX_126);
            }
        } else if (this->field_0x20 <= 199) {
            if ((this->field_0x20 & 0x3f) == 0) {
                SoundReq(SFX_126);
            }
        }
    }
}

void sub_0805DC70(void) {
    SetInitializationPriority();
    DoExitTransition(&gUnk_0813AC48);
}
