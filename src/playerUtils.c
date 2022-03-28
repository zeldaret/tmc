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

extern void sub_080752E8(ItemBehavior* behavior, u32 arg1); // item.c
extern void sub_0800857C(Entity*);
extern void SetDefaultPriorityForKind(Entity*);
extern void sub_0809D738(Entity*);
extern s32 Mod(s32, s32);
extern void sub_08003FDE(Entity*, u32, u32, u32);
extern u32 sub_080B1B84(u32, u32);

typedef struct {
    u8 unk0[4];
    u16 unk4;
    u8 unk6[6];
} struct_0811BE48;

extern u8 gMapData;
extern const u8 gUnk_020176E0[];
extern const ScreenTransitionData gUnk_0813AD88[];
extern u8 gUnk_02002B32[];

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
u32 GetSurfaceCalcType(Entity*, u32, u32);
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

void sub_08077698(PlayerEntity* this) {
    ItemBehavior* puVar2;
    u32 uVar3;

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
    uVar3 = 0;
    puVar2 = gUnk_03000B80;
    do {
        if (puVar2->field_0x5[4] != 0) {
            sub_080752E8(puVar2, uVar3);
        }
        puVar2++;
        uVar3++;
    } while (uVar3 < 4);
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

NONMATCH("asm/non_matching/playerUtils/sub_080777A0.inc", bool32 sub_080777A0(void)) {
    if ((gPlayerState.field_0x92 & 0x80) != 0) {
        if ((gPlayerState.flags & PL_CLONING) != 0) {
            gPlayerState.chargeState.action = 1;
            DeleteClones();
        } else {
            if (gArea.portal_mode != 2) {
                if (gArea.portal_mode == 3) {
                    if ((gArea.unk1A == 0) && ((gPlayerState.flags & PL_MINISH) != 0)) {
                        gPlayerEntity.subAction += 1;
                        gPlayerEntity.flags &= ~ENT_COLLIDE;
                        RequestPriorityDuration(&gPlayerEntity, 0xb4);
                        return TRUE;
                    }
                } else if ((((gUnk_0200AF00.unk_2c == 0xc) && (gPlayerState.field_0x1c == 0)) &&
                            (gPlayerState.floor_type != 0x11)) &&
                           ((((gPlayerState.field_0x90 & 0xf00) != 0 &&
                              ((gPlayerState.flags & (PL_BURNING | PL_ROLLING)) == 0)) &&
                             ((gPlayerState.jump_status == 0 && (gPlayerState.field_0x3[1] == 0)))))) {
                    gPlayerState.queued_action = 0x18;
                }
                return FALSE;
            }
            if (gArea.unk1A == 0) {
                gPlayerEntity.subAction += 1;
            }
        }
    } else {
        if ((gPlayerState.flags & PL_USE_PORTAL) == 0) {
            return FALSE;
        }
    }
    return TRUE;
}
END_NONMATCH

NONMATCH("asm/non_matching/playerUtils/sub_08077880.inc", void sub_08077880(u32 param_1, u32 param_2, u32 param_3)) {
    ItemBehavior* item;
    u16* puVar2;

    if (param_1 - 1 < 0x1f) {
        if (gUnk_0811BE48[param_1].unk0[0] != 0) {
            puVar2 = &gPlayerState.field_0x92;
        } else {
            puVar2 = &gPlayerState.field_0x90;
        }
        if (((*puVar2 & param_2) != 0) || (param_3 != 0)) {
            item = sub_0807794C(param_1);
            if (item != NULL) {
                item->field_0x5[4] = gUnk_0811BE48[param_1].unk0[1];
                item->behaviorID = (u8)param_1;
                item->field_0x2[1] = (u8)param_2;
            }
        }
    }
}
END_NONMATCH

NONMATCH("asm/non_matching/playerUtils/sub_080778CC.inc", bool32 sub_080778CC(void)) {
    s32 iVar1;
    ItemBehavior* pIVar2;

    if (!((((gPlayerState.flags & (PL_USE_PORTAL | PL_MINISH | PL_ROLLING)) == 0) &&
           (((gNewPlayerEntity.unk_79 != 0 || (gPlayerState.heldObject != 0)) ||
             ((gPlayerState.field_0x92 & 0x8000) != 0)))) &&
          (((sub_080789A8() != 0 || ((gPlayerState.field_0x90 & 0xf03) == 0)))))) {
        return FALSE;
    }
    pIVar2 = sub_0807794C(0x1b);
    if (pIVar2 == NULL) {
        return FALSE;
    } else {
        pIVar2->behaviorID = 0x1b;
        pIVar2->field_0x5[4] = 2;
        return TRUE;
    }
}
END_NONMATCH

ItemBehavior* sub_0807794C(u32 param_1) {
    if (((((gPlayerState.queued_action == PLAYER_ROLL) && (param_1 != 0x1b)) ||
          (((gPlayerState.flags & (PL_ROLLING | PL_CLONING)) != 0 && (6 < param_1)))) ||
         ((((gPlayerState.jump_status != 0 || (gPlayerEntity.z.WORD != 0)) && (6 < param_1)) ||
           (((gPlayerState.flags & PL_MINISH) != 0 && (gUnk_0811BE48[param_1].unk6[2] == 0)))))) ||
        ((gPlayerState.floor_type == 0x11 && ((gPlayerState.field_0x37 != 0 && (1 < param_1 - 0x14)))))) {
        return NULL;
    } else {
        u32 tmp = gUnk_0811BE48[param_1].unk0[2];
        return gUnk_0811BFC8[tmp](param_1);
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

void sub_08077D38(ItemBehavior* beh, u32 arg2) {
    u32 r6;
    struct_0811BE48* ptr;

    gPlayerState.field_0xa |= 8 >> arg2;
    gPlayerState.keepFacing |= 8 >> arg2;
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
        gPlayerState.field_0x3[1] |= (8 >> arg2) | ((8 >> arg2) << 4);
    }
}

typedef struct {
    u8 b0 : 4;
    u8 b1 : 4;
} PACKED Unk_bitfield;

typedef struct {
    u8 unk[16];
} Unk_struct_in_08077EC8;

void sub_08077DF4(ItemBehavior* beh, u32 arg1) {
    beh->field_0x10 = arg1;
    if ((arg1 & 0xff) > 0xb8) {
        arg1 += beh->field_0x5[5] >> 1;
    }
    gPlayerEntity.spriteIndex = (short)(arg1 >> 8);
    InitAnimationForceUpdate(&gPlayerEntity, (u8)arg1);
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

void sub_08077E54(ItemBehavior* beh) {
    beh->field_0x5[7] = gPlayerEntity.animIndex;
    beh->field_0x12[0] = gPlayerEntity.frameIndex;
    beh->field_0x5[8] = gPlayerEntity.frameDuration;
    beh->field_0x5[9] = gPlayerEntity.frame;
}

void DeletePlayerItem(ItemBehavior* arg0, u32 bits) {
    u32 not ;

    if (bits == 0) {
        if (gPlayerState.item != NULL) {
            ((Unk_bitfield*)gPlayerState.item)[0x11].b0 = 6;
            gPlayerState.item = NULL;
        } else {
            gPlayerState.item = NULL;
        }
    }

    not = (8 >> bits);
    gPlayerState.field_0x3[1] &= ~((u8)((8 >> bits) << 4) | not );
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
bool32 PlayerTryDropItem(ItemBehavior* arg0, u32 unk) {
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
    state->chargeTimer -= 0x10;
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

ASM_FUNC("asm/non_matching/playerUtils/sub_08078180.inc", void sub_08078180())

ASM_FUNC("asm/non_matching/playerUtils/sub_080782C0.inc", u32 sub_080782C0())

void sub_080784C8(void) {
    MemClear(&gUnk_03003DF0, 0x188);
    gUnk_03003DF0.unk_4 = (u8*)gUnk_0811C000;
}

ASM_FUNC("asm/non_matching/playerUtils/sub_080784E4.inc", void sub_080784E4())

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

void sub_08078850(Entity* arg0, u32 arg1, u32 arg2, void* arg3) {
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

ASM_FUNC("asm/non_matching/playerUtils/RegisterCarryEntity.inc", void RegisterCarryEntity(Entity* a))

ASM_FUNC("asm/non_matching/playerUtils/FreeCarryEntity.inc", void FreeCarryEntity(Entity* a))

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
    gPlayerState.queued_action = PLAYER_080720DC;
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
    gPlayerState.floor_type = 0;
    gPlayerState.floor_type_last = 0;
    gPlayerState.field_0x14 = 0;
    gPlayerState.sword_state = 0;
    gPlayerState.dash_state = 0;
    gPlayerState.field_0x1f[0] = 0;
    gPlayerState.field_0x1f[1] = 0;
    gPlayerState.field_0x1f[2] = 0;
    gPlayerState.field_0x22[0] = 0;
    gPlayerState.field_0x22[1] = 0;
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

ASM_FUNC("asm/non_matching/playerUtils/sub_08078CD0.inc", void sub_08078CD0())

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
        this->zVelocity = 0x20000;
        return TRUE;
    } else {
        return FALSE;
    }
}

ASM_FUNC("asm/non_matching/playerUtils/sub_08078FB0.inc", void sub_08078FB0(Entity* a))

ASM_FUNC("asm/non_matching/playerUtils/sub_08079064.inc", void sub_08079064())

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
            if (this->field_0xf <= 5) {
                this->field_0xf++;
                return;
            }
        } else {
            this->field_0xf = 0;
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
    gPlayerEntity.field_0xf = 0;
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
    gPlayerEntity.field_0x3c &= 0xfb;
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

ASM_FUNC("asm/non_matching/playerUtils/sub_080793E4.inc", bool32 sub_080793E4(u32 a))

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

ASM_FUNC("asm/non_matching/playerUtils/sub_08079778.inc", void sub_08079778())

ASM_FUNC("asm/non_matching/playerUtils/sub_080797C4.inc", u32 sub_080797C4(void))

ASM_FUNC("asm/non_matching/playerUtils/sub_080797EC.inc", void sub_080797EC())

ASM_FUNC("asm/non_matching/playerUtils/ResolvePlayerAnimation.inc", void ResolvePlayerAnimation())

ASM_FUNC("asm/non_matching/playerUtils/sub_08079B24.inc", u32 sub_08079B24())

void sub_08079BD8(Entity* this) {
    this->x = gPlayerEntity.x;
    this->y = gPlayerEntity.y;
    this->z = gPlayerEntity.z;
    this->collisionLayer = gPlayerEntity.collisionLayer;
    this->spriteRendering.b3 = gPlayerEntity.spriteRendering.b3;
    this->spriteOrientation.flipY = gPlayerEntity.spriteOrientation.flipY;
    this->spritePriority.b0 = gPlayerEntity.spritePriority.b0;
}

ASM_FUNC("asm/non_matching/playerUtils/sub_08079C30.inc", bool32 sub_08079C30(Entity* a))

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

ASM_FUNC("asm/non_matching/playerUtils/sub_08079E90.inc", bool32 sub_08079E90(u32 a))

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

bool32 sub_08079F8C(void) {
    if ((gPlayerState.flags &
         (PL_BUSY | PL_DROWNING | PL_CAPTURED | PL_USE_PORTAL | PL_HIDDEN | PL_FROZEN | PL_FALLING | PL_DISABLE_ITEMS |
          PL_PIT_IS_EXIT | PL_IN_MINECART | PL_MOLDWORM_CAPTURED | PL_IN_HOLE | PL_FLAGS2000000 | PL_CLIMBING)) != 0 ||
        gPlayerState.field_0x3c[0] != 0 || gPlayerEntity.action == 3 || gPlayerEntity.action == 0xb) {
        return FALSE;
    } else {
        return TRUE;
    }
}

u32 sub_08079FC4(u32 param_1) {
    return sub_08079FD4(&gPlayerEntity, param_1);
}

ASM_FUNC("asm/non_matching/playerUtils/sub_08079FD4.inc", u32 sub_08079FD4(Entity* a, u32 b))

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

ASM_FUNC("asm/non_matching/playerUtils/sub_0807A094.inc", u32 sub_0807A094(u32 a))

void DeleteClones(void) {
    gPlayerClones[0] = NULL;
    gPlayerClones[1] = NULL;
    gPlayerClones[2] = NULL;
    gPlayerState.flags &= ~PL_CLONING;
    if (((gPlayerEntity.action != 0x17) || (gPlayerState.chargeState.action != 4)) &&
        ((u8)(gPlayerState.chargeState.action - 4) < 2)) {
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

ASM_FUNC("asm/non_matching/playerUtils/GetSurfaceCalcType.inc", u32 GetSurfaceCalcType(Entity* a, u32 b, u32 c))

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

ASM_FUNC("asm/non_matching/playerUtils/sub_0807A500.inc", void sub_0807A500())

ASM_FUNC("asm/non_matching/playerUtils/sub_0807A5B8.inc", void sub_0807A5B8(u32 a))

ASM_FUNC("asm/non_matching/playerUtils/sub_0807A750.inc", void sub_0807A750())

ASM_FUNC("asm/non_matching/playerUtils/sub_0807A894.inc", u32 sub_0807A894(Entity* a))

void nullsub_505(void) {
}

NONMATCH("asm/non_matching/playerUtils/sub_0807A8D8.inc", void sub_0807A8D8(Entity* this)) {
    u32 tmp;

    if ((gPlayerState.flags & PL_MINISH) == 0) {
        tmp = sub_080B1B84(COORD_TO_TILE_OFFSET(this, 0, 1), gPlayerEntity.collisionLayer) & 0x20;
        if (tmp != 0) {
            sub_0807AAF8(this, COORD_TO_TILE_OFFSET(this, 0, 1));
        }
        tmp = sub_080B1B84(COORD_TO_TILE_OFFSET(this, -2, 0), gPlayerEntity.collisionLayer) & 0x20;
        if (tmp != 0) {
            sub_0807AAF8(this, COORD_TO_TILE_OFFSET(this, -2, 0));
        }
        tmp = sub_080B1B84(COORD_TO_TILE_OFFSET(this, 2, 0), gPlayerEntity.collisionLayer) & 0x20;
        if (tmp != 0) {
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
END_NONMATCH

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

ASM_FUNC("asm/non_matching/playerUtils/sub_0807AAF8.inc", void sub_0807AAF8(Entity* a, u32 b))

ASM_FUNC("asm/non_matching/playerUtils/sub_0807AB44.inc", void sub_0807AB44())

ASM_FUNC("asm/non_matching/playerUtils/sub_0807AC54.inc", u32 sub_0807AC54(Entity* a))

ASM_FUNC("asm/non_matching/playerUtils/sub_0807ACCC.inc", void sub_0807ACCC(Entity* a))

ASM_FUNC("asm/non_matching/playerUtils/sub_0807ADB8.inc", void sub_0807ADB8())

ASM_FUNC("asm/non_matching/playerUtils/sub_0807AE20.inc", void sub_0807AE20(Entity* e))

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
    super->zVelocity = 0x40000;
    gPlayerState.jump_status = 0x81;
    SetPlayerActionNormal();
}

void nullsub_506(void) {
}

void sub_0807B178(PlayerEntity* this) {
    super->spriteSettings.draw = 1;
    super->direction = 0x10;
    super->speed = 0;
    super->zVelocity = 0x40000;
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
    super->actionDelay = 0x1e;
}

void sub_0807B1EC(PlayerEntity* this) {
    if (--super->actionDelay == 0) {
        this->unk_6e++;
        super->zVelocity = 0x10000;
        gPlayerState.animation = 0x2c2;
    }
}

void sub_0807B21C(PlayerEntity* this) {
    UpdateAnimationSingleFrame(super);
    if (super->zVelocity < 0) {
        GravityUpdate(super, 0x400);
    } else {
        GravityUpdate(super, 0x800);
    }
    if (super->zVelocity < -0x8000) {
        super->actionDelay = 0x78;
        super->field_0xf = 0;
        this->unk_6e++;
        this->unk_68 = super->z.WORD;
    }
}

void sub_0807B264(PlayerEntity* this) {
    s32 tmp;
    UpdateAnimationSingleFrame(super);
    super->field_0xf += 2;
    tmp = gSineTable[super->field_0xf];
    tmp >>= 7;
    tmp <<= 0x10;
    super->z.WORD = this->unk_68 + tmp;
    if (--super->actionDelay == 0) {
        super->actionDelay = 0x50;
        super->zVelocity = 0x8000;
        this->unk_6e++;
#ifndef EU
        SoundReq(SFX_NEAR_PORTAL);
#endif
    }
}

void sub_0807B2B8(PlayerEntity* this) {
    GravityUpdate(super, -0x2000);
    UpdateAnimationSingleFrame(super);
    if (super->actionDelay != 0 && --super->actionDelay == 0) {
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

ASM_FUNC("asm/non_matching/playerUtils/sub_0807B480.inc", void sub_0807B480())

ASM_FUNC("asm/non_matching/playerUtils/sub_0807B55C.inc", void sub_0807B55C())

ASM_FUNC("asm/non_matching/playerUtils/sub_0807B5B0.inc", void sub_0807B5B0())

ASM_FUNC("asm/non_matching/playerUtils/sub_0807B600.inc", void sub_0807B600())

ASM_FUNC("asm/non_matching/playerUtils/sub_0807B778.inc", void sub_0807B778(u32 a, u32 b))

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

void sub_0807BB68(s16* param_1, u32 basePosition, u32 layer) {
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

ASM_FUNC("asm/non_matching/playerUtils/sub_0807BBE4.inc", void sub_0807BBE4())

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

ASM_FUNC("asm/non_matching/playerUtils/sub_0807BD14.inc", bool32 sub_0807BD14(Entity* a, u32 b))

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

ASM_FUNC("asm/non_matching/playerUtils/LoadRoomGfx.inc", void LoadRoomGfx())

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

ASM_FUNC("asm/non_matching/playerUtils/sub_0807C5B0.inc", void sub_0807C5B0())

ASM_FUNC("asm/non_matching/playerUtils/sub_0807C5F4.inc", void sub_0807C5F4())

ASM_FUNC("asm/non_matching/playerUtils/sub_0807C69C.inc", void sub_0807C69C())

ASM_FUNC("asm/non_matching/playerUtils/sub_0807C740.inc", void sub_0807C740())

void sub_0807C810(void) {
    struct_03004030* ptr;
    Entity* player;
    RoomControls* ctrls;
    sub_0807BFD0();
    ptr = &gUnk_03004030;
    player = &gPlayerEntity;
    ctrls = &gRoomControls;
    player->x.HALF.HI = ((ptr->unk_00)->unk_06 & 0x3f) * 0x10 + ctrls->origin_x + ptr->unk_04;
    player->y.HALF.HI = (((ptr->unk_00)->unk_06 & 0xfc0) >> 2) + ctrls->origin_y + ptr->unk_06;
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

ASM_FUNC("asm/non_matching/playerUtils/sub_0807C8B0.inc", void sub_0807C8B0())

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
    u32 tmp = item / 4;
    return gUnk_02002B32[tmp] >> ((item & 3) << 1) & 3;
}

ASM_FUNC("asm/non_matching/playerUtils/SetInventoryValue.inc", void SetInventoryValue(u32 a, u32 b))

NONMATCH("asm/non_matching/playerUtils/sub_0807CAC8.inc", void sub_0807CAC8(u32 param_1)) {
    gSave.unk46C[gArea.dungeon_idx + 0x10] |= (1 << param_1);
}
END_NONMATCH

NONMATCH("asm/non_matching/playerUtils/sub_0807CAEC.inc", u32 sub_0807CAEC(u32 param_1)) {
    return gSave.unk46C[gArea.dungeon_idx + 0x10] >> param_1 & 1;
}
END_NONMATCH

u32 CheckLocalFlagByBank(u32 bank, u32 flag) {
    return ReadBit(gSave.flags, bank + flag);
}

NONMATCH("asm/non_matching/playerUtils/sub_0807CB24.inc", bool32 sub_0807CB24(s32 param_1, u32 param_2)) {
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
            if (GetInventoryValue(param_2) == 0) {
                result = FALSE;
            } else {
                result = TRUE;
            }
            break;
        case 0x10:
            if (GetInventoryValue(param_2) == 1) {
                result = TRUE;
            } else {
                result = FALSE;
            }
            break;
        case 0x11:
            if (GetInventoryValue(param_2) == 2) {
                result = TRUE;
            } else {
                result = FALSE;
            }
            break;
    }
    return result;
}
END_NONMATCH
