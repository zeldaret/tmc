#include "global.h"
#include "manager.h"
#include "flags.h"

void sub_080599B8(Manager11* this) {
    if (!this->manager.action) {
        this->manager.action = 1;
        if (CheckFlags(this->unk_3c)) {
            DeleteThisEntity();
        }
    } else {
        if (CheckFlags(this->unk_3e)) {
            SetFlag(this->unk_3c);
            DeleteThisEntity();
        }
    }
}
