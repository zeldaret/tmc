#include "area.h"
#include "asm.h"
#include "beanstalkSubtask.h"
#include "collision.h"
#include "common.h"
#include "entity.h"
#include "functions.h"
#include "game.h"
#include "global.h"
#include "item.h"
#include "kinstone.h"
#include "main.h"
#include "manager/diggingCaveEntranceManager.h"
#include "message.h"
#include "object.h"
#include "player.h"
#include "room.h"
#include "save.h"
#include "screen.h"
#include "screenTransitions.h"
#include "tileMap.h"
#include "tiles.h"

static void sub_08077E54(ItemBehavior* beh);

extern void sub_0800857C(Entity*);
extern void InitDefaultPriority(Entity*);
extern void sub_0809D738(Entity*);
extern s32 Mod(s32, s32);
extern u32 sub_08003FDE(Entity*, Entity*, u32, u32);
extern u32 sub_080B1B84(u32, u32);
extern void UpdateScreenShake(void);
void sub_080790E4(Entity* this);
void sub_08079064(Entity*);

extern u8 gMapData;
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

extern void UnregisterInteractTile(u32, u32);

extern const u8 gMapTileTypeToCollisionData[]; // collisionData for tileType?

extern u8 gUpdateVisibleTiles;

bool32 sub_0807BF88(u32, u32, RoomResInfo*);

void LoadRoomTileSet(void);

void ForceSetPlayerState(u32 framestate);
InteractableObject* sub_080784E4(void);

u32 sub_08079778(void);
u32 GetPlayerTilePos(void);

extern const KeyValuePair gMapActTileToSurfaceType[];

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

extern void FillActTileForLayer(MapLayer* mapLayer);

extern u16 gUnk_080B77C0[];

void sub_0807BFA8(void);
void sub_0807C8B0(u16*, u32, u32);
void sub_0807C69C(u8*, u32, u32);
void sub_0807C460(void);
void sub_0807BBE4(void);
void CreateCollisionDataBorderAroundRoom(void);
void sub_0807C5F4(u16*, u16*);
void sub_0807C5B0(void);

// collisions for tiles < 0x4000
extern const u8 gMapTileTypeToCollisionData[];
// collisions for tiles > 0x4000
extern const u8 gMapSpecialTileToCollisionData[];

extern u16 gUnk_080B77C0[];

void sub_0807BFA8(void);
void sub_0807C8B0(u16*, u32, u32);
void sub_0807C69C(u8*, u32, u32);
void sub_0807C460(void);
void sub_0807BBE4(void);
void CreateCollisionDataBorderAroundRoom(void);
void sub_0807C5F4(u16*, u16*);
void sub_0807C5B0(void);

extern u8 gUnk_080082DC[];
extern u32 sub_08004202(Entity*, u8*, u32);

// This just reuses the first 12 bytes of gUnk_02022830 to store a MapDataDefinition there temporarily.
extern MapDataDefinition gUnk_02022830;
extern u16* gUnk_0800823C[];

extern bool32 sub_0806FC24(u32, u32);

extern const u8 gUnk_0800845C[];
extern const u8 gUnk_0811BFE0[];
extern const u8 gUnk_08007DF4[];
extern const u8 gUnk_080084BC[];

extern InteractableObject gInteractableObjects[];

u32 sub_0807A180(Entity*, Entity*, u32, u32);

extern u32 gUsedPalettes;

extern void ClearBgAnimations(void);
extern void LoadBgAnimations(u16*);

void sub_0807BFA8(void);

