#define NENT_DEPRECATED
#include "area.h"
#include "asm.h"
#include "common.h"
#include "collision.h"
#include "entity.h"
#include "functions.h"
#include "game.h"
#include "global.h"
#include "item.h"
#include "kinstone.h"
#include "manager/diggingCaveEntranceManager.h"
#include "message.h"
#include "new_player.h"
#include "object.h"
#include "player.h"
#include "room.h"
#include "save.h"
#include "screen.h"
#include "screenTransitions.h"

static void sub_08077E54(ItemBehavior* beh);

extern void sub_0800857C(Entity*);
extern void SetDefaultPriorityForKind(Entity*);
extern void sub_0809D738(Entity*);
extern s32 Mod(s32, s32);
extern void sub_08003FDE(Entity*, u32, u32, u32);
extern u32 sub_080B1B84(u32, u32);
extern void sub_08080BC4(void);
void sub_080790E4(Entity* this);
void sub_08079064(Entity*);

extern u8 gMapData;
extern const u8 gUnk_020176E0[];
extern const u8 gUnk_0800851C[];
extern const u8 gUnk_080084BC[];
extern const u8 gUnk_0800845C[];
extern const u8 gUnk_0800833C[];

bool32 IsAbleToUseItem(PlayerEntity*);
bool32 IsPreventedFromUsingItem();
void CreateItemIfInputMatches(Item itemId, PlayerInputState input, bool32 forceCreate);
bool32 IsTryingToPickupObject(void);
ItemBehavior* CreateItem(u32);
u32 sub_080789A8(void);
ItemBehavior* CreateItem1(u32);
void DeleteItemBehavior(ItemBehavior*, u32);
bool32 sub_08079E90(u32);
void PlayerMinishSetNormalAndCollide(void);
void sub_08078D60(void);
void* CreateItemGetPlayerItemWithParent(ItemBehavior*);
u32 sub_08079FD4(Entity*, u32);
void LoadRoomGfx(void);
SurfaceType GetSurfaceCalcType(Entity*, s32, s32);
void sub_0807AAF8(Entity*, u32);
void sub_0807A750(u32, u32, const u8*, u32);

extern ItemDefinition gItemDefinitions[];

extern ItemBehavior* (*const gCreateItemsFuncs[])(Item);

extern void DeleteLoadedTileEntity(u32, u32);

extern const u8 gUnk_080B3E80[]; // collisionData for tileType?

extern u8 gUpdateVisibleTiles;
extern u16 gMapDataTopSpecial[];
extern u16 gMapDataBottomSpecial[];

bool32 sub_0807BF88(u32, u32, RoomResInfo*);

void sub_0807BFD0(void);

void ForceSetPlayerState(u32 framestate);
InteractableObject* sub_080784E4(void);

u32 sub_08079778(void);
u32 GetPlayerTilePos(void);

extern const u16 gUnk_08007CAC[];

u32 sub_0807BEEC(u32 param_1, u32 param_2, u32 param_3);

bool32 sub_0807B434(u32 position, u32 layer);

void sub_0807B820(u32);
void sub_0807B8A8(u32);
void sub_0807B930(u32);
bool32 sub_0807B464(u32 param_1, u32 param_2);
void sub_0807B55C(u32, u32, u16*);
void sub_0807B480(u32, u32);

bool32 sub_0807B600(u32);

bool32 sub_0807B464(u32 tilePos, u32 param_2);

bool32 sub_0807B464(u32 param_1, u32 param_2);

extern void CreateRandomWaterTrace(Entity* parent, int range);
void sub_08079520(Entity* this);

bool32 ToggleDiving(Entity*);

extern const u16* sub_0806FC50(u32 param_1, u32 param_2);

bool32 sub_08079F48(u32 param_1, u32 param_2);

extern void sub_08080B60(LayerStruct*);
extern void sub_0801AB08(u16*, LayerStruct*);

extern u8 gUnk_02006F00[];
extern u16 gUnk_080B77C0[];

void sub_0807BFA8(void);
void sub_080197D4(const void*);
void sub_0807C8B0(u16*, u32, u32);
void sub_0807C69C(u8*, u32, u32);
void sub_0807C460(void);
void sub_0807BBE4(void);
void sub_0807BC84(void);
void sub_0807C5F4(u16*, u16*);
void sub_0807C5B0(void);

// collisions for metatiles < 0x4000
extern const u8 gUnk_080B3E80[];
// collisions for tiles > 0x4000
extern const u8 gUnk_080B79A7[];

extern void sub_0801AB08(u16*, LayerStruct*);

extern u8 gUnk_02006F00[];
extern u16 gUnk_080B77C0[];

void sub_0807BFA8(void);
void sub_080197D4(const void*);
void sub_0807C8B0(u16*, u32, u32);
void sub_0807C69C(u8*, u32, u32);
void sub_0807C460(void);
void sub_0807BBE4(void);
void sub_0807BC84(void);
void sub_0807C5F4(u16*, u16*);
void sub_0807C5B0(void);

extern u8 gUnk_080082DC[];
extern u32 sub_08004202(Entity*, u8*, u32);

extern u32 gUnk_02022830[];
extern u16* gUnk_0800823C[];

extern bool32 sub_0806FC24(u32, u32);

extern const u8 gUnk_0800845C[];
extern const u8 gUnk_0811BFE0[];
extern const u8 gUnk_08007DF4[];
extern const u8 gUnk_080084BC[];

u32 sub_0807A180(Entity*, Entity*, u32, u32);

void UpdateActiveItems(PlayerEntity* this) {
    u32 index;

    gPlayerState.shield_status &= 0xfe;
    gPlayerState.attack_status &= 0xf;
    if (((gPlayerState.field_0x7 | gPlayerState.jump_status) & 0x80) == 0 && (gPlayerState.jump_status & 0x40) == 0 &&
        gPlayerState.swim_state == 0 && IsAbleToUseItem(this) && !IsPreventedFromUsingItem()) {
        CreateItemIfInputMatches(gSave.stats.itemButtons[SLOT_A], PLAYER_INPUT_1, FALSE);
        CreateItemIfInputMatches(gSave.stats.itemButtons[SLOT_B], PLAYER_INPUT_2, FALSE);
        IsTryingToPickupObject();
    }

    for (index = 0; index < MAX_ACTIVE_ITEMS; index++) {
        if (gActiveItems[index].priority != 0) {
            ExecuteItemFunction(&gActiveItems[index], index);
        }
    }
}

void CreateItemEquippedAtSlot(EquipSlot equipSlot) {
    if (equipSlot == EQUIP_SLOT_A) {
        CreateItemIfInputMatches(gSave.stats.itemButtons[SLOT_A], PLAYER_INPUT_1, TRUE);
    } else {
        CreateItemIfInputMatches(gSave.stats.itemButtons[SLOT_B], PLAYER_INPUT_2, TRUE);
    }
}

bool32 IsAbleToUseItem(PlayerEntity* this) {
    if ((gPlayerState.flags & PL_DRUGGED) == 0) {
        if ((gPlayerState.flags & (PL_CAPTURED | PL_HIDDEN | PL_DISABLE_ITEMS | PL_BURNING | PL_FROZEN)) == 0) {
            if ((((gPlayerState.dash_state | gPlayerState.mobility) | this->unk_7a) == 0) &&
                (super->knockbackDuration == 0)) {
                return TRUE;
            }
        } else {
            DeleteClones();
        }
    }
    return FALSE;
}

bool32 IsPreventedFromUsingItem(void) {
    if ((gPlayerState.playerInput.newInput & PLAYER_INPUT_80) != 0) {
        if ((gPlayerState.flags & PL_CLONING) != 0) {
            gPlayerState.chargeState.action = 1;
            DeleteClones();
            return TRUE;
        } else {
            switch (gArea.portal_mode) {
                case 2:
                    if (gArea.portal_timer == 0) {
                        gPlayerEntity.subAction++;
                    }
                    break;
                case 3:
                    if ((gArea.portal_timer == 0) && ((gPlayerState.flags & PL_MINISH) != 0)) {
                        gPlayerEntity.subAction++;
                        gPlayerEntity.flags &= ~ENT_COLLIDE;
                        RequestPriorityDuration(&gPlayerEntity, 180);
                        return TRUE;
                    }
                    return FALSE;
                default:
                    if ((((gUnk_0200AF00.rActionInteractObject == R_ACTION_ROLL) && (gPlayerState.field_0x1c == 0)) &&
                         (gPlayerState.floor_type != SURFACE_SWAMP)) &&
                        ((((gPlayerState.playerInput.heldInput & PLAYER_INPUT_ANY_DIRECTION) != 0 &&
                           ((gPlayerState.flags & (PL_BURNING | PL_ROLLING)) == 0)) &&
                          ((gPlayerState.jump_status == 0 && (gPlayerState.attack_status == 0)))))) {
                        gPlayerState.queued_action = PLAYER_ROLL;
                    }
                    return FALSE;
            }
        }
        return TRUE;
    } else {
        if ((gPlayerState.flags & PL_USE_PORTAL) == 0) {
            return FALSE;
        }
        return TRUE;
    }
}

void CreateItemIfInputMatches(Item itemId, PlayerInputState input, bool32 forceCreate) {
    if (itemId - 1 < 0x1f) {
        ItemDefinition* ptr = &gItemDefinitions[itemId];
        u16* inputPtr = &gPlayerState.playerInput.heldInput;
        if (ptr->isOnlyActiveFirstFrame) {
            inputPtr = &gPlayerState.playerInput.newInput;
        }

        if ((*inputPtr & input) || forceCreate) {
            ItemBehavior* item = CreateItem(itemId);
            if (item != NULL) {
                item->priority = gItemDefinitions[itemId].priority;
                item->behaviorId = itemId;
                item->field_0x2[1] = input;
            }
        }
    }
}

bool32 IsTryingToPickupObject(void) {
    ItemBehavior* item;

    if (!((((gPlayerState.flags & (PL_USE_PORTAL | PL_MINISH | PL_ROLLING)) == 0) &&
           (((gNewPlayerEntity.unk_79 != 0 || (gPlayerState.heldObject != 0)) ||
             ((gPlayerState.playerInput.newInput & PLAYER_INPUT_8000) != 0)))) &&
          (((sub_080789A8() != 0 || ((gPlayerState.playerInput.heldInput &
                                      (PLAYER_INPUT_ANY_DIRECTION | PLAYER_INPUT_1 | PLAYER_INPUT_2)) == 0)))))) {
        return FALSE;
    }
    item = CreateItem(ITEM_TRY_PICKUP_OBJECT);
    if (item != NULL) {
        item->behaviorId = ITEM_TRY_PICKUP_OBJECT;
        item->priority = gItemDefinitions[ITEM_TRY_PICKUP_OBJECT].priority;
        return TRUE;
    } else {
        return FALSE;
    }
}

ItemBehavior* CreateItemNone(Item);
ItemBehavior* CreateItem1(Item);
ItemBehavior* CreateItem2(Item);
ItemBehavior* CreateItem3(Item);
ItemBehavior* CreateItem4(Item);
ItemBehavior* CreateItem5(Item);
ItemBehavior* (*const gCreateItemsFuncs[])(Item) = {
    CreateItemNone, CreateItem1, CreateItem2, CreateItem3, CreateItem4, CreateItem5,
};

ItemBehavior* CreateItem(Item itemId) {
    if (((((gPlayerState.queued_action == PLAYER_ROLL) && (itemId != ITEM_TRY_PICKUP_OBJECT)) ||
          (((gPlayerState.flags & (PL_ROLLING | PL_CLONING)) != 0 && (ITEM_FOURSWORD < itemId)))) ||
         ((((gPlayerState.jump_status != 0 || (gPlayerEntity.z.WORD != 0)) && (ITEM_FOURSWORD < itemId)) ||
           (((gPlayerState.flags & PL_MINISH) && !gItemDefinitions[itemId].isUseableAsMinish))))) ||
        ((gPlayerState.floor_type == SURFACE_SWAMP && ((gPlayerState.surfaceTimer != 0 && (1 < itemId - 0x14)))))) {
        return NULL;
    } else {
        u32 createFunc = gItemDefinitions[itemId].createFunc;
        return gCreateItemsFuncs[createFunc](itemId);
    }
}

ItemBehavior* CreateItemNone(Item itemId) {
    return NULL;
}

ItemBehavior* CreateItem1(Item itemId) {
    if (gActiveItems[ACTIVE_ITEM_1].priority == 0) {
        return &gActiveItems[ACTIVE_ITEM_1];
    } else if (gActiveItems[ACTIVE_ITEM_2].priority == 0) {
        return &gActiveItems[ACTIVE_ITEM_2];
    } else {
        return NULL;
    }
}

ItemBehavior* CreateItem2(Item itemId) {
    if (((gPlayerState.heldObject == 0) && (itemId != gActiveItems[ACTIVE_ITEM_1].behaviorId)) &&
        (itemId != gActiveItems[ACTIVE_ITEM_2].behaviorId)) {
        return CreateItem1(itemId);
    } else {
        return NULL;
    }
}

ItemBehavior* CreateItem3(Item itemId) {
    if (gPlayerState.heldObject == 0) {
        if ((gPlayerState.jump_status & 0x20) == 0 &&
            gItemDefinitions[itemId].priority >= gActiveItems[ACTIVE_ITEM_0].priority) {
            DeleteItemBehavior(&gActiveItems[ACTIVE_ITEM_0], 0);
            gPlayerState.grab_status = 0;
            gPlayerState.field_0x1c = 0;
            gPlayerState.sword_state = 0;
            return &gActiveItems[ACTIVE_ITEM_0];
        }
    }
    return NULL;
}

ItemBehavior* CreateItem4(Item itemId) {
    if (gSave.stats.bombCount != 0 && gPlayerState.heldObject == 0 && gActiveItems[ACTIVE_ITEM_0].priority == 0) {
        return &gActiveItems[ACTIVE_ITEM_0];
    } else {
        return NULL;
    }
}

ItemBehavior* CreateItem5(Item itemId) {
    ItemBehavior* activeItem;
    u32 index;

    index = 0;
    activeItem = gActiveItems;
    while (index < 4) {
        // Lantern can only be active if no other item is active.
        if (activeItem->priority != 0) {
            return NULL;
        }
        activeItem++;
        index++;
    }
    return &gActiveItems[ACTIVE_ITEM_LANTERN];
}

void ResetLantern(void) {
    EquipSlot slot;

    DeleteItemBehavior(&gActiveItems[ACTIVE_ITEM_LANTERN], ACTIVE_ITEM_LANTERN);
    gPlayerState.flags &= ~PL_USE_LANTERN;
    slot = IsItemEquipped(ITEM_LANTERN_ON);
    if (slot != EQUIP_SLOT_NONE) {
        ForceEquipItem(ITEM_LANTERN_OFF, slot);
    }
}

void PutAwayItems(void) {
    ResetActiveItems();
    ResetLantern();
}

void ResetActiveItems() {
    u32 index;
    for (index = 0; index < MAX_ACTIVE_ITEMS - 1; index++) {
        DeleteItemBehavior(&gActiveItems[index], index);
    }

    gPlayerState.moleMittsState = 0;
    gPlayerState.field_0x1c = 0;
    gPlayerState.bow_state = 0;
    gPlayerState.grab_status = 0;
    gPlayerState.itemAnimPriority = 0;
    gPlayerState.dash_state = 0;
    gPlayerState.sword_state = 0;
    gPlayerState.shield_status = 0;
    gPlayerState.heldObject = 0;
    gPlayerState.flags &= ~(PL_ROLLING | PL_SWORD_THRUST);

    gNewPlayerEntity.unk_70 = NULL;

    if ((gPlayerState.jump_status & 0xc0) == 0) {
        gPlayerState.jump_status = 0;
    }

    switch (gPlayerState.framestate) {
        case PL_STATE_SWORD:
        case PL_STATE_GUSTJAR:
        case PL_STATE_HOLD:
            gPlayerState.framestate = PL_STATE_IDLE;
            break;
    }
}

void sub_08077B98(ItemBehavior* unk) {
    if ((gPlayerState.item == NULL) || (gPlayerState.item->id != 1)) {
        gPlayerState.item = CreateItemGetPlayerItemWithParent(unk);
    }
}

void sub_08077BB8(ItemBehavior* beh) {
    Entity* temp = CreateItemGetPlayerItemWithParent(beh);
    if (temp != NULL) {
        temp->flags = ENT_PERSIST;
    }
    gPlayerState.item = temp;
}

Entity* CreatePlayerItemForItemIfNotExists(ItemBehavior* this) {
    if (FindPlayerItemForItem(this, gItemDefinitions[this->behaviorId].playerItemId) != 0) {
        return NULL;
    } else {
        return CreatePlayerItemWithParent(this, gItemDefinitions[this->behaviorId].playerItemId);
    }
}

Entity* CreatePlayerItemIfNotExists(ItemBehavior* this, u32 index) {
    u8 id = gItemDefinitions[index].playerItemId;
    if (FindPlayerItemForItem(this, id) != 0) {
        return NULL;
    } else {
        return CreatePlayerItemWithParent(this, id);
    }
}

Entity* CreatePlayerItemWithParent(ItemBehavior* this, u32 id) {
    Entity* playerItem = CreatePlayerItem(id, 0, 0, this->behaviorId);
    if (playerItem != NULL) {
        playerItem->parent = (Entity*)this;
    }
    return playerItem;
}

void* CreateItemGetPlayerItemWithParent(ItemBehavior* this) {
    GenericEntity* playerItem = (GenericEntity*)CreateItemGetEntity();
    if (playerItem != NULL) {
        playerItem->base.id = gItemDefinitions[this->behaviorId].playerItemId;
        playerItem->base.kind = PLAYER_ITEM;
        playerItem->base.flags = 0xa0;
        playerItem->base.parent = (Entity*)this;
        playerItem->field_0x68.HALF.LO = this->behaviorId;
        AppendEntityToList(&playerItem->base, 2);
    }
    return playerItem;
}

Entity* FindPlayerItemForItem(ItemBehavior* this, u32 index) {
    Entity* entity = FindEntityByID(PLAYER_ITEM, gItemDefinitions[index].playerItemId, 2);
    if (entity == NULL) {
        return NULL;
    }
    return entity;
}

Entity* CreatePlayerItem(u32 id, u32 type, u32 type2, u32 unk) {
    GenericEntity* ent;

    ent = (GenericEntity*)GetEmptyEntity();
    if (ent != NULL) {
        ent->base.flags = ENT_COLLIDE;
        ent->base.kind = PLAYER_ITEM;
        ent->base.id = id;
        ent->base.type = type;
        ent->base.type2 = type2;
        ent->field_0x68.HALF.LO = unk;
        AppendEntityToList(&ent->base, 2);
    }
    return &ent->base;
}

Entity* sub_08077CF8(u32 id, u32 type, u32 type2, u32 unk) {
    GenericEntity* ent;

    ent = (GenericEntity*)CreateItemGetEntity();
    if (ent != NULL) {
        ent->base.flags = ENT_COLLIDE;
        ent->base.kind = PLAYER_ITEM;
        ent->base.id = id;
        ent->base.type = type;
        ent->base.type2 = type2;
        ent->field_0x68.HALF.LO = unk;
        AppendEntityToList(&ent->base, 2);
    }
    return &ent->base;
}

