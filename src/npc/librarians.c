/**
 * @file librarians.c
 * @ingroup NPCs
 *
 * @brief Librarians NPC
 */
#include "entity.h"
#include "flags.h"
#include "functions.h"
#include "item.h"
#include "message.h"
#include "script.h"
#include "sound.h"

extern void sub_08095BE0(Entity*, u32);

extern const u8 gUnk_08114F30[];

void Librarians(Entity* this) {
    if (this->action == 0) {
        this->action = 1;
        InitScriptForNPC(this);
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
    u32 message = TEXT_INDEX(TEXT_LIBRARY, 0x12);
    context->condition = 0;
    if (CheckLocalFlag(0x73)) {
        message = TEXT_INDEX(TEXT_LIBRARY, 0x13);
    } else {
        gotBook1 = GetInventoryValue(ITEM_QST_BOOK1);
        gotBook2 = GetInventoryValue(ITEM_QST_BOOK2);
        gotBook3 = GetInventoryValue(ITEM_QST_BOOK3);
        if (gotBook1 == 1) {
            message = TEXT_INDEX(TEXT_LIBRARY, 0x6);
            context->condition = 1;
            SetLocalFlag(0x6b);
            SetLocalFlag(0x6a);
        } else if (gotBook2 == 1) {
            message = TEXT_INDEX(TEXT_LIBRARY, 0x7);
            context->condition = 1;
            SetLocalFlag(0x6b);
            SetLocalFlag(0x6a);
        } else if (gotBook3 == 1) {
            message = TEXT_INDEX(TEXT_LIBRARY, 0x8);
            context->condition = 1;
            SetLocalFlag(0x6b);
            SetLocalFlag(0x6a);
        } else {
            if (CheckLocalFlag(0x6a)) {
                if (!CheckLocalFlag(0x6b)) {
                    message = TEXT_INDEX(TEXT_LIBRARY, 0x1);
                    SetLocalFlag(0x6b);
                } else {
                    if (gotBook1 == 0) {
                        message = TEXT_INDEX(TEXT_LIBRARY, 0x2);
                        SetLocalFlag(0x6b);
                    } else if (gotBook2 == 0) {
                        message = TEXT_INDEX(TEXT_LIBRARY, 0x3);
                        SetLocalFlag(0x6d);
                    } else if (gotBook3 == 0) {
                        message = TEXT_INDEX(TEXT_LIBRARY, 0x4);
                        SetLocalFlag(0x70);
                    }
                }
            }
        }
    }
    MessageNoOverlap(message, this);
}

void sub_0806BB1C(Entity* this, ScriptExecutionContext* context) {
    s32 item = -1;
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
    static const u16 messageIndices[] = {
        TEXT_INDEX(TEXT_LIBRARY, 0xf),
        TEXT_INDEX(TEXT_LIBRARY, 0x10),
        TEXT_INDEX(TEXT_LIBRARY, 0x12),
    };
    u32 tmp;

    if (GetInventoryValue(ITEM_FLIPPERS) == 0) {
        if (CheckGlobalFlag(MIZUKAKI_START)) {
            tmp = 1;
        } else {
            tmp = 0;
        }
    } else {
        tmp = 2;
    }
    MessageNoOverlap(messageIndices[tmp], this);
}