void UpdateActiveItems(PlayerEntity* this) {
    u32 index;

    gPlayerState.shield_status &= 0xfe;
    gPlayerState.attack_status &= 0xf;
    if (((gPlayerState.field_0x7 | gPlayerState.jump_status) & 0x80) == 0 && (gPlayerState.jump_status & 0x40) == 0 &&
        gPlayerState.swim_state == 0 && IsAbleToUseItem(this) && !IsPreventedFromUsingItem()) {
        CreateItemIfInputMatches(gSave.stats.equipped[SLOT_A], INPUT_USE_ITEM1, FALSE);
        CreateItemIfInputMatches(gSave.stats.equipped[SLOT_B], INPUT_USE_ITEM2, FALSE);
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
        CreateItemIfInputMatches(gSave.stats.equipped[SLOT_A], INPUT_USE_ITEM1, TRUE);
    } else {
        CreateItemIfInputMatches(gSave.stats.equipped[SLOT_B], INPUT_USE_ITEM2, TRUE);
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
    if ((gPlayerState.playerInput.newInput & INPUT_ACTION) != 0) {
        if ((gPlayerState.flags & PL_CLONING) != 0) {
            gPlayerState.chargeState.action = 1;
            DeleteClones();
            return TRUE;
        } else {
            switch (gArea.portal_mode) {
                case 2:
                    if (gArea.portal_timer == 0) {
                        gPlayerEntity.base.subAction++;
                    }
                    break;
                case 3:
                    if ((gArea.portal_timer == 0) && ((gPlayerState.flags & PL_MINISH) != 0)) {
                        gPlayerEntity.base.subAction++;
                        gPlayerEntity.base.flags &= ~ENT_COLLIDE;
                        RequestPriorityDuration(&gPlayerEntity.base, 180);
                        return TRUE;
                    }
                    return FALSE;
                default:
                    if ((((gHUD.rActionInteractObject == R_ACTION_ROLL) && (gPlayerState.gustJarState == 0)) &&
                         (gPlayerState.floor_type != SURFACE_SWAMP)) &&
                        ((((gPlayerState.playerInput.heldInput & INPUT_ANY_DIRECTION) != 0 &&
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
           (((gPlayerEntity.unk_79 != 0 || (gPlayerState.heldObject != 0)) ||
             ((gPlayerState.playerInput.newInput & INPUT_LIFT_THROW) != 0)))) &&
          (((sub_080789A8() != 0 || ((gPlayerState.playerInput.heldInput &
                                      (INPUT_ANY_DIRECTION | INPUT_USE_ITEM1 | INPUT_USE_ITEM2)) == 0)))))) {
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
         ((((gPlayerState.jump_status != 0 || (gPlayerEntity.base.z.WORD != 0)) && (ITEM_FOURSWORD < itemId)) ||
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
            gPlayerState.gustJarState = 0;
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
    gPlayerState.gustJarState = PL_JAR_NONE;
    gPlayerState.bow_state = 0;
    gPlayerState.grab_status = 0;
    gPlayerState.itemAnimPriority = 0;
    gPlayerState.dash_state = 0;
    gPlayerState.sword_state = 0;
    gPlayerState.shield_status = 0;
    gPlayerState.heldObject = 0;
    gPlayerState.flags &= ~(PL_ROLLING | PL_SWORD_THRUST);

    gPlayerEntity.pulledJarEntity = NULL;

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
    GenericEntity* playerItem = (GenericEntity*)CreateAuxPlayerEntity();
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

    ent = (GenericEntity*)CreateAuxPlayerEntity();
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
    this->playerAnimationState = gPlayerEntity.base.animationState;
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
    gPlayerEntity.base.spriteIndex = (s16)(animIndex >> 8);
    InitAnimationForceUpdate(&gPlayerEntity.base, (u8)animIndex);
    sub_08077E54(this);
}

void UpdateItemAnim(ItemBehavior* this) {
    UpdateAnimationSingleFrame(&gPlayerEntity.base);
    sub_08077E54(this);
}

void sub_08077E3C(ItemBehavior* this, u32 index) {
    sub_080042BA(&gPlayerEntity.base, index);
    sub_08077E54(this);
}

static void sub_08077E54(ItemBehavior* this) {
    this->playerAnimIndex = gPlayerEntity.base.animIndex;
    this->playerFrameIndex = gPlayerEntity.base.frameIndex;
    this->playerFrameDuration = gPlayerEntity.base.frameDuration;
    this->playerFrame = gPlayerEntity.base.frame;
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
    if (stats->equipped[SLOT_A] == id) {
        val = INPUT_USE_ITEM1;
    } else if (stats->equipped[SLOT_B] == id) {
        val = INPUT_USE_ITEM2;
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

void (*const gSurfaceActions[])(Entity*) = {
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

const KeyValuePair gUnk_0811C240[];
const KeyValuePair gUnk_0811C24A[];
const KeyValuePair gUnk_0811C254[];
const KeyValuePair gUnk_0811C25E[];
const KeyValuePair gUnk_0811C1F8[];
const KeyValuePair gUnk_0811C20A[];
const KeyValuePair gUnk_0811C21C[];
const KeyValuePair gUnk_0811C22E[];

const KeyValuePair* const gUnk_0811C1D8[] = {
    gUnk_0811C240,
    gUnk_0811C24A,
    gUnk_0811C254,
    gUnk_0811C25E,
};
const KeyValuePair* const gUnk_0811C1E8[] = {
    gUnk_0811C1F8,
    gUnk_0811C20A,
    gUnk_0811C21C,
    gUnk_0811C22E,
};

const KeyValuePair gUnk_0811C1F8[] = { { 43, 1 }, { 65, 1 }, { 78, 8 }, { 76, 2 } };
const u16 gUnk_0811C1F8End = 0;
const KeyValuePair gUnk_0811C20A[] = { { 44, 3 }, { 66, 3 }, { 76, 2 }, { 77, 4 } };
const u16 gUnk_0811C20AEnd = 0;
const KeyValuePair gUnk_0811C21C[] = { { 42, 5 }, { 64, 5 }, { 79, 6 }, { 77, 4 } };
const u16 gUnk_0811C21CEnd = 0;
const KeyValuePair gUnk_0811C22E[] = { { 45, 7 }, { 67, 7 }, { 78, 8 }, { 79, 6 } };
const u16 gUnk_0811C22EEnd = 0;
const KeyValuePair gUnk_0811C240[] = { { 42, 1 }, { 38, 1 } };
const u16 gUnk_0811C240End = 0;
const KeyValuePair gUnk_0811C24A[] = { { 45, 1 }, { 39, 1 } };
const u16 gUnk_0811C24AEnd = 0;
const KeyValuePair gUnk_0811C254[] = { { 43, 1 }, { 38, 1 } };
const u16 gUnk_0811C254End = 0;
const KeyValuePair gUnk_0811C25E[] = { { 44, 1 }, { 39, 1 } };
const u16 gUnk_0811C25EEnd = 0;
const KeyValuePair gUnk_0811C268[] = { { ACT_TILE_16, 1 }, { ACT_TILE_90, 1 }, { ACT_TILE_17, 1 }, { ACT_TILE_19, 1 } };
const u16 gUnk_0811C268EEnd = 0;

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
const u16 gUnk_0811C466[] = { TILE_TYPE_803,
                              TILE_TYPE_819,
                              TILE_TYPE_822,
                              TILE_TYPE_825,
                              TILE_TYPE_820,
                              TILE_TYPE_828,
                              TILE_TYPE_826,
                              TILE_TYPE_829,
                              TILE_TYPE_821,
                              TILE_TYPE_823,
                              TILE_TYPE_831,
                              TILE_TYPE_830,
                              TILE_TYPE_824,
                              TILE_TYPE_827,
                              TILE_TYPE_832,
                              TILE_TYPE_53,
                              0 };

void sub_08077F84(void) {
    Entity* obj;

    if ((gPlayerEntity.base.collisionLayer & 2) == 0) {
        u32 tileType =
            GetTileTypeAtWorldCoords(gPlayerEntity.base.x.HALF.HI, gPlayerEntity.base.y.HALF.HI - 12, LAYER_TOP);
        if (tileType == TILE_TYPE_835 || tileType == TILE_TYPE_836 || tileType == TILE_TYPE_837 ||
            tileType == TILE_TYPE_838) {
            sub_0807AA80(&gPlayerEntity.base);
            gPlayerState.jump_status |= 8;
            obj = CreateObject(ROTATING_TRAPDOOR, 0, 0);
            if (obj != NULL) {
                obj->x = gPlayerEntity.base.x;
                obj->y.HALF.HI = gPlayerEntity.base.y.HALF.HI - 0xc;
                gPlayerEntity.base.y.HALF.HI -= 0xc;
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
    if (ItemIsSword(gSave.stats.equipped[SLOT_A]) != ITEM_NONE) {
        swordType = gSave.stats.equipped[SLOT_A];
    } else if (ItemIsSword(gSave.stats.equipped[SLOT_B]) != ITEM_NONE) {
        swordType = gSave.stats.equipped[SLOT_B];
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
    gPlayerEntity.base.flags &= ~ENT_COLLIDE;
    PausePlayer();
}

void DetermineRButtonInteraction(void) {
    u8 rAction;
    InteractableObject* interaction;

    if (gHUD.rActionPlayerState != R_ACTION_NONE)
        return;

    rAction = R_ACTION_NONE;
    if ((gPlayerState.jump_status == 0) &&
        ((gPlayerState.flags & (PL_IN_HOLE | PL_FROZEN | PL_BURNING | PL_DISABLE_ITEMS | PL_DRUGGED)) == 0)) {
        if ((u8)(gPlayerState.heldObject - 1) < 4) {
            if (gHUD.rActionGrabbing != R_ACTION_NONE) {
                rAction = gHUD.rActionGrabbing;
            } else {
                rAction = R_ACTION_THROW;
            }
        } else {
            if (gHUD.rActionInteractTile != R_ACTION_NONE) {
                rAction = gHUD.rActionInteractTile;
            } else {
                interaction = sub_080784E4();
                if (interaction->entity->interactType == INTERACTION_NONE) {

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
    gHUD.rActionInteractObject = rAction;
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
        if ((gPlayerEntity.carriedEntity)->child->kind != OBJECT ||
            (gPlayerEntity.carriedEntity)->child->id != SHOP_ITEM) {
            return FALSE;
        }
    }
    if (((gPlayerState.playerInput.newInput & INPUT_FUSE) != 0) &&
        ((u8)(gPossibleInteraction.currentObject->kinstoneId - 1) < 100)) {
        AddKinstoneToBag(KINSTONE_NONE);
        if (gSave.kinstones.amounts[0] != 0) {
            gPossibleInteraction.kinstoneId = gPossibleInteraction.currentObject->kinstoneId;
            gPossibleInteraction.currentObject->entity->interactType = INTERACTION_FUSE;
            gPlayerState.queued_action = PLAYER_08070E9C;
        } else {
            CreateEzloHint(TEXT_INDEX(TEXT_EZLO, 0x65), 0); // "Hey, you don't have any Kinstone Pieces! ..."
        }
        ForceSetPlayerState(PL_STATE_TALKEZLO);
        return TRUE;
    }
    if ((gPlayerState.playerInput.newInput & (INPUT_ACTION | INPUT_INTERACT)) == 0) {
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
            entity->interactType = INTERACTION_TALK;
            gPossibleInteraction.kinstoneId = KINSTONE_NONE;
            return TRUE;
        case INTERACTION_LIFT_SHOP_ITEM:
            if (gRoomVars.shopItemType == 0) {
                entity->interactType = INTERACTION_TALK;
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

static inline bool32 InlinePlayerStateCheck() {
    u8 frameState;
    if ((gPlayerState.field_0x27[0] | gPlayerState.swim_state) != 0) {
        return TRUE;
    }
    if (gPlayerState.framestate == 0) {
        frameState = gPlayerState.framestate_last;
    } else {
        frameState = gPlayerState.framestate;
    }
    switch (frameState) {
        case PL_STATE_SWORD:
        case PL_STATE_GUSTJAR:
        case PL_STATE_DIE:
        case PL_STATE_ITEMGET:
        case PL_STATE_DROWN:
            return TRUE;
    }
    return FALSE;
}

// determines which (if any) object the player is currently able to interact with
InteractableObject* sub_080784E4(void) {
    PlayerFlags r7;
    s32 r3;
    PlayerFlags PVar4;
    u8* puVar5;
    u8* hitbox;
    s8* interactOffsets;
    Entity* entity;
    s32 r4;
    InteractableObject* iObject;
    u32 index;
    s32 interactX;
    s32 interactY;

    if (gPossibleInteraction.isUpdated != 0) {
        return gPossibleInteraction.currentObject;
    }

    if (InlinePlayerStateCheck()) {
        gPossibleInteraction.currentIndex = 0xFF;
        gPossibleInteraction.currentObject = (InteractableObject*)&gNoInteraction;
        gPossibleInteraction.isUpdated = 1;
        return gPossibleInteraction.currentObject;
    }

    if (!(gPlayerState.flags & PL_MINISH)) {
        r7 = HasDungeonSmallKey() ? PL_BUSY : 0;
        if (HasDungeonBigKey()) {
            r7 |= PL_FLAGS2;
        }
        interactOffsets = (s8*)gPlayerInteractHitboxOffsetNormal + (gPlayerEntity.base.animationState & 6);
    } else {
        interactOffsets = (s8*)gPlayerInteractHitboxOffsetMinish + (gPlayerEntity.base.animationState & 6);
        r7 = 0;
    }

    interactX = gPlayerEntity.base.x.HALF.HI + interactOffsets[0];
    interactY = gPlayerEntity.base.y.HALF.HI + interactOffsets[1];

    for (index = 0; index < 0x20; index++) {
        iObject = gInteractableObjects + index;
        entity = iObject->entity;
        if (entity == NULL)
            continue;
        if (entity->interactType < 0)
            break;
        if (((iObject->ignoreLayer & 1) == 0 && (gPlayerEntity.base.collisionLayer & entity->collisionLayer) == 0) ||
            (iObject->interactDirections >> (gPlayerEntity.base.animationState >> 1) & 1) != 0)
            continue;
        switch (iObject->type) {
            case INTERACTION_NONE:
                continue;
            case INTERACTION_TALK:
            case INTERACTION_OPEN_CHEST:
            case INTERACTION_UNUSED:
            case INTERACTION_LIFT_SHOP_ITEM:
            case INTERACTION_CHECK:
                if (gPlayerState.flags & PL_MINISH)
                    continue;
                break;
            case INTERACTION_TALK_MINISH:
                PVar4 = gPlayerState.flags & PL_MINISH;
                if (!PVar4)
                    continue;
                break;
            case INTERACTION_FUSE:
                PVar4 = (PlayerFlags)iObject->kinstoneId;
                if (PVar4 == 0)
                    continue;
                break;
            case INTERACTION_USE_SMALL_KEY:
                PVar4 = PL_BUSY & r7;
                if (!PVar4)
                    continue;
                break;
            case INTERACTION_USE_BIG_KEY:
                PVar4 = PL_FLAGS2 & r7;
                if (!PVar4)
                    continue;
                break;
            case INTERACTION_DROP_PEDESTAL:
            default:
                break;
        }

        r3 = iObject->entity->x.HALF.HI;
        r4 = iObject->entity->y.HALF.HI;
        hitbox = (u8*)iObject->customHitbox;
        if (hitbox != NULL) {
            r3 += (s8)hitbox[0];
            r4 += (s8)hitbox[1];
            puVar5 = hitbox + 2;
        } else {
            puVar5 = &iObject->entity->hitbox->width;
        }
        if (((puVar5[0] + interactX) - r3 < (u32)puVar5[0] << 1) &&
            ((puVar5[1] + interactY) - r4 < (u32)puVar5[1] << 1)) {
            break;
        }
    }
    if (index < 0x20) {
        gPossibleInteraction.currentIndex = (u8)index;
        gPossibleInteraction.currentObject = &gPossibleInteraction.candidates[index];

    } else {
        gPossibleInteraction.currentIndex = 0xFF;
        gPossibleInteraction.currentObject = (InteractableObject*)&gNoInteraction;
    }
    gPossibleInteraction.isUpdated = 1;
    return gPossibleInteraction.currentObject;
}

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
    entity->interactType = INTERACTION_NONE;
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
        uVar4 = GetCollisionDataAtEntity(&gPlayerEntity.base);
        if (uVar4 >= 0x10 && (gUnk_080084BC[uVar4 - 0x10] == 0xf))
            return 0;
        if (gPlayerState.floor_type == 0x12)
            return 0;

        gCarriedEntity.unk_0 = 1;
        uVar4 = (u32)gCarriedEntity.count;

        if (uVar4 > 0) {
            ptr2 = &gUnk_0811BFE0[gPlayerEntity.base.animationState & 6];
            while (uVar4 > 0) {
                tmp1 = &gCarriedEntity.unk_8 + uVar4;
                entity = *tmp1;
                if ((entity != NULL) && (sub_0807A180(&gPlayerEntity.base, entity, ptr2[0], ptr2[1]) != 0)) {
                    gCarriedEntity.unk_8 = *tmp1;
                    gCarriedEntity.unk_1 = 2;
                    return 2;
                }
                uVar4--;
            }
        }

        ptr = &gUnk_08007DF4[gPlayerEntity.base.animationState & 6];
        gCarriedEntity.unk_4 = uVar2 = GetTileTypeRelativeToEntity(&gPlayerEntity.base, (s8)ptr[0], (s8)ptr[1]);

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
    gPlayerEntity.base.child = item;
    gPlayerEntity.base.flags &= ~ENT_COLLIDE;
    gPlayerEntity.base.updatePriority = 2;
    DeleteClones();
}

void PausePlayer(void) {
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
    gPlayerEntity.base.iframes = -2;
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
    gPlayerState.tilePos = 0;
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
    gPlayerState.killed = 0;
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

    entity = this->pulledJarEntity;
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

    player = &gPlayerEntity.base;
    iVar4 = ((PlayerEntity*)player)->carriedEntity->child;
    if (iVar4->action != 2)
        return;

    iVar4->z.HALF.HI = gPlayerEntity.base.spriteOffsetY + gPlayerEntity.base.z.HALF.HI;
    iVar4->spriteOrientation.flipY = gPlayerEntity.base.spriteOrientation.flipY;
    iVar4->collisionLayer = gPlayerEntity.base.collisionLayer;
    uVar3 = gPlayerEntity.base.frame & 0x7f;
    puVar2 = gUnk_0811C0E8[iVar4->carryFlags >> 4];
    if (gPlayerEntity.base.spriteSettings.flipX) {
        iVar4->x.HALF.HI = gPlayerEntity.base.x.HALF.HI - puVar2[uVar3];
    } else {
        iVar4->x.HALF.HI = gPlayerEntity.base.x.HALF.HI + puVar2[uVar3];
    }
    iVar4->z.HALF.HI = puVar2[uVar3 + 1] + iVar4->z.HALF.HI;
    iVar4->y.HALF.HI = gPlayerEntity.base.y.HALF.HI;
    SortEntityAbove(&gPlayerEntity.base, iVar4);
    if (gPlayerState.heldObject == 4) {
        iVar4->spriteRendering.b3 = gPlayerEntity.base.spriteRendering.b3;
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
        if (gPlayerEntity.base.animationState >> 1 != 0) {
            iVar4->spritePriority.b0 = gPlayerEntity.base.spritePriority.b0 - 1;
        } else {
            iVar4->spritePriority.b0 = gPlayerEntity.base.spritePriority.b0 + 1;
        }
    }
}

void sub_08078E84(Entity* param_1, Entity* param_2) {
    SpriteFrame* frame;
    if (param_2 == &gPlayerEntity.base) {
        sub_08079BD8(param_1);
        param_1->spriteOffsetX = gPlayerEntity.base.spriteOffsetX;
        param_1->spriteOffsetY = gPlayerEntity.base.spriteOffsetY;
    }
    frame = &gSpritePtrs[(u16)param_2->spriteIndex].frames[param_2->frameIndex];
    if (frame->unk_1 != 0) {
        sub_0806FEBC(param_2, 1, param_1);
    } else {
        sub_0806FEBC(param_2, 3, param_1);
    }
}

void ResetPlayerPosition(void) {
    gPlayerEntity.base.x.HALF.HI = gPlayerState.startPosX;
    gPlayerEntity.base.y.HALF.HI = gPlayerState.startPosY;
}

bool32 CheckQueuedAction(void) {
    if (gPlayerState.queued_action == PLAYER_INIT) {
        return FALSE;
    } else {
        gPlayerEntity.base.action = gPlayerState.queued_action;
        gPlayerEntity.base.subAction = 0;
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
        this->action = PLAYER_USEPORTAL;
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
            if (gPlayerState.animation >> 8 == (ANIM_PORTAL_ACTIVATE >> 8)) {
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
    gPlayerEntity.carriedEntity = NULL;
}

void PlayerResetStateFromFusion(void) {
    if ((gPlayerState.flags & PL_MINISH) == 0) {
        SetPlayerActionNormal();
    } else {
        PlayerMinishSetNormalAndCollide();
    }
}

void SetPlayerActionNormal(void) {
    gPlayerEntity.base.action = PLAYER_NORMAL;
    gPlayerEntity.base.subAction = 0;
    gPlayerEntity.base.subtimer = 0;
}

void ResetPlayerAnimationAndAction(void) {
    if (!(gPlayerState.flags & PL_HIDDEN)) {
        gPlayerEntity.base.spriteSettings.draw = 3;
    }
    if (!(gPlayerState.flags & PL_MINISH)) {
        gPlayerEntity.base.spritePriority.b1 = 1;
        PlayerSetNormalAndCollide();
    } else {
        PlayerMinishSetNormalAndCollide();
    }
}

void PlayerSetNormalAndCollide(void) {
    gPlayerEntity.base.flags |= ENT_COLLIDE;
    gPlayerEntity.base.spriteSettings.draw = 3;
    gPlayerState.flags &= ~(PL_BUSY | PL_DROWNING | PL_DISABLE_ITEMS | PL_FROZEN | PL_ROLLING | PL_IN_HOLE |
                            PL_MOLDWORM_RELEASED | PL_PARACHUTE);
    ResolvePlayerAnimation();
    SetPlayerActionNormal();
    InitDefaultPriority(&gPlayerEntity.base);
}

void PlayerMinishSetNormalAndCollide(void) {
    if (!(gPlayerState.flags & PL_HIDDEN)) {
        gPlayerEntity.base.flags |= ENT_COLLIDE;
        gPlayerEntity.base.spriteSettings.draw = 3;
    }
    gPlayerEntity.base.action = PLAYER_MINISH;
    gPlayerEntity.base.subAction = 1;
    gPlayerEntity.base.collisionFlags &= 0xfb;
    gPlayerState.animation = ANIM_BOUNCE_MINISH;
    gPlayerState.flags &=
        ~(PL_BUSY | PL_DROWNING | PL_DISABLE_ITEMS | PL_IN_HOLE | PL_MOLDWORM_RELEASED | PL_PARACHUTE);
    gPlayerState.swim_state = 0;
    gPlayerState.queued_action = PLAYER_INIT;
    InitDefaultPriority(&gPlayerEntity.base);
}

void sub_080792BC(s32 speed, u32 direction, u32 field_0x38) {
    gPlayerState.queued_action = PLAYER_08072454;
    gPlayerState.field_0x38 = field_0x38;
    gPlayerEntity.base.speed = speed;
    gPlayerEntity.base.direction = direction;
}

void sub_080792D8(void) {
    Entity* playerEntity = &gPlayerEntity.base;

    if (playerEntity->knockbackDuration == 0)
        return;

    if (playerEntity->action == PLAYER_08071DB8 || gPlayerState.dash_state || (u8)(gPlayerState.heldObject - 1) < 4 ||
        gPlayerState.jump_status || gPlayerState.floor_type == SURFACE_FF || gPlayerState.field_0x7 & 0x80 ||
        0 < (gPlayerState.swim_state & 0xf) - 1 || playerEntity->action == PLAYER_FALL ||
        gPlayerState.flags & PL_ROLLING) {
        playerEntity->knockbackDuration = 0;
    } else if (playerEntity->action == PLAYER_CLIMB && playerEntity->knockbackDirection != DirectionSouth) {
        playerEntity->knockbackDuration = 0;
    } else {
        if ((s8)playerEntity->knockbackDuration >= 1) {
            playerEntity->knockbackDuration--;
        } else {
            playerEntity->knockbackDuration++;
        }

        if (playerEntity->knockbackDuration == 0)
            return;

        gPlayerState.field_0x7 &= 0xdf;
        if (0 < playerEntity->iframes && !gPlayerState.swim_state && !(gPlayerState.flags & PL_MINISH) &&
            !gPlayerState.jump_status) {
            ResetActiveItems();
            if (!(gPlayerState.flags & PL_NO_CAP)) {
                gPlayerState.animation = ANIM_BOUNCE;
            } else {
                gPlayerState.animation = ANIM_BOUNCE_NOCAP;
            }
        }
        LinearMoveDirectionOLD(playerEntity, 0x280, playerEntity->knockbackDirection);
        sub_0807A5B8(playerEntity->knockbackDirection);
    }
}

bool32 sub_080793E4(u32 param_1) {
    u32 tmp;
    if (!gPlayerState.swim_state) {
        tmp = gUnk_0811C0F8[gPlayerEntity.base.animationState >> 1];
    } else {
        tmp = gUnk_0811C0F8[gPlayerEntity.base.direction >> 2];
    }
    if (sub_08079778() && (gPlayerState.playerInput.heldInput & tmp)) {
        if (param_1 != 0) {
            if (!sub_080B1BA4(GetPlayerTilePos(), gPlayerEntity.base.collisionLayer, param_1)) {
                return FALSE;
            }
        }
        return TRUE;
    } else {
        return FALSE;
    }
}

void RespawnPlayer(void) {
    Entity* player = &gPlayerEntity.base;
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
            u32 i;
            for (i = 0; i <= 0xf && gPlayerState.path_memory[i] != -1; i++) {
                if (GetCollisionDataAtTilePos((u16)gPlayerState.path_memory[i], gPlayerState.path_memory[i] >> 0x1e) !=
                    COLLISION_DATA_15) {
                    gPlayerEntity.base.collisionLayer = gPlayerState.path_memory[i] >> 0x1e;
                    gPlayerEntity.base.x.HALF.HI =
                        gRoomControls.origin_x + (gPlayerState.path_memory[i] & 0x3f) * 16 + 8;
                    gPlayerEntity.base.y.HALF.HI =
                        gRoomControls.origin_y + (gPlayerState.path_memory[i] & 0xfc0) / 4 + 8;
                    COLLISION_ON(&gPlayerEntity.base);
                    break;
                }
            }
        }
    }
    UpdateSpriteForCollisionLayer(&gPlayerEntity.base);
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
    u32 tmp = INPUT_ANY_DIRECTION | INPUT_CONTEXT | INPUT_CANCEL | INPUT_INTERACT;
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
             gPlayerEntity.base.direction != gPlayerState.direction ||
             (gPlayerEntity.base.direction & DIR_NOT_MOVING_CHECK))) {
            gPlayerEntity.base.subtimer = 0;
            return FALSE;
        }
        if (sub_08079778()) {
            ptr = &gUnk_0811C100[gPlayerEntity.base.animationState & 6];
            if ((gPlayerEntity.base.animationState & 2) != 0) {
                tilePos1 = COORD_TO_TILE_OFFSET(&gPlayerEntity.base, -ptr[0], -(gPlayerEntity.base.hitbox)->unk2[1]);
                tilePos2 = COORD_TO_TILE_OFFSET(&gPlayerEntity.base, -ptr[0], +(gPlayerEntity.base.hitbox)->unk2[1]);
            } else {

                tilePos1 = COORD_TO_TILE_OFFSET(&gPlayerEntity.base, -(gPlayerEntity.base.hitbox)->unk2[2], -ptr[1]);
                tilePos2 = COORD_TO_TILE_OFFSET(&gPlayerEntity.base, (gPlayerEntity.base.hitbox)->unk2[2], -ptr[1]);
            }

            uVar3 = GetActTileAtTilePos(tilePos1, gPlayerEntity.base.collisionLayer);
            uVar3 = FindValueForKey(uVar3, gUnk_0811C1E8[gPlayerEntity.base.animationState >> 1]);
            if (uVar3 != 0) {
                uVar3 = GetActTileAtTilePos(tilePos2, gPlayerEntity.base.collisionLayer);
                uVar3 = FindValueForKey(uVar3, gUnk_0811C1E8[gPlayerEntity.base.animationState >> 1]);
                if (uVar3 != 0) {
                    gPlayerState.pushedObject |= 0x80;
                    if (gPlayerState.dash_state == 0 && (++gPlayerEntity.base.subtimer <= 5)) {
                        return FALSE;
                    }

                    gPlayerEntity.base.animationState = uVar3 - 1;
                    gPlayerEntity.base.action = PLAYER_JUMP;
                    gPlayerEntity.base.subAction = 0;
                    COLLISION_OFF(&gPlayerEntity.base);
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
    gPlayerState.killed = 0xff;
    this->flags &= ~ENT_COLLIDE;
    this->action = PLAYER_MINISHDIE;
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
        tmp = gUnk_0811C108[gPlayerEntity.base.animationState >> 1];
    } else {
        tmp = gUnk_0811C108[gPlayerEntity.base.direction >> 2];
    }
    return tmp == (gPlayerEntity.base.collisions & tmp);
}

u32 sub_080797C4(void) {
    u32 tmp = gUnk_0811C110[gPlayerEntity.base.direction >> 3];
    return tmp == (gPlayerEntity.base.collisions & tmp);
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
                        if (GetCollisionDataAtTilePos(GetPlayerTilePos(), gPlayerEntity.base.collisionLayer) !=
                            COLLISION_DATA_255) {
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
        if (gPlayerState.gustJarState) {
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
                        if (GetCollisionDataAtTilePos(GetPlayerTilePos(), (u32)gPlayerEntity.base.collisionLayer) !=
                            COLLISION_DATA_255) {
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
        UpdateAnimationSingleFrame(&gPlayerEntity.base);
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
            if (gPlayerState.gustJarState | gPlayerState.moleMittsState) {
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
            if (gPlayerState.gustJarState | gPlayerState.moleMittsState) {
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
            UpdateAnimationSingleFrame(&gPlayerEntity.base);
        }
    }
    gPlayerState.prevAnim = anim;
}

bool32 sub_08079B24(void) {
    if ((gPlayerEntity.base.action != PLAYER_MINISHDIE) && (gPlayerEntity.base.health == 0)) {
        gPlayerState.flags &= ~PL_PARACHUTE;
        gPlayerEntity.base.knockbackDuration = gPlayerEntity.base.health;
        if (gPlayerState.field_0x7 == 0) {
            if (gPlayerState.swim_state != 0) {
                RespawnPlayer();
            } else {
                if ((gPlayerState.field_0x14 == 0) && ((gPlayerState.flags & PL_IN_MINECART) == 0)) {
                    if (gPlayerEntity.base.z.HALF.HI < 0) {
                        if (gPlayerEntity.base.zVelocity > 0) {
                            gPlayerEntity.base.zVelocity = 0;
                        }
                        if ((gPlayerState.jump_status & 0x41) == 0) {
                            gPlayerState.jump_status = 0x41;
                            gPlayerEntity.base.direction = DIR_NONE;
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
            gPlayerEntity.base.flags &= ~ENT_COLLIDE;
            return FALSE;
        }
    }
    return TRUE;
}

void sub_08079BD8(Entity* this) {
    this->x = gPlayerEntity.base.x;
    this->y = gPlayerEntity.base.y;
    this->z = gPlayerEntity.base.z;
    this->collisionLayer = gPlayerEntity.base.collisionLayer;
    this->spriteRendering.b3 = gPlayerEntity.base.spriteRendering.b3;
    this->spriteOrientation.flipY = gPlayerEntity.base.spriteOrientation.flipY;
    this->spritePriority.b0 = gPlayerEntity.base.spritePriority.b0;
}

bool32 sub_08079C30(Entity* player) {
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

        if (gPlayerState.floor_type !=
            FindValueForKey(GetActTileRelativeToEntity(player, 0, -1), gMapActTileToSurfaceType))
            return FALSE;

        if (gPlayerState.floor_type !=
            FindValueForKey(GetActTileRelativeToEntity(player, 2, 0), gMapActTileToSurfaceType))
            return FALSE;

        if (gPlayerState.floor_type ==
            FindValueForKey(GetActTileRelativeToEntity(player, -2, 0), gMapActTileToSurfaceType)) {
            return TRUE;
        }
    }
    return FALSE;
}

bool32 sub_08079D48(void) {
    if (!sub_08079C30(&gPlayerEntity.base)) {
        return TRUE;
    } else {
        if (!PlayerCheckNEastTile()) {
            if (!FindValueForKey((u16)GetActTileAtEntity(&gPlayerEntity.base), gUnk_0811C268)) {
                return TRUE;
            }
        }
    }
    return FALSE;
}

void sub_08079D84(void) {
    if ((gPlayerEntity.base.action == PLAYER_NORMAL) || (gPlayerEntity.base.action == PLAYER_ROLL)) {
        gPlayerState.field_0x38 = 0x9c;
        gPlayerState.field_0x39 = 2;
        gPlayerState.field_0x3a = 0x3c;
        gPlayerState.queued_action = PLAYER_0807204C;
        gPlayerEntity.base.iframes = 0x7c;
        PutAwayItems();
        SoundReq(SFX_193);
    }
}

void sub_08079DCC(void) {
    if (gPlayerEntity.base.action == PLAYER_NORMAL) {
        gPlayerState.field_0x38 = 0xa0;
        gPlayerState.field_0x39 = 3;
        gPlayerState.field_0x3a = 0;
        gPlayerState.queued_action = PLAYER_0807204C;
        SoundReq(SFX_193);
    }
}

void UpdatePlayerMovement(void) {
    if ((gPlayerEntity.base.speed != 0) &&
        (gPlayerEntity.base.speed += gPlayerState.speed_modifier, gPlayerEntity.base.speed < 0x20)) {
        gPlayerEntity.base.speed = 0x20;
    }
    if ((gPlayerEntity.base.direction & 4) == 0) {
        sub_08079E90(gPlayerEntity.base.direction);
    }
    sub_0800857C(&gPlayerEntity.base);
    sub_0807A5B8(gPlayerEntity.base.direction);
}

void sub_08079E58(s32 speed, u32 direction) {
    if ((gPlayerEntity.base.direction & 4) == 0) {
        sub_08079E90(direction);
    }
    sub_080085B0(&gPlayerEntity.base);
    LinearMoveDirectionOLD(&gPlayerEntity.base, (s16)speed, (u8)direction);
    sub_0807A5B8(direction);
}

bool32 sub_08079E90(u32 direction) {
    s16 tmp1;
    s16 tmp2;

    if (gPlayerEntity.base.direction & DirectionEast) {
        if (gPlayerEntity.base.direction & DirectionSouth) {
            tmp2 = -gPlayerEntity.base.hitbox->unk2[0];
        } else {
            tmp2 = gPlayerEntity.base.hitbox->unk2[0];
        }
        tmp1 = gPlayerEntity.base.hitbox->unk2[1];
    } else {
        tmp2 = gPlayerEntity.base.hitbox->unk2[2];
        if (gPlayerEntity.base.direction != DirectionNorth) {
            tmp1 = gPlayerEntity.base.hitbox->unk2[3];
        } else {
            tmp1 = -gPlayerEntity.base.hitbox->unk2[3];
        }
    }
    if (!sub_08079F48(direction, GetCollisionDataRelativeTo(&gPlayerEntity.base, tmp2, tmp1))) {
        if ((gPlayerEntity.base.direction & DirectionSouth) != 0) {
            tmp1 = -tmp1;
        } else {
            tmp2 = -tmp2;
        }
        if (!sub_08079F48(direction, GetCollisionDataRelativeTo(&gPlayerEntity.base, tmp2, tmp1))) {
            return FALSE;
        }
    }
    return TRUE;
}

bool32 sub_08079F48(u32 direction, u32 collisionData) {
    if (gUnk_0811C118[direction >> 2] == collisionData) {
        gPlayerEntity.base.direction = (gPlayerEntity.base.direction + 4) & 0x1f;
    } else {
        if (gUnk_0811C118[(direction >> 2) + 1] != collisionData) {
            return FALSE;
        }
        gPlayerEntity.base.direction = (gPlayerEntity.base.direction - 4) & 0x1f;
    }

    return TRUE;
}

bool32 PlayerCanBeMoved(void) {
    if ((gPlayerState.flags & (PL_BUSY | PL_DROWNING | PL_CAPTURED | PL_USE_PORTAL | PL_HIDDEN | PL_FROZEN |
                               PL_FALLING | PL_DISABLE_ITEMS | PL_PIT_IS_EXIT | PL_IN_MINECART | PL_MOLDWORM_CAPTURED |
                               PL_IN_HOLE | PL_CONVEYOR_PUSHED | PL_CLIMBING)) != 0 ||
        gPlayerState.killed != 0 || gPlayerEntity.base.action == PLAYER_FALL ||
        gPlayerEntity.base.action == PLAYER_08071DB8) {
        return FALSE;
    } else {
        return TRUE;
    }
}

u32 sub_08079FC4(u32 param_1) {
    return sub_08079FD4(&gPlayerEntity.base, param_1);
}

u32 sub_08079FD4(Entity* this, u32 param_2) {
    u32 tilePos;
    u8* collisionData;
    u32 collision;
    u32 index;
    u8 auStack20[4];

    tilePos = COORD_TO_TILE(this) * 2;
    collisionData = gMapBottom.collisionData;
    if (param_2 == 2) {
        collisionData = gMapTop.collisionData;
    }
    index = 0;
    while (TRUE) {
        do {
            index++;
            tilePos = sub_08004202(this, auStack20, tilePos);
            collision = collisionData[tilePos / 2];
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
    if ((gPlayerState.hurtBlinkSpeed != 0) && ((gMessage.state & MESSAGE_ACTIVE) == 0)) {
        gPlayerState.hurtBlinkSpeed--;
    }
    palette = GetPlayerPalette(FALSE);
    if (palette != gPlayerState.playerPalette) {
        gPlayerState.playerPalette = palette;
        ChangeObjPalette(&gPlayerEntity.base, palette);
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
    if (((gPlayerEntity.base.action != PLAYER_ROOMTRANSITION) || (gPlayerState.chargeState.action != 4)) &&
        (gPlayerState.chargeState.action == 4 || gPlayerState.chargeState.action == 5)) {
        gPlayerState.chargeState.action = 1;
    }
}

bool32 HasSwordEquipped(void) {
    if (ItemIsSword((u32)gSave.stats.equipped[SLOT_A]) != 0) {
        return TRUE;
    } else {
        return ItemIsSword((u32)gSave.stats.equipped[SLOT_B]);
    }
}

u32 sub_0807A180(Entity* param_1, Entity* param_2, u32 param_3, u32 param_4) {
    GenericEntity stackEntity;
    PositionRelative(param_1, &stackEntity.base, 0, Q_16_16(-4.0));
    stackEntity.base.animationState = param_1->animationState;
    return sub_08003FDE(&stackEntity.base, param_2, param_3, param_4);
}

void UpdateFloorType(void) {
    gPlayerState.floor_type = GetSurfaceCalcType(&gPlayerEntity.base, 0, 0);
    gSurfaceActions[gPlayerState.floor_type](&gPlayerEntity.base);
}

SurfaceType GetSurfaceCalcType(Entity* param_1, s32 x, s32 y) {
    u32 position = TILE(param_1->x.HALF.HI + (u32)x, param_1->y.HALF.HI + y);
    u32 tileType =
        GetTileTypeAtWorldCoords(param_1->x.HALF.HI + x, param_1->y.HALF.HI + y, gPlayerEntity.base.collisionLayer);
    if (tileType != gPlayerState.tileType) {
        gPlayerState.surfaceTimer = 0;
    }
    if ((tileType != gPlayerState.tileType) || (position != gPlayerState.tilePos)) {
        gPlayerState.tilePos = position;
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
    tileType = GetActTileRelativeToEntity(param_1, x, y); // tileType is a actTile here
    return FindValueForKey(tileType, gMapActTileToSurfaceType);
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
        if (((gPlayerState.jump_status & 200) == 0) && (gPlayerEntity.base.collisionLayer != 1)) {
            CreateObjectWithParent(&gPlayerEntity.base, ROTATING_TRAPDOOR, 0, 0);
        }
        return FALSE;
    }
}

u32 sub_0807A2F8(u32 param_1) {
    u32 uVar1;
    u32 uVar2;
    u32 iVar4;
    u32 uVar5;
    u8 auStack36[4];
    Entity* player;

    if ((gRoomControls.area == 8) || (sub_08079778() | param_1) == 0)
        return 0;
    if ((gPlayerEntity.base.animationState & 2) != 0) {

        uVar2 = COORD_TO_TILE_OFFSET(&gPlayerEntity.base, 0, -gPlayerEntity.base.hitbox->unk2[3]) << 1;
        uVar1 = COORD_TO_TILE_OFFSET(&gPlayerEntity.base, 0, gPlayerEntity.base.hitbox->unk2[3]) << 1;

    } else {
        uVar2 = COORD_TO_TILE_OFFSET(&gPlayerEntity.base, -gPlayerEntity.base.hitbox->unk2[0], 0) << 1;
        uVar1 = COORD_TO_TILE_OFFSET(&gPlayerEntity.base, gPlayerEntity.base.hitbox->unk2[0], 0) << 1;
    }

    for (uVar5 = 0; uVar5 < 2; uVar5++) {
        iVar4 = 0;
        uVar2 = sub_08004202(&gPlayerEntity.base, auStack36, uVar2);
        if (GetCollisionDataAtTilePos(uVar2 >> 1, LAYER_BOTTOM)) {
            if (!FindValueForKey((u16)GetActTileAtTilePos((u16)(uVar2 >> 1), gPlayerEntity.base.collisionLayer),
                                 gUnk_0811C1D8[gPlayerEntity.base.animationState >> 1])) {
                break;
            }
        } else {
            iVar4 = 1;
        }

        uVar1 = sub_08004202(&gPlayerEntity.base, auStack36, uVar1);
        if (GetCollisionDataAtTilePos(uVar1 >> 1, LAYER_BOTTOM)) {
            if (!FindValueForKey((u16)GetActTileAtTilePos((uVar1 >> 1), gPlayerEntity.base.collisionLayer),
                                 gUnk_0811C1D8[gPlayerEntity.base.animationState >> 1])) {
                break;
            }
        } else {
            iVar4++;
        }

        if (iVar4 == 2) {
            if (uVar5 != 0) {
                break;
            }
            return 0;
        }
    }
    if (uVar5 != 0) {
        if (AreaIsDungeon()) {
            uVar2 = sub_08004202(&gPlayerEntity.base, auStack36, uVar2);
            if (!GetCollisionDataAtTilePos(uVar2 >> 1, LAYER_TOP)) {
                uVar1 = sub_08004202(&gPlayerEntity.base, auStack36, uVar1);
                if (GetCollisionDataAtTilePos(uVar1 >> 1, LAYER_TOP)) {
                    return 0;
                }
            } else {
                return 0;
            }
        } else {
            if (uVar5 == 2) {
                uVar2 = sub_08004202(&gPlayerEntity.base, auStack36, uVar2);
            }
            if (GetCollisionDataAtTilePos(uVar2 >> 1, LAYER_BOTTOM) == 0) {
                if (uVar5 == 2) {
                    uVar1 = sub_08004202(&gPlayerEntity.base, auStack36, uVar1);
                }
                if (GetCollisionDataAtTilePos(uVar1 >> 1, LAYER_BOTTOM)) {
                    return 0;
                }
            } else {
                return 0;
            }
        }
        return uVar5 + 1;
    }

    return 0;
}

u32 GetPlayerTilePos(void) {
    switch (gPlayerEntity.base.animationState >> 1) {
        case 0:
            return TILE(gPlayerEntity.base.x.HALF.HI, gPlayerEntity.base.y.HALF.HI -
                                                          gPlayerEntity.base.hitbox->unk2[3] +
                                                          gPlayerEntity.base.hitbox->offset_y);
        case 2:
            return TILE(gPlayerEntity.base.x.HALF.HI, gPlayerEntity.base.y.HALF.HI +
                                                          gPlayerEntity.base.hitbox->unk2[3] +
                                                          gPlayerEntity.base.hitbox->offset_y);
        case 1:
            return COORD_TO_TILE_OFFSET(&gPlayerEntity.base, -gPlayerEntity.base.hitbox->unk2[0],
                                        -gPlayerEntity.base.hitbox->offset_y);
        case 3:
            return COORD_TO_TILE_OFFSET(&gPlayerEntity.base, gPlayerEntity.base.hitbox->unk2[0],
                                        -gPlayerEntity.base.hitbox->offset_y);
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
        } else if (gPlayerState.heldObject != 0 || gPlayerState.gustJarState != 0) {
            pbVar4 = gUnk_080084BC;
        } else if (gPlayerState.attachedBeetleCount != 0) {
            pbVar4 = gUnk_0800851C;
        } else {
            pbVar4 = gUnk_080082DC;
        }

        if (direction != DirectionNorth && direction != DirectionSouth) {
            uVar3 = (gPlayerEntity.base.x.HALF.HI + (gPlayerEntity.base.hitbox)->unk2[0] +
                     (gPlayerEntity.base.hitbox)->offset_x) -
                    gRoomControls.origin_x;
            uVar2 = (gPlayerEntity.base.y.HALF.HI + (gPlayerEntity.base.hitbox)->offset_y) - gRoomControls.origin_y;
            if (sub_080086B4(uVar3, uVar2, pbVar4) != 0) {
                sub_0807A750(uVar3, uVar2, pbVar4, 1);
            }
            uVar3 = ((gPlayerEntity.base.x.HALF.HI - (gPlayerEntity.base.hitbox)->unk2[0]) +
                     (gPlayerEntity.base.hitbox)->offset_x) -
                    gRoomControls.origin_x;
            if (sub_080086B4(uVar3, uVar2, pbVar4) != 0) {
                sub_0807A750(uVar3, uVar2, pbVar4, 3);
            }
        }
        if (direction != DirectionEast && direction != DirectionWest) {
            uVar3 = (gPlayerEntity.base.x.HALF.HI + (gPlayerEntity.base.hitbox)->offset_x) - gRoomControls.origin_x;
            uVar2 = (gPlayerEntity.base.y.HALF.HI + (gPlayerEntity.base.hitbox)->unk2[3] +
                     (gPlayerEntity.base.hitbox)->offset_y) -
                    gRoomControls.origin_y;
            if (sub_080086B4(uVar3, uVar2, pbVar4) != 0) {
                sub_0807A750(uVar3, uVar2, pbVar4, 2);
            }
            uVar2 = ((gPlayerEntity.base.y.HALF.HI - (gPlayerEntity.base.hitbox)->unk2[3]) +
                     (gPlayerEntity.base.hitbox)->offset_y) -
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
        uVar2 = GetCollisionDataAtTilePos((param_1 >> 4 & 0x3f) | (param_2 >> 4 & 0x3f) << 6,
                                          gPlayerEntity.base.collisionLayer);
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
            gPlayerEntity.base.y.HALF.HI += index - (param_2 % 16);
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
            gPlayerEntity.base.x.HALF.HI += (index - (param_1 % 16));
        }
    }
}

u32 GetActTileInFront(Entity* this) {
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
    return GetActTileRelativeToEntity(this, x, y);
}

void nullsub_505(void) {
}

void sub_0807A8D8(Entity* this) {
    u32 tmp;

    if ((gPlayerState.flags & PL_MINISH) == 0) {
        tmp = sub_080B1B84(COORD_TO_TILE_OFFSET(this, 0, 1), gPlayerEntity.base.collisionLayer);
        if ((tmp & 0x20) != 0) {
            sub_0807AAF8(this, COORD_TO_TILE_OFFSET(this, 0, 1));
        }
        tmp = sub_080B1B84(COORD_TO_TILE_OFFSET(this, -2, 0), gPlayerEntity.base.collisionLayer);
        if ((tmp & 0x20) != 0) {
            sub_0807AAF8(this, COORD_TO_TILE_OFFSET(this, -2, 0));
        }
        tmp = sub_080B1B84(COORD_TO_TILE_OFFSET(this, 2, 0), gPlayerEntity.base.collisionLayer);
        if ((tmp & 0x20) != 0) {
            sub_0807AAF8(this, COORD_TO_TILE_OFFSET(this, 2, 0));
        }
    }
    tmp = sub_080B1B84(COORD_TO_TILE(this), gPlayerEntity.base.collisionLayer);
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

// TODO some sort of flame spreading?
void sub_0807AB44(Entity* this, s32 xOffset, s32 yOffset) {
    Entity* object;
    const u16* ptr =
        sub_0806FC50(GetTileTypeAtTilePos(COORD_TO_TILE_OFFSET(this, -xOffset, -yOffset), this->collisionLayer), 0xb);
    if (ptr != NULL) {
        if (ptr[3] == 0x76) {
            object = CreateObject(FLAME, 1, 0);
            if (object != NULL) {
                PositionRelative(this, object, xOffset << 0x10, yOffset << 0x10);
                SnapToTile(object);
                sub_0807B7D8(ptr[3], COORD_TO_TILE(object), object->collisionLayer);
            }
        } else {
            object = CreateObject(FLAME, 2, 0);
            if (object != NULL) {
                PositionRelative(this, object, xOffset << 0x10, yOffset << 0x10);
                object->child = (Entity*)ptr;
                SetTile(SPECIAL_TILE_79, COORD_TO_TILE(object), object->collisionLayer);
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
            this->action = PLAYER_CLIMB;
            this->subAction = 0;
            this->y.HALF.LO = 0;
            gPlayerState.animation = ANIM_CLIMB1_UP;
            return TRUE;
        case SURFACE_AUTO_LADDER:
            this->x.HALF.HI = (this->x.HALF.HI & 0xfff0) | 8;
            // fallthrough
        case SURFACE_2C:
            this->action = PLAYER_CLIMB;
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
    if (gPlayerState.playerInput.newInput & INPUT_CANCEL) {
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
    if ((((this->action != PLAYER_ROOMTRANSITION) || (gPlayerState.field_0xa == 0)) &&
         (gRoomControls.reload_flags == 0)) &&
        ((gPlayerState.playerInput.newInput & INPUT_INTERACT) != 0)) {
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
    effect = CreateFx(&gPlayerEntity.base, FX_BIG_EXPLOSION2, 0);
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
    sub_0806FEBC(&gPlayerEntity.base, 0, 0);
    sub_0806FEBC(&gPlayerEntity.base, 1, 0);
    sub_0806FEBC(&gPlayerEntity.base, 2, &gPlayerEntity.base);
    sub_0806FEBC(&gPlayerEntity.base, 3, 0);
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
        this->unk_68.WORD = super->z.WORD;
    }
}

void sub_0807B264(PlayerEntity* this) {
    s32 tmp;
    UpdateAnimationSingleFrame(super);
    super->subtimer += 2;
    tmp = gSineTable[super->subtimer];
    tmp >>= 7;
    tmp <<= 0x10;
    super->z.WORD = this->unk_68.WORD + tmp;
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

// tileType < 0x800   : set the TileType
// tileType >= 0x4000 : call SetTile directly
// else               : restore the previous tile entity
void SetTileType(u32 tileType, u32 tilePos, u32 layer) {
    u8 collisionData;
    u16 tileIndex;
    MapLayer* mapLayer;
    u16* subTiles;
    u16* dest;

    if (tileType < 0x800) {
        UnregisterInteractTile(tilePos, layer);
        mapLayer = GetLayerByIndex(layer);
        tileIndex = mapLayer->tileIndices[tileType];
        mapLayer->mapData[tilePos] = tileIndex;
        collisionData = gMapTileTypeToCollisionData[tileType];
        mapLayer->collisionData[tilePos] = collisionData;
        if ((gRoomControls.scroll_flags & 2) != 0) {
            gMapBottom.collisionData[tilePos] = collisionData;
        }
        mapLayer->actTiles[tilePos] = gMapTileTypeToActTile[tileType];
        if ((gRoomControls.scroll_flags & 1) == 0) {
            u32 offset = (tilePos & 0x3f) * 2 + (tilePos & 0xfc0) * 4;
            if (layer != 2) {
                dest = gMapDataBottomSpecial + offset;
            } else {
                dest = gMapDataTopSpecial + offset;
            }
            subTiles = mapLayer->subTiles + tileIndex * 4;
            // Copy over the tileMap entries (tile_attrs) to the special map data but in a different order.
            dest[0] = subTiles[0];
            dest[1] = subTiles[1];
            dest[0x80] = subTiles[2];
            dest[0x81] = subTiles[3];
            if (gRoomControls.reload_flags != 1) {
                gUpdateVisibleTiles = 1;
            }
        }
    } else if (tileType >= 0x4000) { // The tile type actually directly is a tileIndex
        SetTile(tileType, tilePos, layer);
    } else {
        RestorePrevTileEntity(tilePos, layer);
    }
}

bool32 sub_0807B434(u32 tilePos, u32 layer) {
    switch (GetTileTypeAtTilePos(tilePos, layer)) {
        case TILE_TYPE_54:
        case TILE_TYPE_55:
            return FALSE;
        default:
            return GetActTileAtTilePos(tilePos, layer) != ACT_TILE_13;
    }
}

bool32 sub_0807B464(u32 tilePos, u32 layer) {
    return GetActTileAtTilePos(tilePos, layer) == ACT_TILE_86;
}

void sub_0807B480(u32 tilePos, u32 param_2) {
    u32 tmp1;
    u16 tmp2;
    u16 tmp3;
    u16 tileType;
    const u16* ptr;

    if (sub_0807B464(tilePos, LAYER_TOP)) {
        tmp1 = sub_0807B464(tilePos - 0x40, LAYER_TOP);
        tmp1 |= sub_0807B464(tilePos + 1, LAYER_TOP) << 1;
        tmp1 |= sub_0807B464(tilePos + 0x40, LAYER_TOP) << 2;
        tmp1 |= sub_0807B464(tilePos - 1, LAYER_TOP) << 3;
        tmp1 |= sub_0807B464(tilePos + 0x41, LAYER_BOTTOM) << 1;
        tmp1 |= sub_0807B464(tilePos + 0x3f, LAYER_BOTTOM) << 3;
        if (GetTileTypeAtTilePos(tilePos + 0x40, LAYER_TOP) != 0) {
            tmp1 |= sub_0807B464(tilePos + 0x80, LAYER_BOTTOM) << 2;
        }
        tmp2 = gUnk_0811C2CC[tmp1];
        tileType = GetTileTypeAtTilePos(tilePos, LAYER_TOP);
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
        SetTileType(tmp2, tilePos, LAYER_TOP);
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

u32 sub_0807B600(u32 tilePos) {
    u32 tileType;
    u32 tilePos2;

    tilePos2 = tilePos - 0x40;
    if (GetActTileAtTilePos(tilePos, LAYER_BOTTOM) != ACT_TILE_86) {
        return FALSE;
    } else {
        tileType = GetTileTypeAtTilePos(tilePos, LAYER_BOTTOM);
        if (tileType == TILE_TYPE_618) {
            sub_0807B820(tilePos);
        } else if (tileType == TILE_TYPE_615) {
            sub_0807B820(tilePos + 0x40);
        } else if (tileType == TILE_TYPE_634) {
            sub_0807B8A8(tilePos);
        } else if (tileType == TILE_TYPE_631) {
            sub_0807B8A8(tilePos + 0x40);
        } else if (tileType == TILE_TYPE_650) {
            sub_0807B930(tilePos);
        } else if (tileType == TILE_TYPE_647) {
            sub_0807B930(tilePos + 0x40);
        } else {
            if (GetTileTypeAtTilePos(tilePos, LAYER_TOP) != 0) {
                SetTileType(TILE_TYPE_754, tilePos, LAYER_BOTTOM);
                if (GetCollisionDataAtTilePos(tilePos2, LAYER_BOTTOM) == COLLISION_DATA_3) {
                    SetTileType(TILE_TYPE_756, tilePos2, LAYER_BOTTOM);
                }
                if (GetCollisionDataAtTilePos(tilePos + 0x40, LAYER_BOTTOM) == COLLISION_DATA_3) {
                    SetTileType(TILE_TYPE_756, tilePos, LAYER_BOTTOM);
                }
            } else {
                SetTileType(TILE_TYPE_756, tilePos, LAYER_BOTTOM);
            }
            if (sub_0807B464(tilePos2, LAYER_TOP)) {
                SetTileType(0, tilePos2, LAYER_TOP);
                if (GetTileTypeAtTilePos(tilePos2, LAYER_BOTTOM) == TILE_TYPE_754) {
                    SetTileType(TILE_TYPE_756, tilePos2, LAYER_BOTTOM);
                }
                sub_0807B55C(tilePos + 1, 1, (u16*)&gUnk_0811C2AC);
                sub_0807B55C(tilePos - 1, 1, (u16*)&gUnk_0811C2AC);
                sub_0807B55C(tilePos2, 1, (u16*)&gUnk_0811C2AC);
            }
            sub_0807B480(tilePos2 + 1, 3);
            sub_0807B480(tilePos2 - 1, 1);
            sub_0807B480(tilePos2 + 0x40, 0);
            sub_0807B480(tilePos2 - 0x40, 2);
        }
        return TRUE;
    }
}

void sub_0807B778(u32 tilePos, u32 layer) {
    u32 tmp;
    if (GetActTileAtTilePos(tilePos, layer) == ACT_TILE_13) {
        tmp = sub_0807B434(tilePos + TILE_POS(0, -1), layer);
        tmp |= sub_0807B434(tilePos + TILE_POS(1, 0), layer) << 1;
        tmp |= sub_0807B434(tilePos + TILE_POS(0, 1), layer) << 2;
        tmp |= sub_0807B434(tilePos + TILE_POS(-1, 0), layer) << 3;
        SetTileType(gUnk_0811C466[tmp], tilePos, layer);
    }
}

void sub_0807B7D8(u32 tileType, u32 tilePos, u32 layer) {
    if (tileType == TILE_TYPE_53) {
        CloneTile(TILE_TYPE_53, tilePos, layer);
        sub_0807B778(tilePos, layer);
        sub_0807B778(tilePos + TILE_POS(1, 0), layer);
        sub_0807B778(tilePos + TILE_POS(-1, 0), layer);
        sub_0807B778(tilePos + TILE_POS(0, 1), layer);
        sub_0807B778(tilePos + TILE_POS(0, -1), layer);
    } else {
        SetTileType(tileType, tilePos, layer);
    }
}

void sub_0807B820(u32 tilePos) {
    SetTileType(TILE_TYPE_620, tilePos + TILE_POS(-1, -1), LAYER_BOTTOM);
    SetTileType(TILE_TYPE_627, tilePos + TILE_POS(-1, -1), LAYER_TOP);
    SetTileType(TILE_TYPE_621, tilePos + TILE_POS(0, -1), LAYER_BOTTOM);
    SetTileType(TILE_TYPE_628, tilePos + TILE_POS(0, -1), LAYER_TOP);
    SetTileType(TILE_TYPE_622, tilePos + TILE_POS(1, -1), LAYER_BOTTOM);
    SetTileType(TILE_TYPE_629, tilePos + TILE_POS(1, -1), LAYER_TOP);
    SetTileType(TILE_TYPE_623, tilePos + TILE_POS(-1, 0), LAYER_BOTTOM);
    SetTileType(TILE_TYPE_624, tilePos, LAYER_BOTTOM);
    SetTileType(TILE_TYPE_626, tilePos + TILE_POS(1, 0), LAYER_BOTTOM);
}

void sub_0807B8A8(u32 tilePos) {
    SetTileType(TILE_TYPE_636, tilePos + TILE_POS(-1, -1), LAYER_BOTTOM);
    SetTileType(TILE_TYPE_643, tilePos + TILE_POS(-1, -1), LAYER_TOP);
    SetTileType(TILE_TYPE_637, tilePos + TILE_POS(0, -1), LAYER_BOTTOM);
    SetTileType(TILE_TYPE_644, tilePos + TILE_POS(0, -1), LAYER_TOP);
    SetTileType(TILE_TYPE_638, tilePos + TILE_POS(1, -1), LAYER_BOTTOM);
    SetTileType(TILE_TYPE_645, tilePos + TILE_POS(1, -1), LAYER_TOP);
    SetTileType(TILE_TYPE_639, tilePos + TILE_POS(-1, 0), LAYER_BOTTOM);
    SetTileType(TILE_TYPE_640, tilePos, LAYER_BOTTOM);
    SetTileType(TILE_TYPE_642, tilePos + TILE_POS(1, 0), LAYER_BOTTOM);
}

void sub_0807B930(u32 tilePos) {
    SetTileType(TILE_TYPE_652, tilePos + TILE_POS(-1, -1), LAYER_BOTTOM);
    SetTileType(TILE_TYPE_659, tilePos + TILE_POS(-1, -1), LAYER_TOP);
    SetTileType(TILE_TYPE_653, tilePos + TILE_POS(0, -1), LAYER_BOTTOM);
    SetTileType(TILE_TYPE_660, tilePos + TILE_POS(0, -1), LAYER_TOP);
    SetTileType(TILE_TYPE_654, tilePos + TILE_POS(1, -1), LAYER_BOTTOM);
    SetTileType(TILE_TYPE_661, tilePos + TILE_POS(1, -1), LAYER_TOP);
    SetTileType(TILE_TYPE_655, tilePos + TILE_POS(-1, 0), LAYER_BOTTOM);
    SetTileType(TILE_TYPE_656, tilePos, LAYER_BOTTOM);
    SetTileType(TILE_TYPE_658, tilePos + TILE_POS(1, 0), LAYER_BOTTOM);
}

void SetTileByIndex(u32 tileIndex, u32 tilePos, u32 layer) {
    MapLayer* mapLayer;
    u16* subTiles;
    u16* dest;
    u16 tileType;

    UnregisterInteractTile(tilePos, layer);
    mapLayer = GetLayerByIndex(layer);
    mapLayer->mapData[tilePos] = tileIndex;
    tileType = mapLayer->tileTypes[tileIndex];
    mapLayer->collisionData[tilePos] = gMapTileTypeToCollisionData[tileType];
    mapLayer->actTiles[tilePos] = gMapTileTypeToActTile[tileType];
    if ((gRoomControls.scroll_flags & 1) == 0) {
        u32 offset = (tilePos & 0x3f) * 2 + (tilePos & 0xfc0) * 4;
        if (layer != 2) {
            dest = gMapDataBottomSpecial + offset;
        } else {
            dest = gMapDataTopSpecial + offset;
        }
        subTiles = mapLayer->subTiles + tileIndex * 4;
        *dest = *subTiles;
        dest[1] = subTiles[1];
        dest[0x80] = subTiles[2];
        dest[0x81] = subTiles[3];
        if (gRoomControls.reload_flags != 1) {
            gUpdateVisibleTiles = 1;
        }
    }
}

void RestorePrevTileEntity(u32 tilePos, u32 layer) {
    u32 tileIndex;
    u32 tileType;
    MapLayer* mapLayer;
    u16* dest;
    u16* subTiles;

    UnregisterInteractTile(tilePos, layer);
    mapLayer = GetLayerByIndex(layer);
    mapLayer->mapData[tilePos] = tileIndex = mapLayer->mapDataOriginal[tilePos];
    tileType = mapLayer->tileTypes[tileIndex];
    mapLayer->collisionData[tilePos] = gMapTileTypeToCollisionData[tileType];
    mapLayer->actTiles[tilePos] = gMapTileTypeToActTile[tileType];
    if ((gRoomControls.scroll_flags & 1) == 0) {
        u32 offset = (tilePos & 0x3f) * 2 + (tilePos & 0xfc0) * 4;
        if (layer != 2) {
            dest = gMapDataBottomSpecial + offset;
        } else {
            dest = gMapDataTopSpecial + offset;
        }
        subTiles = &mapLayer->subTiles[tileIndex * 4];
        dest[0] = subTiles[0];
        dest[1] = subTiles[1];
        dest[0x80] = subTiles[2];
        dest[0x81] = subTiles[3];
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
            SetTile(SPECIAL_TILE_114, basePosition + x, layer);
        }
        basePosition += 0x40;
    }
}

void sub_0807BBE4(void) {
    u32 tileIndex;
    u8* topCollision;
    u8* bottomCollision;
    u32 index;
    u16* topMap;
    u16* bottomMap;
    u16* bottomTiles;
    u16* topTiles;

    bottomTiles = gMapBottom.tileTypes;
    topTiles = gMapTop.tileTypes;

    bottomMap = gMapBottom.mapData;
    topMap = gMapTop.mapData;
    bottomCollision = gMapBottom.collisionData;
    topCollision = gMapTop.collisionData;
    index = 0;
    for (index = 0; index < 0x40 * 0x40; index++) {
        tileIndex = *bottomMap;
        bottomMap++;
        if (tileIndex < 0x4000) {
            *bottomCollision = gMapTileTypeToCollisionData[bottomTiles[tileIndex]];
        } else {
            *bottomCollision = gMapSpecialTileToCollisionData[tileIndex - 0x4000];
        }
        bottomCollision++;
        tileIndex = (u32)*topMap;
        topMap++;
        if (tileIndex < 0x4000) {
            *topCollision = gMapTileTypeToCollisionData[topTiles[tileIndex]];
        } else {
            *topCollision = gMapSpecialTileToCollisionData[tileIndex - 0x4000];
        }
        topCollision++;
    }
}

// Set collisionData at the room bounds (?) to 0xff?
void CreateCollisionDataBorderAroundRoom(void) {
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
        gPlayerEntity.base.updatePriority = 6;
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

void LoadRoomTileSet(void) {
    s32 index;
    u16* tileTypes;
    u16* tileIndices;
    u16* paletteBuffer;

    ClearBgAnimations();
    sub_0807BFA8();
    MemFill16(0xffff, gMapBottom.tileTypes, 0x1000);
    gMapBottom.tileTypes[0] = 0;
    MemFill16(0xffff, gMapTop.tileTypes, 0x1000);
    gMapTop.tileTypes[0] = 0;

    if ((void*)gRoomControls.tileSet != (gArea.pCurrentRoomInfo)->tileSet) {
        gRoomControls.tileSet = (u32)(gArea.pCurrentRoomInfo)->tileSet;
        LoadMapData((gArea.pCurrentRoomInfo)->tileSet);
    }

    LoadMapData((gArea.pCurrentRoomInfo)->tiles);
    paletteBuffer = gPaletteBuffer;
    MemCopy(&paletteBuffer[0x30], &paletteBuffer[0x150], 0x20);
    gUsedPalettes |= 0x200000;

    if ((gArea.pCurrentRoomInfo)->bg_anim != NULL) {
        LoadBgAnimations((gArea.pCurrentRoomInfo)->bg_anim);
    }

    tileTypes = gMapBottom.tileTypes;
    tileIndices = gMapBottom.tileIndices;
    MemFill16(0xffff, tileIndices, 0x1000);

    for (index = 0; index < 0x800; index++, tileTypes++) {
        if ((*tileTypes < 0x800) && (tileIndices[*tileTypes] == 0xffff)) {
            tileIndices[*tileTypes] = index;
        }
    }

    tileTypes = gMapTop.tileTypes;
    tileIndices = gMapTop.tileIndices;
    MemFill16(0xffff, tileIndices, 0x1000);

    for (index = 0; index < 0x800; index++, tileTypes++) {
        if ((*tileTypes < 0x800) && (tileIndices[*tileTypes] == 0xffff)) {
            tileIndices[*tileTypes] = index;
        }
    }
}

void LoadRoomGfx(void) {
    RoomControls* roomControls;
    bool32 clearBottomMap; // TODO maybe if it is a 256 bit background?
    // So the first u16 being 0xffff indicates this and the rest of the background does not matter?
    // Or is it used anywhere else?
    // Probaby rather is some sort of different scroll mode where only a small part of the map is used?

    sub_0807BFA8();
    roomControls = &gRoomControls;
    roomControls->scroll_flags &= 0xfc;
    MemClear(gMapTop.mapData, sizeof(gMapTop.mapData));
    MemClear(gMapTop.collisionData, sizeof(gMapTop.collisionData));
    MemClear(&gMapDataBottomSpecial, 0x8000);
    MemClear(&gMapDataTopSpecial, 0x8000);
    LoadMapData((gArea.pCurrentRoomInfo)->map);
    if (gMapBottom.mapData[0] != 0xffff) {
        sub_0807C8B0(gMapBottom.mapData, roomControls->width / 16, roomControls->height / 16);
        sub_0807C8B0(gMapTop.mapData, roomControls->width / 16, roomControls->height / 16);
        clearBottomMap = FALSE;
    } else {
        MemClear(gMapBottom.mapData, sizeof(gMapBottom.mapData));
        clearBottomMap = TRUE;
    }
    if (gRoomTransition.field2d == 0) {
        MemCopy(gMapBottom.mapData, gMapBottom.mapDataOriginal, sizeof(gMapBottom.mapData));
        MemCopy(gMapTop.mapData, gMapTop.mapDataOriginal, sizeof(gMapBottom.mapData));
    } else if (gRoomTransition.field2d == 2) {
        MemCopy(gMapBottom.mapData, gMapBottom.actTiles, 0x1000);
        MemCopy(gMapBottom.mapDataOriginal, gMapBottom.mapData, 0x1000);
        MemCopy(gMapBottom.actTiles, gMapBottom.mapDataOriginal, 0x1000);
        MemCopy(gMapBottom.mapData + 0x800, gMapBottom.actTiles, 0x1000);
        MemCopy(gMapBottom.mapDataOriginal + 0x800, gMapBottom.mapData + 0x800, 0x1000);
        MemCopy(gMapBottom.actTiles, gMapBottom.mapDataOriginal + 0x800, 0x1000);
        MemCopy(gMapTop.mapData, gMapTop.actTiles, 0x1000);
        MemCopy(gMapTop.mapDataOriginal, gMapTop.mapData, 0x1000);
        MemCopy(gMapTop.actTiles, gMapTop.mapDataOriginal, 0x1000);
        MemCopy(gMapTop.mapData + 0x800, gMapTop.actTiles, 0x1000);
        MemCopy(gMapTop.mapDataOriginal + 0x800, gMapTop.mapData + 0x800, 0x1000);
        MemCopy(gMapTop.actTiles, gMapTop.mapDataOriginal + 0x800, 0x1000);
    }
    if (!clearBottomMap) {
        sub_0807BBE4();
    } else {
        sub_0807C69C(gMapBottom.collisionData, roomControls->width >> 4, roomControls->height >> 4);
        sub_0807C69C(gMapTop.collisionData, roomControls->width >> 4, roomControls->height >> 4);
        sub_0807C460();
    }
    CreateCollisionDataBorderAroundRoom();
    FillActTileForLayer(&gMapBottom);
    FillActTileForLayer(&gMapTop);
    if (!clearBottomMap) {
        // Render the complete bottom and top tileMaps into the tileMaps.
        RenderMapLayerToSubTileMap(gMapDataBottomSpecial, &gMapBottom);
        RenderMapLayerToSubTileMap(gMapDataTopSpecial, &gMapTop);
    } else {
        // Copy first half to second half.
        // Then copy the room back to the first half?
        // Then clear the second half.
        MemCopy(&gMapDataBottomSpecial, &gMapDataBottomSpecial[0x2000], 0x4000); // TODO
        sub_0807C5F4(gMapDataBottomSpecial, &gMapDataBottomSpecial[0x2000]);
        MemClear(&gMapDataBottomSpecial[0x2000], 0x4000);
        MemCopy(&gMapDataTopSpecial, &gMapDataTopSpecial[0x2000], 0x4000);
        sub_0807C5F4(gMapDataTopSpecial, &gMapDataTopSpecial[0x2000]);
        MemClear(&gMapDataTopSpecial[0x2000], 0x4000);
    }
    if (clearBottomMap || roomControls->area == AREA_PALACE_OF_WINDS_BOSS) {
        roomControls->scroll_flags |= 1;
    }

    switch (roomControls->area) {
        case AREA_MINISH_HOUSE_INTERIORS:
        case AREA_TOWN_MINISH_HOLES:
            if (gMapBottom.bgSettings != NULL) {
                gMapBottom.bgSettings->control |= 0x80;
            }
            gScreen.lcd.displayControl &= 0xfdff;
            break;
        case AREA_HOUSE_INTERIORS_1:
        case AREA_HOUSE_INTERIORS_2:
        case AREA_HOUSE_INTERIORS_3:
        case AREA_TREE_INTERIORS:
        case AREA_DOJOS:
        case AREA_MINISH_CRACKS:
        case AREA_HOUSE_INTERIORS_4:
        case AREA_WIND_TRIBE_TOWER:
        case AREA_EZLO_CUTSCENE:
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
                SetTile(*mapBottom, position, LAYER_BOTTOM);
            }
            if (*mapTop > 0x3fff) {
                SetTile(*mapTop, position, LAYER_TOP);
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
    MapDataDefinition* ptr1;
    MapDataDefinition* ptr2;

    if (gRoomControls.area != AREA_PALACE_OF_WINDS_BOSS) {
        MemClear(gMapDataBottomSpecial, 0x8000);
        MemClear(gMapDataTopSpecial, 0x8000);
        ptr1 = &gUnk_02022830;
        ptr2 = (MapDataDefinition*)(gArea.pCurrentRoomInfo)->map;
        ptr2 -= 1;
        do {
            ptr2 += 1;
            // TODO why does this not match with ptr2->dest?
            if (((u16*)((u32*)ptr2)[1] == gMapDataBottomSpecial) ||
                ((u16*)((u32*)ptr2)[1] == (u16*)&gMapDataTopSpecial)) {
                // only load the map data definitions for bitmap backgrounds?
                ptr1->src = ptr2->src & 0x7fffffff;
                ptr1->dest = ptr2->dest;
                ptr1->size = ptr2->size;
                LoadMapData(ptr1);
            }
        } while ((s32)ptr2->src < 0);
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

// Copies parts over
// 0x20 * 0x20 chunk if gRoomControls.width <= 0xff
// more up to 0x40 * 0x40 if the room is bigger
void sub_0807C5F4(u16* dest, u16* src) {
    s32 index1;
    u32 index2;
    u16* ptr;

    ptr = dest;
    for (index1 = 0x20; index1 != 0; index1--) {
        for (index2 = 0; index2 < 0x20; index2++) {
            *ptr = *src;
            src++;
            ptr++;
        }
        ptr += 0x60;
    }

    if (gRoomControls.width > 0xff) {
        ptr = dest + 0x20;
        for (index1 = 0x20; index1 != 0; index1--) {
            for (index2 = 0; index2 < 0x20; index2++) {
                *ptr = *src;
                src++;
                ptr++;
            }
            ptr += 0x60;
        }
    }
    if (gRoomControls.height > 0xff) {
        ptr = dest + 0x1000;
        for (index1 = 0x20; index1 != 0; index1--) {
            for (index2 = 0; index2 < 0x20; index2++) {
                *ptr = *src;
                src++;
                ptr++;
            }
            ptr += 0x60;
        }
    }
    if (gRoomControls.width > 0xff && gRoomControls.height > 0xff) {
        dest += 0x1020;
        ptr = dest;

        for (index1 = 0x20; index1 != 0; index1--) {
            for (index2 = 0; index2 < 0x20; index2++) {
                *ptr++ = *src++;
            }
            ptr += 0x60;
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

    LoadRoomTileSet();
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
    UpdateScreenShake();
}

void sub_0807C810(void) {
    DiggingCaveEntranceTransition* ptr;
    Entity* player;
    RoomControls* ctrls;
    LoadRoomTileSet();
    ptr = &gDiggingCaveEntranceTransition;
    player = &gPlayerEntity.base;
    ctrls = &gRoomControls;
    player->x.HALF.HI = ((ptr->entrance)->targetTilePos & 0x3f) * 0x10 + ctrls->origin_x + ptr->offsetX;
    player->y.HALF.HI = (((ptr->entrance)->targetTilePos & 0xfc0) >> 2) + ctrls->origin_y + ptr->offsetY;
    sub_080809D4();
    gUpdateVisibleTiles = 0;
}

/**
 * This function is used to create a copy of the map data for temporary cutscene changes.
 */
void CloneMapData(void) {
    gRoomTransition.field2d = 1;
    MemCopy(&gMapBottom.mapData, &gMapBottom.mapDataOriginal, 0x2000);
    MemCopy(&gMapTop.mapData, &gMapTop.mapDataOriginal, 0x2000);
}

void sub_0807C898(void) {
    gRoomTransition.field2d = 2;
    LoadRoomGfx();
    gRoomTransition.field2d = 0;
}

void sub_0807C8B0(u16* data, u32 width, u32 height) {
    u16* dst_ptr;
    u16* src_ptr;
    u16* dst_ptr_cpy;
    u16* src_ptr_cpy;
    u32 innerIndex;
    u32 index;
    u16* prev_line;
    u32 diff;

    src_ptr = data + width * height - 1;
    dst_ptr = data + (height - 1) * 0x40 + (width - 1);

    for (index = 0; index < height; index++) {
        src_ptr_cpy = src_ptr; //[index * -width];
        dst_ptr_cpy = dst_ptr; //[index * -0x40];
        for (innerIndex = 0; innerIndex < width; innerIndex++) {
            dst_ptr_cpy[-innerIndex] = src_ptr_cpy[-innerIndex];
        }
        dst_ptr -= 0x40;
        src_ptr -= width;
    }

    diff = 0x40 - width;
    for (index = 0; index < 0x40; index++) {
        dst_ptr = data + width - index * -0x40;

        for (innerIndex = 0; innerIndex < diff; innerIndex++) {
            dst_ptr[innerIndex] = 0;
        }
    }

    diff = 0x40 - height;
    dst_ptr = data + height * 0x40;
    for (index = 0; index < diff; index++) {
        MemClear(&dst_ptr[index * 0x40], 0x80);
        // dst_ptr += 0x40;
    }
}

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

void sub_0807C998(u32* dest) {
    LoadCompressedMapData(&gMapBottom.subTiles, dest[0]);
    LoadCompressedMapData(&gMapBottom.tileTypes, dest[1]);
    LoadCompressedMapData(&gMapTop.subTiles, dest[2]);
    LoadCompressedMapData(&gMapTop.tileTypes, dest[3]);
}

void sub_0807C9D8(u32* a1) {
    u32* v1; // r5@1

    v1 = a1;
    LoadCompressedMapData((u8*)0x6004000, *a1);
    LoadCompressedMapData((u8*)0x6000000, v1[1]);
    LoadCompressedMapData((u8*)0x6008000, v1[2]);
    LoadCompressedMapData((u8*)(gPaletteBuffer + 32), v1[3]);
    LoadPalettes((u8*)(gPaletteBuffer + 32), 2, 13);
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
