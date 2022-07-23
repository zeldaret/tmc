#define NENT_DEPRECATED
#include "global.h"
#include "area.h"
#include "asm.h"
#include "common.h"
#include "entity.h"
#include "functions.h"
#include "game.h"
#include "kinstone.h"
#include "object.h"
#include "player.h"
#include "room.h"
#include "save.h"
#include "new_player.h"
#include "item.h"
#include "message.h"
#include "screen.h"
#include "screen.h"
#include "manager/diggingCaveEntranceManager.h"

static void sub_08077E54(ItemBehavior* beh);

extern void sub_080752E8(ItemBehavior* behavior, u32 arg1); // item.c
extern void sub_0800857C(Entity*);
extern void SetDefaultPriorityForKind(Entity*);
extern void sub_0809D738(Entity*);
extern s32 Mod(s32, s32);
extern void sub_08003FDE(Entity*, u32, u32, u32);
extern u32 sub_080B1B84(u32, u32);
extern void sub_08080BC4(void);
void sub_080790E4(Entity* this);
void sub_08079064(Entity*);

typedef struct {
    u8 unk0[4];
    u16 unk4;
    u8 unk6[6];
} struct_0811BE48;

extern u8 gMapData;
extern const u8 gUnk_020176E0[];
extern const ScreenTransitionData gUnk_0813AD88[];

bool32 sub_08077758(PlayerEntity*);
bool32 sub_080777A0();
void sub_08077880(u32, u32, u32);
bool32 sub_080778CC();
ItemBehavior* sub_0807794C(u32);
u32 sub_080789A8(void);
ItemBehavior* sub_080779EC(u32);
void DeletePlayerItem(ItemBehavior*, u32);
bool32 sub_08079E90(u32);
void PlayerMinishSetNormalAndCollide(void);
void sub_08078D60(void);
void* sub_08077C54(ItemBehavior*);
u32 sub_08079FD4(Entity*, u32);
void LoadRoomGfx(void);
u32 sub_0807A094(u32);
SurfaceType GetSurfaceCalcType(Entity*, s32, s32);
void sub_0807AAF8(Entity*, u32);

extern struct_0811BE48 gUnk_0811BE48[];
extern void (*const gUnk_0811C27C[])(Entity*);
extern void (*const gUnk_0811C284[])(PlayerEntity*);
extern void (*const gUnk_0811C298[])(PlayerEntity*);
extern bool32 (*const gPlayerChargeActions[])(ChargeState*);
extern u8 gUnk_0811C000[];
extern const u8 gUnk_0811C118[];
extern void (*const gUnk_0811C120[])(Entity*);
extern u16 gUnk_0811C268[];
extern ItemBehavior* (*const gUnk_0811BFC8[])(u32);

extern void DeleteLoadedTileEntity(u32, u32);

extern const u8 gUnk_080B3E80[]; // collisionData for tileType?
extern const u8 gUnk_080B37A0[]; // unkData3 for tileType?

extern u8 gUpdateVisibleTiles;
extern u16 gMapDataTopSpecial[];
extern u16 gMapDataBottomSpecial[];

bool32 sub_0807BF88(u32, u32, RoomResInfo*);

void sub_0807BFD0(void);

void ForceSetPlayerState(u32 framestate);
struct_03003DF8* sub_080784E4(void);

extern const u16 gUnk_0811C0F8[];

u32 sub_08079778(void);
u32 sub_0807A500(void);

extern const u16 gUnk_0811C108[];

extern const u16 gUnk_0811C110[];

extern const u16 gUnk_08007CAC[];

u32 sub_0807BEEC(u32 param_1, u32 param_2, u32 param_3);

extern const u16 gUnk_0811C466[];
bool32 sub_0807B434(u32 position, u32 layer);

extern const u16 gUnk_0811C2AC[];

void sub_0807B820(u32);
void sub_0807B8A8(u32);
void sub_0807B930(u32);
bool32 sub_0807B464(u32 param_1, u32 param_2);
void sub_0807B55C(u32, u32, u16*);
void sub_0807B480(u32, u32);

extern const s16 gUnk_0811C456[];

bool32 sub_0807B600(u32);

bool32 sub_0807B464(u32 tilePos, u32 param_2);

extern const u16 gUnk_0811C2CC[];
extern const u16 gUnk_0811C2EC[];

bool32 sub_0807B464(u32 param_1, u32 param_2);

extern void CreateRandomWaterTrace(Entity* parent, int range);
void sub_08079520(Entity* this);

bool32 sub_0807ADB8(Entity*);

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

extern s8* gUnk_0811C0B0[];
extern u8 gUnk_0811C01C[];

void sub_08077698(PlayerEntity* this) {
    ItemBehavior* puVar2;
    u32 idx;

    gPlayerState.field_0x3[0] &= 0xfe;
    gPlayerState.field_0x3[1] &= 0xf;
    if ((((((gPlayerState.field_0x7 | gPlayerState.jump_status) & 0x80) == 0) &&
          ((gPlayerState.jump_status & 0x40) == 0)) &&
         (gPlayerState.swim_state == 0)) &&
        ((sub_08077758(this) && (sub_080777A0() == 0)))) {
        sub_08077880(gSave.stats.itemButtons[0], 1, 0);
        sub_08077880(gSave.stats.itemButtons[1], 2, 0);
        sub_080778CC();
    }
    idx = 0;
    puVar2 = gUnk_03000B80;
    do {
        if (puVar2->field_0x5[4] != 0) {
            sub_080752E8(puVar2, idx);
        }
        puVar2++;
        idx++;
    } while (idx < 4);
}

void sub_08077728(u32 param_1) {
    if (param_1 == 0) {
        sub_08077880(gSave.stats.itemButtons[0], 1, 1);
    } else {
        sub_08077880(gSave.stats.itemButtons[1], 2, 1);
    }
}

