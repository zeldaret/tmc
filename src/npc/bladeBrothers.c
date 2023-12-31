/**
 * @file bladeBrothers.c
 * @ingroup NPCs
 *
 * @brief Blade Brothers NPC
 */
#include "entity.h"
#include "flags.h"
#include "functions.h"
#include "game.h"
#include "item.h"
#include "message.h"
#include "npc.h"
#include "player.h"
#include "room.h"
#include "save.h"
#include "script.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 fusionOffer;
    /*0x69*/ u8 itemSlotA;
    /*0x6a*/ u8 itemSlotB;
} BladeBrothersEntity;

void sub_08068A1C(Entity*);
void sub_08068A4C(Entity*);
void sub_08068AA4(Entity*);
void sub_08068ADC(Entity*);
void (*const gUnk_081115C0[])(Entity*) = {
    sub_08068A1C,
    sub_08068A4C,
    sub_08068AA4,
    sub_08068ADC,
};
void sub_08068AFC(BladeBrothersEntity*);
void sub_08068b2c(BladeBrothersEntity*);
void sub_08068B70(BladeBrothersEntity*);
void (*const gUnk_081115D0[])(BladeBrothersEntity*) = {
    sub_08068AFC,
    sub_08068b2c,
    sub_08068B70,
};

const u16 gUnk_081115DC[] = { 183, 184, 185, 186, 187, 188, 189, 190 };

extern const PlayerMacroEntry gPlayerMacroBladeBrothers0;
extern const PlayerMacroEntry gPlayerMacroBladeBrothers1;
extern const PlayerMacroEntry gPlayerMacroBladeBrothers2;
extern const PlayerMacroEntry gPlayerMacroBladeBrothers3;
extern const PlayerMacroEntry gPlayerMacroBladeBrothers4;
extern const PlayerMacroEntry gPlayerMacroBladeBrothers5;
extern const PlayerMacroEntry gPlayerMacroBladeBrothers6;
extern const PlayerMacroEntry gPlayerMacroBladeBrothers7;
const PlayerMacroEntry* const BladeBrothers_PlayerMacros[] = {
    &gPlayerMacroBladeBrothers0,
    &gPlayerMacroBladeBrothers1,
    &gPlayerMacroBladeBrothers2,
    &gPlayerMacroBladeBrothers3,
    &gPlayerMacroBladeBrothers4,
    &gPlayerMacroBladeBrothers5,
    &gPlayerMacroBladeBrothers6,
    &gPlayerMacroBladeBrothers7,
    NULL,
    NULL,
    NULL,
};

const u8 BladeBrothers_EquippedItem[] = {
    0, 0, ITEM_PEGASUS_BOOTS, ITEM_ROCS_CAPE, 0, 0, 0, 0, 0, 0, 0,
};

const u8 gUnk_08111623[] = {
    7, 0, 4, 6, 5, 8, 9, 10,
};
const u8 gUnk_0811162B[] = {
    ITEM_SKILL_SPIN_ATTACK,
    ITEM_SKILL_ROCK_BREAKER,
    ITEM_SKILL_DASH_ATTACK,
    ITEM_SKILL_DOWN_THRUST,
    ITEM_SKILL_ROLL_ATTACK,
    ITEM_SKILL_SWORD_BEAM,
    ITEM_SKILL_PERIL_BEAM,
    ITEM_SKILL_GREAT_SPIN,
    ITEM_SKILL_FAST_SPIN | 0x80,
    ITEM_SKILL_FAST_SPLIT | 0x80,
    ITEM_SKILL_LONG_SPIN | 0x80,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    1,
    0,
    0,
    0,
    1,
    0,
    0,
    0,
    1,
    0,
    0,
    0,
};

const u16 gUnk_08111664[] = {
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x01), TEXT_INDEX(TEXT_BLADE_MASTERS, 0x09), TEXT_INDEX(TEXT_BLADE_MASTERS, 0x11),
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x19), TEXT_INDEX(TEXT_BLADE_MASTERS, 0x22), TEXT_INDEX(TEXT_BLADE_MASTERS, 0x2b),
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x34), TEXT_INDEX(TEXT_BLADE_MASTERS, 0x3d), TEXT_INDEX(TEXT_BLADE_MASTERS, 0x46),
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x50), TEXT_INDEX(TEXT_BLADE_MASTERS, 0x5a),
};

