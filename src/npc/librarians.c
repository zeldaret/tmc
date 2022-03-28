#include "entity.h"
#include "script.h"
#include "functions.h"
#include "flags.h"
#include "message.h"
#include "sound.h"
#include "item.h"

extern u16 gUnk_08113078[];

extern void sub_08095BE0(Entity*, u32);

extern const u8 gUnk_08114F30[];

void Librarians(Entity* this) {
    if (this->action == 0) {
        this->action = 1;
        sub_0807DD50(this);
        this->spriteRendering.b3 = gUnk_08114F30[this->spriteRendering.b3];
    }
    ExecuteScriptForEntity(this, NULL);
    HandleEntity0x82Actions(this);
    GetNextFrame(this);
}

void sub_0806BA34(Entity* this, ScriptExecutionContext* context) {
    u32 gotBook1;
    u32 gotBook2;
    u32 gotBook3;
    u32 message = 0x4912;
    context->condition = 0;
    if (CheckLocalFlag(0x73)) {
        message = 0x4913;
    } else {
        gotBook1 = GetInventoryValue(ITEM_QST_BOOK1);
        gotBook2 = GetInventoryValue(ITEM_QST_BOOK2);
        gotBook3 = GetInventoryValue(ITEM_QST_BOOK3);
        if (gotBook1 == 1) {
            message = 0x4906;
            context->condition = 1;
            SetLocalFlag(0x6b);
            SetLocalFlag(0x6a);
        } else if (gotBook2 == 1) {
            message = 0x4907;
            context->condition = 1;
            SetLocalFlag(0x6b);
            SetLocalFlag(0x6a);
        } else if (gotBook3 == 1) {
            message = 0x4908;
            context->condition = 1;
            SetLocalFlag(0x6b);
            SetLocalFlag(0x6a);
        } else {
            if (CheckLocalFlag(0x6a)) {
                if (!CheckLocalFlag(0x6b)) {
                    message = 0x4901;
                    SetLocalFlag(0x6b);
                } else {
                    if (gotBook1 == 0) {
                        message = 0x4902;
                        SetLocalFlag(0x6b);
                    } else if (gotBook2 == 0) {
                        message = 0x4903;
                        SetLocalFlag(0x6d);
                    } else if (gotBook3 == 0) {
                        message = 0x4904;
                        SetLocalFlag(0x70);
                    }
                }
            }
        }
    }
    MessageNoOverlap(message, this);
}

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
