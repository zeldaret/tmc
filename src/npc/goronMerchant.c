/**
 * @file goronMerchant.c
 * @ingroup NPCs
 *
 * @brief Goron Merchant NPC
 */
#include "entity.h"
#include "flags.h"
#include "functions.h"
#include "item.h"
#include "message.h"
#include "npc.h"
#include "save.h"

static u32 GoronMerchant_GetSalePrice(Entity*);

extern void (*const gUnk_08111B88[])(Entity*);
extern void (*const gUnk_08111B98[])(Entity*);

static const u16 sKinstonePrices[];

extern u32 GetAmountInKinstoneBag(u32);

void GoronMerchant(Entity* this) {
    if ((this->flags & ENT_SCRIPTED) != 0) {
        gUnk_08111B98[this->action](this);
    } else {
        gUnk_08111B88[this->action](this);
        sub_0806ED78(this);
    }
}

void sub_08069584(Entity* this) {
    if (gRoomTransition.entity_update_type != 0) {
        this->action = 3;
    } else {
        this->action = 1;
    }
    InitAnimationForceUpdate(this, 2);
}

void sub_080695AC(Entity* this) {
    s32 iVar2;

    if (++this->subtimer > 0x10) {
        this->subtimer = 0;
        iVar2 = GetAnimationStateInRectRadius(this, 0x28, 0x28);
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
    if ((gMessage.state & MESSAGE_ACTIVE) == 0) {
        this->action = 1;
        this->interactType = gMessage.state & MESSAGE_ACTIVE;
        RevokePriority(this);
        InitAnimationForceUpdate(this, this->animationState);
    }
}

void sub_0806961C(Entity* this) {
    if (gRoomTransition.entity_update_type == 2) {
        UpdateAnimationSingleFrame(this);
    }
    sub_0806FD3C(this);
}

void sub_0806963C(Entity* this) {
    this->action = 1;
    this->spriteSettings.draw = TRUE;
    InitScriptForNPC(this);
}

void sub_08069654(Entity* this) {
    ExecuteScriptAndHandleAnimation(this, NULL);
}

void sub_08069660(Entity* this) {
    MessageNoOverlap(TEXT_INDEX(TEXT_STOCKWELL, 0x1c), this);
    gMessage.rupees = (u16)GoronMerchant_GetSalePrice(this);
}

void sub_08069684(void) {
    Manager* mgr;

    if (FindEntityByID(MANAGER, GORON_MERCHANT_SHOP_MANAGER, 8) == NULL) {
        mgr = GetEmptyManager();
        if (mgr != NULL) {
            mgr->kind = MANAGER;
            mgr->id = GORON_MERCHANT_SHOP_MANAGER;
            AppendEntityToList((Entity*)mgr, 8);
        }
    }
}

void sub_080696B0(void) {
    gRoomVars.shopItemType = 0;
}

static u32 GoronMerchant_GetSalePrice(Entity* this) {
    u32 restockCount;
    u32 kinstoneType;
    s32 itemForSale;

    itemForSale = gRoomVars.shopItemType2;
    if (itemForSale > 0x70) {
        kinstoneType = 1;
    } else {
        kinstoneType = 0;
    }
    if (itemForSale > 0x72) {
        kinstoneType = 2;
    }

    restockCount = 0;
    if (CheckGlobalFlag(GORON_KAKERA_LV2)) {
        restockCount = 1;
    }

    if (CheckGlobalFlag(GORON_KAKERA_LV3)) {
        restockCount = 2;
    }
    if (CheckGlobalFlag(GORON_KAKERA_LV4)) {
        restockCount = 3;
    }
    if (CheckGlobalFlag(GORON_KAKERA_LV5)) {
        restockCount = 4;
    }
    return sKinstonePrices[restockCount * 3 + kinstoneType];
}

void GoronMerchant_TryToBuyKinstone(Entity* this, ScriptExecutionContext* context) {
    s32 salePrice = GoronMerchant_GetSalePrice(this);
    if (salePrice <= gSave.stats.rupees) {
        if (GetAmountInKinstoneBag(gRoomVars.shopItemType2) < 99) {
            ModRupees(-salePrice);
            InitItemGetSequence(ITEM_KINSTONE, gRoomVars.shopItemType2, 0);
            gRoomVars.shopItemType = 0;
            gRoomVars.shopItemType2 = 0;
            context->condition = 1;
        } else {
            MessageNoOverlap(TEXT_INDEX(TEXT_STOCKWELL, 0x1f), this);
            context->condition = 0;
        }
    } else {
        MessageNoOverlap(TEXT_INDEX(TEXT_STOCKWELL, 0x1e), this);
        context->condition = 0;
    }
    gActiveScriptInfo.flags |= 1;
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

static const u16 sKinstonePrices[] = {
#ifdef EU
    200,
    100,
    50,
    // prices after restock 1
    300,
    200,
    100,
    // prices after restock 2
    400,
    300,
    200,
    // prices after restock 3
    500,
    400,
    300,
    // prices after restock 4
    600,
    500,
    400,
#else
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
#endif
};