const u16 gUnk_0811167A[] = {
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x02), TEXT_INDEX(TEXT_BLADE_MASTERS, 0x0a), TEXT_INDEX(TEXT_BLADE_MASTERS, 0x12),
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x1a), TEXT_INDEX(TEXT_BLADE_MASTERS, 0x23), TEXT_INDEX(TEXT_BLADE_MASTERS, 0x2c),
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x35), TEXT_INDEX(TEXT_BLADE_MASTERS, 0x3e), TEXT_INDEX(TEXT_BLADE_MASTERS, 0x47),
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x51), TEXT_INDEX(TEXT_BLADE_MASTERS, 0x5b),
};
const u16 gUnk_08111690[] = {
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x03),
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x0b),
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x13),
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x1b),
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x24),
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x2d),
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x36),
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x3f),
    0x0,
    0x0,
    0x0,
};
const u16 gUnk_081116A6[] = {
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x04), TEXT_INDEX(TEXT_BLADE_MASTERS, 0x0c), TEXT_INDEX(TEXT_BLADE_MASTERS, 0x14),
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x1c), TEXT_INDEX(TEXT_BLADE_MASTERS, 0x25), TEXT_INDEX(TEXT_BLADE_MASTERS, 0x2e),
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x37), TEXT_INDEX(TEXT_BLADE_MASTERS, 0x40), TEXT_INDEX(TEXT_BLADE_MASTERS, 0x48),
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x52), TEXT_INDEX(TEXT_BLADE_MASTERS, 0x5c),
};
const u16 gUnk_081116BC[] = {
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x05),
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x0d),
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x15),
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x1d),
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x26),
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x2f),
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x38),
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x41),
    0x0,
    0x0,
    0x0,
};
const u16 gUnk_081116D2[] = {
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x06), TEXT_INDEX(TEXT_BLADE_MASTERS, 0x0e), TEXT_INDEX(TEXT_BLADE_MASTERS, 0x16),
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x1e), TEXT_INDEX(TEXT_BLADE_MASTERS, 0x27), TEXT_INDEX(TEXT_BLADE_MASTERS, 0x30),
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x39), TEXT_INDEX(TEXT_BLADE_MASTERS, 0x42), TEXT_INDEX(TEXT_BLADE_MASTERS, 0x49),
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x53), TEXT_INDEX(TEXT_BLADE_MASTERS, 0x5d),
};
const u16 gUnk_081116E8[] = {
    0x0,
    0x0,
    0x0,
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x1f),
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x28),
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x31),
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x3a),
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x43),
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x1f),
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x1f),
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x1f),
};
const u16 gUnk_081116FE[] = {
    0x0,
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x07),
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x0f),
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x17),
    0x0,
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x32),
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x3b),
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x44),
    0x0,
    0x0,
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x5e),
};
const u16 gUnk_08111714[] = {
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x60),
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x61),
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x62),
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x63),
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x64),
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x65),
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x66),
    TEXT_INDEX(TEXT_BLADE_MASTERS, 0x67),
    0x0,
    0x0,
    0x0,
};

const u16 gUnk_0811172A[] = { 0, 0, 30, 0, 0, 0, 0, 30, 0, 0, 0 };
const u32 gUnk_08111740[] = { 1, 4, 3, 7, 2, 5, 8, 6, 10, 11, 12 };

extern u32 gUnk_0300402B;
extern EntityData gUnk_080F3494;

static void sub_08068BEC(Entity* this, u32 unused);

void BladeBrothers(BladeBrothersEntity* this) {
    if ((super->flags & ENT_SCRIPTED) != 0) {
        gUnk_081115D0[super->action](this);
    } else {
        gUnk_081115C0[super->action](super);
        sub_0806ED78(super);
    }
    if ((super->frame & 1) != 0) {
        super->frame &= 0xfe;
        sub_08068BEC(super, 0);
    }
}

void sub_08068A1C(Entity* this) {
    u8 bVar1;
    int offset;

    this->type2 = this->type;
    if (gRoomTransition.entity_update_type != 0) {
        offset = 6;
        bVar1 = 3;

    } else {
        AddInteractableWhenBigObject(this);
        offset = 2;
        bVar1 = 1;
    }
    this->action = bVar1;
    InitializeAnimation(this, offset);
}

void sub_08068A4C(Entity* this) {
    s32 uVar1;
    s32 iVar2;

    uVar1 = GetAnimationStateInRectRadius(this, 0x28, 0x28);
    if (uVar1 < 0) {
        uVar1 = 2;
    } else {
        if (this->subtimer == 0) {
            this->subtimer = 16;
        } else {
            this->subtimer--;
            uVar1 = (u32)this->animIndex;
        }
    }
    iVar2 = sub_0806F078(this, uVar1);
    if (iVar2 == 0) {
        GetNextFrame(this);
    }
    if (this->interactType != INTERACTION_NONE) {
        this->interactType = INTERACTION_NONE;
        this->action = 2;
        MessageFromTarget(0);
    }
}

