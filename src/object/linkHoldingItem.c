/**
 * @file linkHoldingItem.c
 * @ingroup Objects
 *
 * @brief Link Holding Item object
 */
#include "functions.h"
#include "game.h"
#include "item.h"
#include "itemMetaData.h"
#include "message.h"
#include "object.h"
#include "save.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u16 unk_68;
} LinkHoldingItemEntity;

void LinkHoldingItem_Init(LinkHoldingItemEntity*);
void LinkHoldingItem_Action1(LinkHoldingItemEntity*);
void LinkHoldingItem_Action2(LinkHoldingItemEntity*);
void LinkHoldingItem_Action3(LinkHoldingItemEntity*);

void LinkHoldingItem(LinkHoldingItemEntity* this) {
    static void (*const LinkHoldingItem_Actions[])(LinkHoldingItemEntity*) = {
        LinkHoldingItem_Init, LinkHoldingItem_Action1, LinkHoldingItem_Action2, LinkHoldingItem_Action3
    };
    u32 tmp;
    LinkHoldingItem_Actions[super->action](this);
    tmp = (super->parent->frame >> 6);
    super->spriteSettings.draw = tmp & 1;
    sub_08080CB4(super);
    super->spritePriority.b1 = 0;
    super->spriteOrientation.flipY = 1;
    super->spriteRendering.b3 = 0;
}

void LinkHoldingItem_Init(LinkHoldingItemEntity* this) {
    SetEntityPriority(super, 6);
    super->action = 1;
}

void LinkHoldingItem_Action1(LinkHoldingItemEntity* this) {
    u32 tmp;
    const ItemMetaData* ptr;

    if ((super->parent)->frame != 0x41) {
        return;
    }
    super->action = 2;
    switch (super->timer) {
        case 0:
        case 1:
            this->unk_68 = GiveItem(super->type, super->type2);
            switch (super->type) {
                case ITEM_EARTH_ELEMENT:
                case ITEM_FIRE_ELEMENT:
                case ITEM_WATER_ELEMENT:
                case ITEM_WIND_ELEMENT:
                    break;
                default:
                    SoundReq(SFX_ITEM_GET);
                    break;
            }
            break;
        case 2:
            GiveItem(super->type, super->type2);
            this->unk_68 = gUnk_080FD964[super->type].gotItemMessageId;
            SoundReq(SFX_ITEM_GET);
            break;
        case 5:
            tmp = GetInventoryValue(super->type);
            ptr = &gItemMetaData[super->type];
            if (tmp == 0) {
                this->unk_68 = *(u16*)&ptr->textId;
            } else {
                this->unk_68 = *(u16*)&ptr->unk6;
            }
            return;
        case 3:
        case 4:
        default:
            return;
    }
}

void LinkHoldingItem_Action2(LinkHoldingItemEntity* this) {
    u32 messageIndex;
    if ((super->parent)->frame == 0x42) {
        super->action = 3;
        switch (super->timer) {
            case 1:
            case 3:
            case 4:
            default:
                break;
            case 0:
            case 2:
            case 5:
                messageIndex = this->unk_68;
                if (messageIndex != 0) {
                    switch (super->type) {
                        case ITEM_HEART_PIECE:
                            messageIndex += gSave.stats.heartPieces;
                            break;
                        case ITEM_SHELLS:
                            if (super->type2 > 1) {
                                if (messageIndex == TEXT_INDEX(TEXT_ITEM_GET, 0x77)) {
                                    messageIndex--;
                                } else {
                                    messageIndex++;
                                }
                            }
                            break;
                    }
                    MessageFromTarget(messageIndex);
                    gMessage.rupees = super->type2;
                }
        }
    }
}

void LinkHoldingItem_Action3(LinkHoldingItemEntity* this) {
    u32 bottle_no;
    if (super->parent->action == PLAYER_ITEMGET) {
        return;
    }
    switch (super->timer) {
        case 0:
        case 1:
        case 2:
            if (super->type != ITEM_HEART_CONTAINER) {
                if (super->type != ITEM_HEART_PIECE) {
                    break;
                }
                ModHealth(160);
                gSave.stats.heartPieces++;
                if (gSave.stats.heartPieces < 4) {
                    break;
                }
                gSave.stats.heartPieces = 0;
            }
            gSave.stats.maxHealth += 8;
            if (gSave.stats.maxHealth > 160) {
                gSave.stats.maxHealth = 160;
            }
            ModHealth(160);
            break;
        case 3:
            bottle_no = GetBottleContaining(super->type);
            if (bottle_no != 0) {
                gSave.stats.bottles[bottle_no - 1] = ITEM_BOTTLE_EMPTY;
            } else {
                SetInventoryValue(super->type, ITEM_GREEN_SWORD);
            }
            break;
        case 4:
        case 5:
            break;
    }
    DeleteThisEntity();
}
