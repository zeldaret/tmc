/**
 * @file npc4E.c
 * @ingroup NPCs
 *
 * @brief NPC 4E
 */
#include "entity.h"
#include "flags.h"
#include "functions.h"
#include "game.h"
#include "hitbox.h"
#include "item.h"
#include "kinstone.h"
#include "npc.h"
#include "object.h"
#include "save.h"
#include "screenTransitions.h"
#include "sound.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68;
    /*0x69*/ u8 unk_69;
} NPC4EEntity;

typedef struct {
    Rect customHitbox;
    u8 interactDirections;
    u8 unused[3];
} InteractCollisionData;

extern void script_MinishVillageObjectLeftStoneOpening;  // Cutscene data type?
extern void script_MinishVillageObjectRightStoneOpening; // Cutscene data type?

const Hitbox gUnk_08114154;
const InteractCollisionData gNpc4ECollisionData[];
const ScreenTransitionData* const gNpc4ETransitions[];
const u8 gNpc4ETransitionTypes[];
const u16 gUnk_081141F4[];

extern void sub_0809623C(Entity*);
extern void sub_08096260(Entity*);

// NPC4E is created when link enters minish woods for the first time and
// destroyed once he wears ezlo. Also exists when entering hyrule for the second time
// and fusing kinstones. Is destroyed as soon as the kinstone is fused.
void NPC4E(Entity* this) {
    if (this->action == 0) {
        this->action = 1;
        this->spriteSettings.draw = 4;
        this->hitbox = (Hitbox*)&gHitbox_2;
        InitScriptForNPC(this);
    } else {
        ExecuteScriptAndHandleAnimation(this, NULL);
    }
}

void NPC4E_ChangeInteractableHitbox(Entity* this, ScriptExecutionContext* context) {
    const InteractCollisionData* data = &gNpc4ECollisionData[context->intVariable];
    SetInteractableObjectCollision(this, 1, data->interactDirections, data);
}

void NPC4E_DoScreenTransition(Entity* this, ScriptExecutionContext* context) {
    sub_0808091C(gNpc4ETransitions[context->intVariable], gNpc4ETransitionTypes[context->intVariable]);
}

u8 NPC4E_GetKinstoneId(Entity* this) {
    u32 result;

    switch (this->type) {
        default:
            result = KINSTONE_NONE;
            break;
        case 1:
            result = KINSTONE_MYSTERIOUS_CLOUD_TOP_RIGHT;
            break;
        case 2:
            result = KINSTONE_MYSTERIOUS_CLOUD_BOTTOM_LEFT;
            break;
        case 3:
            result = KINSTONE_MYSTERIOUS_CLOUD_TOP_LEFT;
            break;
        case 4:
            result = KINSTONE_MYSTERIOUS_CLOUD_MIDDLE;
            break;
        case 5:
            result = KINSTONE_MYSTERIOUS_CLOUD_BOTTOM_RIGHT;
            break;
        case 11:
            result = KINSTONE_SOURCE_FLOW;
            break;
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
            result = GetFusionToOffer(this);
            break;
    }
    return result;
}

void NPC4E_IsKinstoneFused(Entity* this, ScriptExecutionContext* context) {
    context->condition = CheckKinstoneFused(NPC4E_GetKinstoneId(this));
    gActiveScriptInfo.flags |= 1;
}

void NPC4E_MakeFuserInteractable(Entity* this) {
    AddInteractableFuser(this, NPC4E_GetKinstoneId(this));
}

void NPC4E_SetPinwheelFlag(Entity* this) {
    switch (this->type - 1) {
        case 0:
            SetLocalFlag(KUMOUE_02_AWASE_01);
            break;
        case 1:
            SetLocalFlag(KUMOUE_02_AWASE_02);
            break;
        case 2:
            SetLocalFlag(KUMOUE_02_AWASE_03);
            break;
        case 3:
            SetLocalFlag(KUMOUE_02_AWASE_04);
            break;
        case 4:
            SetLocalFlag(KUMOUE_02_AWASE_05);
            break;
    }

    SoundReq(SFX_TASK_COMPLETE);
}

void NPC4E_IsEveryPinwheelActivated(Entity* this, ScriptExecutionContext* context) {
    context->condition = 0;

    if (CheckLocalFlag(KUMOUE_02_AWASE_01) && CheckLocalFlag(KUMOUE_02_AWASE_02) &&
        CheckLocalFlag(KUMOUE_02_AWASE_03) && CheckLocalFlag(KUMOUE_02_AWASE_04) &&
        CheckLocalFlag(KUMOUE_02_AWASE_05)) {

        context->condition = 1;
    }
}

void sub_0806DB84(Entity* this, ScriptExecutionContext* context) {
    GenericEntity* ent;
    this->hitbox = (Hitbox*)&gUnk_08114154;
    ent = (GenericEntity*)CreateObject(MINISH_VILLAGE_OBJECT, 4, 0);
    if (ent != NULL) {
        PositionRelative(this, &ent->base, Q_16_16(-8.0), 0);
        *(ScriptExecutionContext**)&ent->cutsceneBeh =
            StartCutscene(&ent->base, &script_MinishVillageObjectLeftStoneOpening);
    }
    ent = (GenericEntity*)CreateObject(MINISH_VILLAGE_OBJECT, 5, 0);
    if (ent != NULL) {
        PositionRelative(this, &ent->base, Q_16_16(8.0), 0);
        *(ScriptExecutionContext**)&ent->cutsceneBeh =
            StartCutscene(&ent->base, &script_MinishVillageObjectRightStoneOpening);
    }
}

