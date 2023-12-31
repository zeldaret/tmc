/**
 * @file smallTownMinish.c
 * @ingroup NPCs
 *
 * @brief Small Town Minish NPC
 */
#include "entity.h"
#include "functions.h"
#include "item.h"
#include "npc.h"
#include "player.h"
#include "save.h"
#include "script.h"

void SmallTownMinish(Entity* this) {
    static const Hitbox gUnk_081142FC = { -2, 1, { 0, 0, 0, 0 }, 6, 6 };
    static const Rect gUnk_08114304 = { -2, 1, 6, 6 };
    if (this->action == 0) {
        this->action++;
        this->hitbox = (Hitbox*)&gUnk_081142FC;
        InitScriptForNPC(this);
        SetInteractableObjectCollision(this, 1, 0, &gUnk_08114304);
    } else {
        ExecuteScriptAndHandleAnimation(this, NULL);
    }
    if ((gPlayerState.flags & PL_MINISH) != 0) {
        this->spriteSettings.draw = 1;
    } else {
        this->spriteSettings.draw = 0;
    }
}

void sub_0806E2DC(Entity* this) {
    static const Dialog gUnk_08114308[][8] = {
        { { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN2, 0x39) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN2, 0x39) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN2, 0x39) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN3, 0x38) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN4, 0x37) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN5, 0x39) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN6, 0x2c) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN6, 0x2c) } } },
        { { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN2, 0x3a) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN2, 0x3a) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN2, 0x3a) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN3, 0x39) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN4, 0x38) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN5, 0x3a) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN6, 0x2d) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN6, 0x2d) } } },
        { { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN2, 0x3b) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN2, 0x3b) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN2, 0x3b) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN3, 0x3a) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN4, 0x39) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN5, 0x3b) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN6, 0x2e) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN6, 0x2e) } } },
        { { ITEM_POWER_BRACELETS,
            DIALOG_INVENTORY,
            DIALOG_CHECK_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN3, 0x3c), TEXT_INDEX(TEXT_TOWN3, 0x3b) } },
          { ITEM_POWER_BRACELETS,
            DIALOG_INVENTORY,
            DIALOG_CHECK_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN3, 0x3c), TEXT_INDEX(TEXT_TOWN3, 0x3b) } },
          { ITEM_POWER_BRACELETS,
            DIALOG_INVENTORY,
            DIALOG_CHECK_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN3, 0x3c), TEXT_INDEX(TEXT_TOWN3, 0x3b) } },
          { ITEM_POWER_BRACELETS,
            DIALOG_INVENTORY,
            DIALOG_CHECK_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN3, 0x3c), TEXT_INDEX(TEXT_TOWN3, 0x3b) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN4, 0x3a) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN5, 0x3c) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN6, 0x2f) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN6, 0x2f) } } },
        { { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN4, 0x3b) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN4, 0x3b) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN4, 0x3b) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN4, 0x3b) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN4, 0x3b) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN5, 0x3d) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN6, 0x30) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN6, 0x30) } } },
        { { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN8, 0x1c) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN8, 0x1c) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN8, 0x1c) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN8, 0x1c) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN8, 0x1c) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN8, 0x1c) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN8, 0x1c) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN8, 0x1c) } } },
        { { ITEM_POWER_BRACELETS,
            DIALOG_INVENTORY,
            DIALOG_CHECK_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN8, 0x1e), TEXT_INDEX(TEXT_TOWN8, 0x1d) } },
          { ITEM_POWER_BRACELETS,
            DIALOG_INVENTORY,
            DIALOG_CHECK_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN8, 0x1e), TEXT_INDEX(TEXT_TOWN8, 0x1d) } },
          { ITEM_POWER_BRACELETS,
            DIALOG_INVENTORY,
            DIALOG_CHECK_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN8, 0x1e), TEXT_INDEX(TEXT_TOWN8, 0x1d) } },
          { ITEM_POWER_BRACELETS,
            DIALOG_INVENTORY,
            DIALOG_CHECK_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN8, 0x1e), TEXT_INDEX(TEXT_TOWN8, 0x1d) } },
          { ITEM_POWER_BRACELETS,
            DIALOG_INVENTORY,
            DIALOG_CHECK_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN8, 0x1e), TEXT_INDEX(TEXT_TOWN8, 0x1d) } },
          { ITEM_POWER_BRACELETS,
            DIALOG_INVENTORY,
            DIALOG_CHECK_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN8, 0x1e), TEXT_INDEX(TEXT_TOWN8, 0x1d) } },
          { ITEM_POWER_BRACELETS,
            DIALOG_INVENTORY,
            DIALOG_CHECK_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN8, 0x1e), TEXT_INDEX(TEXT_TOWN8, 0x1d) } },
          { ITEM_POWER_BRACELETS,
            DIALOG_INVENTORY,
            DIALOG_CHECK_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN8, 0x1e), TEXT_INDEX(TEXT_TOWN8, 0x1d) } } }
    };
    s32 dialog = gSave.global_progress - 2;
    if (dialog < 0) {
        dialog = 0;
    }
    ShowNPCDialogue(this, &gUnk_08114308[this->type2][dialog]);
}
