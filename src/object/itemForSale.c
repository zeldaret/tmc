/**
 * @file itemForSale.c
 * @ingroup Objects
 *
 * @brief Item for Sale object
 */
#include "object/itemForSale.h"

#include "functions.h"
#include "hitbox.h"
#include "kinstone.h"
#include "message.h"

typedef struct {
    u8 before[0x20];
    u8 unk_20[0x4]; // TODO for Entity this is zVelocity which is not an array. spriteAnimation[super->subtimer-6] does
                    // not match.
} ModifiedParentEntity;

extern u32 AddInteractableShopItem(Entity*);
extern void* sub_080784E4(void);

void ItemForSale_Init(ItemForSaleEntity*);
void ItemForSale_Action1(ItemForSaleEntity*);
void ItemForSale_Action2(ItemForSaleEntity*);
void ItemForSale_Action3(ItemForSaleEntity*);
void ItemForSale_MakeInteractable(ItemForSaleEntity*);
void sub_080819B4(ItemForSaleEntity*);
void sub_08081AB0(void);

void ItemForSale(ItemForSaleEntity* this) {
    static void (*const ItemForSale_Actions[])(ItemForSaleEntity*) = {
        ItemForSale_Init,
        ItemForSale_Action1,
        ItemForSale_Action2,
        ItemForSale_Action3,
    };
    ItemForSale_Actions[super->action](this);
    if (CheckOnScreen(super)) {
        sub_08080CB4(super);
    }
    switch (super->timer) {
        case 1:
        case 2:
            if (super->action == 1) {
                sub_0800445C(super);
            }
            break;
        case 0:
        case 3:
            break;
    }
}

void ItemForSale_Init(ItemForSaleEntity* this) {
    super->action = 1;
    super->spriteSettings.draw = 1;
    super->spritePriority.b1 = 0;
    super->carryFlags = 0;
#ifdef EU
    SetEntityPriority(super, 6);
#endif
    super->child = super;
    ItemForSale_MakeInteractable(this);
    switch (super->timer) {
        case 0:
            super->hitbox = (Hitbox*)&gUnk_080FD328;
            break;
        case 1:
            super->hitbox = (Hitbox*)&gHitbox_5;
            break;
    }
}

void ItemForSale_Action1(ItemForSaleEntity* this) {
    if (super->subAction != 0) {
        super->action = 2;
        gHUD.rActionPlayerState = 2;
    } else {
        if (super->type == 0x36) {
            if (super->interactType != INTERACTION_NONE) {
                super->interactType = INTERACTION_NONE;
                super->action = 3;
                gRoomVars.animFlags = 1;
                gPlayerState.queued_action = PLAYER_08070E9C;
            }
        } else {
            if (super->interactType != INTERACTION_NONE) {
                super->interactType = INTERACTION_NONE;
                super->subAction = 1;
                PausePlayer();
                ResetActiveItems();
                gPlayerState.heldObject = 4;
                gPlayerEntity.carriedEntity = super;
                gHUD.rActionPlayerState = R_ACTION_DROP;
                MessageClose();
            }
        }
    }
}

void ItemForSale_Action2(ItemForSaleEntity* this) {
    void* ptr;

    gHUD.rActionPlayerState = R_ACTION_DROP;
    super->spriteSettings.draw = gPlayerEntity.base.spriteSettings.draw;
    if ((gPlayerState.heldObject == 0) || (super != gPlayerEntity.carriedEntity)) {
        sub_080819B4(this);
    } else {
        ptr = sub_080784E4();
        if (((*(int*)(ptr + 8) == 0) || ((*(u8*)(ptr + 1) != 1 || (gHUD.rActionPlayerState = R_ACTION_SPEAK,
                                                                   (gPlayerState.playerInput.newInput &
                                                                    (INPUT_ACTION | INPUT_INTERACT)) == 0)))) &&
            ((gPlayerState.playerInput.newInput & (INPUT_ACTION | INPUT_CANCEL | INPUT_INTERACT)) != 0)) {
            sub_080819B4(this);
        }
    }
}

void sub_080819B4(ItemForSaleEntity* this) {
    Entity* parent;
    u8* puVar2;
    HUD* hud;

    if (gRoomVars.shopItemType == 0) {
        if (super->parent != NULL) {
            ((ModifiedParentEntity*)super->parent)->unk_20[super->subtimer] = 0xff;
        }
        DeleteThisEntity();
    }
    gPlayerState.heldObject = 0;
    gPlayerEntity.carriedEntity = 0;
    hud = &gHUD;
    gRoomVars.shopItemType = 0;
    hud->rActionInteractObject = R_ACTION_NONE;
    hud->rActionPlayerState = R_ACTION_NONE;
    gRoomVars.shopItemType2 = 0;
    super->x.HALF.HI = this->unk_80 + gRoomControls.origin_x;
    super->y.HALF.HI = this->unk_82 + gRoomControls.origin_y;
    super->z.WORD = 0;
    super->action = 1;
    super->subAction = 0;
    super->spriteOrientation.flipY = gPlayerEntity.base.spriteOrientation.flipY;
    super->collisionLayer = 1;
    super->spritePriority.b0 = 4;
    UpdateSpriteForCollisionLayer(super);
    ItemForSale_MakeInteractable(this);
}

void ItemForSale_MakeInteractable(ItemForSaleEntity* this) {
    u32 tmp = AddInteractableShopItem(super);
    if (super->timer == 1) {
        gPossibleInteraction.candidates[tmp].interactDirections = 0;
    }
}

void ItemForSale_Action3(ItemForSaleEntity* this) {
    if (gRoomVars.animFlags == 0) {
        sub_08081AB0();
        DeleteThisEntity();
    } else if (gRoomVars.animFlags == 2) {
        super->action = 1;
        super->subAction = 0;
        sub_08081AB0();
    }
}

void sub_08081AB0(void) {
    gRoomVars.animFlags = 0;
    gRoomVars.shopItemType = 0;
    gRoomVars.shopItemType2 = 0;
    SetPlayerControl(CONTROL_ENABLED);
}
