#include "global.h"
#include "entity.h"
#include "flags.h"
#include "player.h"
#include "room.h"
#include "message.h"
#include "save.h"
#include "script.h"
#include "npc.h"
#include "functions.h"
#include "game.h"
#include "item.h"

extern void (*gUnk_081115C0[])(Entity*);
extern void (*gUnk_081115D0[])(Entity*);

extern u16 gUnk_081115DC[];
extern u8 BladeBrothers_EquippedItem[];
extern PlayerMacroEntry* BladeBrothers_PlayerMacros[];
extern u8 gUnk_08111623[];
extern u8 gUnk_0811162B[];
extern u16 gUnk_08111664[];
extern u16 gUnk_0811167A[];
extern u16 gUnk_08111690[];
extern u16 gUnk_081116A6[];
extern u16 gUnk_081116BC[];
extern u16 gUnk_081116D2[];
extern u16 gUnk_081116E8[];
extern u16 gUnk_081116FE[];
extern u16 gUnk_08111714[];
extern u32 gUnk_08111740[];
extern u16 gUnk_0811172A[];
extern u32 gUnk_0300402B;
extern EntityData gUnk_080F3494;

static void sub_08068BEC(Entity* this, u32 unused);

void BladeBrothers(Entity* this) {
    if ((this->flags & ENT_SCRIPTED) != 0) {
        gUnk_081115D0[this->action](this);
    } else {
        gUnk_081115C0[this->action](this);
        sub_0806ED78(this);
    }
    if ((this->frame & 1) != 0) {
        this->frame &= 0xfe;
        sub_08068BEC(this, 0);
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
        sub_08078778(this);
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
    if (this->interactType != 0) {
        this->interactType = 0;
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

void sub_08068AFC(Entity* this) {
    this->action = 1;
    this->spriteSettings.draw = 1;
    this->field_0x68.HALF.LO = sub_0801E99C(this);
    sub_08078784(this, this->field_0x68.HALF.LO);
    sub_0807DD50(this);
}

void sub_08068b2c(Entity* this) {
    u32 uVar1;

    if (this->interactType == '\x02') {
        this->action = 2;
        this->interactType = 0;
        uVar1 = sub_0806F5A4(GetFacingDirection(this, &gPlayerEntity));
        InitAnimationForceUpdate(this, uVar1);
        sub_0806F118(this);
    } else {
        sub_0807DD94(this, NULL);
    }
}

void sub_08068B70(Entity* this) {
    if (UpdateFuseInteraction(this)) {
        this->action = 1;
    }
}

void BladeBrothers_StartPlayerDemonstration(Entity* this, ScriptExecutionContext* context) {
    u8 p;

    if (BladeBrothers_EquippedItem) {}
    if (p = this->timer, BladeBrothers_EquippedItem[p]) {
        ForceEquipItem(BladeBrothers_EquippedItem[this->timer], EQUIP_SLOT_A);
    }
    InitPlayerMacro(BladeBrothers_PlayerMacros[this->timer]);
}

void sub_08068BB4(Entity* this) {
    u32 item = gSave.stats.itemButtons[SLOT_A];

    this->field_0x68.HALF.HI = item;
    item = gSave.stats.itemButtons[SLOT_B];
    *(&this->field_0x68.HALF.HI + 1) = item;
}

// Restore previous equipped items.
void sub_08068BD0(Entity* this) {
    ForceEquipItem(this->field_0x68.HALF.HI, EQUIP_SLOT_A);
    ForceEquipItem(*(u8*)(&this->field_0x68.HALF.HI + 1), EQUIP_SLOT_B);
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
    u8* arr = gUnk_0811162B + 0xd;
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
            itemID = 0x2;
            break;
        case 2:
            itemID = 0x15;
            break;
        case 3:
            itemID = 0x14;
            break;
        case 5:
            if (CheckLocalFlag(3) == 0) {
                return;
            }
            context->condition = 1;
            return;
        case 6:
            if (gSave.stats.maxHealth < 0x50)
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