void sub_08068AA4(Entity* this) {
    this->action = 1;
    if (this->type != 0) {
        this->type2++;
        this->type2 &= 7;
        if (this->type2 == 0) {
            this->type2++;
        }
        ChangeObjPalette(this, gUnk_081115DC[this->type2]);
    }
}

void sub_08068ADC(Entity* this) {
    if (gRoomTransition.entity_update_type == 2) {
        GetNextFrame(this);
    }
    sub_0806FD3C(this);
}

void sub_08068AFC(BladeBrothersEntity* this) {
    super->action = 1;
    super->spriteSettings.draw = 1;
    this->fusionOffer = GetFusionToOffer(super);
    AddInteractableWhenBigFuser(super, this->fusionOffer);
    InitScriptForNPC(super);
}

void sub_08068b2c(BladeBrothersEntity* this) {
    u32 animationState;
    if (super->interactType == INTERACTION_FUSE) {
        super->action = 2;
        super->interactType = INTERACTION_NONE;
        animationState = GetAnimationStateForDirection4(GetFacingDirection(super, &gPlayerEntity.base));
        InitAnimationForceUpdate(super, animationState);
        InitializeNPCFusion(super);
    } else {
        ExecuteScriptAndHandleAnimation(super, NULL);
    }
}

void sub_08068B70(BladeBrothersEntity* this) {
    if (UpdateFuseInteraction(super)) {
        super->action = 1;
    }
}

void BladeBrothers_StartPlayerDemonstration(Entity* this, ScriptExecutionContext* context) {
    u8 p;

    if (BladeBrothers_EquippedItem) {}
    if (p = this->timer, BladeBrothers_EquippedItem[p]) {
        ForceEquipItem(BladeBrothers_EquippedItem[this->timer], EQUIP_SLOT_A);
    }
    InitPlayerMacro((PlayerMacroEntry*)BladeBrothers_PlayerMacros[this->timer]);
}

void sub_08068BB4(BladeBrothersEntity* this) {
    u32 item = gSave.stats.equipped[SLOT_A];

    this->itemSlotA = item;
    item = gSave.stats.equipped[SLOT_B];
    this->itemSlotB = item;
}

// Restore previous equipped items.
void sub_08068BD0(BladeBrothersEntity* this) {
    ForceEquipItem(this->itemSlotA, EQUIP_SLOT_A);
    ForceEquipItem(this->itemSlotB, EQUIP_SLOT_B);
}

static void sub_08068BEC(Entity* this, u32 unused) {
    Entity* target;

    target = CreateFx(this, FX_WHITE_SPLASH, 0);
    if (target) {
        target->spritePriority.b0 = 1;
        PositionRelative(this, target, 0, Q_16_16(-16.0));
        SoundReq(SFX_FA);
    }
}

void sub_08068C28(Entity* this) {
    this->timer = gUnk_08111623[this->type];
    if (this->type == 1) {
        if (GetInventoryValue(ITEM_SKILL_SPIN_ATTACK)) {
            if (!GetInventoryValue(ITEM_SKILL_ROCK_BREAKER)) {
                this->timer = 1;
            } else {
                if (!GetInventoryValue(ITEM_SKILL_DASH_ATTACK)) {
                    this->timer = 2;
                } else {
                    this->timer = 3;
                }
            }
        }
    }
}

void BladeBrothers_GetScroll(Entity* this) {
    InitItemGetSequence(gUnk_0811162B[this->timer] & 0xffffff7f, 0, 0);
}

void sub_08068C8C(Entity* this, ScriptExecutionContext* context) {
    const u8* arr = gUnk_0811162B + 0xd;
    context->condition = *(u32*)(arr + this->timer * 4);
}

void sub_08068CA0(Entity* this, ScriptExecutionContext* context) {
    u8 bVar1;
    u32 uVar2;

    bVar1 = this->type;
    if (bVar1 == 1) {
        context->condition = bVar1;
        uVar2 = GetInventoryValue(ITEM_SKILL_SPIN_ATTACK);
        if (uVar2 == 0) {
            context->condition = 0;
        }
        uVar2 = GetInventoryValue(ITEM_SKILL_ROCK_BREAKER);
        if (uVar2 == 0) {
            context->condition = 0;
        }
        uVar2 = GetInventoryValue(ITEM_SKILL_DASH_ATTACK);
        if (uVar2 == 0) {
            context->condition = 0;
        }
        uVar2 = GetInventoryValue(ITEM_SKILL_DOWN_THRUST);
        if (uVar2 != 0) {
            return;
        }
    } else {
        uVar2 = GetInventoryValue(gUnk_0811162B[this->timer] & -0x81);
        if (uVar2 != 0) {
            uVar2 = 1;
        }
    }
    context->condition = uVar2;
}

