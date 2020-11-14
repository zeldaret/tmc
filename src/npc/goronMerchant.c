#include "global.h"
#include "entity.h"
#include "functions.h"
#include "structures.h"
#include "textbox.h"
#include "room.h"
#include "flags.h"

extern u32 sub_080696BC(Entity*);

extern void (*const gUnk_08111B88[])(Entity*);
extern void (*const gUnk_08111B98[])(Entity*);

extern u16 gUnk_08111BA0[];

void GoronMerchant(Entity* this) {
    if ((this->flags & 2) != 0) {
        gUnk_08111B98[this->action](this);
    } else {
        gUnk_08111B88[this->action](this);
        sub_0806ED78(this);
    }
}

void sub_08069584(Entity* this) {
    if (gScreenTransition.field_0x24[8] != 0) {
        this->action = 3;
    } else {
        this->action = 1;
    }
    InitAnimationForceUpdate(this, 2);
}

void sub_080695AC(Entity* this) {
    s32 iVar2;

    if (++this->field_0xf > 0x10) {
        this->field_0xf = 0;
        iVar2 = sub_0806ED9C(this, 0x28, 0x28);
        if (iVar2 > -1) {
            this->animationState = iVar2;
        }
    }
    if (this->animIndex != this->animationState) {
        InitAnimationForceUpdate(this, this->animationState);
    }
}

void sub_080695E8(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if ((gTextBox.doTextBox & 0x7f) == 0) {
        this->action = 1;
        this->interactType = gTextBox.doTextBox & 0x7f;
        sub_0805E584(this);
        InitAnimationForceUpdate(this, this->animationState);
    }
}

void sub_0806961C(Entity* this) {
    if (gScreenTransition.field_0x24[8] == 2) {
        UpdateAnimationSingleFrame(this);
    }
    sub_0806FD3C(this);
}

void sub_0806963C(Entity* this) {
    this->action = 1;
    this->spriteSettings.b.draw = TRUE;
    sub_0807DD50(this);
}

void sub_08069654(Entity* this) {
    sub_0807DD94(this, 0);
}

void sub_08069660(Entity* this) {
    u32 uVar1;

    TextboxNoOverlap(0x2c1c, this);
    gTextBox.field_0x10 = (u16)sub_080696BC(this);
}

void sub_08069684(void) {
    Manager* mgr;

    if (FindEntityInListBySubtype(9, 0x31, 8) == NULL) {
        mgr = GetEmptyManager();
        if (mgr != NULL) {
            mgr->type = 9;
            mgr->subtype = 0x31;
            AppendEntityToList(mgr, 8);
        }
    }
}

void sub_080696B0(void) {
    gRoomVars.itemForSaleIndex = 0;
}

u32 sub_080696BC(Entity* this) {
    u32 uVar1;
    u32 temp;
    u32 iVar3;
    s32 temp2;

    temp2 = gRoomVars.field_0x7;
    if (temp2 > 0x70) {
        iVar3 = 1;
    } else {
        iVar3 = 0;
    }
    if (temp2 > 0x72) {
        iVar3 = 2;
    }

    temp = CheckGlobalFlag(0x3e);
    uVar1 = (-temp | temp) >> 0x1f;

    if (CheckGlobalFlag(0x3f)) {
        uVar1 = 2;
    }
    if (CheckGlobalFlag(0x40)) {
        uVar1 = 3;
    }
    if (CheckGlobalFlag(0x41)) {
        uVar1 = 4;
    }
    return gUnk_08111BA0[uVar1 * 3 + iVar3];
}