void sub_08077D38(ItemBehavior* this, u32 index) {
    u32 anim;
    ItemDefinition* ptr;

    gPlayerState.field_0xa |= 8 >> index;
    gPlayerState.keepFacing |= 8 >> index;
    this->playerAnimationState = gPlayerEntity.animationState;
    if (this->stateID == 0) {
        this->stateID++;
    }

    ptr = &gItemDefinitions[this->behaviorId];
    if (ptr->frameIndex) {
        if ((gPlayerState.flags & PL_NO_CAP)) {
            switch (this->behaviorId) {
                case 0x1b:
                    anim = ANIM_GRAB_NOCAP;
                    break;
                case 1:
                    anim = ANIM_SWORD_NOCAP;
                    break;
                case 0xd:
                    anim = ANIM_SHIELD_PULLOUT_NOCAP;
                    break;
            }
            SetItemAnim(this, anim);
        } else {
            SetItemAnim(this, ptr->frameIndex);
        }
    }

    this->animPriority = ptr->animPriority;
    if (ptr->isChangingAttackStatus) {
        gPlayerState.attack_status |= (8 >> index) | ((8 >> index) << 4);
    }
}

typedef struct {
    u8 b0 : 4;
    u8 b1 : 4;
} PACKED Unk_bitfield;

typedef struct {
    u8 unk[16];
} Unk_struct_in_08077EC8;

void SetItemAnim(ItemBehavior* this, u32 animIndex) {
    this->animIndex = animIndex;
    if ((animIndex & 0xff) > 0xb8) {
        animIndex += this->playerAnimationState >> 1;
    }
    gPlayerEntity.spriteIndex = (s16)(animIndex >> 8);
    InitAnimationForceUpdate(&gPlayerEntity, (u8)animIndex);
    sub_08077E54(this);
}

void UpdateItemAnim(ItemBehavior* this) {
    UpdateAnimationSingleFrame(&gPlayerEntity);
    sub_08077E54(this);
}

void sub_08077E3C(ItemBehavior* this, u32 index) {
    sub_080042BA(&gPlayerEntity, index);
    sub_08077E54(this);
}

static void sub_08077E54(ItemBehavior* this) {
    this->playerAnimIndex = gPlayerEntity.animIndex;
    this->playerFrameIndex = gPlayerEntity.frameIndex;
    this->playerFrameDuration = gPlayerEntity.frameDuration;
    this->playerFrame = gPlayerEntity.frame;
}

void DeleteItemBehavior(ItemBehavior* this, u32 index) {
    u32 not ;

    if (index == 0) {
        if (gPlayerState.item != NULL) {
            ((Unk_bitfield*)gPlayerState.item)[0x11].b0 = 6;
            gPlayerState.item = NULL;
        } else {
            gPlayerState.item = NULL;
        }
    }

    not = (8 >> index);
    gPlayerState.attack_status &= ~((u8)((8 >> index) << 4) | not );
    not = ~not ;
    gPlayerState.field_0xa &= not ;
    gPlayerState.keepFacing &= not ;
    MemClear(this, sizeof(ItemBehavior));
}

bool32 sub_08077EC8(ItemBehavior* this) {
    if (gPlayerState.sword_state & 8) {
        SetItemAnim(this, ANIM_SWORD_CHARGE_BUMP);
        this->timer = 0x28;
        this->stateID = 7;
        this->animPriority = 6;
        return TRUE;
    } else {
        return FALSE;
    }
}

bool32 IsItemActive(ItemBehavior* this) {
    return IsItemActiveByInput(this, gPlayerState.playerInput.heldInput);
}

bool32 IsItemActivatedThisFrame(ItemBehavior* this) {
    return IsItemActiveByInput(this, gPlayerState.playerInput.newInput);
}

bool32 IsItemActiveByInput(ItemBehavior* this, PlayerInputState input) {
    u32 val;
    Stats* stats = &gSave.stats;
    u32 id = this->behaviorId;
    if (stats->itemButtons[SLOT_A] == id) {
        val = PLAYER_INPUT_1;
    } else if (stats->itemButtons[SLOT_B] == id) {
        val = PLAYER_INPUT_2;
    } else {
        val = 0;
    }

    return (val & input) ? TRUE : FALSE;
}

void PlayerCancelHoldItem(ItemBehavior* this, u32 index) {
    PlayerDropHeldObject();
    DeleteItemBehavior(this, index);
}

/**
 * Check if player state believes the held item is valid?
 * If it's not delete the item?
 */
bool32 PlayerTryDropObject(ItemBehavior* this, u32 index) {
    u32 temp;
    if (gPlayerState.heldObject == 0) {
        PlayerCancelHoldItem(this, index);
        temp = FALSE;
    } else {
        temp = TRUE;
    }
    return temp;
}

// TODO move above into a itemUtils.c ?

const u8 gUnk_0811BFE0[] = {
    3, 10, 12, 3, 3, 14, 12, 3,
};

bool32 sub_08078008(ChargeState* state);
bool32 sub_08078124(ChargeState* state);
bool32 sub_08078140(ChargeState* state);
bool32 sub_08078070(ChargeState* state);
bool32 sub_080780E0(ChargeState* state);
bool32 sub_08078108(ChargeState* state);
bool32 (*const gPlayerChargeActions[])(ChargeState*) = {
    sub_08078008, sub_08078124, sub_08078140, sub_08078070, sub_080780E0, sub_08078108,
};

const InteractableObject gNoInteraction = {
    0, INTERACTION_NULL, 0, 0, NULL, NULL,
};

// for shifting the hitbox in which entities can be interacted with in Link's facing direction
// from left to right: north, east, south and west in x, y pairs
const s8 gPlayerInteractHitboxOffsetNormal[] = {
    0, -18, 14, -1, 0, 10, -15, -1,
};
const s8 gPlayerInteractHitboxOffsetMinish[] = {
    0, -14, 10, -1, 0, 6, -11, -1,
};
const u8 gUnk_0811C01C[] = {
    0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 3, 3, 4, 3, 0, 1, 2, 0, 3, 3, 4, 3, 10, 15, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 5, 6, 6, 6, 5, 5, 5, 5, 5, 6, 6, 6, 5, 5, 5, 5, 11, 12, 5, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 7, 8, 8, 8, 7, 9, 9, 7, 7, 8, 8, 8, 7, 9, 9, 7, 13, 14, 7, 0, 0,
};

const s8 gUnk_0811C070[] = { 0, 16,  0, 17,  0, 18, 0,  15, 0,  14, 25, -4,  25, -3,  0, -24,
                             0, -23, 0, -25, 0, 10, 21, -4, 16, -4, 0,  -18, 0,  -14, 0, 6 };
const s8 gUnk_0811C090[] = { 0, 18,  0, 19,  0, 20, 0,  17, 0,  16, 24, -2,  24, -1,  0, -22,
                             0, -21, 0, -23, 0, 12, 20, -4, 15, -4, 0,  -16, 0,  -12, 0, 8 };
const s8* const gUnk_0811C0B0[] = {
    gUnk_0811C070,
    gUnk_0811C090,
};

const s8 gUnk_0811C0B8[] = { 0, -9, 0, -15, 0, -16, 12, -3, 10, -9, 0, 7, 0, -17, 0, -18 };
const s8 gUnk_0811C0C8[] = { 0, -5, 0, -11, 0, -15, 12, 1, 10, -5, 0, 11, 0, -17, 0, -18 };
const s8 gUnk_0811C0D8[] = { 0, -19, 0, -19, 0, -24, 32, -7, 10, -13, 0, 26, 0, -25, 0, -26 };
const s8* const gUnk_0811C0E8[] = {
    gUnk_0811C0B8,
    gUnk_0811C0D8,
    gUnk_0811C0B8,
    gUnk_0811C0C8,
};

const u16 gUnk_0811C0F8[] = { 1024, 256, 2048, 512 };
const s8 gUnk_0811C100[] = { 0, -8, 8, 0, 0, 3, -8, 0 };
const u16 gUnk_0811C108[] = { 6, 24576, 96, 1536 };
const u16 gUnk_0811C110[] = { 6, 24576, 96, 1536 };
const u8 gUnk_0811C118[] = {
    19, 18, 18, 16, 16, 17, 17, 19,
};

void SurfaceAction_DoNothing(Entity*);
void SurfaceAction_Pit(Entity*);
void SurfaceAction_SlopeGndGndVertical(Entity*);
void SurfaceAction_SlopeGndGndHorizontal(Entity*);
void SurfaceAction_6(Entity*);
void SurfaceAction_7(Entity*);
void SurfaceAction_MinishDoorFront(Entity*);
void SurfaceAction_MinishDoorBack(Entity*);
void SurfaceAction_A(Entity*);
void SurfaceAction_B(Entity*);
void SurfaceAction_SlopeGndWater(Entity*);
void SurfaceAction_ConveyerNorth(Entity*);
void SurfaceAction_ConveyerSouth(Entity*);
void SurfaceAction_ConveyerWest(Entity*);
void SurfaceAction_ConveyerEast(Entity*);
void SurfaceAction_Swamp(Entity*);
void SurfaceAction_14(Entity*);
void SurfaceAction_CloneTile(Entity*);
void SurfaceAction_16(Entity*);
void SurfaceAction_Ice(Entity*);
void SurfaceAction_ShallowWater(Entity*);
void SurfaceAction_Water(Entity*);
void SurfaceAction_Button(Entity*);
void SurfaceAction_1B(Entity*);
void SurfaceAction_1C(Entity*);
void SurfaceAction_Ladder(Entity*);
void SurfaceAction_20(Entity*);
void SurfaceAction_22(Entity*);
void SurfaceAction_Dust(Entity*);
void SurfaceAction_26(Entity*);
void SurfaceAction_Hole(Entity*);
void SurfaceAction_AutoLadder(Entity*);
void SurfaceAction_ClimbWall(Entity*);
void SurfaceAction_2C(Entity*);

void (*const gUnk_0811C120[])(Entity*) = {
    SurfaceAction_DoNothing,
    SurfaceAction_Pit,
    NULL,
    NULL,
    SurfaceAction_SlopeGndGndVertical,
    SurfaceAction_SlopeGndGndHorizontal,
    SurfaceAction_6,
    SurfaceAction_7,
    SurfaceAction_MinishDoorFront,
    SurfaceAction_MinishDoorBack,
    SurfaceAction_A,
    SurfaceAction_B,
    SurfaceAction_SlopeGndWater,
    SurfaceAction_ConveyerNorth,
    SurfaceAction_ConveyerSouth,
    SurfaceAction_ConveyerWest,
    SurfaceAction_ConveyerEast,
    SurfaceAction_Swamp,
    SurfaceAction_DoNothing,
    SurfaceAction_DoNothing,
    SurfaceAction_14,
    SurfaceAction_CloneTile,
    SurfaceAction_16,
    SurfaceAction_Ice,
    SurfaceAction_ShallowWater,
    SurfaceAction_Water,
    SurfaceAction_Button,
    SurfaceAction_1B,
    SurfaceAction_1C,
    NULL,
    SurfaceAction_Ladder,
    NULL,
    SurfaceAction_20,
    SurfaceAction_16,
    SurfaceAction_22,
    SurfaceAction_6,
    SurfaceAction_6,
    SurfaceAction_Dust,
    SurfaceAction_26,
    SurfaceAction_Hole,
    SurfaceAction_SlopeGndGndVertical,
    SurfaceAction_SlopeGndGndHorizontal,
    SurfaceAction_AutoLadder,
    SurfaceAction_ClimbWall,
    SurfaceAction_2C,
    SurfaceAction_Dust,
};

const u16 gUnk_0811C240[];
const u16 gUnk_0811C24A[];
const u16 gUnk_0811C254[];
const u16 gUnk_0811C25E[];
const u16 gUnk_0811C1F8[];
const u16 gUnk_0811C20A[];
const u16 gUnk_0811C21C[];
const u16 gUnk_0811C22E[];

const u16* const gUnk_0811C1D8[] = {
    gUnk_0811C240,
    gUnk_0811C24A,
    gUnk_0811C254,
    gUnk_0811C25E,
};
const u16* const gUnk_0811C1E8[] = {
    gUnk_0811C1F8,
    gUnk_0811C20A,
    gUnk_0811C21C,
    gUnk_0811C22E,
};

const u16 gUnk_0811C1F8[] = { 43, 1, 65, 1, 78, 8, 76, 2, 0 };
const u16 gUnk_0811C20A[] = { 44, 3, 66, 3, 76, 2, 77, 4, 0 };
const u16 gUnk_0811C21C[] = { 42, 5, 64, 5, 79, 6, 77, 4, 0 };
const u16 gUnk_0811C22E[] = { 45, 7, 67, 7, 78, 8, 79, 6, 0 };
const u16 gUnk_0811C240[] = { 42, 1, 38, 1, 0 };
const u16 gUnk_0811C24A[] = { 45, 1, 39, 1, 0 };
const u16 gUnk_0811C254[] = { 43, 1, 38, 1, 0 };
const u16 gUnk_0811C25E[] = { 44, 1, 39, 1, 0 };
const u16 gUnk_0811C268[] = { 16, 1, 90, 1, 17, 1, 19, 1, 0, 0 };
void sub_0807B114(PlayerEntity*);
void sub_0807B128(PlayerEntity*);
void (*const gUnk_0811C27C[])(PlayerEntity*) = {
    sub_0807B114,
    sub_0807B128,
};
void sub_0807B1A8(PlayerEntity*);
void sub_0807B144(PlayerEntity*);
void nullsub_506(PlayerEntity*);
void sub_0807B178(PlayerEntity*);
void sub_0807B2F8(PlayerEntity*);

void (*const gUnk_0811C284[])(PlayerEntity*) = {
    sub_0807B1A8, sub_0807B144, nullsub_506, sub_0807B178, sub_0807B2F8,
};
void sub_0807B1DC(PlayerEntity*);
void sub_0807B1EC(PlayerEntity*);
void sub_0807B21C(PlayerEntity*);
void sub_0807B264(PlayerEntity*);
void sub_0807B2B8(PlayerEntity*);
void (*const gUnk_0811C298[])(PlayerEntity*) = {
    sub_0807B1DC, sub_0807B1EC, sub_0807B21C, sub_0807B264, sub_0807B2B8,
};

const u16 gUnk_0811C2AC[] = { 678, 693, 688, 685, 691, 692, 684, 682, 690, 687, 689, 681, 686, 683, 680, 679 };
const u16 gUnk_0811C2CC[] = { 710, 747, 720, 717, 737, 744, 716, 714, 730, 719, 727, 713, 718, 715, 712, 711 };
const u16 gUnk_0811C2EC[] = {
    694, 15, 0,  695, 0,  15, 696, 1,  14, 697, 4, 11, 698, 8,  7, 699, 2,  13, 700, 9,  6,  701, 12, 3,  702, 3,  12,
    703, 6,  9,  704, 13, 2,  705, 5,  10, 706, 7, 8,  707, 11, 4, 708, 10, 5,  709, 14, 1,  710, 0,  0,  711, 0,  15,
    712, 0,  14, 713, 0,  11, 714, 0,  7,  715, 0, 13, 716, 0,  6, 717, 0,  3,  718, 0,  12, 719, 0,  9,  720, 0,  2,
    721, 12, 2,  722, 5,  2,  723, 9,  2,  724, 4, 2,  725, 1,  2, 726, 8,  2,  727, 0,  10, 728, 4,  10, 729, 1,  10,
    730, 0,  8,  731, 6,  8,  732, 5,  8,  733, 3, 8,  734, 4,  8, 735, 1,  8,  736, 2,  8,  737, 0,  4,  738, 10, 4,
    739, 3,  4,  740, 9,  4,  741, 2,  4,  742, 8, 4,  743, 1,  4, 744, 0,  5,  745, 2,  5,  746, 8,  5,  747, 0,  1,
    748, 10, 1,  749, 6,  1,  750, 12, 1,  751, 2, 1,  752, 8,  1, 753, 4,  1,  0,
};
const s16 gUnk_0811C456[] = { 0, -13, 13, 0, 0, 16, -13, 0 };
const u16 gUnk_0811C466[] = { 803, 819, 822, 825, 820, 828, 826, 829, 821, 823, 831, 830, 824, 827, 832, 53, 0 };

void sub_08077F84(void) {
    Entity* obj;

    if ((gPlayerEntity.collisionLayer & 2) == 0) {
        u32 tile = GetTileTypeByPos(gPlayerEntity.x.HALF.HI, gPlayerEntity.y.HALF.HI - 12, 2);
        if (tile == 0x343 || tile == 0x344 || tile == 0x345 || tile == 0x346) {
            sub_0807AA80(&gPlayerEntity);
            gPlayerState.jump_status |= 8;
            obj = CreateObject(ROTATING_TRAPDOOR, 0, 0);
            if (obj != NULL) {
                obj->x = gPlayerEntity.x;
                obj->y.HALF.HI = gPlayerEntity.y.HALF.HI - 0xc;
                gPlayerEntity.y.HALF.HI -= 0xc;
            }
        }
    }
}

bool32 sub_08077FEC(u32 action) {
    ChargeState* state = &gPlayerState.chargeState;
    return gPlayerChargeActions[state->action](state);
}

bool32 sub_08078008(ChargeState* state) {
    Item swordType;
    if (ItemIsSword(gSave.stats.itemButtons[SLOT_A]) != ITEM_NONE) {
        swordType = gSave.stats.itemButtons[SLOT_A];
    } else if (ItemIsSword(gSave.stats.itemButtons[SLOT_B]) != ITEM_NONE) {
        swordType = gSave.stats.itemButtons[SLOT_B];
    } else {
        swordType = ITEM_NONE;
    }

    if (swordType == ITEM_SMITH_SWORD || swordType == ITEM_GREEN_SWORD) {
        swordType = ITEM_NONE;
    }
    if (swordType != ITEM_NONE && ((gPlayerState.sword_state & 0x20) != 0)) {
        if (++state->preChargeTimer > 20) {
            state->preChargeTimer = 10;
            state->action = 3;
            state->swordType = swordType;
        }
    } else {
        state->preChargeTimer = 0;
    }
    return FALSE;
}

bool32 sub_08078070(ChargeState* state) {
    if ((gPlayerState.sword_state & 0x20) != 0) {
        if ((gPlayerState.skills & SKILL_FAST_SPLIT) != SKILL_NONE) {
            state->chargeTimer += 12;
        } else {
            state->chargeTimer += 6;
        }
        if (state->chargeTimer >= 800) {
            state->chargeTimer = 800;
            state->action = 4;
            SoundReq(SFX_ITEM_SWORD_CHARGE_FINISH);
        } else {
            if (Mod(state->chargeTimer, 20) == 0) {
                SoundReq(SFX_ITEM_SWORD_CHARGE);
            }
        }
    } else {
        state->action = 1;
    }
    return TRUE;
}

bool32 sub_080780E0(ChargeState* state) {
    if ((gPlayerState.sword_state & 0x40) != 0) {
        state->action = 5;
    } else {
        if ((gPlayerState.sword_state & 0x20) == 0) {
            state->action = 1;
        }
    }
    return TRUE;
}

bool32 sub_08078108(ChargeState* state) {
    state->chargeTimer--;
    if (state->chargeTimer < 0) {
        state->chargeTimer = 0;
        state->action = 2;
    }
    return TRUE;
}