bool32 sub_08077758(PlayerEntity* this) {
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

bool32 sub_080777A0(void) {
    if ((gPlayerState.field_0x92 & 0x80) != 0) {
        if ((gPlayerState.flags & PL_CLONING) != 0) {
            gPlayerState.chargeState.action = 1;
            DeleteClones();
            return TRUE;
        } else {
            switch (gArea.portal_mode) {
                case 2:
                    if (gArea.unk1A == 0) {
                        gPlayerEntity.subAction += 1;
                    }
                    break;
                case 3:
                    if ((gArea.unk1A == 0) && ((gPlayerState.flags & PL_MINISH) != 0)) {
                        gPlayerEntity.subAction += 1;
                        gPlayerEntity.flags &= ~ENT_COLLIDE;
                        RequestPriorityDuration(&gPlayerEntity, 180);
                        return TRUE;
                    }
                    return FALSE;
                default:
                    if ((((gUnk_0200AF00.unk_2c == 0xc) && (gPlayerState.field_0x1c == 0)) &&
                         (gPlayerState.floor_type != SURFACE_SWAMP)) &&
                        ((((gPlayerState.field_0x90 & 0xf00) != 0 &&
                           ((gPlayerState.flags & (PL_BURNING | PL_ROLLING)) == 0)) &&
                          ((gPlayerState.jump_status == 0 && (gPlayerState.field_0x3[1] == 0)))))) {
                        gPlayerState.queued_action = 0x18;
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

void sub_08077880(Item itemId, u32 param_2, u32 param_3) {
    ItemBehavior* item;
    u16* puVar2;

    if (itemId - 1 < 0x1f) {
        struct_0811BE48* ptr = &gUnk_0811BE48[itemId];
        puVar2 = &gPlayerState.field_0x90;
        if (ptr->unk0[0] != 0) {
            puVar2 = &gPlayerState.field_0x92;
        }

        if (((*puVar2 & param_2) != 0) || (param_3 != 0)) {
            item = sub_0807794C(itemId);
            if (item != NULL) {
                item->field_0x5[4] = gUnk_0811BE48[itemId].unk0[1];
                item->behaviorID = itemId;
                item->field_0x2[1] = param_2;
            }
        }
    }
}

bool32 sub_080778CC(void) {
    ItemBehavior* item;

    if (!((((gPlayerState.flags & (PL_USE_PORTAL | PL_MINISH | PL_ROLLING)) == 0) &&
           (((gNewPlayerEntity.unk_79 != 0 || (gPlayerState.heldObject != 0)) ||
             ((gPlayerState.field_0x92 & 0x8000) != 0)))) &&
          (((sub_080789A8() != 0 || ((gPlayerState.field_0x90 & 0xf03) == 0)))))) {
        return FALSE;
    }
    item = sub_0807794C(ITEM_TRAP);
    if (item != NULL) {
        item->behaviorID = ITEM_TRAP;
        item->field_0x5[4] = gUnk_0811BE48[0].unk0[0x145];
        return TRUE;
    } else {
        return FALSE;
    }
}

ItemBehavior* sub_0807794C(Item itemId) {
    if (((((gPlayerState.queued_action == PLAYER_ROLL) && (itemId != ITEM_TRAP)) ||
          (((gPlayerState.flags & (PL_ROLLING | PL_CLONING)) != 0 && (ITEM_FOURSWORD < itemId)))) ||
         ((((gPlayerState.jump_status != 0 || (gPlayerEntity.z.WORD != 0)) && (ITEM_FOURSWORD < itemId)) ||
           (((gPlayerState.flags & PL_MINISH) != 0 && (gUnk_0811BE48[itemId].unk6[2] == 0)))))) ||
        ((gPlayerState.floor_type == SURFACE_SWAMP && ((gPlayerState.field_0x37 != 0 && (1 < itemId - 0x14)))))) {
        return NULL;
    } else {
        u32 tmp = gUnk_0811BE48[itemId].unk0[2];
        return gUnk_0811BFC8[tmp](itemId);
    }
}

u32 sub_080779E8(void) {
    return 0;
}

ItemBehavior* sub_080779EC(u32 param_1) {
    if (gUnk_03000B80[1].field_0x5[4] == 0) {
        return gUnk_03000B80 + 1;
    } else if (gUnk_03000B80[2].field_0x5[4] == 0) {
        return gUnk_03000B80 + 2;
    } else {
        return NULL;
    }
}

ItemBehavior* sub_08077A18(u32 param_1) {
    ItemBehavior* pIVar1;

    if (((gPlayerState.heldObject == 0) && (param_1 != gUnk_03000B80[1].behaviorID)) &&
        (param_1 != gUnk_03000B80[2].behaviorID)) {
        return sub_080779EC(param_1);
    } else {
        return NULL;
    }
}

ItemBehavior* sub_08077A48(s32 param_1) {
    if (gPlayerState.heldObject == 0) {
        u32 tmp = gPlayerState.jump_status & 0x20;
        if ((((gPlayerState.jump_status & 0x20) == 0)) &&
            (gUnk_0811BE48[param_1].unk0[1] >= gUnk_03000B80[0].field_0x5[4])) {
            DeletePlayerItem(gUnk_03000B80, 0);
            gPlayerState.field_0x0[1] = tmp;
            gPlayerState.field_0x1c = tmp;
            gPlayerState.sword_state = tmp;
            return gUnk_03000B80;
        }
    }
    return NULL;
}

ItemBehavior* sub_08077A98(void) {
    if (!(((gSave.stats.bombCount == 0) || (gPlayerState.heldObject != 0)) || (gUnk_03000B80[0].field_0x5[4] != 0))) {
        return gUnk_03000B80;
    } else {
        return NULL;
    }
}

ItemBehavior* sub_08077AC8(void) {
    ItemBehavior* pIVar1;
    u32 index;

    index = 0;
    pIVar1 = gUnk_03000B80;
    while (index < 4) {
        if (pIVar1->field_0x5[4] != 0) {
            return NULL;
        }
        pIVar1 += 1;
        index += 1;
    }
    return gUnk_03000B80 + 3;
}

void ResetLantern(void) {
    u32 slot;

    DeletePlayerItem(gUnk_03000B80 + 3, 3);
    gPlayerState.flags &= ~PL_USE_LANTERN;
    slot = IsItemEquipped(ITEM_LANTERN_ON);
    if (slot != 2) {
        ForceEquipItem(ITEM_LANTERN_OFF, slot);
    }
}

void PutAwayItems(void) {
    ResetPlayerItem();
    ResetLantern();
}

void ResetPlayerItem() {
    u32 index = 0;
    ItemBehavior* ptr = gUnk_03000B80;
    do {
        DeletePlayerItem(ptr, index);
        ptr++;
        index++;
    } while (index <= 2);

    gPlayerState.field_0x3c[1] = 0;
    gPlayerState.field_0x1c = 0;
    gPlayerState.field_0x1f[2] = 0;
    gPlayerState.field_0x0[1] = 0;
    gPlayerState.field_0xe = 0;
    gPlayerState.dash_state = 0;
    gPlayerState.sword_state = 0;
    gPlayerState.field_0x3[0] = 0;
    gPlayerState.heldObject = 0;
    gPlayerState.flags &= ~(PL_ROLLING | PL_SWORD_THRUST);

    gNewPlayerEntity.unk_70 = NULL;

    if ((gPlayerState.jump_status & 0xc0) == 0) {
        gPlayerState.jump_status = 0;
    }

    switch (gPlayerState.framestate) {
        case 2:
        case 3:
        case 4:
            gPlayerState.framestate = PL_STATE_IDLE;
            break;
    }
}

void sub_08077B98(ItemBehavior* unk) {
    if ((gPlayerState.item == NULL) || (gPlayerState.item->id != 1)) {
        gPlayerState.item = sub_08077C54(unk);
    }
}

void sub_08077BB8(ItemBehavior* beh) {
    Entity* temp = sub_08077C54(beh);
    if (temp != NULL) {
        temp->flags = ENT_PERSIST;
    }
    gPlayerState.item = temp;
}

Entity* sub_08077BD4(ItemBehavior* beh) {
    if (sub_08077C94(beh, gUnk_0811BE48[beh->behaviorID].unk0[3]) != 0) {
        return NULL;
    } else {
        return CreatePlayerItemWithParent(beh, gUnk_0811BE48[beh->behaviorID].unk0[3]);
    }
}

Entity* sub_08077C0C(ItemBehavior* beh, u32 arg1) {
    u8 bVar1;
    Entity* pEVar3;

    bVar1 = gUnk_0811BE48[arg1].unk0[3];

    if (sub_08077C94(beh, bVar1) != 0) {
        return NULL;
    } else {
        return CreatePlayerItemWithParent(beh, bVar1);
    }
}

Entity* CreatePlayerItemWithParent(ItemBehavior* beh, u32 subtype) {
    Entity* pEVar1;

    pEVar1 = CreatePlayerItem(subtype, 0, 0, beh->behaviorID);
    if (pEVar1 != NULL) {
        *(ItemBehavior**)&pEVar1->parent = beh;
    }
    return pEVar1;
}

void* sub_08077C54(ItemBehavior* unk) {
    GenericEntity* item;

    item = (GenericEntity*)CreateItemGetEntity();
    if (item != NULL) {
        item->base.id = gUnk_0811BE48[unk->behaviorID].unk0[3];
        item->base.kind = PLAYER_ITEM;
        item->base.flags = 0xa0;
        item->base.parent = (Entity*)unk;
        item->field_0x68.HALF.LO = unk->behaviorID;
        AppendEntityToList(&item->base, 2);
    }
    return item;
}

Entity* sub_08077C94(ItemBehavior* arg0, u32 arg1) {
    Entity* iVar1;

    iVar1 = FindEntityByID(PLAYER_ITEM, gUnk_0811BE48[arg1].unk0[3], 2);
    if (iVar1 == NULL) {
        return NULL;
    }
    return iVar1;
}

Entity* CreatePlayerItem(u32 subtype, u32 form, u32 parameter, u32 unk) {
    GenericEntity* ent;

    ent = (GenericEntity*)GetEmptyEntity();
    if (ent != NULL) {
        ent->base.flags = ENT_COLLIDE;
        ent->base.kind = PLAYER_ITEM;
        ent->base.id = subtype;
        ent->base.type = form;
        ent->base.type2 = parameter;
        ent->field_0x68.HALF.LO = unk;
        AppendEntityToList(&ent->base, 2);
    }
    return &ent->base;
}

Entity* sub_08077CF8(u32 subtype, u32 form, u32 parameter, u32 unk) {
    GenericEntity* ent;

    ent = (GenericEntity*)CreateItemGetEntity();
    if (ent != NULL) {
        ent->base.flags = ENT_COLLIDE;
        ent->base.kind = PLAYER_ITEM;
        ent->base.id = subtype;
        ent->base.type = form;
        ent->base.type2 = parameter;
        ent->field_0x68.HALF.LO = unk;
        AppendEntityToList(&ent->base, 2);
    }
    return &ent->base;
}

void sub_08077D38(ItemBehavior* beh, u32 idx) {
    u32 r6;
    struct_0811BE48* ptr;

    gPlayerState.field_0xa |= 8 >> idx;
    gPlayerState.keepFacing |= 8 >> idx;
    beh->field_0x5[5] = gPlayerEntity.animationState;
    if (beh->stateID == 0) {
        beh->stateID++;
    }

    ptr = &gUnk_0811BE48[beh->behaviorID];
    if (ptr->unk4) {
        if ((gPlayerState.flags & PL_NO_CAP)) {
            switch (beh->behaviorID) {
                case 0x1b:
                    r6 = 0x948;
                    break;
                case 1:
                    r6 = 0x408;
                    break;
                case 0xd:
                    r6 = 0x40c;
                    break;
            }
            sub_08077DF4(beh, r6);
        } else {
            sub_08077DF4(beh, ptr->unk4);
        }
    }

    beh->field_0xf = ptr->unk6[0];
    if (ptr->unk6[1]) {
        gPlayerState.field_0x3[1] |= (8 >> idx) | ((8 >> idx) << 4);
    }
}

typedef struct {
    u8 b0 : 4;
    u8 b1 : 4;
} PACKED Unk_bitfield;

typedef struct {
    u8 unk[16];
} Unk_struct_in_08077EC8;

void sub_08077DF4(ItemBehavior* beh, u32 animation) {
    beh->field_0x10 = animation;
    if ((animation & 0xff) > 0xb8) {
        animation += beh->field_0x5[5] >> 1;
    }
    gPlayerEntity.spriteIndex = (short)(animation >> 8);
    InitAnimationForceUpdate(&gPlayerEntity, (u8)animation);
    sub_08077E54(beh);
}

void UpdateItemAnim(ItemBehavior* beh) {
    UpdateAnimationSingleFrame(&gPlayerEntity);
    sub_08077E54(beh);
}

void sub_08077E3C(ItemBehavior* ent, u32 idx) {
    sub_080042BA(&gPlayerEntity, idx);
    sub_08077E54(ent);
}

static void sub_08077E54(ItemBehavior* beh) {
    beh->field_0x5[7] = gPlayerEntity.animIndex;
    beh->field_0x12[0] = gPlayerEntity.frameIndex;
    beh->field_0x5[8] = gPlayerEntity.frameDuration;
    beh->field_0x5[9] = gPlayerEntity.frame;
}

void DeletePlayerItem(ItemBehavior* arg0, u32 idx) {
    u32 not ;

    if (idx == 0) {
        if (gPlayerState.item != NULL) {
            ((Unk_bitfield*)gPlayerState.item)[0x11].b0 = 6;
            gPlayerState.item = NULL;
        } else {
            gPlayerState.item = NULL;
        }
    }

    not = (8 >> idx);
    gPlayerState.field_0x3[1] &= ~((u8)((8 >> idx) << 4) | not );
    not = ~not ;
    gPlayerState.field_0xa &= not ;
    gPlayerState.keepFacing &= not ;
    MemClear(arg0, 0x1c);
}

bool32 sub_08077EC8(ItemBehavior* beh) {
    if ((gPlayerState.sword_state & 8) != 0) {
        sub_08077DF4(beh, 0x170);
        beh->field_0x5[2] = 0x28;
        beh->stateID = 7;
        beh->field_0xf = 6;
        return TRUE;
    } else {
        return FALSE;
    }
}

bool32 sub_08077EFC(ItemBehavior* arg0) {
    return sub_08077F24(arg0, (u16)gPlayerState.field_0x90);
}

bool32 sub_08077F10(ItemBehavior* arg0) {
    return sub_08077F24(arg0, (u16)gPlayerState.field_0x92);
}

bool32 sub_08077F24(ItemBehavior* beh, u32 arg1) {
    u32 val;
    Stats* stats = &gSave.stats;
    u32 id = beh->behaviorID;
    if (stats->itemButtons[SLOT_A] == id) {
        val = 1;
    } else if (stats->itemButtons[SLOT_B] == id) {
        val = 2;
    } else {
        val = 0;
    }

    return (val & arg1) ? 1 : 0;
}

void PlayerCancelHoldItem(ItemBehavior* beh, u32 arg1) {
    PlayerDropHeldObject();
    DeletePlayerItem(beh, arg1);
}

/**
 * Check if player state believes the held item is valid?
 * If it's not delete the item?
 */
bool32 PlayerTryDropObject(ItemBehavior* arg0, u32 unk) {
    u32 temp;
    if (gPlayerState.heldObject == 0) {
        PlayerCancelHoldItem(arg0, unk);
        temp = FALSE;
    } else {
        temp = TRUE;
    }
    return temp;
}

void sub_08077F84(void) {
    Entity* obj;

    if ((gPlayerEntity.collisionLayer & 2) == 0) {
        u32 tile = GetTileTypeByPos(gPlayerEntity.x.HALF.HI, gPlayerEntity.y.HALF.HI - 12, 2);
        if (tile == 0x343 || tile == 0x344 || tile == 0x345 || tile == 0x346) {
            sub_0807AA80(&gPlayerEntity);
            gPlayerState.jump_status |= 8;
            obj = CreateObject(OBJECT_44, 0, 0);
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

NONMATCH("asm/non_matching/playerUtils/sub_08078008.inc", bool32 sub_08078008(ChargeState* state)) {
    u32 swordType;
    if (ItemIsSword(gSave.stats.itemButtons[0]) == 0) {
        if (ItemIsSword(gSave.stats.itemButtons[1]) != 0) {
            swordType = gSave.stats.itemButtons[1];
        } else {
            swordType = 0;
        }
    } else {
        swordType = gSave.stats.itemButtons[0];
    }
    if (swordType == 1 || swordType == 2) {
        swordType = 0;
    }
    if ((swordType != 0) && ((gPlayerState.sword_state & 0x20) != 0)) {
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
END_NONMATCH

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
    state->chargeTimer -= 1;
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
    info->preChargeTimer -= 1;
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

void sub_08078180(void) {
    u8 uVar1;
    u8 uVar3;
    struct_03003DF8* ptr;

    if (gUnk_0200AF00.unk_2f != 0)
        return;

    uVar1 = 0;
    if ((gPlayerState.jump_status == 0) &&
        ((gPlayerState.flags & (PL_IN_HOLE | PL_FROZEN | PL_BURNING | PL_DISABLE_ITEMS | PL_DRUGGED)) == 0)) {
        if ((u8)(gPlayerState.heldObject - 1) < 4) {
            if (gUnk_0200AF00.unk_2e != 0) {
                uVar1 = gUnk_0200AF00.unk_2e;
            } else {
                uVar1 = 3;
            }
        } else {
            if (gUnk_0200AF00.unk_2d != 0) {
                uVar1 = gUnk_0200AF00.unk_2d;
            } else {
                ptr = sub_080784E4();
                if (ptr->entity->interactType == 0) {

                    switch (ptr->unk_1) {
                        case 1:
                        case 7:
                            uVar1 = 7;
                            break;
                        case 8:
                            if (gRoomVars.shopItemType == ITEM_NONE) {
                                uVar1 = 9;
                            }
                            break;
                        case 3:
                        case 5:
                        case 6:
                            uVar1 = 6;
                            break;
                        case 9:
                            uVar1 = 5;
                            break;
                        case 10:
                            uVar1 = 2;
                            break;
                    }
                } else {
                    if (sub_080789A8()) {
                        if (((gPlayerState.framestate != 0x0e))) {

                            if ((gCarriedEntity.unk_1 == 2) && ((gCarriedEntity.unk_8)->carryFlags == 1)) {
                                uVar1 = 8;
                            } else {
                                uVar1 = 9;
                            }
                        } else {
                            return;
                        }
                    } else {
                        if ((gPlayerState.framestate == 1) && (gPlayerState.mobility == 0)) {
                            uVar1 = 0xc;
                        } else {
                            uVar1 = 0;
                        }
                    }
                }
            }
        }
    }
    gUnk_0200AF00.unk_2c = uVar1;
}

bool32 sub_080782C0(void) {
    u8 tmp;
    Entity* entity;

    if (gPlayerState.framestate == 0) {
        tmp = gPlayerState.framestate_last;
    } else {
        tmp = gPlayerState.framestate;
    }
    switch (tmp) {
        case 2:
        case 3:
        case 0xc:
        case 0x12:
        case 0x15:
        case 0x16:
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
    if (((gPlayerState.field_0x92 & 0x1000) != 0) && ((u8)(gUnk_03003DF0.unk_4[3] - 1) < 100)) {
        sub_0801E738(0);
        if (gSave.unk12B[0] != 0) {
            gUnk_03003DF0.unk_2 = gUnk_03003DF0.unk_4[3];
            *(u8*)(*(int*)(gUnk_03003DF0.unk_4 + 8) + 0x39) = 2;
            gPlayerState.queued_action = 7;
        } else {
            CreateEzloHint(TEXT_INDEX(TEXT_EZLO, 0x65), 0);
        }
        ForceSetPlayerState(0x13);
        return TRUE;
    }
    if ((gPlayerState.field_0x92 & 0x88) == 0) {
        return FALSE;
    }
    switch (gUnk_03003DF0.unk_4[1]) {
        default:
        case 0:
            return TRUE;
        case 1:
        case 6:
        case 9:
        case 0xa:
            gPlayerState.queued_action = 7;
            ForceSetPlayerState(0x13);
        case 3:
        case 5:
        case 7:
            entity->interactType = 1;
            gUnk_03003DF0.unk_2 = 0;
            return TRUE;
        case 8:
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

void sub_080784C8(void) {
    MemClear(&gUnk_03003DF0, 0x188);
    gUnk_03003DF0.unk_4 = (u8*)gUnk_0811C000;
}

ASM_FUNC("asm/non_matching/playerUtils/sub_080784E4.inc", struct_03003DF8* sub_080784E4(void))

void sub_08078778(Entity* ent) {
    sub_0807887C(ent, 1, 0);
}

void sub_08078784(Entity* ent, u32 arg1) {
    sub_0807887C(ent, 1, arg1);
}

void sub_08078790(Entity* ent, u32 arg1) {
    sub_0807887C(ent, 2, arg1);
}

void sub_0807879C(Entity* ent) {
    sub_0807887C(ent, 7, 0);
}

void sub_080787A8(Entity* ent, u32 arg1) {
    sub_0807887C(ent, 7, arg1);
}

void sub_080787B4(Entity* ent) {
    sub_0807887C(ent, 9, 0);
}

void sub_080787C0(Entity* ent) {
    sub_0807887C(ent, 10, 0);
}

void sub_080787CC(Entity* ent) {
    sub_0807887C(ent, 5, 0);
}

s32 sub_080787D8(Entity* ent) {
    s32 iVar1;

    iVar1 = sub_0807887C(ent, 8, 0);
    if (iVar1 >= 0) {
        gUnk_03003DF0.array[iVar1].unk_2 = 0xbe;
    }
    return iVar1;
}

s32 sub_08078800(Entity* ent) {
    s32 iVar1;

    iVar1 = sub_0807887C(ent, 6, 0);
    if (iVar1 >= 0) {
        gUnk_03003DF0.array[iVar1].unk_2 = 0xbe;
    }
    return iVar1;
}

s32 sub_08078828(Entity* ent) {
    s32 iVar1;

    iVar1 = sub_0807887C(ent, 3, 0);
    if (iVar1 >= 0) {
        gUnk_03003DF0.array[iVar1].unk_2 = 0xbe;
    }
    return iVar1;
}

void sub_08078850(Entity* arg0, u32 arg1, u32 arg2, const void* arg3) {
    s32 iVar1;

    iVar1 = sub_08078904(arg0);
    if (iVar1 >= 0) {
        gUnk_03003DF0.array[iVar1].unk_0 = arg1;
        gUnk_03003DF0.array[iVar1].unk_2 = arg2;
        gUnk_03003DF0.array[iVar1].unk_4 = arg3;
    }
}

s32 sub_0807887C(Entity* entity, u32 param_2, u32 param_3) {
    s32 index;
    entity->interactType = 0;
    index = sub_08078904(entity);
    if (index < 0) {
        index = sub_08078904(0);
    }
    if (index >= 0) {
        gUnk_03003DF0.array[index].entity = entity;
        gUnk_03003DF0.array[index].unk_1 = param_2;
        gUnk_03003DF0.array[index].unk_3 = param_3;
    }
    if (param_3 != 0) {
        Entity* entity = FindEntityByID(OBJECT, OBJECT_9, 6);
        if (entity == NULL) {
            CreateObject(OBJECT_9, 0, 0);
        }
    }
    return index;
}

/** Clear entry for Entity. */
void sub_080788E0(Entity* entity) {
    s32 index = sub_08078904(entity);
    if (index > -1) {
        MemClear(&gUnk_03003DF0.array[index], 0xc);
    }
}

/** Find entry for Entity. */
s32 sub_08078904(Entity* entity) {
    u32 index;
    for (index = 0; index < 0x20; index++) {
        if (entity == gUnk_03003DF0.array[index].entity) {
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

ASM_FUNC("asm/non_matching/playerUtils/sub_080789A8.inc", u32 sub_080789A8())

void SetPlayerControl(PlayerControlMode mode) {
    if (gPlayerState.controlMode != CONTROL_DISABLED) {
        gPlayerState.controlMode = mode;
    }
}

void CreateEzloHint(u32 hintId, u32 hintHeight) {
    gPlayerState.queued_action = PLAYER_TALKEZLO;
    gRoomTransition.hint_idx = hintId;
#if defined(EU) || defined(JP)
    // TODO what fields of the room transition are switched in these variants?
    gRoomTransition.field_0x2c[7] = hintHeight;
#else
    gRoomTransition.hint_height = hintHeight;
#endif
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
    gPlayerState.framestate = 0x15;
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
        case 4:
        case 5:
        case 0x19:
        case 0x1a:
        case 0x1d:
            break;
        case 9:
            gPlayerState.flags &= ~PL_ROLLING;
            // fallthrough
        default:
            if (gRoomVars.shopItemType == 0) {
                gPlayerState.mobility = 1;
            }
            break;
    }
    gPlayerEntity.iframes = -2;
    gPlayerState.field_0x82[8] = 2;
}

void ClearPlayerState(void) {
    gPlayerState.field_0x0[0] = 0;
    gPlayerState.field_0x0[1] = 0;
    gPlayerState.jump_status = 0;
    gPlayerState.field_0x3[0] = 0;
    gPlayerState.field_0x3[1] = 0;
    gPlayerState.heldObject = 0;
    gPlayerState.pushedObject = 0;
    gPlayerState.field_0x7 = 0;
    gPlayerState.animation = 0;
    gPlayerState.field_0xa = 0;
    gPlayerState.keepFacing = 0;
    gPlayerState.field_0x35 = 0;
    gPlayerState.field_0x36 = 0;
    gPlayerState.queued_action = PLAYER_INIT;
    gPlayerState.field_0xd = 0;
    gPlayerState.field_0xe = 0;
    gPlayerState.field_0x11 = 0;
    gPlayerState.floor_type = SURFACE_NORMAL;
    gPlayerState.floor_type_last = SURFACE_NORMAL;
    gPlayerState.field_0x14 = 0;
    gPlayerState.sword_state = 0;
    gPlayerState.dash_state = 0;
    gPlayerState.field_0x1f[0] = 0;
    gPlayerState.field_0x1f[1] = 0;
    gPlayerState.field_0x1f[2] = 0;
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
    gPlayerState.field_0x3f = 0;
    gPlayerState.field_0x3c[0] = 0;
    MemFill32(0xffffffff, gPlayerState.path_memory, 0x40);
    MemClear(&gUnk_03003DF0, 0x188);
}

void UpdateCarriedObject(void) {
    if ((u8)(gPlayerState.heldObject - 3) < 2) {
        sub_08078D60();
    }
}

void sub_08078CD0(PlayerEntity* this) {
    Entity* entity;
    u32 tmp;
    s8* ptr;

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

ASM_FUNC("asm/non_matching/playerUtils/sub_08078D60.inc", void sub_08078D60())

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
    if (gPlayerState.queued_action == 0) {
        return FALSE;
    } else {
        gPlayerEntity.action = gPlayerState.queued_action;
        gPlayerEntity.subAction = 0;
        gPlayerState.queued_action = 0;
        DoPlayerAction(&gPlayerEntity);
        return TRUE;
    }
}

// this doesnt seem to have any real function where its used
void CheckPlayerVelocity(void) {
    u32 angle = gPlayerState.field_0xd;
    if ((angle & 0x80) != 0) {
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

NONMATCH("asm/non_matching/playerUtils/sub_08078FB0.inc", void sub_08078FB0(Entity* this)) {
    u32 bVar2;
    u32 animation;

    if ((gPlayerState.pushedObject & 0x80) == 0) {
        gPlayerState.field_0x35 = 0xff;
    }
    sub_08079064(this);
    if ((gPlayerState.flags & 8) != 0) {
        bVar2 = 0x58;
    } else {
        if ((gPlayerState.flags & 0x80) != 0) {
            bVar2 = 0x18;
        } else {
            if (gPlayerState.animation >> 8 == 7) {
                bVar2 = 0x34;
            } else {
                bVar2 = 0xb8;
            }
        }
    }

    if (bVar2 > gPlayerState.animation) {
        u32 temp = this->animationState;
        bVar2 = temp;
        if (bVar2 >= 5) {
            this->spriteSettings.flipX = 1;
        } else {
            this->spriteSettings.flipX = 0;
        }

        if ((gPlayerState.flags & PL_MOLDWORM_CAPTURED) != 0) {
            bVar2 = gPlayerState.animation + this->animationState;
        } else {
            bVar2 = (((u8)bVar2) >> 1) + gPlayerState.animation;
        }
    } else {
        bVar2 = gPlayerState.animation;
    }

    if (bVar2 != (((u16)this->spriteIndex << 8) | this->animIndex)) {
        this->spriteIndex = bVar2 >> 8;
        bVar2 &= 0xff;
        InitAnimationForceUpdate(this, bVar2);
    }
}
END_NONMATCH

void sub_08079064(Entity* this) {
    u32 i;
    u32 bVar4;
    u32 animation;

    if ((gPlayerState.flags & (PL_IN_HOLE | PL_MINISH)) == 0) {
        bVar4 = 0;
        for (i = 0; i < 4; i++) {
            if (gUnk_03000B80[i].field_0xf > bVar4) {
                bVar4 = gUnk_03000B80[i].field_0xf;
                animation = gUnk_03000B80[i].field_0x10;
            }
        }

        if (gPlayerState.field_0xe < bVar4) {
            gPlayerState.animation = animation;
        } else if ((gPlayerState.swim_state & 0x80) != 0) {
            gPlayerState.animation = 0x2be;
        } else {
            if (gPlayerState.animation == 0x608 || gPlayerState.animation == 0x104 || gPlayerState.animation == 0x404) {
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
    if (gPlayerState.pushedObject == 0) {
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
    gPlayerState.framestate = 0x19;
    if ((gPlayerState.flags & PL_NO_CAP) != 0) {
        gPlayerState.animation = 0x93c;
    } else {
        gPlayerState.animation = 0x33c;
    }
}

void PlayerDropHeldObject(void) {
    gPlayerState.heldObject = 0;
    gPlayerState.field_0x0[1] = 0;
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
    if ((gPlayerState.flags & PL_HIDDEN) == 0) {
        gPlayerEntity.spriteSettings.draw = 3;
    }
    if ((gPlayerState.flags & PL_MINISH) == 0) {
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
    if ((gPlayerState.flags & PL_HIDDEN) == 0) {
        gPlayerEntity.flags |= ENT_COLLIDE;
        gPlayerEntity.spriteSettings.draw = 3;
    }
    gPlayerEntity.action = PLAYER_MINISH;
    gPlayerEntity.subAction = 1;
    gPlayerEntity.collisionFlags &= 0xfb;
    gPlayerState.animation = 0xc18;
    gPlayerState.flags &=
        ~(PL_BUSY | PL_DROWNING | PL_DISABLE_ITEMS | PL_IN_HOLE | PL_MOLDWORM_RELEASED | PL_PARACHUTE);
    gPlayerState.swim_state = 0;
    gPlayerState.queued_action = 0;
    SetDefaultPriorityForKind(&gPlayerEntity);
}

void sub_080792BC(s32 speed, u32 direction, u32 field_0x38) {
    gPlayerState.queued_action = PLAYER_08072454;
    gPlayerState.field_0x38 = field_0x38;
    gPlayerEntity.speed = speed;
    gPlayerEntity.direction = direction;
}

ASM_FUNC("asm/non_matching/playerUtils/sub_080792D8.inc", void sub_080792D8())

bool32 sub_080793E4(u32 param_1) {
    u32 tmp;
    if (gPlayerState.swim_state == 0) {
        tmp = gUnk_0811C0F8[gPlayerEntity.animationState >> 1];
    } else {
        tmp = gUnk_0811C0F8[gPlayerEntity.direction >> 2];
    }
    if (sub_08079778() && ((gPlayerState.field_0x90 & tmp) != 0)) {
        if (param_1 != 0) {
            if (!sub_080B1BA4(sub_0807A500(), gPlayerEntity.collisionLayer, param_1)) {
                return FALSE;
            }
        }
        return TRUE;
    } else {
        return FALSE;
    }
}

ASM_FUNC("asm/non_matching/playerUtils/RespawnPlayer.inc", void RespawnPlayer())

void sub_08079520(Entity* this) {
    s32 tmp = gPlayerState.field_0xd;
    if (tmp < 0x80) {
        this->direction = gPlayerState.field_0xd;
    } else {
        this->direction = (this->animationState >> 1) << 3;
    }
}

u32 sub_0807953C(void) {
    u32 tmp = 0xf38;
    return gPlayerState.field_0x92 & tmp;
}

ASM_FUNC("asm/non_matching/playerUtils/sub_08079550.inc", u32 sub_08079550(void))

void sub_08079708(Entity* this) {
    gPlayerState.framestate = 0x12;
    gPlayerState.field_0x3c[0] = 0xff;
    this->flags &= ~ENT_COLLIDE;
    this->action = 0xa;
    this->subAction = 0;
    sub_080085B0(this);
    if ((gPlayerState.flags & (PL_CAPTURED | PL_DISABLE_ITEMS)) == 0) {
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
    if (gPlayerState.swim_state == 0) {
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

ASM_FUNC("asm/non_matching/playerUtils/sub_080797EC.inc", void sub_080797EC())

ASM_FUNC("asm/non_matching/playerUtils/ResolvePlayerAnimation.inc", void ResolvePlayerAnimation())

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
                            gPlayerEntity.direction = 0xff;
                            gPlayerState.field_0xd = 0xff;
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
    if (gPlayerEntity.action == 1) {
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
    if ((gPlayerState.flags &
         (PL_BUSY | PL_DROWNING | PL_CAPTURED | PL_USE_PORTAL | PL_HIDDEN | PL_FROZEN | PL_FALLING | PL_DISABLE_ITEMS |
          PL_PIT_IS_EXIT | PL_IN_MINECART | PL_MOLDWORM_CAPTURED | PL_IN_HOLE | PL_FLAGS2000000 | PL_CLIMBING)) != 0 ||
        gPlayerState.field_0x3c[0] != 0 || gPlayerEntity.action == PLAYER_FALL ||
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

void sub_0807A050(void) {
    u32 palette;
    if ((gPlayerState.hurtBlinkSpeed != 0) && ((gMessage.doTextBox & 0x7f) == 0)) {
        gPlayerState.hurtBlinkSpeed--;
    }
    palette = sub_0807A094(0);
    if (palette != gPlayerState.field_0x82[1]) {
        gPlayerState.field_0x82[1] = palette;
        ChangeObjPalette(&gPlayerEntity, palette);
    }
}

u32 sub_0807A094(u32 param_1) {
    bool32 condition;
    u32 result = 0x16;
    if (gPlayerState.hurtBlinkSpeed != 0) {
        result = 0x1b;
        if (0x78 < gPlayerState.hurtBlinkSpeed) {
            result = 0x1a;
        }
    } else {
        if (gSave.stats.charm != 0) {
            condition = TRUE;
            if (((param_1 == 0) && (gSave.stats.charmTimer < 0xb4)) && ((gSave.stats.charmTimer & 8) != 0)) {
                condition = FALSE;
            }
            if (condition) {
                switch (gSave.stats.charm) {
                    case 0x2f:
                        result = 0x18;
                        break;
                    case 0x31:
                        result = 0x17;
                        break;
                    case 0x30:
                    default:
                        result = 0x19;
                        break;
                }
            }
        }
    }
    return result;
}

void DeleteClones(void) {
    gPlayerClones[0] = NULL;
    gPlayerClones[1] = NULL;
    gPlayerClones[2] = NULL;
    gPlayerState.flags &= ~PL_CLONING;
    if (((gPlayerEntity.action != 0x17) || (gPlayerState.chargeState.action != 4)) &&
        (gPlayerState.chargeState.action == 4 || gPlayerState.chargeState.action == 5)) {
        gPlayerState.chargeState.action = 1;
    }
}

bool32 HasSwordEquipped(void) {
    if (ItemIsSword((u32)gSave.stats.itemButtons[0]) != 0) {
        return TRUE;
    } else {
        return ItemIsSword((u32)gSave.stats.itemButtons[1]);
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
        gPlayerState.field_0x37 = 0;
    }
    if ((tileType != gPlayerState.tileType) || (position != gPlayerState.tilePosition)) {
        gPlayerState.tilePosition = position;
        gPlayerState.tileType = tileType;
        gPlayerState.field_0x11 = 0;
    }

    if (gPlayerState.field_0x11 != 0xff) {
        gPlayerState.field_0x11++;
    }
    if (gPlayerState.field_0x37 != 0xff) {
        gPlayerState.field_0x37++;
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
            CreateObjectWithParent(&gPlayerEntity, OBJECT_44, 0, 0);
        }
        return FALSE;
    }
}

ASM_FUNC("asm/non_matching/playerUtils/sub_0807A2F8.inc", u32 sub_0807A2F8(u32 a1))

u32 sub_0807A500(void) {
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

ASM_FUNC("asm/non_matching/playerUtils/sub_0807A5B8.inc", void sub_0807A5B8(u32 a))

ASM_FUNC("asm/non_matching/playerUtils/sub_0807A750.inc", void sub_0807A750())

u32 sub_0807A894(Entity* this) {
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
            object = CreateObject(OBJECT_2A, 1, 0);
            if (object != NULL) {
                PositionRelative(this, object, xOffset << 0x10, yOffset << 0x10);
                sub_08004168(object);
                sub_0807B7D8(ptr[3], COORD_TO_TILE(object), object->collisionLayer);
            }
        } else {
            object = CreateObject(OBJECT_2A, 2, 0);
            if (object != NULL) {
                PositionRelative(this, object, xOffset << 0x10, yOffset << 0x10);
                object->child = (Entity*)ptr;
                SetTile(0x404f, COORD_TO_TILE(object), object->collisionLayer);
            }
        }
    }
}

bool32 sub_0807AC54(Entity* this) {
    if (gPlayerState.field_0x11 == 0) {
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
            gPlayerState.animation = 0x2cf;
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

void sub_0807ACCC(Entity* this) {
    s32 speed;
    this->spritePriority.b1 = 0;
    this->knockbackDuration = 0;
    if (GetInventoryValue(ITEM_SWIM_BUTTERFLY) == 1) {
        speed = 0x100;
    } else {
        speed = 0xc0;
    }
    if (speed > *(s16*)&this->speed) {
        this->speed = speed;
        this->direction = gPlayerState.field_0xd;
        if ((gPlayerState.swim_state & 0xf) != 1) {
            return;
        }
    } else {
        this->speed -= 4;
    }
    if (gPlayerState.field_0x82[7] == 0) {
        if (!sub_0807ADB8(this)) {
            sub_0807AE20(this);
        }
    } else {
        gPlayerState.field_0x82[7]--;
        if (gPlayerState.field_0x82[7] != 0) {
            sub_0807ADB8(this);
        } else {
            gPlayerState.swim_state &= 0x7f;
            this->spritePriority.b0 = 4;
            SoundReq(SFX_163);
        }
    }
    if ((gPlayerState.swim_state & 0x80) != 0) {
        this->collisionFlags |= 4;
        this->spritePriority.b0 = 6;
    } else {
        this->collisionFlags &= 0xfb;
    }
}

bool32 sub_0807ADB8(Entity* this) {
    u8 tmp;
    if ((gPlayerState.field_0x92 & 0x10) != 0) {
        gPlayerState.swim_state ^= 0x80;
        tmp = (gPlayerState.swim_state & 0x80);
        if (tmp != 0) {
            gPlayerState.field_0x82[7] = 0x78;
        } else {
            this->spritePriority.b0 = 4;
            gPlayerState.field_0x82[7] = tmp;
        }
        SoundReq(SFX_163);
        return TRUE;
    } else {
        return FALSE;
    }
}

void sub_0807AE20(Entity* this) {
    if ((((this->action != 0x17) || (gPlayerState.field_0xa == 0)) && (gRoomControls.reload_flags == 0)) &&
        ((gPlayerState.field_0x92 & 8) != 0)) {
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
    if ((this->direction & 0x80) != 0) {
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

void sub_0807AFE8(void) {
    Entity* effect;
    PutAwayItems();
    effect = CreateFx(&gPlayerEntity, FX_BIG_EXPLOSION2, 0);
    if (effect != NULL) {
        effect->y.HALF.HI++;
    }
    gPlayerState.queued_action = PLAYER_MINISH;
}

/** Returns which kind of sword projectile is created. */
u32 sub_0807B014(void) {
    if (((gPlayerState.skills & SKILL_SWORD_BEAM) != 0) && gSave.stats.health == gSave.stats.maxHealth) {
        return 0xf;
    } else {
        if ((gPlayerState.skills & SKILL_PERIL_BEAM) != SKILL_NONE && gSave.stats.health <= 8) {
            return 0x16;
        } else {
            return 0;
        }
    }
}

void sub_0807B068(Entity* entity) {
    if ((gPlayerState.dash_state | gPlayerState.field_0x3[1]) == 0) {
        if (gPlayerState.swim_state != 0) {
            if ((gPlayerState.swim_state & 0x80) != 0) {
                gPlayerState.animation = 0xc1c;
            } else {
                gPlayerState.animation = 0xc0c;
            }
        } else {
            if ((gPlayerState.field_0xd & 0x80) != 0) {
                if (gPlayerState.animation != 0xc18) {
                    gPlayerState.animation = 0xc18;
                }
            } else {
                if (gPlayerState.animation != 0xc04) {
                    gPlayerState.animation = 0xc04;
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

void PlayerWarp(Entity* player) {
    gUnk_0811C27C[player->subAction](player);
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

void nullsub_506(void) {
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
        gPlayerState.animation = 0x2c2;
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
        this->unk_6e += 1;
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
        gRoomControls.unk3 = 2;
        gRoomControls.unk4 = 0;
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
    MemClear(gMapTop.mapData, 0x2000);
    MemClear(gMapTop.collisionData, 0x1000);
    MemClear(&gMapDataBottomSpecial, 0x8000);
    MemClear(&gMapDataTopSpecial, 0x8000);
    sub_080197D4((gArea.pCurrentRoomInfo)->map);
    if (gMapBottom.mapData[0] != 0xffff) {
        sub_0807C8B0(gMapBottom.mapData, roomControls->width >> 4, roomControls->height >> 4);
        sub_0807C8B0(gMapTop.mapData, roomControls->width >> 4, roomControls->height >> 4);
        tmp = FALSE;
    } else {
        MemClear(gMapBottom.mapData, 0x2000);
        tmp = TRUE;
    }
    if (gRoomTransition.field_0x2c[0] == 0) {
        MemCopy(gMapBottom.mapData, gMapBottom.mapDataClone, 0x2000);
        MemCopy(gMapTop.mapData, gMapTop.mapDataClone, 0x2000);
    } else if (gRoomTransition.field_0x2c[0] == 2) {
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

ASM_FUNC("asm/non_matching/playerUtils/sub_0807C4F8.inc", void sub_0807C4F8())

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

NONMATCH("asm/non_matching/playerUtils/sub_0807C5F4.inc", void sub_0807C5F4(u16* param_1, u16* param_2)) {
    s32 iVar1;
    u16* puVar2;
    u16* puVar3;
    u32 uVar4;
    u32 index;
    u32 innerIndex;

    /*
        for (index = 0; index < 0x20; index++) {
            for (innerIndex = 0; innerIndex < 0x20; innerIndex++) {
                param_1[index*0x81+innerIndex] = param_2[innerIndex];
            }
        }

    */
    puVar2 = param_1;
    iVar1 = 0x20;
    do {
        uVar4 = 0;
        iVar1--;
        do {
            *puVar2 = *param_2;
            param_2++;
            puVar2++;
            uVar4++;
        } while (uVar4 < 0x20);
        puVar2 += 0x60;
    } while (iVar1 != 0);

    if (0xff < gRoomControls.width) {
        puVar2 = param_1 + 0x20;
        iVar1 = 0x20;
        do {
            uVar4 = 0;
            iVar1--;
            do {
                *puVar2 = *param_2;
                param_2++;
                puVar2++;
                uVar4++;
            } while (uVar4 < 0x20);
            puVar2 += 0x60;
        } while (iVar1 != 0);
    }
    if (0xff < gRoomControls.height) {
        puVar2 = param_1 + 0x1000;
        iVar1 = 0x20;
        do {
            uVar4 = 0;
            iVar1--;
            do {
                *puVar2 = *param_2;
                param_2++;
                puVar2++;
                uVar4++;
            } while (uVar4 < 0x20);
            puVar2 += 0x60;
        } while (iVar1 != 0);
    }
    if ((0xff < gRoomControls.width) && (0xff < gRoomControls.height)) {
        param_1 += 0x1020;
        puVar2 = param_1;
        iVar1 = 0x20;
        do {
            uVar4 = 0;
            iVar1--;
            do {
                *puVar2 = *param_2;
                param_2++;
                puVar2++;
                uVar4++;
            } while (uVar4 < 0x20);
            puVar2 += 0x60;
        } while (iVar1 != 0);
    }
}
END_NONMATCH

ASM_FUNC("asm/non_matching/playerUtils/sub_0807C69C.inc", void sub_0807C69C(u8* a, u32 b, u32 c))

NONMATCH("asm/non_matching/playerUtils/sub_0807C740.inc", void InitializeCamera()) {
    s32 targetX;
    s32 targetY;
    Entity* target;
    RoomControls* roomControls;
    u32 tmp1;
    u32 tmp2;
    u32 tmp3;
    u32 tmp4;

    sub_0807BFD0();
    LoadRoomGfx();
    roomControls = &gRoomControls;
    target = gRoomControls.camera_target;
    if (target != NULL) {
        if ((target->x.HALF_U.HI * 0x10000) < 0) {
            tmp3 = (target->x.HALF.HI & 0x7fff);
            tmp3 -= gRoomControls.origin_x;
            target->x.HALF.HI = tmp3;
        }
        targetX = target->x.HALF.HI;
        if ((target->y.HALF_U.HI * 0x10000) < 0) {
            tmp4 = (target->y.HALF.HI & 0x7fff);
            tmp4 -= gRoomControls.origin_y;
            target->y.HALF.HI = tmp4;
        }
        targetY = target->y.HALF.HI;
    } else {
        targetX = 0;
        targetY = 0;
    }

    if (targetX < 0x78) {
        roomControls->scroll_x = 0;
    } else {
        if (targetX >= (roomControls->width - 0x78)) {
            tmp1 = roomControls->width - 0x78;
        } else {
            tmp1 = targetX;
        }
        roomControls->scroll_x = tmp1 - 0x78;
    }
    roomControls->scroll_x = roomControls->origin_x + roomControls->scroll_x;

    if (targetY < 0x50) {
        roomControls->scroll_y = 0;
    } else {
        if (targetY >= (roomControls->height - 0x50)) {
            tmp2 = roomControls->height - 0x50;
        } else {
            tmp2 = targetY;
        }
        roomControls->scroll_y = tmp2 - 0x50;
    }
    roomControls->scroll_y = roomControls->scroll_y + roomControls->origin_y;

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
END_NONMATCH

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
    gRoomTransition.field_0x2c[0] = 1;
    MemCopy(&gMapBottom.mapData, &gMapBottom.mapDataClone, 0x2000);
    MemCopy(&gMapTop.mapData, &gMapTop.mapDataClone, 0x2000);
}

void sub_0807C898(void) {
    gRoomTransition.field_0x2c[0] = 2;
    LoadRoomGfx();
    gRoomTransition.field_0x2c[0] = 0;
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

void sub_0807CAC8(u32 param_1) {
    gSave.unk47C[gArea.dungeon_idx] |= (1 << param_1);
}

u32 sub_0807CAEC(u32 param_1) {
    return gSave.unk47C[gArea.dungeon_idx] >> param_1 & 1;
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