Item NPC4E_GetItemWithSwordUpgraded(Item itemId) {
    switch (itemId) {
        case ITEM_SMITH_SWORD:
        case ITEM_GREEN_SWORD:
        case ITEM_RED_SWORD:
        case ITEM_BLUE_SWORD:
        case ITEM_FOURSWORD:
            itemId = ITEM_SMITH_SWORD;
            if (GetInventoryValue(ITEM_GREEN_SWORD) != 0) {
                itemId = ITEM_GREEN_SWORD;
            }
            if (GetInventoryValue(ITEM_RED_SWORD) != 0) {
                itemId = ITEM_RED_SWORD;
            }
            if (GetInventoryValue(ITEM_BLUE_SWORD) != 0) {
                itemId = ITEM_BLUE_SWORD;
            }
            if (GetInventoryValue(ITEM_FOURSWORD) != 0) {
                itemId = ITEM_FOURSWORD;
            }
            break;
    }
    return itemId;
}

void NPC4E_SaveEquippedItems(NPC4EEntity* this) {
    this->unk_68 = gSave.stats.equipped[SLOT_A];
    this->unk_69 = gSave.stats.equipped[SLOT_B];
}

void NPC4E_RestoreEquippedItems(NPC4EEntity* this) {
    ForceEquipItem(NPC4E_GetItemWithSwordUpgraded(this->unk_68), EQUIP_SLOT_A);
    ForceEquipItem(NPC4E_GetItemWithSwordUpgraded(this->unk_69), EQUIP_SLOT_B);
}

void sub_0806DC7C(void) {
    const u16* tiles = gUnk_081141F4;
    while (*tiles != 0) {
        u32 tilePos = *tiles;
        tiles = tiles + 1;
        SetTileType(SPECIAL_TILE_114, tilePos, LAYER_BOTTOM);
    }
}

void sub_0806DCA0(void) {
    const u16* tiles = gUnk_081141F4;
    while (*tiles != 0) {
        u32 tilePos = *tiles;
        tiles = tiles + 1;
        RestorePrevTileEntity(tilePos, LAYER_BOTTOM);
    }
}

void sub_0806DCC0(void) {
    gRoomTransition.player_status.overworld_map_x = 0x7c8;
    gRoomTransition.player_status.overworld_map_y = 0xf8;
}

void NPC4E_Fusion(Entity* this) {
    if (this->action == 0) {
        this->action++;
        switch (this->type) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                sub_0809623C(this);
                break;
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
                sub_08096260(this);
                break;
            case 11:
                sub_0806DB84(this, 0);
                this->hitbox = NULL;
                break;
        }
    }
}

const Hitbox gUnk_08114154 = { 0, -8, 0, 0, 0, 0, 24, 8 };

const InteractCollisionData gNpc4ECollisionData[] = { //
    { 0, 0, 8, 8, 0x0E, 0, 0, 0 },   { 0, 0, 26, 8, 0x0E, 0, 0, 0 },  { 0, 0, 16, 4, 0x0E, 0, 0, 0 },
    { 0, 0, 10, 10, 0x00, 0, 0, 0 }, { 0, 0, 10, 10, 0x00, 0, 0, 0 }, { 0, 0, 6, 4, 0x0E, 0, 0, 0 },
    { 0, 8, 16, 4, 0x0E, 0, 0, 0 },  { 0, -8, 24, 8, 0x0E, 0, 0, 0 },
#ifndef EU
    { 0, 0, 88, 8, 0x0E, 0, 0, 0 }
#endif
};

// Array of pointers to ScreenTransitionData
const ScreenTransitionData* const gNpc4ETransitions[] = { //
    &gUnk_0813AB6C, &gUnk_0813ABBC, &gUnk_0813ABE4, &gUnk_0813ABF8, &gUnk_0813AC0C, &gUnk_0813AC20,
    &gUnk_0813AC5C, &gUnk_0813AC70, &gUnk_0813AC84, &gUnk_0813AC98, &gUnk_0813ACAC, &gUnk_0813ACC0,
    &gUnk_0813ACD4, &gUnk_0813ACE8, &gUnk_0813AC5C, &gUnk_0813ACFC
};

// param_2 for the call to sub_0808091C, same indices as gNpc4ETransitions
const u8 gNpc4ETransitionTypes[] = { //
    TRANSITION_FADE_WHITE_SLOW, TRANSITION_FADE_WHITE_SLOW, TRANSITION_FADE_BLACK_SLOW, TRANSITION_FADE_BLACK_SLOW,
    TRANSITION_FADE_WHITE_SLOW, TRANSITION_FADE_WHITE_SLOW, TRANSITION_CUT_FAST,        TRANSITION_FADE_WHITE_SLOW,
    TRANSITION_FADE_WHITE_SLOW, TRANSITION_FADE_BLACK_SLOW, TRANSITION_FADE_WHITE_SLOW, TRANSITION_FADE_BLACK_SLOW,
    TRANSITION_FADE_BLACK_SLOW, TRANSITION_FADE_BLACK_SLOW, TRANSITION_FADE_BLACK_SLOW, TRANSITION_FADE_WHITE_SLOW
};

// tiles that are changed?
const u16 gUnk_081141F4[] = { 0x047a, 0x047b, 0x05af, 0x05ef, 0x0738, 0x0739, 0x073a, 0x073b, 0x0000, 0x0000 };