bool32 sub_08078124(ChargeState* state) {
    state->chargeTimer -= 16;
    if (state->chargeTimer < 0) {
        state->chargeTimer = 0;
        state->action = 2;
    }
    return TRUE;
}

bool32 sub_08078140(ChargeState* info) {
    info->preChargeTimer--;
    if (info->preChargeTimer < 0) {
        info->preChargeTimer = 0;
        info->action = 0;
        return TRUE;
    }
    return FALSE;
}

void ForceSetPlayerState(u32 framestate) {
    gPlayerState.framestate = framestate;
    gPlayerEntity.flags &= ~ENT_COLLIDE;
    sub_08078B48();
}

void DetermineRButtonInteraction(void) {
    u8 rAction;
    InteractableObject* interaction;

    if (gUnk_0200AF00.rActionPlayerState != R_ACTION_NONE)
        return;

    rAction = R_ACTION_NONE;
    if ((gPlayerState.jump_status == 0) &&
        ((gPlayerState.flags & (PL_IN_HOLE | PL_FROZEN | PL_BURNING | PL_DISABLE_ITEMS | PL_DRUGGED)) == 0)) {
        if ((u8)(gPlayerState.heldObject - 1) < 4) {
            if (gUnk_0200AF00.rActionGrabbing != R_ACTION_NONE) {
                rAction = gUnk_0200AF00.rActionGrabbing;
            } else {
                rAction = R_ACTION_THROW;
            }
        } else {
            if (gUnk_0200AF00.rActionInteractTile != R_ACTION_NONE) {
                rAction = gUnk_0200AF00.rActionInteractTile;
            } else {
                interaction = sub_080784E4();
                if (interaction->entity->interactType == 0) {

                    switch (interaction->type) {
                        case INTERACTION_TALK:
                        case INTERACTION_TALK_MINISH:
                            rAction = R_ACTION_SPEAK;
                            break;
                        case INTERACTION_LIFT_SHOP_ITEM:
                            if (gRoomVars.shopItemType == ITEM_NONE) {
                                rAction = R_ACTION_LIFT;
                            }
                            break;
                        case INTERACTION_OPEN_CHEST:
                        case INTERACTION_USE_SMALL_KEY:
                        case INTERACTION_USE_BIG_KEY:
                            rAction = R_ACTION_OPEN;
                            break;
                        case INTERACTION_CHECK:
                            rAction = R_ACTION_CHECK;
                            break;
                        case INTERACTION_DROP_PEDESTAL:
                            rAction = R_ACTION_DROP;
                            break;
                    }
                } else {
                    if (sub_080789A8()) {
                        if (((gPlayerState.framestate != PL_STATE_USEPORTAL))) {

                            if ((gCarriedEntity.unk_1 == 2) && ((gCarriedEntity.unk_8)->carryFlags == 1)) {
                                rAction = R_ACTION_GRAB;
                            } else {
                                rAction = R_ACTION_LIFT;
                            }
                        } else {
                            return;
                        }
                    } else {
                        if ((gPlayerState.framestate == PL_STATE_WALK) && (gPlayerState.mobility == 0)) {
                            rAction = R_ACTION_ROLL;
                        } else {
                            rAction = R_ACTION_NONE;
                        }
                    }
                }
            }
        }
    }
    gUnk_0200AF00.rActionInteractObject = rAction;
}

bool32 sub_080782C0(void) {
    u8 framestate;
    Entity* entity;

    if (gPlayerState.framestate == PL_STATE_IDLE) {
        framestate = gPlayerState.framestate_last;
    } else {
        framestate = gPlayerState.framestate;
    }
    switch (framestate) {
        case PL_STATE_SWORD:
        case PL_STATE_GUSTJAR:
        case PL_STATE_C:
        case PL_STATE_DIE:
        case PL_STATE_ITEMGET:
        case PL_STATE_DROWN:
            return FALSE;
    }
    if ((gPlayerState.field_0x27[0] | gPlayerState.swim_state) != 0) {
        return FALSE;
    }
    if (gPlayerState.floor_type == SURFACE_PIT) {
        if (gPlayerState.field_0x14 == 0) {
            return FALSE;
        }
        if (CanDispEzloMessage()) {
            return TRUE;
        }
        return FALSE;
    }
    if ((gPlayerState.flags & PL_DRUGGED) != 0) {
        return FALSE;
    }
    if (CanDispEzloMessage()) {
        return TRUE;
    }
    entity = sub_080784E4()->entity;
    if (entity == NULL) {
        return FALSE;
    }
    if (gPlayerState.heldObject != 0) {
        if (gPlayerState.heldObject != 4) {
            return FALSE;
        }
        if ((gNewPlayerEntity.unk_74)->child->kind != OBJECT || (gNewPlayerEntity.unk_74)->child->id != SHOP_ITEM) {
            return FALSE;
        }
    }
    if (((gPlayerState.playerInput.newInput & PLAYER_INPUT_1000) != 0) &&
        ((u8)(gPossibleInteraction.currentObject->kinstoneId - 1) < 100)) {
        AddKinstoneToBag(KINSTONE_NONE);
        if (gSave.kinstoneAmounts[0] != 0) {
            gPossibleInteraction.kinstoneId = gPossibleInteraction.currentObject->kinstoneId;
            gPossibleInteraction.currentObject->entity->interactType = 2;
            gPlayerState.queued_action = PLAYER_08070E9C;
        } else {
            CreateEzloHint(TEXT_INDEX(TEXT_EZLO, 0x65), 0);
        }
        ForceSetPlayerState(PL_STATE_TALKEZLO);
        return TRUE;
    }
    if ((gPlayerState.playerInput.newInput & (PLAYER_INPUT_80 | PLAYER_INPUT_8)) == 0) {
        return FALSE;
    }
    switch (gPossibleInteraction.currentObject->type) {
        default:
        case INTERACTION_NONE:
            return TRUE;
        case INTERACTION_TALK:
        case INTERACTION_USE_BIG_KEY:
        case INTERACTION_CHECK:
        case INTERACTION_DROP_PEDESTAL:
            gPlayerState.queued_action = PLAYER_08070E9C;
            ForceSetPlayerState(PL_STATE_TALKEZLO);
        case INTERACTION_OPEN_CHEST:
        case INTERACTION_USE_SMALL_KEY:
        case INTERACTION_TALK_MINISH:
            entity->interactType = 1;
            gPossibleInteraction.kinstoneId = KINSTONE_NONE;
            return TRUE;
        case INTERACTION_LIFT_SHOP_ITEM:
            if (gRoomVars.shopItemType == 0) {
                entity->interactType = 1;
                gRoomVars.shopItemType = entity->type;
                gRoomVars.shopItemType2 = entity->type2;
                return TRUE;
            }
            return FALSE;
    }
    return TRUE;
}

void ResetPossibleInteraction(void) {
    MemClear(&gPossibleInteraction, sizeof(gPossibleInteraction));
    gPossibleInteraction.currentObject = (InteractableObject*)&gNoInteraction;
}

// determines which (if any) object the player is currently able to interact with
ASM_FUNC("asm/non_matching/playerUtils/sub_080784E4.inc", InteractableObject* sub_080784E4(void))

void AddInteractableWhenBigObject(Entity* ent) {
    AddInteractableObject(ent, 1, 0);
}

void AddInteractableWhenBigFuser(Entity* ent, KinstoneId kinstoneId) {
    AddInteractableObject(ent, 1, kinstoneId);
}

void AddInteractableFuser(Entity* ent, KinstoneId kinstoneId) {
    AddInteractableObject(ent, 2, kinstoneId);
}

void AddInteractableAsMinishObject(Entity* ent) {
    AddInteractableObject(ent, 7, 0);
}

void AddInteractableAsMinishFuser(Entity* ent, KinstoneId kinstoneId) {
    AddInteractableObject(ent, 7, kinstoneId);
}

void AddInteractableCheckableObject(Entity* ent) {
    AddInteractableObject(ent, 9, 0);
}

void AddInteractablePedestal(Entity* ent) {
    AddInteractableObject(ent, 10, 0);
}

void AddInteractableSmallKeyLock(Entity* ent) {
    AddInteractableObject(ent, 5, 0);
}

s32 AddInteractableShopItem(Entity* ent) {
    s32 iVar1;

    iVar1 = AddInteractableObject(ent, 8, 0);
    if (iVar1 >= 0) {
        gPossibleInteraction.candidates[iVar1].interactDirections = 0xbe;
    }
    return iVar1;
}

s32 AddInteractableBossDoor(Entity* ent) {
    s32 iVar1;

    iVar1 = AddInteractableObject(ent, 6, 0);
    if (iVar1 >= 0) {
        // weird, this line assumes it's a north door, and is unnecessary
        // anyway because this is overwritten right after returning
        gPossibleInteraction.candidates[iVar1].interactDirections = 0xbe;
    }
    return iVar1;
}

s32 AddInteractableChest(Entity* ent) {
    s32 iVar1;

    iVar1 = AddInteractableObject(ent, 3, 0);
    if (iVar1 >= 0) {
        gPossibleInteraction.candidates[iVar1].interactDirections = 0xbe;
    }
    return iVar1;
}

void SetInteractableObjectCollision(Entity* arg0, u32 ignoreLayer, u32 interactDirections, const void* customHitbox) {
    s32 iVar1;

    iVar1 = GetInteractableObjectIndex(arg0);
    if (iVar1 >= 0) {
        gPossibleInteraction.candidates[iVar1].ignoreLayer = ignoreLayer;
        gPossibleInteraction.candidates[iVar1].interactDirections = interactDirections;
        gPossibleInteraction.candidates[iVar1].customHitbox = customHitbox;
    }
}

s32 AddInteractableObject(Entity* entity, InteractionType type, KinstoneId kinstoneId) {
    s32 index;
    entity->interactType = 0;
    index = GetInteractableObjectIndex(entity);
    if (index < 0) {
        index = GetInteractableObjectIndex(0);
    }
    if (index >= 0) {
        gPossibleInteraction.candidates[index].entity = entity;
        gPossibleInteraction.candidates[index].type = type;
        gPossibleInteraction.candidates[index].kinstoneId = kinstoneId;
    }
    if (kinstoneId != KINSTONE_NONE) {
        Entity* entity = FindEntityByID(OBJECT, CAMERA_TARGET, 6);
        if (entity == NULL) {
            CreateObject(CAMERA_TARGET, 0, 0);
        }
    }
    return index;
}

/** Clear entry for Entity. */
void RemoveInteractableObject(Entity* entity) {
    s32 index = GetInteractableObjectIndex(entity);
    if (index > -1) {
        MemClear(&gPossibleInteraction.candidates[index], sizeof(InteractableObject));
    }
}

/** Find entry for Entity. */
s32 GetInteractableObjectIndex(Entity* entity) {
    u32 index;
    for (index = 0; index < 0x20; index++) {
        if (entity == gPossibleInteraction.candidates[index].entity) {
            return index;
        }
    }
    return -1;
}

void RegisterCarryEntity(Entity* this) {
    if (gCarriedEntity.count < 0x20) {
        gCarriedEntity.unk_c[gCarriedEntity.count] = this;
        gCarriedEntity.count++;
    }
}

void FreeCarryEntity(Entity* this) {
    u32 index;
    for (index = 0; index < gCarriedEntity.count; index++) {
        if (gCarriedEntity.unk_c[index] == this) {
            gCarriedEntity.count--;
            break;
        }
    }
    for (; index < gCarriedEntity.count; index++) {
        gCarriedEntity.unk_c[index] = gCarriedEntity.unk_c[index + 1];
    }
}

u32 sub_080789A8(void) {
    u32 uVar2;
    Entity* entity;
    u32 uVar4;
    const u8* ptr;
    const u8* ptr2;
    Entity** tmp1;

    if (gCarriedEntity.unk_0)
        return (u32)gCarriedEntity.unk_1;

    if (!(gPlayerState.flags & PL_MINISH)) {
        uVar4 = sub_080B1B0C(&gPlayerEntity);
        if (uVar4 >= 0x10 && (gUnk_080084BC[uVar4 - 0x10] == 0xf))
            return 0;
        if (gPlayerState.floor_type == 0x12)
            return 0;

        gCarriedEntity.unk_0 = 1;
        uVar4 = (u32)gCarriedEntity.count;

        if (uVar4 > 0) {
            ptr2 = &gUnk_0811BFE0[gPlayerEntity.animationState & 6];
            while (uVar4 > 0) {
                tmp1 = &gCarriedEntity.unk_8 + uVar4;
                entity = *tmp1;
                if ((entity != NULL) && (sub_0807A180(&gPlayerEntity, entity, ptr2[0], ptr2[1]) != 0)) {
                    gCarriedEntity.unk_8 = *tmp1;
                    gCarriedEntity.unk_1 = 2;
                    return 2;
                }
                uVar4--;
            }
        }

        ptr = &gUnk_08007DF4[gPlayerEntity.animationState & 6];
        gCarriedEntity.unk_4 = uVar2 = sub_080B1A0C(&gPlayerEntity, (s8)ptr[0], (s8)ptr[1]);

        if (!sub_0806FC24(uVar2, 6))
            return 0;

    } else
        return 0;

    gCarriedEntity.unk_1 = 1;
    return 1;
}

void SetPlayerControl(PlayerControlMode mode) {
    if (gPlayerState.controlMode != CONTROL_DISABLED) {
        gPlayerState.controlMode = mode;
    }
}

void CreateEzloHint(u32 hintId, u32 hintHeight) {
    gPlayerState.queued_action = PLAYER_TALKEZLO;
    gRoomTransition.hint_idx = hintId;
    gRoomTransition.hint_height = hintHeight;
}

void sub_08078AC0(u32 param_1, u32 param_2, u32 param_3) {
    gPlayerState.queued_action = PLAYER_ROOM_EXIT;
    gPlayerState.field_0x38 = param_1;
    gPlayerState.field_0x39 = param_2 != 0;
    gPlayerState.field_0x3a = param_3 != 0;
}

/** Set up player states for getting the item? */
void SetPlayerItemGetState(Entity* item, u8 param_2, u8 param_3) {
    gPlayerState.field_0x38 = param_2;
    gPlayerState.field_0x39 = param_3;
    gPlayerState.field_0x3a = 0;
    gPlayerState.queued_action = PLAYER_ITEMGET;
    gPlayerState.framestate = PL_STATE_ITEMGET;
    gPlayerState.swim_state = 0;
    gPlayerState.field_0x14 = 1;
    gPlayerEntity.child = item;
    gPlayerEntity.flags &= ~ENT_COLLIDE;
    gPlayerEntity.updatePriority = 2;
    DeleteClones();
}

void sub_08078B48(void) {
    gPlayerState.field_0x7 |= 0x80;
    gPlayerState.keepFacing |= 0x80;
    gPlayerState.field_0xa |= 0x80;
    gPlayerState.field_0x27[0] = 2;
    switch (gPlayerState.framestate) {
        case PL_STATE_HOLD:
        case PL_STATE_THROW:
        case PL_STATE_PUSH:
        case PL_STATE_PULL:
        case PL_STATE_1D:
            break;
        case PL_STATE_ROLL:
            gPlayerState.flags &= ~PL_ROLLING;
            // fallthrough
        default:
            if (gRoomVars.shopItemType == 0) {
                gPlayerState.mobility = 1;
            }
            break;
    }
    gPlayerEntity.iframes = -2;
    gPlayerState.field_0x8a = 2;
}

void ClearPlayerState(void) {
    gPlayerState.prevAnim = 0;
    gPlayerState.grab_status = 0;
    gPlayerState.jump_status = 0;
    gPlayerState.shield_status = 0;
    gPlayerState.attack_status = 0;
    gPlayerState.heldObject = 0;
    gPlayerState.pushedObject = 0;
    gPlayerState.field_0x7 = 0;
    gPlayerState.animation = 0;
    gPlayerState.field_0xa = 0;
    gPlayerState.keepFacing = 0;
    gPlayerState.field_0x35 = 0;
    gPlayerState.field_0x36 = 0;
    gPlayerState.queued_action = PLAYER_INIT;
    gPlayerState.direction = 0;
    gPlayerState.itemAnimPriority = 0;
    gPlayerState.surfacePositionSameTimer = 0;
    gPlayerState.floor_type = SURFACE_NORMAL;
    gPlayerState.floor_type_last = SURFACE_NORMAL;
    gPlayerState.field_0x14 = 0;
    gPlayerState.sword_state = 0;
    gPlayerState.dash_state = 0;
    gPlayerState.field_0x1f[0] = 0;
    gPlayerState.field_0x1f[1] = 0;
    gPlayerState.bow_state = 0;
    gPlayerState.tilePosition = 0;
    gPlayerState.tileType = 0;
    gPlayerState.swim_state = 0;
    gPlayerState.item = NULL;
    gPlayerState.speed_modifier = 0;
    gPlayerState.field_0x35 = 0;
    gPlayerState.flags = 0;
    gPlayerState.field_0x38 = 0;
    gPlayerState.field_0x39 = 0;
    gPlayerState.field_0x3a = 0;
    gPlayerState.spriteOffsetY = 0;
    gPlayerState.field_0x3c = 0;
    MemFill32(0xffffffff, gPlayerState.path_memory, 0x40);
    MemClear(&gPossibleInteraction, sizeof(gPossibleInteraction));
}

void UpdateCarriedObject(void) {
    if ((u8)(gPlayerState.heldObject - 3) < 2) {
        sub_08078D60();
    }
}

void sub_08078CD0(PlayerEntity* this) {
    Entity* entity;
    u32 tmp;
    const s8* ptr;

    entity = this->unk_70;
    entity->z.HALF.HI = super->z.HALF.HI - 1;
    entity->spriteOrientation.flipY = super->spriteOrientation.flipY;
    entity->collisionLayer = super->collisionLayer;
    tmp = gUnk_0811C01C[gPlayerState.item->frameIndex];
    ptr = (gUnk_0811C0B0[(((entity->gustJarFlags & 0x30) / 16))] + (tmp * 2));
    if (super->spriteSettings.flipX) {
        entity->x.HALF.HI = -ptr[0] + super->x.HALF_U.HI;
    } else {
        entity->x.HALF.HI = super->x.HALF_U.HI + ptr[0];
    }
    entity->y.HALF.HI = super->y.HALF.HI + ptr[1];
    sub_0806FEBC(super, 0, entity);
    if (entity->parent != NULL) {
        CopyPosition(entity, entity->parent);
    }
}

