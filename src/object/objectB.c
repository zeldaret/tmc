/**
 * @file objectB.c
 * @ingroup Objects
 *
 * @brief ObjectB object
 */

#define NENT_DEPRECATED
#include "global.h"
#include "object.h"
#include "functions.h"
#include "itemMetaData.h"
#include "message.h"
#include "save.h"
#include "game.h"
#include "item.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u16 unk_68;
} ObjectBEntity;

typedef struct {
    u8 unk_0[6];
    u16 unk_6;
} struct_080FD964;
extern const struct_080FD964 gUnk_080FD964[];
extern const u16 gUnk_080FD5B4[];

void ObjectB_Init(ObjectBEntity*);
void ObjectB_Action1(ObjectBEntity*);
void ObjectB_Action2(ObjectBEntity*);
void ObjectB_Action3(ObjectBEntity*);

void ObjectB(ObjectBEntity* this) {
    static void (*const ObjectB_Actions[])(ObjectBEntity*) = { ObjectB_Init, ObjectB_Action1, ObjectB_Action2,
                                                               ObjectB_Action3 };
    u32 tmp;
    ObjectB_Actions[super->action](this);
    tmp = (super->parent->frame >> 6);
    super->spriteSettings.draw = tmp & 1;
    sub_08080CB4(super);
    super->spritePriority.b1 = 0;
    super->spriteOrientation.flipY = 1;
    super->spriteRendering.b3 = 0;
}

void ObjectB_Init(ObjectBEntity* this) {
    SetDefaultPriority(super, 6);
    super->action = 1;
}

void ObjectB_Action1(ObjectBEntity* this) {
    u32 tmp;
    const ItemMetaData* ptr;

    if ((super->parent)->frame != 0x41) {
        return;
    }
    super->action = 2;
    switch (super->actionDelay) {
        case 0:
        case 1:
            this->unk_68 = GiveItem(super->type, super->type2);
            switch (super->type) {
                case 0x40:
                case 0x41:
                case 0x42:
                case 0x43:
                    break;
                default:
                    SoundReq(SFX_109);
                    break;
            }
            break;
        case 2:
            GiveItem(super->type, super->type2);
            this->unk_68 = gUnk_080FD964[super->type].unk_6;
            SoundReq(SFX_109);
            break;
        case 5:
            tmp = GetInventoryValue((u32)super->type);
            ptr = &gItemMetaData[super->type];
            if (tmp == 0) {
                this->unk_68 = *(u16*)&ptr->unk4;
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

void ObjectB_Action2(ObjectBEntity* this) {
    u32 messageIndex;
    if ((super->parent)->frame == 0x42) {
        super->action = 3;
        switch (super->actionDelay) {
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
                        case 0x63:
                            messageIndex += gSave.stats.heartPieces;
                            break;
                        case 0x3f:
                            if (super->type2 > 1) {
                                if (messageIndex == 0x577) {
                                    messageIndex--;
                                } else {
                                    messageIndex++;
                                }
                            }
                            break;
                    }
                    MessageFromTarget(messageIndex);
                    gMessage.field_0x10 = super->type2;
                }
        }
    }
}

void ObjectB_Action3(ObjectBEntity* this) {
    u32 tmp;
    if ((super->parent)->action == 8) {
        return;
    }
    switch (super->actionDelay) {
        case 0:
        case 1:
        case 2:
            if (super->type != 0x62) {
                if (super->type != 0x63) {
                    break;
                }
                ModHealth(0xa0);
                gSave.stats.heartPieces++;
                if (gSave.stats.heartPieces < 4) {
                    break;
                }
                gSave.stats.heartPieces = 0;
            }
            gSave.stats.maxHealth += 8;
            if (gSave.stats.maxHealth > 0xa0) {
                gSave.stats.maxHealth = 0xa0;
            }
            ModHealth(0xa0);
            break;
        case 3:
            tmp = GetBottleContaining(super->type);
            if (tmp != 0) {
                gSave.stats.itemButtons[tmp + 1] = 0x20;
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
