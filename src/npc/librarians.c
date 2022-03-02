#include "entity.h"
#include "script.h"
#include "functions.h"
#include "flags.h"
#include "message.h"
#include "sound.h"
#include "item.h"

extern u16 gUnk_08113078[];

extern void sub_08095BE0(Entity*, u32);

ASM_FUNC("asm/non_matching/librarians/Librarians.inc", void Librarians(Entity* this))

ASM_FUNC("asm/non_matching/librarians/sub_0806BA34.inc",
         void sub_0806BA34(Entity* this, ScriptExecutionContext* context))

void sub_0806BB1C(Entity* this, ScriptExecutionContext* context) {
    s32 item = 0xffffffff;
    if (GetInventoryValue(ITEM_QST_BOOK1) == 1) {
        item = ITEM_QST_BOOK1;
    } else if (GetInventoryValue(ITEM_QST_BOOK2) == 1) {
        item = ITEM_QST_BOOK2;
    } else {
        if (GetInventoryValue(ITEM_QST_BOOK3) == 1) {
            item = ITEM_QST_BOOK3;
        }
        if (item < 1) {
            return;
        }
    }
    if (context->intVariable == 0) {
        sub_08095BE0(this, item);
        InitializeAnimation(this, 0xc);
        SoundReq(SFX_TASK_COMPLETE);
    } else {
        SetInventoryValue(item, 2);
    }
}

void sub_0806BB7C(Entity* this, ScriptExecutionContext* context) {
    context->condition = 0;
    if ((GetInventoryValue(ITEM_QST_BOOK1) == 2) && (GetInventoryValue(ITEM_QST_BOOK2) == 2) &&
        (GetInventoryValue(ITEM_QST_BOOK3) == 2)) {
        SetLocalFlag(0x73);
        context->condition = 1;
    }
}

void sub_0806BBB0(Entity* this) {
    u32 tmp;

    if (GetInventoryValue(ITEM_FLIPPERS) == 0) {
        if (CheckGlobalFlag(0x29)) {
            tmp = 1;
        } else {
            tmp = 0;
        }
    } else {
        tmp = 2;
    }
    MessageNoOverlap(gUnk_08113078[tmp], this);
}