void sub_08078D60(void) {
    const s8* puVar2;
    u32 uVar3;
    Entity* iVar4;
    Entity* player;

    player = &gPlayerEntity;
    iVar4 = (*(Entity**)&((GenericEntity*)player)->field_0x74)->child;
    if (iVar4->action != 2)
        return;

    iVar4->z.HALF.HI = gPlayerEntity.spriteOffsetY + gPlayerEntity.z.HALF.HI;
    iVar4->spriteOrientation.flipY = gPlayerEntity.spriteOrientation.flipY;
    iVar4->collisionLayer = gPlayerEntity.collisionLayer;
    uVar3 = gPlayerEntity.frame & 0x7f;
    puVar2 = gUnk_0811C0E8[iVar4->carryFlags >> 4];
    if (gPlayerEntity.spriteSettings.flipX) {
        iVar4->x.HALF.HI = gPlayerEntity.x.HALF.HI - puVar2[uVar3];
    } else {
        iVar4->x.HALF.HI = gPlayerEntity.x.HALF.HI + puVar2[uVar3];
    }
    iVar4->z.HALF.HI = puVar2[uVar3 + 1] + iVar4->z.HALF.HI;
    iVar4->y.HALF.HI = gPlayerEntity.y.HALF.HI;
    SortEntityAbove(&gPlayerEntity, iVar4);
    if (gPlayerState.heldObject == 4) {
        iVar4->spriteRendering.b3 = gPlayerEntity.spriteRendering.b3;
        sub_0806F8DC(iVar4);
        if ((iVar4->carryFlags & 0xf) == 2) {
            switch (gRoomTransition.frameCount & 3) {
                case 1:
                    iVar4->x.HALF.HI++;
                    break;
                case 3:
                    iVar4->x.HALF.HI--;
                    break;
            }
        }
    } else {
        if (gPlayerEntity.animationState >> 1 != 0) {
            iVar4->spritePriority.b0 = gPlayerEntity.spritePriority.b0 - 1;
        } else {
            iVar4->spritePriority.b0 = gPlayerEntity.spritePriority.b0 + 1;
        }
    }
}

void sub_08078E84(Entity* param_1, Entity* param_2) {
    SpriteFrame* frame;
    if (param_2 == &gPlayerEntity) {
        sub_08079BD8(param_1);
        param_1->spriteOffsetX = gPlayerEntity.spriteOffsetX;
        param_1->spriteOffsetY = gPlayerEntity.spriteOffsetY;
    }
    frame = &gSpritePtrs[(u16)param_2->spriteIndex].frames[param_2->frameIndex];
    if (frame->unk_1 != 0) {
        sub_0806FEBC(param_2, 1, param_1);
    } else {
        sub_0806FEBC(param_2, 3, param_1);
    }
}

void ResetPlayerPosition(void) {
    gPlayerEntity.x.HALF.HI = gPlayerState.startPosX;
    gPlayerEntity.y.HALF.HI = gPlayerState.startPosY;
}

bool32 CheckQueuedAction(void) {
    if (gPlayerState.queued_action == PLAYER_INIT) {
        return FALSE;
    } else {
        gPlayerEntity.action = gPlayerState.queued_action;
        gPlayerEntity.subAction = 0;
        gPlayerState.queued_action = PLAYER_INIT;
        DoPlayerAction(&gPlayerEntity);
        return TRUE;
    }
}

// this doesnt seem to have any real function where its used
void CheckPlayerVelocity(void) {
    u32 angle = gPlayerState.direction;
    if (angle & DIR_NOT_MOVING_CHECK) {
        ResetPlayerVelocity();
    } else {
        gPlayerState.vel_x = gSineTable[angle * 8];
        gPlayerState.vel_y = -gSineTable[angle * 8 + 0x40];
    }
}

void ResetPlayerVelocity(void) {
    gPlayerState.vel_x = 0;
    gPlayerState.vel_y = 0;
}

bool32 sub_08078F74(Entity* this) {
    if ((gArea.portal_mode == 3) && (gPlayerState.field_0x35 != 0xff)) {
        gPlayerState.jump_status = 0x81;
        this->action = 0x15;
        this->subAction = 0;
        this->zVelocity = Q_16_16(2.0);
        return TRUE;
    } else {
        return FALSE;
    }
}

void sub_08078FB0(Entity* this) {
    u32 animIndex;

    if (!(gPlayerState.pushedObject & 0x80)) {
        gPlayerState.field_0x35 = 0xff;
    }
    sub_08079064(this);
    if (gPlayerState.flags & PL_NO_CAP) {
        animIndex = 0x58;
    } else {
        if (gPlayerState.flags & PL_MINISH) {
            animIndex = 0x18;
        } else {
            if (gPlayerState.animation >> 8 == 7) {
                animIndex = 0x34;
            } else {
                animIndex = 0xb8;
            }
        }
    }

    if (animIndex > (u8)gPlayerState.animation) {
        if (this->animationState >= 5) {
            this->spriteSettings.flipX = 1;
        } else {
            this->spriteSettings.flipX = 0;
        }

        if (gPlayerState.flags & PL_MOLDWORM_CAPTURED) {
            animIndex = gPlayerState.animation + this->animationState;
        } else {
            animIndex = (this->animationState >> 1) + gPlayerState.animation;
        }
    } else {
        animIndex = gPlayerState.animation;
    }

    if (animIndex != (((u16)this->spriteIndex << 8) | this->animIndex)) {
        this->spriteIndex = animIndex >> 8;
        animIndex &= 0xff;
        InitAnimationForceUpdate(this, animIndex);
    }
}

void sub_08079064(Entity* this) {
    u32 i;
    u32 maxAnimPriority;
    u32 animIndex;

    if (!(gPlayerState.flags & (PL_IN_HOLE | PL_MINISH))) {
        maxAnimPriority = 0;
        for (i = 0; i < 4; i++) {
            if (gActiveItems[i].animPriority > maxAnimPriority) {
                maxAnimPriority = gActiveItems[i].animPriority;
                animIndex = gActiveItems[i].animIndex;
            }
        }

        if (gPlayerState.itemAnimPriority < maxAnimPriority) {
            gPlayerState.animation = animIndex;
        } else if ((gPlayerState.swim_state & 0x80) != 0) {
            gPlayerState.animation = ANIM_DIVE;
        } else {
            if (gPlayerState.animation == ANIM_LANTERN || gPlayerState.animation == ANIM_WALK ||
                gPlayerState.animation == ANIM_WALK_NOCAP) {
                sub_080790E4(this);
            }
        }
    }
}

void sub_080790E4(Entity* this) {
    if (gPlayerState.keepFacing != 0) {
        return;
    }
    if (sub_080793E4(0x10)) {
        this->iframes = 0x14;
        this->knockbackDuration = 4;
        this->knockbackDirection = this->animationState << 2 ^ 0x10;
        ModHealth(-2);
        SoundReq(SFX_PLY_VO6);
        return;
    }
    if ((gPlayerState.pushedObject & 0x80) != 0) {
        return;
    }
    if (!gPlayerState.pushedObject) {
        if (sub_080793E4(1)) {
            if (this->subtimer <= 5) {
                this->subtimer++;
                return;
            }
        } else {
            this->subtimer = 0;
            return;
        }
    } else {
        gPlayerState.pushedObject--;
    }
    gPlayerState.field_0x35 = this->animationState;
    gPlayerState.framestate = PL_STATE_PUSH;
    if (gPlayerState.flags & PL_NO_CAP) {
        gPlayerState.animation = ANIM_PUSH_NOCAP;
    } else {
        gPlayerState.animation = ANIM_PUSH;
    }
}

void PlayerDropHeldObject(void) {
    gPlayerState.heldObject = 0;
    gPlayerState.grab_status = 0;
    gNewPlayerEntity.unk_74 = NULL;
}

void PlayerResetStateFromFusion(void) {
    if ((gPlayerState.flags & PL_MINISH) == 0) {
        SetPlayerActionNormal();
    } else {
        PlayerMinishSetNormalAndCollide();
    }
}

void SetPlayerActionNormal(void) {
    gPlayerEntity.action = PLAYER_NORMAL;
    gPlayerEntity.subAction = 0;
    gPlayerEntity.subtimer = 0;
}

void ResetPlayerAnimationAndAction(void) {
    if (!(gPlayerState.flags & PL_HIDDEN)) {
        gPlayerEntity.spriteSettings.draw = 3;
    }
    if (!(gPlayerState.flags & PL_MINISH)) {
        gPlayerEntity.spritePriority.b1 = 1;
        PlayerSetNormalAndCollide();
    } else {
        PlayerMinishSetNormalAndCollide();
    }
}

void PlayerSetNormalAndCollide(void) {
    gPlayerEntity.flags |= ENT_COLLIDE;
    gPlayerEntity.spriteSettings.draw = 3;
    gPlayerState.flags &= ~(PL_BUSY | PL_DROWNING | PL_DISABLE_ITEMS | PL_FROZEN | PL_ROLLING | PL_IN_HOLE |
                            PL_MOLDWORM_RELEASED | PL_PARACHUTE);
    ResolvePlayerAnimation();
    SetPlayerActionNormal();
    SetDefaultPriorityForKind(&gPlayerEntity);
}

void PlayerMinishSetNormalAndCollide(void) {
    if (!(gPlayerState.flags & PL_HIDDEN)) {
        gPlayerEntity.flags |= ENT_COLLIDE;
        gPlayerEntity.spriteSettings.draw = 3;
    }
    gPlayerEntity.action = PLAYER_MINISH;
    gPlayerEntity.subAction = 1;
    gPlayerEntity.collisionFlags &= 0xfb;
    gPlayerState.animation = ANIM_BOUNCE_MINISH;
    gPlayerState.flags &=
        ~(PL_BUSY | PL_DROWNING | PL_DISABLE_ITEMS | PL_IN_HOLE | PL_MOLDWORM_RELEASED | PL_PARACHUTE);
    gPlayerState.swim_state = 0;
    gPlayerState.queued_action = PLAYER_INIT;
    SetDefaultPriorityForKind(&gPlayerEntity);
}

void sub_080792BC(s32 speed, u32 direction, u32 field_0x38) {
    gPlayerState.queued_action = PLAYER_08072454;
    gPlayerState.field_0x38 = field_0x38;
    gPlayerEntity.speed = speed;
    gPlayerEntity.direction = direction;
}

void sub_080792D8(void) {
    Entity* playerEntity = &gPlayerEntity;

    if (playerEntity->knockbackDuration != 0) {
        if (((((playerEntity->action == 0xb) || (gPlayerState.dash_state != 0)) ||
              ((u8)(gPlayerState.heldObject - 1) < 4)) ||
             (((gPlayerState.jump_status != 0 || (gPlayerState.floor_type == 0xff)) ||
               (((gPlayerState.field_0x7 & 0x80) != 0 ||
                 ((0 < (s32)((gPlayerState.swim_state & 0xf) - 1) || (playerEntity->action == 3)))))))) ||
            ((gPlayerState.flags & 0x40000) != 0)) {
            playerEntity->knockbackDuration = 0;
        } else if ((playerEntity->action == 0x1d) && (playerEntity->knockbackDirection != 0x10)) {
            playerEntity->knockbackDuration = 0;
        } else {

            if ((s8)(playerEntity->knockbackDuration) >= 1) {
                playerEntity->knockbackDuration--;

            } else {
                playerEntity->knockbackDuration++;
            }
            if (playerEntity->knockbackDuration != 0) {
                gPlayerState.field_0x7 &= 0xdf;
                if ((((0 < playerEntity->iframes) && (gPlayerState.swim_state == 0)) &&
                     ((gPlayerState.flags & 0x80) == 0)) &&
                    gPlayerState.jump_status == 0) {
                    ResetActiveItems();
                    if ((gPlayerState.flags & 8) == 0) {
                        gPlayerState.animation = 0x114;
                    } else {
                        gPlayerState.animation = 0x418;
                    }
                }
                sub_080027EA(playerEntity, 0x280, playerEntity->knockbackDirection);
                sub_0807A5B8(playerEntity->knockbackDirection);
            }
        }
    }
}

bool32 sub_080793E4(u32 param_1) {
    u32 tmp;
    if (!gPlayerState.swim_state) {
        tmp = gUnk_0811C0F8[gPlayerEntity.animationState >> 1];
    } else {
        tmp = gUnk_0811C0F8[gPlayerEntity.direction >> 2];
    }
    if (sub_08079778() && (gPlayerState.playerInput.heldInput & tmp)) {
        if (param_1 != 0) {
            if (!sub_080B1BA4(GetPlayerTilePos(), gPlayerEntity.collisionLayer, param_1)) {
                return FALSE;
            }
        }
        return TRUE;
    } else {
        return FALSE;
    }
}

void RespawnPlayer(void) {
    u32* ptr1;
    u32 index;
    Entity* player = &gPlayerEntity;

    player->action = PLAYER_080728AC;
    player->z.WORD = 0;
    player->zVelocity = 0;
    player->knockbackDuration = 0;
    ResetPlayerPosition();
    if (!(gPlayerState.flags & PL_GYORG_FIGHT)) {
        if (gPlayerState.flags & PL_FLAGS10000) {
            player->x.HALF.HI = gPlayerState.lilypad->x.HALF.HI;
            player->y.HALF.HI = gPlayerState.lilypad->y.HALF.HI;
        } else {
            goto code_1;
        code_0:
            gPlayerEntity.collisionLayer = *ptr1 >> 0x1e;
            gPlayerEntity.x.HALF.HI = gRoomControls.origin_x + (*ptr1 & 0x3f) * 16 + 8;
            gPlayerEntity.y.HALF.HI = gRoomControls.origin_y + (*ptr1 & 0xfc0) / 4 + 8;
            COLLISION_ON(&gPlayerEntity);
            goto code_3;
        code_1:
            index = 0;
            if (gPlayerState.path_memory[0] != 0xffffffff) {
                ptr1 = gPlayerState.path_memory;
                while (sub_080B1B44((u16)*ptr1, *ptr1 >> 0x1e) == 0xf) {
                    ptr1++;
                    index++;
                    if ((index > 0xf) || (*ptr1 == -1)) {
                        goto code_3;
                        break;
                    }
                }
                goto code_0;
            }
        }
    }
code_3:
    UpdateSpriteForCollisionLayer(&gPlayerEntity);
}

void sub_08079520(Entity* this) {
    s32 tmp = gPlayerState.direction;
    if (tmp < DIR_NOT_MOVING_CHECK) {
        this->direction = gPlayerState.direction;
    } else {
        this->direction = (this->animationState >> 1) << 3;
    }
}

u32 sub_0807953C(void) {
    u32 tmp = PLAYER_INPUT_ANY_DIRECTION | PLAYER_INPUT_20 | PLAYER_INPUT_10 | PLAYER_INPUT_8;
    return gPlayerState.playerInput.newInput & tmp;
}

bool32 sub_08079550(void) {
    const s8* ptr;
    u32 uVar3;
    u32 tilePos2;
    u32 tilePos1;

    if (!gDiggingCaveEntranceTransition.isDiggingCave) {
        if ((!gPlayerState.dash_state || (gPlayerState.flags & PL_BURNING)) &&
            (gPlayerState.swim_state || (gPlayerState.sword_state & 0x40) ||
             gPlayerEntity.direction != gPlayerState.direction || (gPlayerEntity.direction & DIR_NOT_MOVING_CHECK))) {
            gPlayerEntity.subtimer = 0;
            return FALSE;
        }
        if (sub_08079778()) {
            ptr = &gUnk_0811C100[gPlayerEntity.animationState & 6];
            if ((gPlayerEntity.animationState & 2) != 0) {
                tilePos1 = COORD_TO_TILE_OFFSET(&gPlayerEntity, -ptr[0], -(gPlayerEntity.hitbox)->unk2[1]);
                tilePos2 = COORD_TO_TILE_OFFSET(&gPlayerEntity, -ptr[0], +(gPlayerEntity.hitbox)->unk2[1]);
            } else {

                tilePos1 = COORD_TO_TILE_OFFSET(&gPlayerEntity, -(gPlayerEntity.hitbox)->unk2[2], -ptr[1]);
                tilePos2 = COORD_TO_TILE_OFFSET(&gPlayerEntity, (gPlayerEntity.hitbox)->unk2[2], -ptr[1]);
            }

            uVar3 = sub_080B1AE0(tilePos1, gPlayerEntity.collisionLayer);
            uVar3 = sub_08007DD6(uVar3, gUnk_0811C1E8[gPlayerEntity.animationState >> 1]);
            if (uVar3 != 0) {
                uVar3 = sub_080B1AE0(tilePos2, gPlayerEntity.collisionLayer);
                uVar3 = sub_08007DD6(uVar3, gUnk_0811C1E8[gPlayerEntity.animationState >> 1]);
                if (uVar3 != 0) {
                    gPlayerState.pushedObject |= 0x80;
                    if (gPlayerState.dash_state == 0 && (++gPlayerEntity.subtimer <= 5)) {
                        return FALSE;
                    }

                    gPlayerEntity.animationState = uVar3 - 1;
                    gPlayerEntity.action = 4;
                    gPlayerEntity.subAction = 0;
                    COLLISION_OFF(&gPlayerEntity);
                    gPlayerState.jump_status = 0x81;
                    DoPlayerAction(&gPlayerEntity);
                    return TRUE;
                }
            }
        }
    }
    return FALSE;
}

void sub_08079708(Entity* this) {
    gPlayerState.framestate = PL_STATE_DIE;
    gPlayerState.field_0x3c = 0xff;
    this->flags &= ~ENT_COLLIDE;
    this->action = 0xa;
    this->subAction = 0;
    sub_080085B0(this);
    if (!(gPlayerState.flags & (PL_CAPTURED | PL_DISABLE_ITEMS))) {
        SetPlayerEventPriority();
    }
}

void sub_08079744(Entity* this) {
    s32 tmp;
    tmp = this->x.HALF.HI & 0xf;
    if (tmp != 8) {
        if (tmp > 8) {
            this->x.HALF.HI--;
        } else {
            this->x.HALF.HI++;
        }
    }
    tmp = this->y.HALF.HI & 0xf;
    if (tmp != 8) {
        if (tmp > 8) {
            this->y.HALF.HI--;
        } else {
            this->y.HALF.HI++;
        }
    }
}

bool32 sub_08079778(void) {
    u32 tmp;
    if (!gPlayerState.swim_state) {
        tmp = gUnk_0811C108[gPlayerEntity.animationState >> 1];
    } else {
        tmp = gUnk_0811C108[gPlayerEntity.direction >> 2];
    }
    return tmp == (gPlayerEntity.collisions & tmp);
}

u32 sub_080797C4(void) {
    u32 tmp = gUnk_0811C110[gPlayerEntity.direction >> 3];
    return tmp == (gPlayerEntity.collisions & tmp);
}