void sub_08068CFC(Entity* this, ScriptExecutionContext* context) {
    u8 bVar1;
    u8 itemID;

    context->condition = 0;
    bVar1 = this->timer;
    if (bVar1 > 10)
        return;

    switch (bVar1) {
        case 0:
        default:
            context->condition = 1;
            return;
        case 1:
            itemID = ITEM_GREEN_SWORD;
            break;
        case 2:
            itemID = ITEM_PEGASUS_BOOTS;
            break;
        case 3:
            itemID = ITEM_ROCS_CAPE;
            break;
        case 5:
            if (CheckLocalFlag(DOUKUTU_05_EVENT) == 0) {
                return;
            }
            context->condition = 1;
            return;
        case 6:
            if (gSave.stats.maxHealth < (10 * 8)) // ten hearts
                return;
            context->condition = 1;
            return;
        case 7:
            if (GetInventoryValue(ITEM_SKILL_SPIN_ATTACK) == 0) {
                return;
            }
            if (GetInventoryValue(ITEM_SKILL_ROLL_ATTACK) == 0) {
                return;
            }
            if (GetInventoryValue(ITEM_SKILL_DASH_ATTACK) == 0) {
                return;
            }
            if (GetInventoryValue(ITEM_SKILL_ROCK_BREAKER) == 0) {
                return;
            }
            if (GetInventoryValue(ITEM_SKILL_SWORD_BEAM) == 0) {
                return;
            }
            if (GetInventoryValue(ITEM_SKILL_DOWN_THRUST) == 0) {
                return;
            }
            itemID = ITEM_SKILL_PERIL_BEAM;
            break;
        case 10:
            itemID = ITEM_SKILL_GREAT_SPIN;
            break;
    }

    if (GetInventoryValue(itemID) == 0) {
        return;
    }
    context->condition = 1;
}

// Introduction dialoague
void sub_08068DB8(Entity* this) {
    MessageNoOverlap(gUnk_08111664[this->timer], this);
}

// Ask to teach dialoague
void sub_08068DD0(Entity* this) {
    MessageNoOverlap(gUnk_0811167A[this->timer], this);
}

// Technique Dialogue
void sub_08068DE8(Entity* this) {
    MessageNoOverlap(gUnk_08111690[this->timer], this);
}

// Posession dialogue
void sub_08068E00(Entity* this) {
    MessageNoOverlap(gUnk_081116A6[this->timer], this);
}

void sub_08068E18(Entity* this) {
    MessageNoOverlap(gUnk_081116BC[this->timer], this);
}

void sub_08068E30(Entity* this) {
    MessageNoOverlap(gUnk_081116D2[this->timer], this);
}

void sub_08068E48(Entity* this) {
    MessageNoOverlap(gUnk_081116E8[this->timer], this);
}

void sub_08068E60(Entity* this) {
    MessageNoOverlap(gUnk_081116FE[this->timer], this);
}

void sub_08068E78(Entity* this) {
    MessageNoOverlap(gUnk_08111714[this->timer], this);
}

void BladeBrothers_LearnSkill(Entity* this) {
    // Learn a skill.
    PlayerState* s = &gPlayerState;
    *(u16*)&s->skills = (1 << (gUnk_08111740[this->timer] - 1)) | *(u16*)&s->skills;
}

void BladeBrothers_ResetLastSwordMove(void) {
    gPlayerState.lastSwordMove = SWORD_MOVE_NONE;
}

void BladeBrothers_CheckLastSwordMove(Entity* this, ScriptExecutionContext* context) {
    if (gUnk_08111740[this->timer] == gPlayerState.lastSwordMove) {
        context->wait = gUnk_0811172A[this->timer];
        context->condition = 1;
    } else {
        context->condition = 0;
    }
}

void sub_08068F00(Entity* this) {
    if (this->timer == 1) {
        LoadRoomEntityList(&gUnk_080F3494);
    }
}

void sub_08068F14(Entity* this) {
    if (this->timer == 5) {
        ModHealth(160);
    }
    if (this->timer == 6) {
        ModHealth(-160);
        ModHealth(2);
    }
}

void sub_08068F3C(Entity* this) {
    if (this->timer == 6) {
        ModHealth(160);
    }
}

void BladeBrothers_Fusion(Entity* this) {
    if (this->action == 0) {
        this->action++;
        this->spriteSettings.draw = 0;
        this->spriteSettings.draw = 1;
        InitAnimationForceUpdate(this, 4);
    } else {
        UpdateAnimationSingleFrame(this);
    }
    if ((this->frame & 1) != 0) {
        this->frame &= 0xfe;
        sub_08068BEC(this, 0);
    }
}
