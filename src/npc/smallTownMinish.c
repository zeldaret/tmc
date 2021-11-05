#include "global.h"
#include "entity.h"
#include "player.h"
#include "script.h"
#include "save.h"
#include "functions.h"

extern Hitbox gUnk_081142FC;
extern void sub_08078850(Entity*, u32, u32, u32*);
extern u32 gUnk_08114304;

extern Dialog gUnk_08114308[];

void SmallTownMinish(Entity* this) {
    if (this->action == 0) {
        this->action += 1;
        this->hitbox = &gUnk_081142FC;
        sub_0807DD50(this);
        sub_08078850(this, 1, 0, &gUnk_08114304);
    } else {
        sub_0807DD94(this, NULL);
    }
    if ((gPlayerState.flags & 0x80) != 0) {
        this->spriteSettings.b.draw = 1;
    } else {
        this->spriteSettings.b.draw = 0;
    }
}

void sub_0806E2DC(Entity* this) {
    s32 dialog = gSave.unk8 - 2;
    if (dialog < 0) {
        dialog = 0;
    }
    ShowNPCDialogue(this, gUnk_08114308 + this->type2 * 8 + dialog);
}
