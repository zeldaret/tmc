/**
 * @file stockwell.c
 * @ingroup NPCs
 *
 * @brief Stockwell NPC
 */
#include "entity.h"
#include "functions.h"
#include "game.h"
#include "item.h"
#include "message.h"
#include "npc.h"
#include "object.h"
#include "room.h"
#include "script.h"

#ifndef EU
static const Rect gUnk_0810FDA0 = { 0, 8, 10, 16 };
#endif

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused[28];
    /*0x84*/ ScriptExecutionContext* context;
} StockwellEntity;

extern u16 script_StockwellBuy[];
extern u16 script_StockwellDogFood[];

extern void InitScriptExecutionContext(ScriptExecutionContext* context, u16* script);
extern u16 script_Stockwell;

void sub_08065080(StockwellEntity*);
void sub_080650CC(StockwellEntity*);
void sub_080651AC(StockwellEntity*);
void sub_080651D8(StockwellEntity*);
void sub_08065368(StockwellEntity*);
void sub_080651F8(Entity*);
void sub_0806522C(Entity*);
void sub_08065250(Entity*);
void sub_0806528C(Entity*);
void sub_080652B0(Entity*);
void sub_080652E4(Entity*);
void sub_08065314(Entity*);
void sub_08065338(Entity*);

void Stockwell(StockwellEntity* this) {
    static void (*const actionFuncs[])(StockwellEntity*) = {
        sub_08065080, sub_080650CC, sub_080651AC, sub_080651D8, sub_08065368,
    };
    actionFuncs[super->action](this);
    ExecuteScript(super, this->context);
    sub_0806ED78(super);
}

void sub_08065080(StockwellEntity* this) {
    ScriptExecutionContext* context;

    super->action = 1;
    super->spriteSettings.draw = 1;
    SetEntityPriority(super, PRIO_MESSAGE);
    InitializeAnimation(super, 4);
    AddInteractableWhenBigObject(super);
#ifndef EU
    SetInteractableObjectCollision(super, 0, 0, &gUnk_0810FDA0);
#endif
    context = StartCutscene(super, &script_Stockwell);
    this->context = context;
}

void sub_080650CC(StockwellEntity* this) {
    static const u8 gUnk_0810FDB8[] = { 4, 6, 6, 5, 6, 6, 6, 5, 6, 6, 6, 5, 6, 6, 6, 5 };
    u32 bVar2;
    u32 confirmMsgId;
    u32 itemPrice;

    if ((gRoomVars.animFlags & 1)) {
        super->action = 4;
        super->subAction = 0;
        InitScriptExecutionContext(this->context, script_StockwellDogFood);
    } else {
        bVar2 = super->frame & 0x20;
        if ((bVar2 == 0) && (super->interactType != INTERACTION_NONE)) {
            super->interactType = bVar2;
            super->action++;
            InitializeAnimation(super, 7);
            if (gRoomVars.shopItemType == 0) {
                confirmMsgId = TEXT_INDEX(TEXT_STOCKWELL, 0x1);
            } else {
                confirmMsgId = GetSaleItemConfirmMessageID(gRoomVars.shopItemType);
                itemPrice = GetItemPrice(gRoomVars.shopItemType);
                super->action = 4;
                super->subAction = bVar2;
                InitScriptExecutionContext(this->context, script_StockwellBuy);
            }
            MessageNoOverlap(confirmMsgId, super);

            //! @bug itemPrice (r8) is not initialized if gRoomVars.shopItemType == 0
            gMessage.rupees = (u16)itemPrice;
        } else if ((super->frame & 0x40)) {
            InitializeAnimation(super, gUnk_0810FDB8[Random() & 0xf]);
        } else {
            GetNextFrame(super);
        }
    }
}

void sub_080651AC(StockwellEntity* this) {
    GetNextFrame(super);
    if ((gMessage.state & MESSAGE_ACTIVE) == 0) {
        super->interactType = gMessage.state & MESSAGE_ACTIVE;
        super->action = 1;
        InitializeAnimation(super, 4);
    }
}

void sub_080651D8(StockwellEntity* this) {
    static void (*const subActionFuncs[])(Entity*) = {
        sub_080651F8, sub_0806522C, sub_08065250, sub_0806528C, sub_080652B0, sub_080652E4, sub_08065314, sub_08065338,
    };
    GetNextFrame(super);
    subActionFuncs[super->subAction](super);
}

void sub_080651F8(Entity* this) {
    if ((this->frame & 0x20) == 0) {
        this->subAction = 1;
        this->timer = 60;
        InitializeAnimation(this, 1);
        CreateSpeechBubbleExclamationMark(this, 8, 0xffffffe8);
        SetPlayerControl(1);
    }
}

void sub_0806522C(Entity* this) {
    if (--this->timer == 0) {
        ++this->subAction;
        MessageNoOverlap(TEXT_INDEX(TEXT_STOCKWELL, 0x16), this);
    }
}

void sub_08065250(Entity* this) {
    switch (sub_08056338()) {
        case 0:
            this->subAction++;
            this->timer = 30;
            this->subtimer = 0;
            CreateSpeechBubbleExclamationMark(this, 8, 0xffffffe8);
            break;
        case 1:
            this->subAction = 7;
            this->timer = 0;
            this->subtimer = 2;
            break;
    }
}

