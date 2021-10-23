#include "manager.h"
#include "structures.h"
#include "functions.h"
#include "audio.h"

typedef struct {
    Manager manager;
    u16 field_0x20;
} Manager34;

extern void (*const gUnk_08108D8C[])(Manager34*);
void sub_0805DBF0(Manager34*);

extern ScreenTransitionData gUnk_0813AC48;

void sub_0805DC70(void);

void Manager34_Main(Manager34* this) {
    gUnk_08108D8C[this->manager.action](this);
    sub_0805DBF0(this);
}

void sub_0805DBB4(Manager34* this) {
    this->manager.action = 1;
    this->field_0x20 = gScreenTransition.field_0x3d * 0x3c;
}

void sub_0805DBCC(Manager34* this) {
    if (((this->manager.parent)->next == NULL) && (this->manager.action = 2, 0x12d < this->field_0x20)) {
        this->field_0x20 = 0x12d;
    }
}

void nullsub_498(Manager34* this) {
}

void sub_0805DBF0(Manager34* this) {
    if (--this->field_0x20 == 0) {
        sub_0805DC70();
    } else {
        if (this->field_0x20 == 0x78) {
            sub_08080964(0x78, 2);
        } else if (this->field_0x20 == 0xd2) {
            sub_08080964(0x5a, 1);
        } else if (this->field_0x20 == 0x12c) {
            sub_08080964(0x5a, 0);
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
    sub_0805E5A8();
    DoExitTransition(&gUnk_0813AC48);
}
