#include "entity.h"
#include "script.h"
#include "room.h"
#include "message.h"
#include "functions.h"
#include "npc.h"
#include "object.h"
#include "item.h"
#include "game.h"

#ifndef EU
static const u8 gUnk_0810FDA0[] = { 0, 8, 10, 16 };
#endif

extern u16 script_StockwellBuy[];
extern u16 script_StockwellDogFood[];

extern void InitScriptExecutionContext(ScriptExecutionContext* context, u16* script);
extern u16 script_Stockwell;

void sub_08065080(Entity*);
void sub_080650CC(Entity*);
void sub_080651AC(Entity*);
void sub_080651D8(Entity*);
void sub_08065368(Entity*);
void sub_080651F8(Entity*);
void sub_0806522C(Entity*);
void sub_08065250(Entity*);
void sub_0806528C(Entity*);
void sub_080652B0(Entity*);
void sub_080652E4(Entity*);
void sub_08065314(Entity*);
void sub_08065338(Entity*);

void Stockwell(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_08065080, sub_080650CC, sub_080651AC, sub_080651D8, sub_08065368,
    };
    actionFuncs[this->action](this);
    ExecuteScript(this, *(ScriptExecutionContext**)&this->cutsceneBeh);
    sub_0806ED78(this);
}

void sub_08065080(Entity* this) {
    ScriptExecutionContext* context;

    this->action = 1;
    this->spriteSettings.draw = 1;
    SetDefaultPriority(this, PRIO_MESSAGE);
    InitializeAnimation(this, 4);
    sub_08078778(this);
#ifndef EU
    sub_08078850(this, 0, 0, &gUnk_0810FDA0);
#endif
    context = StartCutscene(this, &script_Stockwell);
    *(ScriptExecutionContext**)&this->cutsceneBeh = context;
}

void sub_080650CC(Entity* this) {
    static const u8 gUnk_0810FDB8[] = { 4, 6, 6, 5, 6, 6, 6, 5, 6, 6, 6, 5, 6, 6, 6, 5 };
    u32 bVar2;
    u32 confirmMsgId;
    u32 itemPrice;

    if ((gRoomVars.animFlags & 1)) {
        this->action = 4;
        this->subAction = 0;
        InitScriptExecutionContext(*(ScriptExecutionContext**)&this->cutsceneBeh, script_StockwellDogFood);
    } else {
        bVar2 = this->frame & 0x20;
        if ((bVar2 == 0) && (this->interactType != 0)) {
            this->interactType = bVar2;
            this->action++;
            InitializeAnimation(this, 7);
            if (gRoomVars.shopItemType == 0) {
                confirmMsgId = 0x2c01;
            } else {
                confirmMsgId = GetSaleItemConfirmMessageID(gRoomVars.shopItemType);
                itemPrice = GetItemPrice(gRoomVars.shopItemType);
                this->action = 4;
                this->subAction = bVar2;
                InitScriptExecutionContext(*(ScriptExecutionContext**)&this->cutsceneBeh, script_StockwellBuy);
            }
            MessageNoOverlap(confirmMsgId, this);

            //! @bug itemPrice (r8) is not initialized if gRoomVars.shopItemType == 0
            gMessage.rupees = (u16)itemPrice;
        } else if ((this->frame & 0x40)) {
            InitializeAnimation(this, gUnk_0810FDB8[Random() & 0xf]);
        } else {
            GetNextFrame(this);
        }
    }
}

void sub_080651AC(Entity* this) {
    GetNextFrame(this);
    if ((gMessage.doTextBox & 0x7f) == 0) {
        this->interactType = gMessage.doTextBox & 0x7f;
        this->action = 1;
        InitializeAnimation(this, 4);
    }
}

void sub_080651D8(Entity* this) {
    static void (*const subActionFuncs[])(Entity*) = {
        sub_080651F8, sub_0806522C, sub_08065250, sub_0806528C, sub_080652B0, sub_080652E4, sub_08065314, sub_08065338,
    };
    GetNextFrame(this);
    subActionFuncs[this->subAction](this);
}

void sub_080651F8(Entity* this) {
    if ((this->frame & 0x20) == 0) {
        this->subAction = 1;
        this->timer = 0x3c;
        InitializeAnimation(this, 1);
        CreateSpeechBubbleExclamationMark(this, 8, 0xffffffe8);
        SetPlayerControl(1);
    }
}

void sub_0806522C(Entity* this) {
    if (--this->timer == 0) {
        ++this->subAction;
        MessageNoOverlap(0x2c16, this);
    }
}

void sub_08065250(Entity* this) {
    switch (sub_08056338()) {
        case 0:
            this->subAction += 1;
            this->timer = 0x1e;
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
        MessageNoOverlap(0x2c18, this);
    }
}

void sub_080652B0(Entity* this) {
    if ((gMessage.doTextBox & 0x7f) == 0) {
        this->subAction += 1;
        this->timer = 10;
        gRoomVars.animFlags = this->subtimer;
        CreateItemEntity(ITEM_QST_DOGFOOD, 0, 0);
    }
}

void sub_080652E4(Entity* this) {
    if (this->timer != 0) {
        this->timer -= 1;
    } else {
        if (gPlayerEntity.action != PLAYER_ITEMGET) {
            this->subAction += 1;
            MessageNoOverlap(0x2c19, this);
        }
    }
}

void sub_08065314(Entity* this) {
    if ((gMessage.doTextBox & 0x7f) == 0) {
        this->subAction += 1;
        MenuFadeIn(3, 3);
    }
}

void sub_08065338(Entity* this) {
    if ((gMessage.doTextBox & 0x7f) == 0) {
        this->action = 1;
        this->subAction = gMessage.doTextBox & 0x7f;
        gRoomVars.animFlags = this->subtimer;
        InitializeAnimation(this, 4);
    }
}

void sub_08065368(Entity* this) {
    GetNextFrame(this);
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
                messageIndex = 0x2c0e;
                goto showmsg;
            }
            break;
        case ITEM_SHIELD:
            if (GetInventoryValue(ITEM_SHIELD) || GetInventoryValue(ITEM_MIRROR_SHIELD)) {
                messageIndex = 0x2c0b;
                goto showmsg;
            }
            break;
        case ITEM_BOMBS10:
        case ITEM_BOMBS30:
            if (gBombBagSizes[gSave.stats.bombBagType] <= gSave.stats.bombCount) {
                messageIndex = 0x2c0e;
                goto showmsg;
            }
            break;
        case ITEM_WALLET:
            localFlag = 0x55;
            break;
        case ITEM_LARGE_QUIVER:
            localFlag = 0x56;
            break;
#ifndef EU
        case ITEM_BOMBBAG:
            localFlag = SHOP00_BOMBBAG;
            break;
#endif
        case ITEM_SHELLS30:
            if (999 <= gSave.stats.shells) {
                MessageNoOverlap(0x2c0e, this);
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
            if (gSave.unk5C <= -2) {
                gSave.unk5C += 1;
            }

            if (gSave.unk5C >= 10) {
                context->intVariable = 0x2c11;
            } else {
                if (itemPrice >= 100) {
                    context->intVariable = 0x2c10;
                } else {
                    context->intVariable = 0x2c0f;
                }
            }
            return;
        }
        messageIndex = 0x2c0d;
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