void sub_080797EC(void) {
    u32 animation;

    if (gPlayerState.flags & PL_NO_CAP) {
        if (gPlayerState.heldObject) {
            animation = ANIM_CARRY_NOCAP;
        } else if (gPlayerState.shield_status) {
            animation = ANIM_SHIELD_WALK_NOCAP;
        } else if (!gPlayerState.bow_state) {
            if (gPlayerState.swim_state) {
                animation = ANIM_SWIM_MOVE;
            } else {
                animation = ANIM_SWORD_CHARGE_WALK;
                if (gPlayerState.sword_state & 0x48) {
                    gPlayerState.prevAnim = 0x6c;
                    return;
                } else if (!gPlayerState.sword_state) {
                    if (gPlayerState.framestate == PL_STATE_IDLE) {
                        gPlayerState.framestate = PL_STATE_WALK;
                    }
                    animation = ANIM_WALK_NOCAP;
                } else {
                    animation = ANIM_SWORD_CHARGE_WALK;
                    if (sub_080793E4(0)) {
                        if (sub_080B1B44(GetPlayerTilePos(), gPlayerEntity.collisionLayer) != 0xff) {
                            gPlayerState.sword_state &= ~8;
                            animation = ANIM_SWORD_CHARGE_BUMP;
                        }
                    }
                }
            }
        } else {
            animation = ANIM_BOW_WALK;
        }
    } else {
        if (gPlayerState.field_0x1c) {
            return;
        } else if (gPlayerState.heldObject) {
            animation = ANIM_CARRY;
        } else if (gPlayerState.dash_state) {
            animation = ANIM_DASH;
        } else if (gPlayerState.flags & PL_IN_MINECART) {
            animation = ANIM_MINECART;
        } else if (gPlayerState.shield_status) {
            animation = ANIM_SHIELD_WALK;
        } else if (gPlayerState.bow_state) {
            animation = ANIM_BOW_WALK;
        } else {
            if (gPlayerState.swim_state) {
                animation = ANIM_SWIM_MOVE;
            } else {
                animation = ANIM_SWORD_CHARGE_WALK;
                if (gPlayerState.sword_state & 0x48) {
                    gPlayerState.prevAnim = 0x6c;
                    return;
                } else if (gPlayerState.sword_state) {
                    animation = ANIM_SWORD_CHARGE_WALK;
                    if (sub_080793E4(0)) {
                        if (sub_080B1B44(GetPlayerTilePos(), (u32)gPlayerEntity.collisionLayer) != 0xff) {
                            gPlayerState.sword_state &= ~8;
                            animation = ANIM_SWORD_CHARGE_BUMP;
                        }
                    }
                } else {
                    if (gPlayerState.framestate == PL_STATE_IDLE) {
                        gPlayerState.framestate = PL_STATE_WALK;
                    }
                    if ((gPlayerState.flags & PL_USE_LANTERN) != 0) {
                        animation = ANIM_LANTERN;
                    } else {
                        // Change to test animations I guess
                        animation = ANIM_WALK;
                    }
                }
            }
        }
    }
    gPlayerState.animation = animation;

    if (!gPlayerState.shield_status) {
        UpdateAnimationSingleFrame(&gPlayerEntity);
    }
}

void ResolvePlayerAnimation(void) {
    u32 index;
    u32 maxAnimPriority;
    u32 anim;
    if (gPlayerState.flags & PL_NO_CAP) {
        if (gPlayerState.heldObject) {
            anim = ANIM_CARRY_STAND_NOCAP;
        } else {
            if (gPlayerState.field_0x1c | gPlayerState.moleMittsState) {
                return;
            }
            if (gPlayerState.flags & PL_CONVEYOR_PUSHED) {
                anim = ANIM_JUMP;
            } else if (gPlayerState.shield_status) {
                anim = ANIM_SHIELD_NOCAP;
            } else if (gPlayerState.bow_state) {
                anim = ANIM_BOW_CHARGE;
            } else if (gPlayerState.swim_state) {
                anim = ANIM_SWIM_STILL;
            } else {
                if (gPlayerState.sword_state & 0x48) {
                    return;
                }
                if (!gPlayerState.sword_state) {
                    if (gPlayerState.attack_status) {
                        return;
                    }
                    if (gPlayerState.flags & PL_USE_PORTAL) {
                        switch (gArea.portal_type) {
                            case PT_5:
                                anim = ANIM_DEFAULT_NOCAP;
                                break;
                            case PT_JAR:
                                anim = ANIM_DEFAULT;
                                break;
                            default:
                                anim = ANIM_PORTAL;
                                break;
                        }
                    } else {
                        anim = ANIM_DEFAULT_NOCAP;
                    }
                } else {
                    anim = ANIM_SWORD_CHARGE;
                }
            }
        }
    } else {
        if (gPlayerState.heldObject) {
            anim = ANIM_CARRY_STAND;
        } else {
            if (gPlayerState.field_0x1c | gPlayerState.moleMittsState) {
                return;
            }
            if (gPlayerState.flags & PL_MOLDWORM_CAPTURED) {
                anim = ANIM_MOLDWORM_CAPTURED;
            } else if (gPlayerState.flags & PL_CONVEYOR_PUSHED) {
                anim = ANIM_JUMP;
            } else if (gPlayerState.dash_state) {
                anim = ANIM_DASH;
            } else if (gPlayerState.flags & PL_IN_MINECART) {
                anim = ANIM_MINECART_PAUSE;
            } else if (gPlayerState.shield_status) {
                anim = ANIM_SHIELD;
            } else if (gPlayerState.bow_state) {
                anim = ANIM_BOW_CHARGE;
            } else if (gPlayerState.swim_state) {
                anim = ANIM_SWIM_STILL;
            } else {
                if (gPlayerState.sword_state & 0x48) {
                    return;
                }
                if (gPlayerState.flags & PL_USE_PORTAL) {
                    anim = (gArea.portal_type == PT_JAR) ? ANIM_IN_POT : ANIM_PORTAL;
                } else {
                    if (gPlayerState.sword_state) {
                        anim = ANIM_SWORD_CHARGE;
                    } else {
                        if (gPlayerState.attack_status) {
                            return;
                        }
                        if (gPlayerState.flags & PL_USE_LANTERN) {
                            if (gActiveItems[ACTIVE_ITEM_LANTERN].animPriority) {
                                return;
                            }
                            anim = ANIM_LANTERN_ON;
                        } else {
                            anim = ANIM_DEFAULT;
                        }
                    }
                }
            }
        }
    }

    gPlayerState.animation = anim;
    if (!gPlayerState.heldObject) {
        maxAnimPriority = 0;
        for (index = 0; index < 4; index++) {
            if (gActiveItems[index].animPriority > maxAnimPriority) {
                maxAnimPriority = gActiveItems[index].animPriority;
            }
        }
        if (gPlayerState.itemAnimPriority < maxAnimPriority) {
            return;
        }
        if ((u8)anim == gPlayerState.prevAnim) {
            UpdateAnimationSingleFrame(&gPlayerEntity);
        }
    }
    gPlayerState.prevAnim = anim;
}

bool32 sub_08079B24(void) {
    if ((gPlayerEntity.action != PLAYER_MINISHDIE) && (gPlayerEntity.health == 0)) {
        gPlayerState.flags &= ~PL_PARACHUTE;
        gPlayerEntity.knockbackDuration = gPlayerEntity.health;
        if (gPlayerState.field_0x7 == 0) {
            if (gPlayerState.swim_state != 0) {
                RespawnPlayer();
            } else {
                if ((gPlayerState.field_0x14 == 0) && ((gPlayerState.flags & PL_IN_MINECART) == 0)) {
                    if (gPlayerEntity.z.HALF.HI < 0) {
                        if (gPlayerEntity.zVelocity > 0) {
                            gPlayerEntity.zVelocity = 0;
                        }
                        if ((gPlayerState.jump_status & 0x41) == 0) {
                            gPlayerState.jump_status = 0x41;
                            gPlayerEntity.direction = DIR_NONE;
                            gPlayerState.direction = DIR_NONE;
                            return TRUE;
                        } else {
                            return TRUE;
                        }
                    }
                    if (((gPlayerState.flags & PL_FLAGS2) == 0) && (sub_08079D48() == 0)) {
                        gPlayerState.field_0xa |= 0x10;
                        return TRUE;
                    }
                }
            }
            gPlayerEntity.flags &= ~ENT_COLLIDE;
            return FALSE;
        }
    }
    return TRUE;
}

void sub_08079BD8(Entity* this) {
    this->x = gPlayerEntity.x;
    this->y = gPlayerEntity.y;
    this->z = gPlayerEntity.z;
    this->collisionLayer = gPlayerEntity.collisionLayer;
    this->spriteRendering.b3 = gPlayerEntity.spriteRendering.b3;
    this->spriteOrientation.flipY = gPlayerEntity.spriteOrientation.flipY;
    this->spritePriority.b0 = gPlayerEntity.spritePriority.b0;
}

bool32 sub_08079C30(Entity* param_1) {
    if (gPlayerState.field_0x14 == 0 && (gPlayerState.flags & PL_FLAGS2) == 0) {
        if ((gPlayerState.flags & PL_MINISH) != 0) {
            return TRUE;
        }
        switch (gPlayerState.floor_type_last) {
            case SURFACE_D:
            case SURFACE_E:
            case SURFACE_F:
            case SURFACE_10:
            case SURFACE_14:
            case SURFACE_ICE:
            case SURFACE_AUTO_LADDER:
                return TRUE;
        }

        if (gPlayerState.floor_type != sub_08007DD6(GetRelativeCollisionTile(param_1, 0, -1), (u16*)gUnk_08007CAC))
            return FALSE;

        if (gPlayerState.floor_type != sub_08007DD6(GetRelativeCollisionTile(param_1, 2, 0), (u16*)gUnk_08007CAC))
            return FALSE;

        if (gPlayerState.floor_type == sub_08007DD6(GetRelativeCollisionTile(param_1, -2, 0), (u16*)gUnk_08007CAC)) {
            return TRUE;
        }
    }
    return FALSE;
}

bool32 sub_08079D48(void) {
    if (!sub_08079C30(&gPlayerEntity)) {
        return TRUE;
    } else {
        if (!PlayerCheckNEastTile()) {
            if (!sub_08007DD6((u16)GetTileUnderEntity(&gPlayerEntity), gUnk_0811C268)) {
                return TRUE;
            }
        }
    }
    return FALSE;
}

void sub_08079D84(void) {
    if ((gPlayerEntity.action == PLAYER_NORMAL) || (gPlayerEntity.action == PLAYER_ROLL)) {
        gPlayerState.field_0x38 = 0x9c;
        gPlayerState.field_0x39 = 2;
        gPlayerState.field_0x3a = 0x3c;
        gPlayerState.queued_action = PLAYER_0807204C;
        gPlayerEntity.iframes = 0x7c;
        PutAwayItems();
        SoundReq(SFX_193);
    }
}

void sub_08079DCC(void) {
    if (gPlayerEntity.action == PLAYER_NORMAL) {
        gPlayerState.field_0x38 = 0xa0;
        gPlayerState.field_0x39 = 3;
        gPlayerState.field_0x3a = 0;
        gPlayerState.queued_action = PLAYER_0807204C;
        SoundReq(SFX_193);
    }
}

void UpdatePlayerMovement(void) {
    if ((gPlayerEntity.speed != 0) &&
        (gPlayerEntity.speed += gPlayerState.speed_modifier, gPlayerEntity.speed < 0x20)) {
        gPlayerEntity.speed = 0x20;
    }
    if ((gPlayerEntity.direction & 4) == 0) {
        sub_08079E90(gPlayerEntity.direction);
    }
    sub_0800857C(&gPlayerEntity);
    sub_0807A5B8(gPlayerEntity.direction);
}

void sub_08079E58(s32 speed, u32 direction) {
    if ((gPlayerEntity.direction & 4) == 0) {
        sub_08079E90(direction);
    }
    sub_080085B0(&gPlayerEntity);
    sub_080027EA(&gPlayerEntity, (s16)speed, (u8)direction);
    sub_0807A5B8(direction);
}

bool32 sub_08079E90(u32 param_1) {
    s16 tmp1;
    s16 tmp2;

    if (gPlayerEntity.direction & DirectionEast) {
        if (gPlayerEntity.direction & DirectionSouth) {
            tmp2 = -gPlayerEntity.hitbox->unk2[0];
        } else {
            tmp2 = gPlayerEntity.hitbox->unk2[0];
        }
        tmp1 = gPlayerEntity.hitbox->unk2[1];
    } else {
        tmp2 = gPlayerEntity.hitbox->unk2[2];
        if (gPlayerEntity.direction != DirectionNorth) {
            tmp1 = gPlayerEntity.hitbox->unk2[3];
        } else {
            tmp1 = -gPlayerEntity.hitbox->unk2[3];
        }
    }
    if (!sub_08079F48(param_1, sub_080B1AF0(&gPlayerEntity, tmp2, tmp1))) {
        if ((gPlayerEntity.direction & DirectionSouth) != 0) {
            tmp1 = -tmp1;
        } else {
            tmp2 = -tmp2;
        }
        if (!sub_08079F48(param_1, sub_080B1AF0(&gPlayerEntity, tmp2, tmp1))) {
            return FALSE;
        }
    }
    return TRUE;
}

bool32 sub_08079F48(u32 param_1, u32 param_2) {
    if (gUnk_0811C118[param_1 >> 2] == param_2) {
        gPlayerEntity.direction = (gPlayerEntity.direction + 4) & 0x1f;
    } else {
        if (gUnk_0811C118[(param_1 >> 2) + 1] != param_2) {
            return FALSE;
        }
        gPlayerEntity.direction = (gPlayerEntity.direction - 4) & 0x1f;
    }

    return TRUE;
}

bool32 PlayerCanBeMoved(void) {
    if ((gPlayerState.flags & (PL_BUSY | PL_DROWNING | PL_CAPTURED | PL_USE_PORTAL | PL_HIDDEN | PL_FROZEN |
                               PL_FALLING | PL_DISABLE_ITEMS | PL_PIT_IS_EXIT | PL_IN_MINECART | PL_MOLDWORM_CAPTURED |
                               PL_IN_HOLE | PL_CONVEYOR_PUSHED | PL_CLIMBING)) != 0 ||
        gPlayerState.field_0x3c != 0 || gPlayerEntity.action == PLAYER_FALL ||
        gPlayerEntity.action == PLAYER_08071DB8) {
        return FALSE;
    } else {
        return TRUE;
    }
}

u32 sub_08079FC4(u32 param_1) {
    return sub_08079FD4(&gPlayerEntity, param_1);
}

u32 sub_08079FD4(Entity* this, u32 param_2) {
    u32 tilePosition;
    u8* collisionData;
    u32 collision;
    u32 index;
    u8 auStack20[4];

    tilePosition = COORD_TO_TILE(this) * 2;
    collisionData = gMapBottom.collisionData;
    if (param_2 == 2) {
        collisionData = gMapTop.collisionData;
    }
    index = 0;
    while (TRUE) {
        do {
            index++;
            tilePosition = sub_08004202(this, auStack20, tilePosition);
            collision = collisionData[tilePosition / 2];
            if (collision < 0xf) {
                return index;
            }
        } while (collision < 0x10);
        if (collision == 0x1d)
            break;
        if (((collision != 0x23) && (collision != 0x27)) && (gUnk_080082DC[collision - 0x10] == 0)) {
            return index;
        }
    }
    return index;
}

void UpdatePlayerPalette(void) {
    u32 palette;
    if ((gPlayerState.hurtBlinkSpeed != 0) && ((gMessage.doTextBox & 0x7f) == 0)) {
        gPlayerState.hurtBlinkSpeed--;
    }
    palette = GetPlayerPalette(FALSE);
    if (palette != gPlayerState.playerPalette) {
        gPlayerState.playerPalette = palette;
        ChangeObjPalette(&gPlayerEntity, palette);
    }
}

u32 GetPlayerPalette(bool32 affectedBy) {
    bool32 condition;
    u32 palette = 0x16;
    if (gPlayerState.hurtBlinkSpeed != 0) {
        palette = 0x1b;
        if (gPlayerState.hurtBlinkSpeed > 0x78) {
            palette = 0x1a;
        }
    } else {
        if (gSave.stats.charm != 0) {
            condition = TRUE;
            if (!affectedBy && (gSave.stats.charmTimer < 0xb4) && ((gSave.stats.charmTimer & 8) != 0)) {
                condition = FALSE;
            }
            if (condition) {
                switch (gSave.stats.charm) {
                    case BOTTLE_CHARM_NAYRU:
                        palette = 0x18;
                        break;
                    case BOTTLE_CHARM_DIN:
                        palette = 0x17;
                        break;
                    case BOTTLE_CHARM_FARORE:
                    default:
                        palette = 0x19;
                        break;
                }
            }
        }
    }
    return palette;
}

void DeleteClones(void) {
    gPlayerClones[0] = NULL;
    gPlayerClones[1] = NULL;
    gPlayerClones[2] = NULL;
    gPlayerState.flags &= ~PL_CLONING;
    if (((gPlayerEntity.action != PLAYER_ROOMTRANSITION) || (gPlayerState.chargeState.action != 4)) &&
        (gPlayerState.chargeState.action == 4 || gPlayerState.chargeState.action == 5)) {
        gPlayerState.chargeState.action = 1;
    }
}

bool32 HasSwordEquipped(void) {
    if (ItemIsSword((u32)gSave.stats.itemButtons[SLOT_A]) != 0) {
        return TRUE;
    } else {
        return ItemIsSword((u32)gSave.stats.itemButtons[SLOT_B]);
    }
}

void sub_0807A180(Entity* param_1, u32 param_2, u32 param_3, u32 param_4) {
    GenericEntity stackEntity;
    PositionRelative(param_1, &stackEntity.base, 0, -0x40000);
    stackEntity.base.animationState = param_1->animationState;
    sub_08003FDE(&stackEntity.base, param_2, param_3, param_4);
}

void UpdateFloorType(void) {
    gPlayerState.floor_type = GetSurfaceCalcType(&gPlayerEntity, 0, 0);
    gUnk_0811C120[gPlayerState.floor_type](&gPlayerEntity);
}

SurfaceType GetSurfaceCalcType(Entity* param_1, s32 x, s32 y) {
    u32 position = TILE(param_1->x.HALF.HI + (u32)x, param_1->y.HALF.HI + y);
    u32 tileType = GetTileTypeByPos(param_1->x.HALF.HI + x, param_1->y.HALF.HI + y, gPlayerEntity.collisionLayer);
    if (tileType != gPlayerState.tileType) {
        gPlayerState.surfaceTimer = 0;
    }
    if ((tileType != gPlayerState.tileType) || (position != gPlayerState.tilePosition)) {
        gPlayerState.tilePosition = position;
        gPlayerState.tileType = tileType;
        gPlayerState.surfacePositionSameTimer = 0;
    }

    if (gPlayerState.surfacePositionSameTimer != 0xff) {
        gPlayerState.surfacePositionSameTimer++;
    }
    if (gPlayerState.surfaceTimer != 0xff) {
        gPlayerState.surfaceTimer++;
    }
    gPlayerState.floor_type_last = gPlayerState.floor_type;
    tileType = GetRelativeCollisionTile(param_1, x, y);
    return sub_08007DD6(tileType, (u16*)gUnk_08007CAC);
}

void EnablePlayerDraw(Entity* this) {
    this->type2 = 0;
    this->spriteSettings.draw = 3;
    gPlayerState.flags &= ~PL_HIDDEN;
}

bool32 sub_0807A2B8(void) {
    if (PlayerCheckNEastTile()) {
        return TRUE;
    } else {
        if (((gPlayerState.jump_status & 200) == 0) && (gPlayerEntity.collisionLayer != 1)) {
            CreateObjectWithParent(&gPlayerEntity, ROTATING_TRAPDOOR, 0, 0);
        }
        return FALSE;
    }
}

ASM_FUNC("asm/non_matching/playerUtils/sub_0807A2F8.inc", u32 sub_0807A2F8(u32 a1))

u32 GetPlayerTilePos(void) {
    switch (gPlayerEntity.animationState >> 1) {
        case 0:
            return TILE(gPlayerEntity.x.HALF.HI,
                        gPlayerEntity.y.HALF.HI - gPlayerEntity.hitbox->unk2[3] + gPlayerEntity.hitbox->offset_y);
        case 2:
            return TILE(gPlayerEntity.x.HALF.HI,
                        gPlayerEntity.y.HALF.HI + gPlayerEntity.hitbox->unk2[3] + gPlayerEntity.hitbox->offset_y);
        case 1:
            return COORD_TO_TILE_OFFSET(&gPlayerEntity, -gPlayerEntity.hitbox->unk2[0],
                                        -gPlayerEntity.hitbox->offset_y);
        case 3:
            return COORD_TO_TILE_OFFSET(&gPlayerEntity, gPlayerEntity.hitbox->unk2[0], -gPlayerEntity.hitbox->offset_y);
        default:
            return 0;
    }
}

