#include "global.h"
#include "entity.h"
#include "player.h"
#include "script.h"
#include "save.h"
#include "npc.h"
#include "functions.h"
#include "item.h"

void SmallTownMinish(Entity* this) {
    static const Hitbox gUnk_081142FC = { -2, 1, { 0, 0, 0, 0 }, 6, 6 };
    static const u8 gUnk_08114304[] = { -2, 1, 6, 6 };
    if (this->action == 0) {
        this->action += 1;
        this->hitbox = (Hitbox*)&gUnk_081142FC;
        sub_0807DD50(this);
        sub_08078850(this, 1, 0, gUnk_08114304);
    } else {
        sub_0807DD94(this, NULL);
    }
    if ((gPlayerState.flags & PL_MINISH) != 0) {
        this->spriteSettings.draw = 1;
    } else {
        this->spriteSettings.draw = 0;
    }
}

void sub_0806E2DC(Entity* this) {
    static const Dialog gUnk_08114308[][8] = {
        { { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, 0x3539 } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, 0x3539 } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, 0x3539 } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, 0x3638 } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, 0x3737 } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, 0x3839 } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, 0x392c } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, 0x392c } } },
        { { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, 0x353a } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, 0x353a } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, 0x353a } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, 0x3639 } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, 0x3738 } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, 0x383a } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, 0x392d } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, 0x392d } } },
        { { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, 0x353b } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, 0x353b } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, 0x353b } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, 0x363a } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, 0x3739 } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, 0x383b } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, 0x392e } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, 0x392e } } },
        { { ITEM_POWER_BRACELETS, DIALOG_INVENTORY, DIALOG_CHECK_FLAG, 1, { 0x363c, 0x363b } },
          { ITEM_POWER_BRACELETS, DIALOG_INVENTORY, DIALOG_CHECK_FLAG, 1, { 0x363c, 0x363b } },
          { ITEM_POWER_BRACELETS, DIALOG_INVENTORY, DIALOG_CHECK_FLAG, 1, { 0x363c, 0x363b } },
          { ITEM_POWER_BRACELETS, DIALOG_INVENTORY, DIALOG_CHECK_FLAG, 1, { 0x363c, 0x363b } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, 0x373a } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, 0x383c } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, 0x392f } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, 0x392f } } },
        { { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, 0x373b } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, 0x373b } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, 0x373b } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, 0x373b } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, 0x373b } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, 0x383d } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, 0x3930 } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, 0x3930 } } },
        { { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, 0x4e1c } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, 0x4e1c } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, 0x4e1c } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, 0x4e1c } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, 0x4e1c } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, 0x4e1c } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, 0x4e1c } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, 0x4e1c } } },
        { { ITEM_POWER_BRACELETS, DIALOG_INVENTORY, DIALOG_CHECK_FLAG, 1, { 0x4e1e, 0x4e1d } },
          { ITEM_POWER_BRACELETS, DIALOG_INVENTORY, DIALOG_CHECK_FLAG, 1, { 0x4e1e, 0x4e1d } },
          { ITEM_POWER_BRACELETS, DIALOG_INVENTORY, DIALOG_CHECK_FLAG, 1, { 0x4e1e, 0x4e1d } },
          { ITEM_POWER_BRACELETS, DIALOG_INVENTORY, DIALOG_CHECK_FLAG, 1, { 0x4e1e, 0x4e1d } },
          { ITEM_POWER_BRACELETS, DIALOG_INVENTORY, DIALOG_CHECK_FLAG, 1, { 0x4e1e, 0x4e1d } },
          { ITEM_POWER_BRACELETS, DIALOG_INVENTORY, DIALOG_CHECK_FLAG, 1, { 0x4e1e, 0x4e1d } },
          { ITEM_POWER_BRACELETS, DIALOG_INVENTORY, DIALOG_CHECK_FLAG, 1, { 0x4e1e, 0x4e1d } },
          { ITEM_POWER_BRACELETS, DIALOG_INVENTORY, DIALOG_CHECK_FLAG, 1, { 0x4e1e, 0x4e1d } } }
    };
    s32 dialog = gSave.global_progress - 2;
    if (dialog < 0) {
        dialog = 0;
    }
    ShowNPCDialogue(this, &gUnk_08114308[this->type2][dialog]);
}
