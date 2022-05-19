/**
 * @file flagAndOperatorManager.c
 * @ingroup Managers
 *
 * @brief Sets a flag if all of the flags are set.
 */
#include "manager/flagAndOperatorManager.h"
#include "flags.h"

void FlagAndOperatorManager_Main(FlagAndOperatorManager* this) {
    if (super->action == 0) {
        super->action = 1;
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