void sub_0806528C(Entity* this) {
    if (--this->timer == 0) {
        ++this->subAction;
        MessageNoOverlap(TEXT_INDEX(TEXT_STOCKWELL, 0x18), this);
    }
}

void sub_080652B0(Entity* this) {
    if ((gMessage.state & MESSAGE_ACTIVE) == 0) {
        this->subAction++;
        this->timer = 10;
        gRoomVars.animFlags = this->subtimer;
        CreateItemEntity(ITEM_QST_DOGFOOD, 0, 0);
    }
}

void sub_080652E4(Entity* this) {
    if (this->timer != 0) {
        this->timer--;
    } else {
        if (gPlayerEntity.base.action != PLAYER_ITEMGET) {
            this->subAction++;
            MessageNoOverlap(TEXT_INDEX(TEXT_STOCKWELL, 0x19), this);
        }
    }
}

void sub_08065314(Entity* this) {
    if ((gMessage.state & MESSAGE_ACTIVE) == 0) {
        this->subAction++;
        MenuFadeIn(3, 3);
    }
}

void sub_08065338(Entity* this) {
    if ((gMessage.state & MESSAGE_ACTIVE) == 0) {
        this->action = 1;
        this->subAction = gMessage.state & MESSAGE_ACTIVE;
        gRoomVars.animFlags = this->subtimer;
        InitializeAnimation(this, 4);
    }
}

void sub_08065368(StockwellEntity* this) {
    GetNextFrame(super);
}

void sub_08065370(Entity* this, ScriptExecutionContext* context) {
    u32 bVar1;
    u32 shopItemType;
    u32 itemPrice;
    u32 messageIndex;
    int localFlag;

    bVar1 = 1;
    shopItemType = gRoomVars.shopItemType;
    localFlag = 0;
    switch (shopItemType) {
        case ITEM_ARROWS10:
        case ITEM_ARROWS30:
            if (gQuiverSizes[gSave.stats.quiverType] <= gSave.stats.arrowCount) {
                messageIndex = TEXT_INDEX(TEXT_STOCKWELL, 0xe);
                goto showmsg;
            }
            break;
        case ITEM_SHIELD:
            if (GetInventoryValue(ITEM_SHIELD) || GetInventoryValue(ITEM_MIRROR_SHIELD)) {
                messageIndex = TEXT_INDEX(TEXT_STOCKWELL, 0xb);
                goto showmsg;
            }
            break;
        case ITEM_BOMBS10:
        case ITEM_BOMBS30:
            if (gBombBagSizes[gSave.stats.bombBagType] <= gSave.stats.bombCount) {
                messageIndex = TEXT_INDEX(TEXT_STOCKWELL, 0xe);
                goto showmsg;
            }
            break;
        case ITEM_WALLET:
            localFlag = SHOP00_SAIFU;
            break;
        case ITEM_LARGE_QUIVER:
            localFlag = SHOP00_YAZUTSU;
            break;
#ifndef EU
        case ITEM_BOMBBAG:
            localFlag = SHOP00_BOMBBAG;
            break;
#endif
        case ITEM_SHELLS30:
            if (999 <= gSave.stats.shells) {
                MessageNoOverlap(TEXT_INDEX(TEXT_STOCKWELL, 0xe), this);
                bVar1 = 0;
            }
            break;
    }

    if (bVar1) {
        itemPrice = GetItemPrice(shopItemType);
        if (itemPrice <= gSave.stats.rupees) {
            ModRupees(-itemPrice);
            InitItemGetSequence(shopItemType, gRoomVars.shopItemType2, 2);
            gRoomVars.shopItemType = 0;
            gRoomVars.shopItemType2 = 0;
            context->condition = 1;
            if (localFlag) {
                SetLocalFlag(localFlag);
            }
            if (gSave.items_bought <= ~1u) {
                gSave.items_bought++;
            }

            if (gSave.items_bought >= 10) {
                context->intVariable = TEXT_INDEX(TEXT_STOCKWELL, 0x11);
            } else {
                if (itemPrice >= 100) {
                    context->intVariable = TEXT_INDEX(TEXT_STOCKWELL, 0x10);
                } else {
                    context->intVariable = TEXT_INDEX(TEXT_STOCKWELL, 0xf);
                }
            }
            return;
        }
        messageIndex = TEXT_INDEX(TEXT_STOCKWELL, 0xd);
    showmsg:
        MessageNoOverlap(messageIndex, this);
    }
    context->condition = 0;
}

void sub_080654DC(Entity* this) {
    CreateSpeechBubbleQuestionMark(this, 8, 0xffffffe8);
}

void sub_080654EC(Entity* this) {
    CreateSpeechBubbleExclamationMark(this, 8, 0xffffffe8);
}

void sub_080654FC(Entity* this) {
    if ((this->frame & 0x20) != 0) {
        gActiveScriptInfo.commandSize = 0;
    } else {
        gActiveScriptInfo.flags |= 1;
    }
}

void sub_08065528(Entity* this, ScriptExecutionContext* context) {
    gRoomVars.animFlags = context->intVariable;
}