void sub_0807A5B8(u32 direction) {
    u32 uVar2;
    u32 uVar3;
    const u8* pbVar4;

    if ((((gPlayerState.jump_status & 0x80) == 0) && ((gPlayerState.flags & PL_HIDDEN) == 0)) &&
        (gPlayerState.swim_state == 0)) {
        if ((gPlayerState.flags & PL_MINISH) != 0) {
            pbVar4 = gUnk_0800833C;
        } else if (((gPlayerState.flags & PL_PARACHUTE) != 0) || gPlayerState.jump_status != 0) {
            pbVar4 = gUnk_0800845C;
        } else if (gPlayerState.heldObject != 0 || gPlayerState.field_0x1c != 0) {
            pbVar4 = gUnk_080084BC;
        } else if (gPlayerState.attachedBeetleCount != 0) {
            pbVar4 = gUnk_0800851C;
        } else {
            pbVar4 = gUnk_080082DC;
        }

        if (direction != DirectionNorth && direction != DirectionSouth) {
            uVar3 = (gPlayerEntity.x.HALF.HI + (gPlayerEntity.hitbox)->unk2[0] + (gPlayerEntity.hitbox)->offset_x) -
                    gRoomControls.origin_x;
            uVar2 = (gPlayerEntity.y.HALF.HI + (gPlayerEntity.hitbox)->offset_y) - gRoomControls.origin_y;
            if (sub_080086B4(uVar3, uVar2, pbVar4) != 0) {
                sub_0807A750(uVar3, uVar2, pbVar4, 1);
            }
            uVar3 = ((gPlayerEntity.x.HALF.HI - (gPlayerEntity.hitbox)->unk2[0]) + (gPlayerEntity.hitbox)->offset_x) -
                    gRoomControls.origin_x;
            if (sub_080086B4(uVar3, uVar2, pbVar4) != 0) {
                sub_0807A750(uVar3, uVar2, pbVar4, 3);
            }
        }
        if (direction != DirectionEast && direction != DirectionWest) {
            uVar3 = (gPlayerEntity.x.HALF.HI + (gPlayerEntity.hitbox)->offset_x) - gRoomControls.origin_x;
            uVar2 = (gPlayerEntity.y.HALF.HI + (gPlayerEntity.hitbox)->unk2[3] + (gPlayerEntity.hitbox)->offset_y) -
                    gRoomControls.origin_y;
            if (sub_080086B4(uVar3, uVar2, pbVar4) != 0) {
                sub_0807A750(uVar3, uVar2, pbVar4, 2);
            }
            uVar2 = ((gPlayerEntity.y.HALF.HI - (gPlayerEntity.hitbox)->unk2[3]) + (gPlayerEntity.hitbox)->offset_y) -
                    gRoomControls.origin_y;
            if (sub_080086B4(uVar3, uVar2, pbVar4) != 0) {
                sub_0807A750(uVar3, uVar2, pbVar4, 0);
            }
        }
    }
}

void sub_0807A750(u32 param_1, u32 param_2, const u8* param_3, u32 param_4) {
    u32 uVar2;
    u16* ptr;
    u32 uVar5;
    s32 index;

    if ((param_4 & 1) == 0) {
        index = param_2 % 16;
    } else {
        index = param_1 % 16;
    }
    if ((index != 0) && (index != 0xf)) {
        uVar2 = sub_080B1B44((param_1 >> 4 & 0x3f) | (param_2 >> 4 & 0x3f) << 6, gPlayerEntity.collisionLayer);
        if (uVar2 > 0xf) {
            if (uVar2 != 0xff) {
                uVar2 = param_3[uVar2 - 0x10];
            } else {
                uVar2 = 0xf;
            }
        }
        ptr = gUnk_0800823C[uVar2];
        if ((param_4 & 1) == 0) {
            uVar5 = 0x8000 >> (param_1 % 16);
            if (param_4 == 0) {
                while (index < 0xf) {
                    if ((ptr[index] & uVar5) == 0) {
                        break;
                    }
                    index++;
                }
                index--;
            } else {
                while (index > 0) {
                    if ((ptr[index] & uVar5) == 0) {
                        break;
                    }
                    index--;
                }
                index++;
            }
            gPlayerEntity.y.HALF.HI += index - (param_2 % 16);
        } else {
            uVar5 = ptr[param_2 % 16];
            if (param_4 == 1) {
                uVar5 = uVar5 >> ((0xf - index));
                while (index > 0) {
                    if ((uVar5 & 1) == 0) {
                        break;
                    }
                    uVar5 >>= 1;
                    index--;
                }
                index++;
            } else {
                uVar5 = uVar5 << index;
                while (index < 0xf) {
                    if ((uVar5 & 0x8000) == 0) {
                        break;
                    }
                    uVar5 <<= 1;
                    index++;
                }
                index--;
            }
            gPlayerEntity.x.HALF.HI += (index - (param_1 % 16));
        }
    }
}

u32 GetCollisionTileInFront(Entity* this) {
    s32 x;
    s32 y;
    switch (this->direction) {
        case DirectionNorth:
            y = -8;
            x = 0;
            break;
        case DirectionSouth:
            y = 5; // why??? ._.
            x = 0;
            break;
        case DirectionEast:
            y = 0;
            x = 8;
            break;
        case DirectionWest:
            y = 0;
            x = -8;
            break;
        default:
            y = 0;
            x = 0;
            break;
    }
    return GetRelativeCollisionTile(this, x, y);
}

void nullsub_505(void) {
}

void sub_0807A8D8(Entity* this) {
    u32 tmp;

    if ((gPlayerState.flags & PL_MINISH) == 0) {
        tmp = sub_080B1B84(COORD_TO_TILE_OFFSET(this, 0, 1), gPlayerEntity.collisionLayer);
        if ((tmp & 0x20) != 0) {
            sub_0807AAF8(this, COORD_TO_TILE_OFFSET(this, 0, 1));
        }
        tmp = sub_080B1B84(COORD_TO_TILE_OFFSET(this, -2, 0), gPlayerEntity.collisionLayer);
        if ((tmp & 0x20) != 0) {
            sub_0807AAF8(this, COORD_TO_TILE_OFFSET(this, -2, 0));
        }
        tmp = sub_080B1B84(COORD_TO_TILE_OFFSET(this, 2, 0), gPlayerEntity.collisionLayer);
        if ((tmp & 0x20) != 0) {
            sub_0807AAF8(this, COORD_TO_TILE_OFFSET(this, 2, 0));
        }
    }
    tmp = sub_080B1B84(COORD_TO_TILE(this), gPlayerEntity.collisionLayer);
    if ((tmp & 0x20) != 0) {
        sub_0807AAF8(this, COORD_TO_TILE(this));
    }
    if ((tmp & 2) != 0) {
        sub_0807AABC(this);
    } else {
        if ((tmp & 4) != 0) {
            sub_0807AA80(this);
        }
    }
}

void sub_0807AA80(Entity* this) {
    if (((gPlayerState.flags & PL_HIDDEN) == 0) && (this->collisionLayer = 2, this->z.HALF.HI == 0)) {
        this->spriteOrientation.flipY = 1;
        this->spriteRendering.b3 = 1;
    }
}

void sub_0807AABC(Entity* this) {
    if (((gPlayerState.flags & PL_HIDDEN) == 0) && (this->collisionLayer = 1, this->z.HALF.HI == 0)) {
        this->spriteOrientation.flipY = 2;
        this->spriteRendering.b3 = 2;
    }
}

void sub_0807AAF8(Entity* this, u32 tilePos) {
    u32 tmp;
    u32 index;
    if (this->z.HALF.HI == 0) {
        tilePos |= this->collisionLayer << 0x1e;
        for (index = 0; index < 0xf; index++) {
            if (gPlayerState.path_memory[index] == tilePos) {
                break;
            }
            tmp = gPlayerState.path_memory[index];
            gPlayerState.path_memory[index] = tilePos;
            tilePos = tmp;
        }
        gPlayerState.path_memory[index] = tilePos;
    }
}

void sub_0807AB44(Entity* this, s32 xOffset, s32 yOffset) {
    Entity* object;
    const u16* ptr =
        sub_0806FC50(GetTileType(COORD_TO_TILE_OFFSET(this, -xOffset, -yOffset), this->collisionLayer), 0xb);
    if (ptr != NULL) {
        if (ptr[3] == 0x76) {
            object = CreateObject(FLAME, 1, 0);
            if (object != NULL) {
                PositionRelative(this, object, xOffset << 0x10, yOffset << 0x10);
                sub_08004168(object);
                sub_0807B7D8(ptr[3], COORD_TO_TILE(object), object->collisionLayer);
            }
        } else {
            object = CreateObject(FLAME, 2, 0);
            if (object != NULL) {
                PositionRelative(this, object, xOffset << 0x10, yOffset << 0x10);
                object->child = (Entity*)ptr;
                SetTile(0x404f, COORD_TO_TILE(object), object->collisionLayer);
            }
        }
    }
}

bool32 sub_0807AC54(Entity* this) {
    if (gPlayerState.surfacePositionSameTimer == 0) {
        return FALSE;
    }

    switch (gPlayerState.floor_type) {
        case SURFACE_LADDER:
            this->x.HALF.HI = (this->x.HALF.HI & 0xfff0) | 8;
            // fallthrough
        case SURFACE_CLIMB_WALL:
            this->action = 0x1d;
            this->subAction = 0;
            this->y.HALF.LO = 0;
            gPlayerState.animation = ANIM_CLIMB1_UP;
            return TRUE;
        case SURFACE_AUTO_LADDER:
            this->x.HALF.HI = (this->x.HALF.HI & 0xfff0) | 8;
            // fallthrough
        case SURFACE_2C:
            this->action = 0x1d;
            this->subAction = 1;
            this->y.HALF.LO = 0;
            return TRUE;
        default:
            return FALSE;
    }
}

void PlayerSwimming(Entity* this) {
    s32 speed;
    this->spritePriority.b1 = 0;
    this->knockbackDuration = 0;
    if (GetInventoryValue(ITEM_SWIM_BUTTERFLY) == 1) {
        speed = 0x100;
    } else {
        speed = 0xc0;
    }
    if (speed > this->speed) {
        this->speed = speed;
        this->direction = gPlayerState.direction;
        if ((gPlayerState.swim_state & 0xf) != 1) {
            return;
        }
    } else {
        this->speed -= 4;
    }
    if (gPlayerState.remainingDiveTime == 0) {
        if (!ToggleDiving(this)) {
            PlayerUpdateSwimming(this);
        }
    } else {
        gPlayerState.remainingDiveTime--;
        if (gPlayerState.remainingDiveTime != 0) {
            ToggleDiving(this);
        } else {
            // End diving.
            gPlayerState.swim_state &= ~0x80;
            this->spritePriority.b0 = 4;
            SoundReq(SFX_TOGGLE_DIVING);
        }
    }
    if ((gPlayerState.swim_state & 0x80) != 0) {
        this->collisionFlags |= 4;
        this->spritePriority.b0 = 6;
    } else {
        this->collisionFlags &= 0xfb;
    }
}

bool32 ToggleDiving(Entity* this) {
    if (gPlayerState.playerInput.newInput & PLAYER_INPUT_10) {
        gPlayerState.swim_state ^= 0x80;
        if (gPlayerState.swim_state & 0x80) {
            gPlayerState.remainingDiveTime = 0x78;
        } else {
            this->spritePriority.b0 = 4;
            gPlayerState.remainingDiveTime = 0;
        }
        SoundReq(SFX_TOGGLE_DIVING);
        return TRUE;
    } else {
        return FALSE;
    }
}

void PlayerUpdateSwimming(Entity* this) {
    if ((((this->action != 0x17) || (gPlayerState.field_0xa == 0)) && (gRoomControls.reload_flags == 0)) &&
        ((gPlayerState.playerInput.newInput & PLAYER_INPUT_8) != 0)) {
        if (GetInventoryValue(ITEM_SWIM_BUTTERFLY) == 1) {
            this->speed = 0x1c0;
        } else {
            this->speed = 0x180;
        }
        sub_08079520(this);
        SoundReq(SFX_162);
    }
    if (sub_080793E4(0x10)) {
        this->iframes = 0x14;
        this->knockbackDuration = 4;
        this->knockbackDirection = this->animationState << 2 ^ 0x10;
        ModHealth(-2);
        SoundReq(SFX_PLY_VO6);
    }
    if (this->direction & DIR_NOT_MOVING_CHECK) {
        if ((gRoomTransition.frameCount & 0xf) == 0) {
            CreateRandomWaterTrace(this, 4);
        }
    } else {
        if ((gRoomTransition.frameCount & 7) == 0) {
            CreateWaterTrace(this);
        }
    }
}

void UpdatePlayerSkills(void) {
    gPlayerState.skills = SKILL_NONE;
    if (GetInventoryValue(ITEM_SKILL_SPIN_ATTACK) == 1) {
        gPlayerState.skills |= SKILL_SPIN_ATTACK;
    }
    if (GetInventoryValue(ITEM_SKILL_ROLL_ATTACK) == 1) {
        gPlayerState.skills |= SKILL_ROLL_ATTACK;
    }
    if (GetInventoryValue(ITEM_SKILL_DASH_ATTACK) == 1) {
        gPlayerState.skills |= SKILL_DASH_ATTACK;
    }
    if (GetInventoryValue(ITEM_SKILL_ROCK_BREAKER) == 1) {
        gPlayerState.skills |= SKILL_ROCK_BREAKER;
    }
    if (GetInventoryValue(ITEM_SKILL_SWORD_BEAM) == 1) {
        gPlayerState.skills |= SKILL_SWORD_BEAM;
    }
    if (GetInventoryValue(ITEM_SKILL_GREAT_SPIN) == 1) {
        gPlayerState.skills |= SKILL_GREAT_SPIN;
    }
    if (GetInventoryValue(ITEM_SKILL_DOWN_THRUST) == 1) {
        gPlayerState.skills |= SKILL_DOWN_THRUST;
    }
    if (GetInventoryValue(ITEM_SKILL_PERIL_BEAM) == 1) {
        gPlayerState.skills |= SKILL_PERIL_BEAM;
    }
    if (GetInventoryValue(ITEM_FOURSWORD) == 1) {
        gPlayerState.skills |= SKILL_FOURSWORD;
    }
    if (GetInventoryValue(ITEM_SKILL_FAST_SPIN) == 1) {
        gPlayerState.skills |= SKILL_FAST_SPIN;
    }
    if (GetInventoryValue(ITEM_SKILL_FAST_SPLIT) == 1) {
        gPlayerState.skills |= SKILL_FAST_SPLIT;
    }
    if (GetInventoryValue(ITEM_SKILL_LONG_SPIN) == 1) {
        gPlayerState.skills |= SKILL_LONG_SPIN;
    }
}

void PlayerShrinkByRay(void) {
    Entity* effect;
    PutAwayItems();
    effect = CreateFx(&gPlayerEntity, FX_BIG_EXPLOSION2, 0);
    if (effect != NULL) {
        effect->y.HALF.HI++;
    }
    gPlayerState.queued_action = PLAYER_MINISH;
}

/** Returns which kind of sword projectile is created. */
u32 GetSwordBeam(void) {
    if ((gPlayerState.skills & SKILL_SWORD_BEAM) && gSave.stats.health == gSave.stats.maxHealth) {
        return 0xf;
    } else {
        if ((gPlayerState.skills & SKILL_PERIL_BEAM) && gSave.stats.health <= 8) {
            return 0x16;
        } else {
            return 0;
        }
    }
}

void sub_0807B068(Entity* entity) {
    if (!(gPlayerState.dash_state | gPlayerState.attack_status)) {
        if (gPlayerState.swim_state) {
            if (gPlayerState.swim_state & 0x80) {
                gPlayerState.animation = ANIM_DIVE_MINISH;
            } else {
                gPlayerState.animation = ANIM_SWIM_MINISH;
            }
        } else {
            if (gPlayerState.direction & DIR_NOT_MOVING_CHECK) {
                if (gPlayerState.animation != ANIM_BOUNCE_MINISH) {
                    gPlayerState.animation = ANIM_BOUNCE_MINISH;
                }
            } else {
                if (gPlayerState.animation != ANIM_WALK_MINISH) {
                    gPlayerState.animation = ANIM_WALK_MINISH;
                }
            }
        }
    }
}

void sub_0807B0C8(void) {
    sub_0806FEBC(&gPlayerEntity, 0, 0);
    sub_0806FEBC(&gPlayerEntity, 1, 0);
    sub_0806FEBC(&gPlayerEntity, 2, &gPlayerEntity);
    sub_0806FEBC(&gPlayerEntity, 3, 0);
}

void PlayerWarp(PlayerEntity* this) {
    gUnk_0811C27C[super->subAction](this);
}

void sub_0807B114(PlayerEntity* this) {
    super->subAction = 1;
    this->unk_6c = gPlayerState.field_0x38;
}

void sub_0807B128(PlayerEntity* this) {
    gUnk_0811C284[this->unk_6c](this);
}

void sub_0807B144(PlayerEntity* this) {
    super->spriteSettings.draw = 1;
    super->direction = super->animationState << 2;
    super->speed = 0xa0;
    super->zVelocity = Q_16_16(4.0);
    gPlayerState.jump_status = 0x81;
    SetPlayerActionNormal();
}

void nullsub_506(PlayerEntity* this) {
}

void sub_0807B178(PlayerEntity* this) {
    super->spriteSettings.draw = 1;
    super->direction = 0x10;
    super->speed = 0;
    super->zVelocity = Q_16_16(4.0);
    gPlayerState.jump_status = 0x81;
    SetPlayerActionNormal();
}

void sub_0807B1A8(PlayerEntity* this) {
    gUnk_0811C298[this->unk_6e](this);
    if ((gRoomTransition.frameCount & 7) == 0) {
        CreateSparkle(super);
    }
}

void sub_0807B1DC(PlayerEntity* this) {
    this->unk_6e++;
    super->timer = 30;
}

void sub_0807B1EC(PlayerEntity* this) {
    if (--super->timer == 0) {
        this->unk_6e++;
        super->zVelocity = Q_16_16(1.0);
        gPlayerState.animation = ANIM_PORTAL;
    }
}

void sub_0807B21C(PlayerEntity* this) {
    UpdateAnimationSingleFrame(super);
    if (super->zVelocity < 0) {
        GravityUpdate(super, Q_8_8(4.0));
    } else {
        GravityUpdate(super, Q_8_8(8.0));
    }
    if (super->zVelocity < -Q_16_16(0.5)) {
        super->timer = 120;
        super->subtimer = 0;
        this->unk_6e++;
        this->unk_68 = super->z.WORD;
    }
}

void sub_0807B264(PlayerEntity* this) {
    s32 tmp;
    UpdateAnimationSingleFrame(super);
    super->subtimer += 2;
    tmp = gSineTable[super->subtimer];
    tmp >>= 7;
    tmp <<= 0x10;
    super->z.WORD = this->unk_68 + tmp;
    if (--super->timer == 0) {
        super->timer = 80;
        super->zVelocity = Q_16_16(0.5);
        this->unk_6e++;
#ifndef EU
        SoundReq(SFX_NEAR_PORTAL);
#endif
    }
}

