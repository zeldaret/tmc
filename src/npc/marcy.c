/**
 * @file marcy.c
 * @ingroup NPCs
 *
 * @brief Marcy NPC
 */
#include "entity.h"
#include "flags.h"
#include "functions.h"
#include "item.h"
#include "message.h"

void Marcy(Entity* this) {
    if (this->action == 0) {
        this->action++;
        SetEntityPriority(this, PRIO_MESSAGE);
        sub_0807DD64(this);
    }
    ExecuteScriptAndHandleAnimation(this, NULL);
}

void sub_08062D18(Entity* this, ScriptExecutionContext* context) {
    static const u16 msgIndices[] = { TEXT_INDEX(TEXT_POST, 0x4),
                                      TEXT_INDEX(TEXT_POST, 0xb),
                                      TEXT_INDEX(TEXT_POST, 0x9),
                                      TEXT_INDEX(TEXT_POST, 0xa),
                                      0,
                                      0,
                                      0,
                                      0,
                                      0,
                                      0 };
    u8 tmp = 0;
    if ((GetInventoryValue(ITEM_SKILL_PERIL_BEAM) != 0) && (CheckLocalFlag(0x26) == 0)) {
        tmp = 7;
    }
    if ((GetInventoryValue(ITEM_SKILL_DOWN_THRUST) != 0) && (CheckLocalFlag(0x25) == 0)) {
        tmp = 6;
    }
    if ((GetInventoryValue(ITEM_SKILL_GREAT_SPIN) != 0) && (CheckLocalFlag(0x24) == 0)) {
        tmp = 5;
    }
    if ((GetInventoryValue(ITEM_SKILL_SWORD_BEAM) != 0) && (CheckLocalFlag(0x23) == 0)) {
        tmp = 4;
    }
    if ((GetInventoryValue(ITEM_SKILL_ROCK_BREAKER) != 0) && (CheckLocalFlag(0x22) == 0)) {
        tmp = 3;
    }
    if ((GetInventoryValue(ITEM_SKILL_DASH_ATTACK) != 0) && (CheckLocalFlag(0x21) == 0)) {
        tmp = 2;
    }
    if ((GetInventoryValue(ITEM_SKILL_ROLL_ATTACK) != 0) && (CheckLocalFlag(0x20) == 0)) {
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

    MessageNoOverlap(msgIndices[tmp], this);
    if (tmp == 0) {
        context->condition = TRUE;
    } else {
        context->condition = FALSE;
    }
}

void sub_08062E14(Entity* this, ScriptExecutionContext* context) {
    SetLocalFlag(0x8b);
}
