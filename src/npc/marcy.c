#include "entity.h"
#include "functions.h"
#include "flags.h"
#include "textbox.h"

extern u16 gUnk_0810C34C[];

void Marcy(Entity* this) {
    if (this->action == 0) {
        this->action += 1;
        SetDefaultPriority(this, PRIO_MESSAGE);
        sub_0807DD64(this);
    }
    sub_0807DD94(this, NULL);
}

void sub_08062D18(Entity* this, ScriptExecutionContext* context) {
    u8 tmp = 0;
    if ((GetInventoryValue(0x4f) != 0) && (CheckLocalFlag(0x26) == 0)) {
        tmp = 7;
    }
    if ((GetInventoryValue(0x4e) != 0) && (CheckLocalFlag(0x25) == 0)) {
        tmp = 6;
    }
    if ((GetInventoryValue(0x4d) != 0) && (CheckLocalFlag(0x24) == 0)) {
        tmp = 5;
    }
    if ((GetInventoryValue(0x4c) != 0) && (CheckLocalFlag(0x23) == 0)) {
        tmp = 4;
    }
    if ((GetInventoryValue(0x4b) != 0) && (CheckLocalFlag(0x22) == 0)) {
        tmp = 3;
    }
    if ((GetInventoryValue(0x4a) != 0) && (CheckLocalFlag(0x21) == 0)) {
        tmp = 2;
    }
    if ((GetInventoryValue(0x49) != 0) && (CheckLocalFlag(0x20) == 0)) {
        tmp = 1;
    }
    this->type2 = tmp;

    tmp = 0;
    if (CheckFlags(0x1c1f) != 0) {
        tmp = 1;
    } else if (CheckLocalFlag(0x8c) != 0) {
        tmp = 2;
        ClearLocalFlag(0x8c);
    } else if (CheckLocalFlag(0x8b) != 0) {
        tmp = 3;
    }

    MessageNoOverlap(gUnk_0810C34C[tmp], this);
    if (tmp == 0) {
        context->condition = TRUE;
    } else {
        context->condition = FALSE;
    }
}

void sub_08062E14(Entity* this, ScriptExecutionContext* context) {
    SetLocalFlag(0x8b);
}