void sub_0807B2B8(PlayerEntity* this) {
    GravityUpdate(super, Q_8_8(-32.0));
    UpdateAnimationSingleFrame(super);
    if (super->timer != 0 && --super->timer == 0) {
        DoExitTransition(&gUnk_0813AD88[this->unk_6d]);
    }
}

void sub_0807B2F8(PlayerEntity* this) {
    if (this->unk_6e == 0) {
        this->unk_6e++;
        sub_0809D738(super);
    }
}

void SetTileType(u32 tileType, u32 position, u32 layer) {
    u8 collisionData;
    u16 metatile;
    LayerStruct* data;
    u16* src;
    u16* dest;

    if (tileType < 0x800) {
        DeleteLoadedTileEntity(position, layer);
        data = GetLayerByIndex(layer);
        metatile = data->unkData2[tileType];
        data->mapData[position] = metatile;
        collisionData = gUnk_080B3E80[tileType];
        data->collisionData[position] = collisionData;
        if ((gRoomControls.scroll_flags & 2) != 0) {
            gMapBottom.collisionData[position] = collisionData;
        }
        data->unkData3[position] = gUnk_080B37A0[tileType];
        if ((gRoomControls.scroll_flags & 1) == 0) {
            u32 offset = (position & 0x3f) * 2 + (position & 0xfc0) * 4;
            if (layer != 2) {
                dest = gMapDataBottomSpecial + offset;
            } else {
                dest = gMapDataTopSpecial + offset;
            }
            src = data->metatiles + metatile * 4;
            *dest = *src;
            dest[1] = src[1];
            dest[0x80] = src[2];
            dest[0x81] = src[3];
            if (gRoomControls.reload_flags != 1) {
                gUpdateVisibleTiles = 1;
            }
        }
    } else if (tileType >= 0x4000) { // The tile type actually directly is a tileIndex
        SetTile(tileType, position, layer);
    } else {
        RestorePrevTileEntity(position, layer);
    }
}

bool32 sub_0807B434(u32 position, u32 layer) {
    switch (GetTileType(position, layer)) {
        case 0x36:
        case 0x37:
            return FALSE;
        default:
            return sub_080B1AE0(position, layer) != 0xd;
    }
}

bool32 sub_0807B464(u32 param_1, u32 param_2) {
    return sub_080B1AE0(param_1, param_2) == 0x56;
}

void sub_0807B480(u32 tilePos, u32 param_2) {
    u32 tmp1;
    u16 tmp2;
    u16 tmp3;
    u16 tileType;
    const u16* ptr;

    if (sub_0807B464(tilePos, 2)) {
        tmp1 = sub_0807B464(tilePos - 0x40, 2);
        tmp1 |= sub_0807B464(tilePos + 1, 2) << 1;
        tmp1 |= sub_0807B464(tilePos + 0x40, 2) << 2;
        tmp1 |= sub_0807B464(tilePos - 1, 2) << 3;
        tmp1 |= sub_0807B464(tilePos + 0x41, 1) << 1;
        tmp1 |= sub_0807B464(tilePos + 0x3f, 1) << 3;
        if (GetTileType(tilePos + 0x40, 2) != 0) {
            tmp1 |= sub_0807B464(tilePos + 0x80, 1) << 2;
        }
        tmp2 = gUnk_0811C2CC[tmp1];
        tileType = GetTileType(tilePos, 2);
        ptr = gUnk_0811C2EC;
        tmp3 = 0;
        for (; *ptr != 0; ptr = ptr + 3) {
            if (tileType == ptr[0]) {
                tmp3 = ptr[1];
                break;
            }
        }
        tmp3 = tmp3 & ~(1 << (param_2));
        for (ptr = gUnk_0811C2EC; *ptr != 0; ptr = ptr + 3) {
            if ((tmp3 == ptr[1]) && (tmp1 == ptr[2])) {
                tmp2 = ptr[0];
                break;
            }
        }
        SetTileType(tmp2, tilePos, 2);
    }
}

void sub_0807B55C(u32 param_1, u32 param_2, u16* param_3) {
    u32 tmp;
    if (sub_0807B464(param_1, param_2)) {
        tmp = sub_0807B464(param_1 - 0x40, param_2);
        tmp |= sub_0807B464(param_1 + 1, param_2) << 1;
        tmp |= sub_0807B464(param_1 + 0x40, param_2) << 2;
        tmp |= sub_0807B464(param_1 - 1, param_2) << 3;
        SetTileType(param_3[tmp], param_1, param_2);
    }
}

bool32 sub_0807B5B0(Entity* this) {
    return sub_0807B600(COORD_TO_TILE_OFFSET(this, -gUnk_0811C456[(this->animationState & 6)],
                                             -gUnk_0811C456[(this->animationState & 6) + 1]));
}

u32 sub_0807B600(u32 param_1) {
    u32 tileType;
    u32 tile;

    tile = param_1 - 0x40;
    if (sub_080B1AE0(param_1, 1) != 0x56) {
        return FALSE;
    } else {
        tileType = GetTileType(param_1, 1);
        if (tileType == 0x26a) {
            sub_0807B820(param_1);
        } else if (tileType == 0x267) {
            sub_0807B820(param_1 + 0x40);
        } else if (tileType == 0x27a) {
            sub_0807B8A8(param_1);
        } else if (tileType == 0x277) {
            sub_0807B8A8(param_1 + 0x40);
        } else if (tileType == 0x28a) {
            sub_0807B930(param_1);
        } else if (tileType == 0x287) {
            sub_0807B930(param_1 + 0x40);
        } else {
            if (GetTileType(param_1, 2) != 0) {
                SetTileType(0x2f2, param_1, 1);
                if (sub_080B1B44(tile, 1) == 3) {
                    SetTileType(0x2f4, tile, 1);
                }
                if (sub_080B1B44(param_1 + 0x40, 1) == 3) {
                    SetTileType(0x2f4, param_1, 1);
                }
            } else {
                SetTileType(0x2f4, param_1, 1);
            }
            if (sub_0807B464(tile, 2)) {
                SetTileType(0, tile, 2);
                if (GetTileType(tile, 1) == 0x2f2) {
                    SetTileType(0x2f4, tile, 1);
                }
                sub_0807B55C(param_1 + 1, 1, (u16*)&gUnk_0811C2AC);
                sub_0807B55C(param_1 - 1, 1, (u16*)&gUnk_0811C2AC);
                sub_0807B55C(tile, 1, (u16*)&gUnk_0811C2AC);
            }
            sub_0807B480(tile + 1, 3);
            sub_0807B480(tile - 1, 1);
            sub_0807B480(tile + 0x40, 0);
            sub_0807B480(tile - 0x40, 2);
        }
        return TRUE;
    }
}

void sub_0807B778(u32 position, u32 layer) {
    u32 tmp;
    if (sub_080B1AE0(position, layer) == 0xd) {
        tmp = sub_0807B434(position - 0x40, layer);
        tmp |= sub_0807B434(position + 1, layer) << 1;
        tmp |= sub_0807B434(position + 0x40, layer) << 2;
        tmp |= sub_0807B434(position - 1, layer) << 3;
        SetTileType(gUnk_0811C466[tmp], position, layer);
    }
}

void sub_0807B7D8(u32 param_1, u32 param_2, u32 param_3) {
    if (param_1 == 53) {
        CloneTile(53, param_2, param_3);
        sub_0807B778(param_2, param_3);
        sub_0807B778(param_2 + 1, param_3);
        sub_0807B778(param_2 - 1, param_3);
        sub_0807B778(param_2 + 64, param_3);
        sub_0807B778(param_2 - 64, param_3);
    } else {
        SetTileType(param_1, param_2, param_3);
    }
}

void sub_0807B820(u32 position) {
    SetTileType(0x26c, position + TILE_POS(-1, -1), 1);
    SetTileType(0x273, position + TILE_POS(-1, -1), 2);
    SetTileType(0x26d, position + TILE_POS(0, -1), 1);
    SetTileType(0x274, position + TILE_POS(0, -1), 2);
    SetTileType(0x26e, position + TILE_POS(1, -1), 1);
    SetTileType(0x275, position + TILE_POS(1, -1), 2);
    SetTileType(0x26f, position + TILE_POS(-1, 0), 1);
    SetTileType(0x270, position, 1);
    SetTileType(0x272, position + TILE_POS(1, 0), 1);
}

void sub_0807B8A8(u32 position) {
    SetTileType(0x27c, position + TILE_POS(-1, -1), 1);
    SetTileType(0x283, position + TILE_POS(-1, -1), 2);
    SetTileType(0x27d, position + TILE_POS(0, -1), 1);
    SetTileType(0x284, position + TILE_POS(0, -1), 2);
    SetTileType(0x27e, position + TILE_POS(1, -1), 1);
    SetTileType(0x285, position + TILE_POS(1, -1), 2);
    SetTileType(0x27f, position + TILE_POS(-1, 0), 1);
    SetTileType(0x280, position, 1);
    SetTileType(0x282, position + TILE_POS(1, 0), 1);
}

void sub_0807B930(u32 position) {
    SetTileType(0x28c, position + TILE_POS(-1, -1), 1);
    SetTileType(0x293, position + TILE_POS(-1, -1), 2);
    SetTileType(0x28d, position + TILE_POS(0, -1), 1);
    SetTileType(0x294, position + TILE_POS(0, -1), 2);
    SetTileType(0x28e, position + TILE_POS(1, -1), 1);
    SetTileType(0x295, position + TILE_POS(1, -1), 2);
    SetTileType(0x28f, position + TILE_POS(-1, 0), 1);
    SetTileType(0x290, position, 1);
    SetTileType(0x292, position + TILE_POS(1, 0), 1);
}

void sub_0807B9B8(u32 tileIndex, u32 position, u32 layer) {
    LayerStruct* data;
    u16* src;
    u16* dest;
    u16 tileType;

    DeleteLoadedTileEntity(position, layer);
    data = GetLayerByIndex(layer);
    data->mapData[position] = tileIndex;
    tileType = data->metatileTypes[tileIndex];
    data->collisionData[position] = gUnk_080B3E80[tileType];
    data->unkData3[position] = gUnk_080B37A0[tileType];
    if ((gRoomControls.scroll_flags & 1) == 0) {
        u32 offset = (position & 0x3f) * 2 + (position & 0xfc0) * 4;
        if (layer != 2) {
            dest = gMapDataBottomSpecial + offset;
        } else {
            dest = gMapDataTopSpecial + offset;
        }
        src = data->metatiles + tileIndex * 4;
        *dest = *src;
        dest[1] = src[1];
        dest[0x80] = src[2];
        dest[0x81] = src[3];
        if (gRoomControls.reload_flags != 1) {
            gUpdateVisibleTiles = 1;
        }
    }
}

void RestorePrevTileEntity(u32 position, u32 layer) {
    u32 tileIndex;
    u32 tileType;
    LayerStruct* data;
    u16* dest;
    u16* src;

    DeleteLoadedTileEntity(position, layer);
    data = GetLayerByIndex(layer);
    data->mapData[position] = tileIndex = data->mapDataClone[position];
    tileType = data->metatileTypes[tileIndex];
    data->collisionData[position] = gUnk_080B3E80[tileType];
    data->unkData3[position] = gUnk_080B37A0[tileType];
    if ((gRoomControls.scroll_flags & 1) == 0) {
        u32 offset = (position & 0x3f) * 2 + (position & 0xfc0) * 4;
        if (layer != 2) {
            dest = gMapDataBottomSpecial + offset;
        } else {
            dest = gMapDataTopSpecial + offset;
        }
        src = &data->metatiles[tileIndex * 4];
        dest[0] = src[0];
        dest[1] = src[1];
        dest[0x80] = src[2];
        dest[0x81] = src[3];
        if (gRoomControls.reload_flags != 1) {
            gUpdateVisibleTiles = 1;
        }
    }
}

void sub_0807BB68(const s16* param_1, u32 basePosition, u32 layer) {
    while (param_1[0] != -1) {
        SetTileType((u16)param_1[0], basePosition + param_1[1], layer);
        param_1 += 2;
    }
}

void sub_0807BB98(s32 basePosition, u32 layer, u32 width, u32 height) {
    u32 y;
    u32 x;
    for (y = 0; y < height; y++) {
        for (x = 0; x < width; x++) {
            SetTile(0x4072, basePosition + x, layer);
        }
        basePosition += 0x40;
    }
}

void sub_0807BBE4(void) {
    u32 tile;
    u8* topCollision;
    u8* bottomCollision;
    u32 index;
    u16* topMap;
    u16* bottomMap;
    u16* bottomMetatiles;
    u16* topMetatiles;

    bottomMetatiles = gMapBottom.metatileTypes;
    topMetatiles = gMapTop.metatileTypes;

    bottomMap = gMapBottom.mapData;
    topMap = gMapTop.mapData;
    bottomCollision = gMapBottom.collisionData;
    topCollision = gMapTop.collisionData;
    index = 0;
    for (index = 0; index < 0x40 * 0x40; index++) {
        tile = *bottomMap;
        bottomMap++;
        if (tile < 0x4000) {
            *bottomCollision = gUnk_080B3E80[bottomMetatiles[tile]];
        } else {
            *bottomCollision = gUnk_080B79A7[tile - 0x4000];
        }
        bottomCollision++;
        tile = (u32)*topMap;
        topMap++;
        if (tile < 0x4000) {
            *topCollision = gUnk_080B3E80[topMetatiles[tile]];
        } else {
            *topCollision = gUnk_080B79A7[tile - 0x4000];
        }
        topCollision++;
    }
}

void sub_0807BC84(void) {
    s32 height;
    u32 width;
    u8* puVar3;
    u8* puVar4;
    u8* puVar5;
    u8* puVar6;
    u32 index;

    width = (u32)(gRoomControls.width >> 4);
    if (width == 0x40) {
        width = 0x3f;
    }
    puVar4 = gMapBottom.collisionData + width;
    puVar6 = gMapBottom.collisionData + 0x3f;
    puVar3 = gMapTop.collisionData + width;
    puVar5 = gMapTop.collisionData + 0x3f;
    index = 0;
    while (index < 0x40) {
        *puVar4 = 0xff;
        *puVar6 = 0xff;
        *puVar3 = 0xff;
        *puVar5 = 0xff;
        puVar4 += 0x40;
        puVar6 += 0x40;
        puVar3 += 0x40;
        puVar5 += 0x40;
        index++;
    }
    height = (gRoomControls.height & 0xfff0) * 4;
    puVar4 = gMapBottom.collisionData + height;
    puVar6 = gMapBottom.collisionData + 0xfc0;
    puVar3 = gMapTop.collisionData + height;
    puVar5 = gMapTop.collisionData + 0xfc0;
    index = 0;
    while (index < 0x40) {
        *puVar4 = 0xff;
        puVar4++;
        *puVar6 = 0xff;
        puVar6++;
        *puVar3 = 0xff;
        puVar3++;
        *puVar5 = 0xff;
        puVar5++;
        index++;
    }
}

bool32 sub_0807BD14(Entity* this, u32 scrollDirection) {
    u32 room = sub_0807BEEC(this->x.HALF.HI, this->y.HALF.HI, scrollDirection);
    if (room != 0xff) {
        gRoomControls.scrollAction = 2;
        gRoomControls.scrollSubAction = 0;
        gRoomControls.reload_flags = 1;
        gRoomControls.room = room;
        gRoomControls.scroll_direction = scrollDirection;
        gArea.pCurrentRoomInfo = GetCurrentRoomInfo();
        if (gArea.unk_0c_0 != 0) {
            switch (scrollDirection) {
                case 0:
                    gArea.pCurrentRoomInfo->map_y -= gArea.pCurrentRoomInfo->pixel_height;
                    break;
                case 1:
                    gArea.pCurrentRoomInfo->map_x = gArea.pCurrentRoomInfo->map_x + gArea.pCurrentRoomInfo->pixel_width;
                    break;
                case 2:
                    gArea.pCurrentRoomInfo->map_y =
                        gArea.pCurrentRoomInfo->map_y + gArea.pCurrentRoomInfo->pixel_height;
                    break;
                case 3:
                    gArea.pCurrentRoomInfo->map_x = gArea.pCurrentRoomInfo->map_x - gArea.pCurrentRoomInfo->pixel_width;
                    break;
            }
        }
        gPlayerEntity.updatePriority = 6;
        SetInitializationPriority();
        return TRUE;
    } else {
        return FALSE;
    }
}

u32 sub_0807BDB8(Entity* this, u32 param_2) {
    u32 result = 0xff;
    switch (param_2 & 7) {
        case 0:
            if (this->y.HALF.HI - (u32)gRoomControls.origin_y < 10) {
                result = 0;
            }
            break;
        case 1:
            if (this->y.HALF.HI - (u32)gRoomControls.origin_y < 10) {
                result = 0;
            }
            if (gRoomControls.width - 10 < this->x.HALF.HI - (u32)gRoomControls.origin_x) {
                result = 1;
            }
            break;
        case 2:
            if (gRoomControls.width - 10 < this->x.HALF.HI - (u32)gRoomControls.origin_x) {
                result = 1;
            }
            break;
        case 3:
            if (gRoomControls.height - 10 < this->y.HALF.HI - (u32)gRoomControls.origin_y) {
                result = 2;
            }
            if (gRoomControls.width - 10 < this->x.HALF.HI - (u32)gRoomControls.origin_x) {
                result = 1;
            }
            break;
        case 4:
            if (gRoomControls.height - 10 < this->y.HALF.HI - (u32)gRoomControls.origin_y) {
                result = 2;
            }
            break;
        case 5:
            if (gRoomControls.height - 10 < this->y.HALF.HI - (u32)gRoomControls.origin_y) {
                result = 2;
            }
            if (this->x.HALF.HI - (u32)gRoomControls.origin_x < 10) {
                result = 3;
            }
            break;
        case 6:
            if (this->x.HALF.HI - (u32)gRoomControls.origin_x < 10) {
                result = 3;
            }
            break;
        case 7:
            if (this->y.HALF.HI - (u32)gRoomControls.origin_y < 10) {
                result = 0;
            }
            if (this->x.HALF.HI - (u32)gRoomControls.origin_x < 10) {
                result = 3;
            }
    }
    return result;
}

u32 sub_0807BEEC(u32 param_1, u32 param_2, u32 param_3) {
    u32 index;
    RoomResInfo* ptr;
    if ((gArea.filler3[-1] & 1) != 0) {
        return gRoomControls.room;
    }
    switch (param_3) {
        case 0:
            param_2 = gRoomControls.origin_y - 0x10;
            break;
        case 1:
            param_1 = gRoomControls.origin_x + gRoomControls.width + 0x10;
            break;
        case 2:
            param_2 = gRoomControls.origin_y + gRoomControls.height + 0x10;
            break;
        case 3:
            param_1 = gRoomControls.origin_x - 0x10;
            break;
        default:
            return 0xff;
    }
    ptr = gArea.roomResInfos;
    index = 0;
    while (index < 0x40) {
        if (sub_0807BF88(param_1, param_2, ptr)) {
            return index;
        }
        index++;
        ptr++;
    }
    return 0xff;
}

