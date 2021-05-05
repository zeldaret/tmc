#include "global.h"
#include "entity.h"
#include "functions.h"
#include "structures.h"
#include "textbox.h"
#include "room.h"
#include "flags.h"
#include "script.h"
#include "save.h"

extern u32 GoronMerchant_GetSalePrice(Entity*);

extern void (*const gUnk_08111B88[])(Entity*);
extern void (*const gUnk_08111B98[])(Entity*);

const u16 GoronMerchant_KinstonePrices[];

extern u32 sub_0801E7D0(u32);

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
    sub_0807DD94(this, NULL);
}

void sub_08069660(Entity* this) {
    u32 uVar1;

    TextboxNoOverlap(0x2c1c, this);
    gTextBox.field_0x10 = (u16)GoronMerchant_GetSalePrice(this);
}

void sub_08069684(void) {
    Manager* mgr;

    if (FindEntityByID(9, 0x31, 8) == NULL) {
        mgr = GetEmptyManager();
        if (mgr != NULL) {
            mgr->type = 9;
            mgr->subtype = 0x31;
            AppendEntityToList((Entity*)mgr, 8);
        }
    }
}

void sub_080696B0(void) {
    gRoomVars.itemForSaleIndex = 0;
}

u32 GoronMerchant_GetSalePrice(Entity* this) {
    u32 restockCount;
    u32 temp;
    u32 kinstoneType;
    s32 itemForSale;

    itemForSale = gRoomVars.field_0x7;
    if (itemForSale > 0x70) {
        kinstoneType = 1;
    } else {
        kinstoneType = 0;
    }
    if (itemForSale > 0x72) {
        kinstoneType = 2;
    }

    temp = CheckGlobalFlag(GORON_KAKERA_LV2);
    restockCount = BOOLCAST(temp);

    if (CheckGlobalFlag(GORON_KAKERA_LV3)) {
        restockCount = 2;
    }
    if (CheckGlobalFlag(GORON_KAKERA_LV4)) {
        restockCount = 3;
    }
    if (CheckGlobalFlag(GORON_KAKERA_LV5)) {
        restockCount = 4;
    }
    return GoronMerchant_KinstonePrices[restockCount * 3 + kinstoneType];
}

void GoronMerchant_TryToBuyKinstone(Entity* this, ScriptExecutionContext* context) {
    s32 salePrice = GoronMerchant_GetSalePrice(this);
    if (salePrice <= gSave.stats.rupees) {
        if (sub_0801E7D0(gRoomVars.field_0x7) < 99) {
            ModRupees(-salePrice);
            sub_080A7C18(0x5c, gRoomVars.field_0x7, 0);
            gRoomVars.itemForSaleIndex = 0;
            gRoomVars.field_0x7 = 0;
            context->condition = 1;
        } else {
            TextboxNoOverlap(0x2c1f, this);
            context->condition = 0;
        }
    } else {
        TextboxNoOverlap(0x2c1e, this);
        context->condition = 0;
    }
    gActiveScriptInfo.flags = gActiveScriptInfo.flags | 1;
}

void (*const gUnk_08111B88[])(Entity*) = {
    sub_08069584,
    sub_080695AC,
    sub_080695E8,
    sub_0806961C,
};
void (*const gUnk_08111B98[])(Entity*) = {
    sub_0806963C,
    sub_08069654,
};

const u16 GoronMerchant_KinstonePrices[] = {
    300,
    200,
    50,
    // prices after restock 1
    300,
    200,
    50,
    // prices after restock 2
    300,
    200,
    50,
    // prices after restock 3
    300,
    200,
    50,
    // prices after restock 4
    300,
    200,
    50,
};
