#include "entity.h"
#include "script.h"
#include "functions.h"
#include "flags.h"
#include "textbox.h"
#include "audio.h"

extern u16 gUnk_08113078[];

extern void sub_08095BE0(Entity*, u32);

ASM_FUNC("asm/non_matching/librarians/Librarians.inc", void Librarians(Entity* this))

ASM_FUNC("asm/non_matching/librarians/sub_0806BA34.inc",
         void sub_0806BA34(Entity* this, ScriptExecutionContext* context))

void sub_0806BB1C(Entity* this, ScriptExecutionContext* context) {
    s32 tmp;

    tmp = 0xffffffff;
    if (GetInventoryValue(0x39) == 1) {
        tmp = 0x39;
    } else if (GetInventoryValue(0x3a) == 1) {
        tmp = 0x3a;
    } else {
        if (GetInventoryValue(0x3b) == 1) {
            tmp = 0x3b;
        }
        if (tmp < 1) {
            return;
        }
    }
    if (context->intVariable == 0) {
        sub_08095BE0(this, tmp);
        InitializeAnimation(this, 0xc);
        SoundReq(SFX_TASK_COMPLETE);
    } else {
        sub_0807CAA0(tmp, 2);
    }
}

void sub_0806BB7C(Entity* this, ScriptExecutionContext* context) {
    context->condition = 0;
    if ((GetInventoryValue(0x39) == 2) && (GetInventoryValue(0x3a) == 2) && (GetInventoryValue(0x3b) == 2)) {
        SetLocalFlag(0x73);
        context->condition = 1;
    }
}

void sub_0806BBB0(Entity* this) {
    u32 flag;
    u32 tmp;

    if (GetInventoryValue(0x46) == 0) {
        flag = CheckGlobalFlag(0x29);
        tmp = BOOLCAST(flag);
    } else {
        tmp = 2;
    }
    MessageNoOverlap(gUnk_08113078[tmp], this);
}