bool32 sub_0807BF88(u32 param_1, u32 param_2, RoomResInfo* info) {
    u32 width = param_1 - info->map_x;
    u32 height = param_2 - info->map_y;
    bool32 result = FALSE;
    if (width < info->pixel_width && height < info->pixel_height) {
        result = TRUE;
    }
    return result;
}

void sub_0807BFA8(void) {
    gRoomControls.origin_x = (gArea.pCurrentRoomInfo)->map_x;
    gRoomControls.origin_y = (gArea.pCurrentRoomInfo)->map_y;
    gRoomControls.width = (gArea.pCurrentRoomInfo)->pixel_width;
    gRoomControls.height = (gArea.pCurrentRoomInfo)->pixel_height;
}

ASM_FUNC("asm/non_matching/playerUtils/sub_0807BFD0.inc", void sub_0807BFD0())

void LoadRoomGfx(void) {
    RoomControls* roomControls;
    bool32 tmp;

    sub_0807BFA8();
    roomControls = &gRoomControls;
    roomControls->scroll_flags &= 0xfc;
    MemClear(gMapTop.mapData, sizeof(gMapTop.mapData));
    MemClear(gMapTop.collisionData, sizeof(gMapTop.collisionData));
    MemClear(&gMapDataBottomSpecial, 0x8000);
    MemClear(&gMapDataTopSpecial, 0x8000);
    sub_080197D4((gArea.pCurrentRoomInfo)->map);
    if (gMapBottom.mapData[0] != 0xffff) {
        sub_0807C8B0(gMapBottom.mapData, roomControls->width >> 4, roomControls->height >> 4);
        sub_0807C8B0(gMapTop.mapData, roomControls->width >> 4, roomControls->height >> 4);
        tmp = FALSE;
    } else {
        MemClear(gMapBottom.mapData, sizeof(gMapBottom.mapData));
        tmp = TRUE;
    }
    if (gRoomTransition.field2d == 0) {
        MemCopy(gMapBottom.mapData, gMapBottom.mapDataClone, sizeof(gMapBottom.mapData));
        MemCopy(gMapTop.mapData, gMapTop.mapDataClone, sizeof(gMapBottom.mapData));
    } else if (gRoomTransition.field2d == 2) {
        MemCopy(gMapBottom.mapData, gMapBottom.unkData3, 0x1000);
        MemCopy(gMapBottom.mapDataClone, gMapBottom.mapData, 0x1000);
        MemCopy(gMapBottom.unkData3, gMapBottom.mapDataClone, 0x1000);
        MemCopy(gMapBottom.mapData + 0x800, gMapBottom.unkData3, 0x1000);
        MemCopy(gMapBottom.mapDataClone + 0x800, gMapBottom.mapData + 0x800, 0x1000);
        MemCopy(gMapBottom.unkData3, gMapBottom.mapDataClone + 0x800, 0x1000);
        MemCopy(gMapTop.mapData, gMapTop.unkData3, 0x1000);
        MemCopy(gMapTop.mapDataClone, gMapTop.mapData, 0x1000);
        MemCopy(gMapTop.unkData3, gMapTop.mapDataClone, 0x1000);
        MemCopy(gMapTop.mapData + 0x800, gMapTop.unkData3, 0x1000);
        MemCopy(gMapTop.mapDataClone + 0x800, gMapTop.mapData + 0x800, 0x1000);
        MemCopy(gMapTop.unkData3, gMapTop.mapDataClone + 0x800, 0x1000);
    }
    if (!tmp) {
        sub_0807BBE4();
    } else {
        sub_0807C69C(gMapBottom.collisionData, roomControls->width >> 4, roomControls->height >> 4);
        sub_0807C69C(gMapTop.collisionData, roomControls->width >> 4, roomControls->height >> 4);
        sub_0807C460();
    }
    sub_0807BC84();
    sub_08080B60(&gMapBottom);
    sub_08080B60(&gMapTop);
    if (!tmp) {
        sub_0801AB08((u16*)&gMapDataBottomSpecial, &gMapBottom);
        sub_0801AB08((u16*)&gMapDataTopSpecial, &gMapTop);
    } else {
        MemCopy(&gMapDataBottomSpecial, &gMapDataBottomSpecial[0x2000], 0x4000); // TODO
        sub_0807C5F4((u16*)&gMapDataBottomSpecial, &gMapDataBottomSpecial[0x2000]);
        MemClear(&gMapDataBottomSpecial[0x2000], 0x4000);
        MemCopy(&gMapDataTopSpecial, &gMapDataTopSpecial[0x2000], 0x4000);
        sub_0807C5F4((u16*)&gMapDataTopSpecial, (u16*)&gMapDataTopSpecial[0x2000]);
        MemClear(&gMapDataTopSpecial[0x2000], 0x4000);
    }
    if (tmp || roomControls->area == 0x71) {
        roomControls->scroll_flags |= 1;
    }

    switch (roomControls->area) {
        case 0x20:
        case 0x2d:
            if (gMapBottom.bgSettings != NULL) {
                gMapBottom.bgSettings->control |= 0x80;
            }
            gScreen.lcd.displayControl &= 0xfdff;
            break;
        case 0x21:
        case 0x22:
        case 0x23:
        case 0x24:
        case 0x25:
        case 0x27:
        case 0x28:
        case 0x30:
        case 0x38:
            if (gMapTop.bgSettings != NULL) {
                gMapTop.bgSettings->control = gUnk_080B77C0[2];
            }
            sub_0807C5B0();
            break;
        default:
            if (gMapBottom.bgSettings != NULL) {
                gMapBottom.bgSettings->control = gUnk_080B77C0[0];
            }
            if (gMapTop.bgSettings != NULL) {
                gMapTop.bgSettings->control = gUnk_080B77C0[1];
            }

            gScreen.lcd.displayControl = (gScreen.lcd.displayControl & 0x800) | DISPCNT_OBJ_ON | DISPCNT_BG2_ON |
                                         DISPCNT_BG1_ON | DISPCNT_BG0_ON | DISPCNT_OBJ_1D_MAP;

            if (gArea.lightType != 0) {
                gScreen.lcd.displayControl |= DISPCNT_OBJWIN_ON | DISPCNT_WIN0_ON;
            }
            break;
    }
}

void sub_0807C460(void) {
    u32 x;
    u32 y;
    u16* mapBottom = gMapBottom.mapData;
    u16* mapTop = gMapTop.mapData;
    u32 width = gRoomControls.width >> 4;
    u32 height = gRoomControls.height >> 4;
    u32 position = 0;

    for (y = 0; y < height; y++) {
        for (x = 0; x < width; x++) {
            if (*mapBottom > 0x3fff) {
                SetTile(*mapBottom, position, 1);
            }
            if (*mapTop > 0x3fff) {
                SetTile(*mapTop, position, 2);
            }
            mapBottom++;
            mapTop++;
            position++;
        }
        mapBottom += 0x40 - width;
        mapTop += 0x40 - width;
        position += 0x40 - width;
    }
}

void sub_0807C4F8(void) {
    u32* puVar1;
    u32* ptr;

    if (gRoomControls.area != 0x71) {
        MemClear(gMapDataBottomSpecial, 0x8000);
        MemClear(&gMapDataTopSpecial, 0x8000);
        ptr = gUnk_02022830;
        puVar1 = (u32*)(gArea.pCurrentRoomInfo)->map;
        puVar1 -= 3;
        do {
            puVar1 += 3;
            if (((u16*)puVar1[1] == gMapDataBottomSpecial) || ((u16*)puVar1[1] == (u16*)&gMapDataTopSpecial)) {
                ptr[0] = puVar1[0] & 0x7fffffff;
                ptr[1] = puVar1[1];
                ptr[2] = puVar1[2];
                sub_080197D4(ptr);
            }
        } while ((s32)*puVar1 < 0);
        MemCopy(gMapDataBottomSpecial, gMapDataBottomSpecial + 0x2000, 0x4000);
        sub_0807C5F4(gMapDataBottomSpecial, gMapDataBottomSpecial + 0x2000);

        MemClear(gMapDataBottomSpecial + 0x2000, 0x4000);
        MemCopy(gMapDataTopSpecial, gMapDataTopSpecial + 0x2000, 0x4000);
        sub_0807C5F4(gMapDataTopSpecial, gMapDataTopSpecial + 0x2000);
        MemClear(gMapDataTopSpecial + 0x2000, 0x4000);
    }
}

void sub_0807C5B0(void) {
    u8 colTop;
    u8 colBot;
    u8* puVar2;
    u8* collisionTop = gMapTop.collisionData;
    u32 thousand = 0x1000;
    u32 index = 0;
    RoomControls* roomControls = &gRoomControls;
    u8* collisionBottom = gMapBottom.collisionData;
    while (index < thousand) {
        colTop = collisionTop[index];
        if (colTop != 0) {
            if (colTop < 0x10) {
                colBot = collisionBottom[index];
                if (colBot < 0x10) {
                    collisionBottom[index] = colTop | colBot;
                }
            } else {
                collisionBottom[index] = collisionTop[index];
            }
        }
        index++;
    }
    roomControls->scroll_flags |= 2;
}

void sub_0807C5F4(u16* param_1, u16* param_2) {
    s32 iVar1;
    u16* puVar2;
    u16* puVar3;
    u32 uVar4;
    u32 index;
    u32 innerIndex;

    puVar2 = param_1;
    for (iVar1 = 0x20; iVar1 != 0; iVar1--) {
        for (uVar4 = 0; uVar4 < 0x20; uVar4++) {
            *puVar2 = *param_2;
            param_2++;
            puVar2++;
        }
        puVar2 += 0x60;
    }

    if (gRoomControls.width > 0xff) {
        puVar2 = param_1 + 0x20;
        for (iVar1 = 0x20; iVar1 != 0; iVar1--) {
            for (uVar4 = 0; uVar4 < 0x20; uVar4++) {
                *puVar2 = *param_2;
                param_2++;
                puVar2++;
            }
            puVar2 += 0x60;
        }
    }
    if (gRoomControls.height > 0xff) {
        puVar2 = param_1 + 0x1000;
        for (iVar1 = 0x20; iVar1 != 0; iVar1--) {
            for (uVar4 = 0; uVar4 < 0x20; uVar4++) {
                *puVar2 = *param_2;
                param_2++;
                puVar2++;
            }
            puVar2 += 0x60;
        }
    }
    if (gRoomControls.width > 0xff && gRoomControls.height > 0xff) {
        param_1 += 0x1020;
        puVar2 = param_1;

        for (iVar1 = 0x20; iVar1 != 0; iVar1--) {
            for (uVar4 = 0; uVar4 < 0x20; uVar4++) {
                *puVar2++ = *param_2++;
            }
            puVar2 += 0x60;
        }
    }
}

void sub_0807C69C(u8* data, u32 width, u32 height) {
    u8* ptr1;
    u8* ptr2;
    u32 index;
    u32 innerIndex;
    u32 tmp1;

    ptr2 = data + width * height - 1;
    ptr1 = data + (height - 1) * 0x40 - 1 + width;

    for (index = 0; index < height; index++) {
        for (innerIndex = 0; innerIndex < width; innerIndex++) {
            ptr1[-innerIndex] = ptr2[-innerIndex];
        }
        ptr1 -= 0x40;
        ptr2 -= width;
    }

    tmp1 = 0x40 - width;

    for (index = 0; index < 0x40; index++) {
        ptr1 = data + width + (index * 0x40);
        for (innerIndex = 0; innerIndex < tmp1; innerIndex++) {
            ptr1[innerIndex] = 0;
        }
    }

    tmp1 = 0x40 - height;
    ptr1 = data + height * 0x40;

    for (index = 0; index < tmp1; index++) {
        MemClear(ptr1, 0x40);
        ptr1 += 0x40;
    }
}

void InitializeCamera() {
    s32 targetX;
    s32 targetY;
    Entity* target;
    RoomControls* roomControls;
    u32 tmp1;
    u32 tmp2;

    sub_0807BFD0();
    LoadRoomGfx();
    roomControls = &gRoomControls;
    target = gRoomControls.camera_target;
    if (target != NULL) {
        if ((target->x.HALF_U.HI * 0x10000) < 0) {
            tmp1 = (target->x.HALF.HI & 0x7fff);
            tmp1 -= gRoomControls.origin_x;
            target->x.HALF.HI = tmp1;
        }
        targetX = target->x.HALF.HI;
        if ((target->y.HALF_U.HI * 0x10000) < 0) {
            tmp2 = (target->y.HALF.HI & 0x7fff);
            tmp2 -= gRoomControls.origin_y;
            target->y.HALF.HI = tmp2;
        }
        targetY = target->y.HALF.HI;
    } else {
        targetX = 0;
        targetY = 0;
    }

    if (targetX < 0x78) {
        roomControls->scroll_x = 0;
    } else {
        if ((roomControls->width - 0x78) < targetX) {
            roomControls->scroll_x = roomControls->width - 0x78 - 0x78;
        } else {
            roomControls->scroll_x = targetX - 0x78;
        }
    }
    roomControls->scroll_x += roomControls->origin_x;

    if (targetY < 0x50) {
        roomControls->scroll_y = 0;
    } else {
        if ((roomControls->height - 0x50) < targetY) {
            roomControls->scroll_y = roomControls->height - 0x50 - 0x50;
        } else {
            roomControls->scroll_y = targetY - 0x50;
        }
    }
    roomControls->scroll_y += roomControls->origin_y;

    if (roomControls->camera_target != NULL) {
        roomControls->camera_target->x.HALF.HI += roomControls->origin_x;
        roomControls->camera_target->y.HALF.HI += roomControls->origin_y;
        if ((gRoomControls.scroll_flags & 2) != 0) {
            roomControls->camera_target->collisionLayer = 1;
            UpdateSpriteForCollisionLayer(roomControls->camera_target);
        }
    }
    roomControls->scroll_flags &= 0xfb;
    sub_08080BC4();
}

void sub_0807C810(void) {
    DiggingCaveEntranceTransition* ptr;
    Entity* player;
    RoomControls* ctrls;
    sub_0807BFD0();
    ptr = &gDiggingCaveEntranceTransition;
    player = &gPlayerEntity;
    ctrls = &gRoomControls;
    player->x.HALF.HI = ((ptr->entrance)->targetTilePosition & 0x3f) * 0x10 + ctrls->origin_x + ptr->offsetX;
    player->y.HALF.HI = (((ptr->entrance)->targetTilePosition & 0xfc0) >> 2) + ctrls->origin_y + ptr->offsetY;
    sub_080809D4();
    gUpdateVisibleTiles = 0;
}

/**
 * This function is used to create a copy of the map data for temporary cutscene changes.
 */
void CloneMapData(void) {
    gRoomTransition.field2d = 1;
    MemCopy(&gMapBottom.mapData, &gMapBottom.mapDataClone, 0x2000);
    MemCopy(&gMapTop.mapData, &gMapTop.mapDataClone, 0x2000);
}

void sub_0807C898(void) {
    gRoomTransition.field2d = 2;
    LoadRoomGfx();
    gRoomTransition.field2d = 0;
}

ASM_FUNC("asm/non_matching/playerUtils/sub_0807C8B0.inc", void sub_0807C8B0(u16* a, u32 b, u32 c))

void LoadCompressedMapData(void* dest, u32 offset) {
    void* src;

    if (offset != -1) {
        src = &gMapData + (offset & 0x7fffffff);
        if ((u32)dest >> 0x18 == 6) {
            LZ77UnCompVram(src, (void*)dest);
        } else {
            LZ77UnCompWram(src, (void*)dest);
        }
    }
}

void sub_0807C998(u32* a1) {
    LoadCompressedMapData(&gMapBottom.metatiles, a1[0]);
    LoadCompressedMapData(&gMapBottom.metatileTypes, a1[1]);
    LoadCompressedMapData(&gMapTop.metatiles, a1[2]);
    LoadCompressedMapData(&gMapTop.metatileTypes, a1[3]);
}

void sub_0807C9D8(u32* a1) {
    u32* v1; // r5@1

    v1 = a1;
    LoadCompressedMapData((u8*)0x6004000, *a1);
    LoadCompressedMapData((u8*)0x6000000, v1[1]);
    LoadCompressedMapData((u8*)0x6008000, v1[2]);
    LoadCompressedMapData((u8*)gUnk_020176E0, v1[3]);
    LoadPalettes(gUnk_020176E0, 2, 13);
}

u32 FinalizeSave(void) {
    if (gSave.invalid || gSave.initialized != 1) {
        gSave.invalid = 0;
        gSave.initialized = 1;
        gSave.global_progress = 1;
        gSave.stats.health = 24;
        gSave.stats.maxHealth = 24;
        gSave.saved_status.area_next = 0x22;
        gSave.saved_status.room_next = 0x15; // links room
        gSave.saved_status.start_anim = 0;
        gSave.saved_status.spawn_type = PL_SPAWN_DEFAULT;
        gSave.saved_status.layer = 1;
        gSave.saved_status.start_pos_x = 0x90;
        gSave.saved_status.start_pos_y = 0x38;
    }
    if (gSave.name[0] == 0) {
        MemCopy(gUnk_0811E470, &gSave.name, FILENAME_LENGTH - 1);
    }
#ifdef DEMO_USA
    {
        const u8* tmp;
        MemCopy(demoPointers[gSaveHeader->saveFileId], &gSave, 0x4B4);
        if (gSaveHeader->language == 0) {
            gSave.name[0] = 0x97;
            gSave.name[1] = 0x7F;
            gSave.name[2] = 0xDD;
            gSave.name[3] = 0;
        }
        ModHealth(0xA0);
        ModRupees(-9999);
        tmp = demoUnknown1 + gUnk_02000010.field_0x7 * 3;
        gSave.demo_timer = tmp[gSaveHeader->saveFileId] * 3600;
    }
#endif
    return 1;
}

u32 GetInventoryValue(u32 item) {
    u8* address = &gSave.inventory[item / 4];
    return *address >> ((item & 3) << 1) & 3;
}

u32 SetInventoryValue(u32 item, u32 value) {
    u32 masked_value, value_update, old_value, offset;
    u8* address;

    address = &gSave.inventory[item / 4];
    offset = (item % 4) * 2;
    value_update = value << offset;
    old_value = *address;
    masked_value = old_value & (3 << offset);
    *address = (old_value ^ masked_value) | value_update;
    return masked_value >> offset;
}

void EnableDungeonWarp(u32 warp) {
    gSave.dungeonWarps[gArea.dungeon_idx] |= (1 << warp);
}

u32 IsDungeonWarpActive(u32 warp) {
    return gSave.dungeonWarps[gArea.dungeon_idx] >> warp & 1;
}

u32 CheckLocalFlagByBank(u32 bank, u32 flag) {
    return ReadBit(gSave.flags, bank + flag);
}

bool32 sub_0807CB24(s32 param_1, u32 param_2) {
    bool32 result = TRUE;
    switch (param_1) {
        case 0:
        default:
            result = FALSE;
            break;
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 0xb:
        case 0xc:
        case 0xd:
            result = CheckLocalFlagByBank(gLocalFlagBanks[param_1], param_2);
            break;
        case 0xf:
            result = GetInventoryValue(param_2) != 0;
            break;
        case 0x10:
            result = GetInventoryValue(param_2) == 1;
            break;
        case 0x11:
            result = GetInventoryValue(param_2) == 2;
            break;
    }
    return result;
}
