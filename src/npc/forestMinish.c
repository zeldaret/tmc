#include "npc.h"
#include "object.h"
#include "functions.h"
#include "playeritem.h"
#include "item.h"

extern SpriteLoadData gUnk_0810A348;
extern u8* gUnk_08109D18[];
extern u8 gUnk_08109C98[];
extern u16 gUnk_0810A354[];
extern Dialog gUnk_08109DC8[];
extern u16 gUnk_0810A35A[];
extern u16 gUnk_0810A362[];

void ForestMinish(Entity* this) {
    switch (this->action) {
        case 0:
            if (LoadExtraSpriteData(this, &gUnk_0810A348)) {
                this->action = 1;
                this->spriteSettings.draw = TRUE;
                this->field_0x68.HALF.HI = this->animationState = this->actionDelay << 1;
                this->actionDelay = 0;
                SetDefaultPriority(this, PRIO_MESSAGE);
                StartCutscene(this, (u16*)gUnk_08109D18[this->type2]);
                sub_0807DD50(this);
            }
            break;
        case 1:
            if (this->interactType == 2) {
                this->action = 2;
                this->interactType = 0;
                sub_0806F118(this);
            } else {
                ExecuteScriptForEntity(this, NULL);
                HandleEntity0x82Actions(this);
                if (this->frameDuration != 0xf0) {
                    sub_080600F0(this);
                }
            }
            break;
        case 2:
            if (UpdateFuseInteraction(this)) {
                this->action = 1;
            }
    }
}

void sub_08060090(Entity* this) {
    this->field_0x68.HALF.LO = sub_0801E99C(this);
    sub_08078784(this, this->field_0x68.HALF.LO);
}

void ForestMinish_Head(Entity* this) {
    u32 pbVar1;

    pbVar1 = this->frame;
    if (this->frame != 0xff) {
        pbVar1 &= -0x81;
    }
    if ((this->frameSpriteSettings & 1) == 0) {
        pbVar1 = 0xff;
    }
    SetExtraSpriteFrame(this, 0, pbVar1);
    SetExtraSpriteFrame(this, 1, this->frameIndex);
    SetSpriteSubEntryOffsetData1(this, 1, 0);
    sub_0807000C(this);
}

void sub_080600F0(Entity* this) {
    u32 uVar1;
    u32 uVar2;

    uVar2 = this->field_0x80.HWORD;
    if (this->field_0x80.HWORD < 8) {
        if ((this->field_0x82.HWORD & 1) != 0) {
            uVar2 = (uVar2 & 0xfc) + (this->field_0xf >> 1);
        } else {
            uVar2 = (uVar2 & 0xfc) + (this->animationState >> 1);
            this->field_0xf = this->animationState;
        }
    }
    if (uVar2 != this->animIndex) {
        InitAnimationForceUpdate(this, uVar2);
    }
    if ((this->field_0x82.HWORD & 4) != 0) {
        uVar1 = 2;
    } else {
        uVar1 = 1;
    }
    sub_080042BA(this, uVar1);
}

void sub_0806014C(Entity* this) {
    this->actionDelay = 0;
    sub_08060158(this);
}

void sub_08060158(Entity* this) {
    int index;
    u8* idx3;
    u8 tmp1, tmp2;

    if (this->actionDelay) {
        this->actionDelay--;
    } else {
        this->actionDelay = 2;
        index = GetFacingDirectionInRectRadius(this, 0x20, 0x20);
        if (index < 0) {
            int state = this->field_0x68.HALF.HI;
            this->animationState = state;
            index = state * 4;
        }

        idx3 = gUnk_08109C98 + (this->animationState / 2) * 0x20 + (index >> 1) * 2;
        tmp1 = idx3[0];
        tmp2 = idx3[1];

        if (tmp2 & 0x80) {
            this->animationState = sub_0806F5B0(index);
        }
        tmp2 &= 0x7f;
        this->frame = tmp1;
        this->frameIndex = tmp2;
        this->frameSpriteSettings = 1;
        this->animIndex = 0;
        this->frameDuration = 0xf0;
    }
}

void sub_080601D4(Entity* this) {
    u32 uVar2;

    if (CheckGlobalFlag(LV3_CLEAR) == 0) {
        uVar2 = 2;
    } else if (CheckKinstoneFused(0x17)) {
        uVar2 = 1;
    } else {
        uVar2 = 0;
    }
    MessageNoOverlap(gUnk_0810A354[uVar2], this);
}

void sub_08060208(Entity* this) {
    ShowNPCDialogue(this, &gUnk_08109DC8[this->type2 * 0x4]);
}

void sub_0806021C(Entity* this) {
    u32 uVar2 = 0;

    if (GetInventoryValue(ITEM_JABBERNUT)) {
        uVar2 = 1;
    }

    if (GetInventoryValue(ITEM_EARTH_ELEMENT)) {
        uVar2 = 2;
    }

    if (GetInventoryValue(ITEM_MOLE_MITTS)) {
        uVar2 = 3;
    }
    ShowNPCDialogue(this, gUnk_08109DC8 + this->type2 * 0x4 + uVar2);
}

void sub_0806025C(Entity* this) {
    ShowNPCDialogue(this, &gUnk_08109DC8[this->type2 * 0x4]);
}

void sub_08060270(Entity* this) {
    u32 index;

    if (GetInventoryValue(ITEM_FLIPPERS) == 0) {
        index = 1;
        if (CheckGlobalFlag(MIZUKAKI_START) == 0) {
            index = 0;
            SetGlobalFlag(MIZUKAKI_START);
        }
    } else {
        index = 3;
        if (CheckLocalFlag(0x76) == 0) {
            index = 2;
            SetLocalFlag(0x76);
        }
    }
    MessageNoOverlap(gUnk_0810A35A[index], this);
}

void sub_080602BC(Entity* this) {
    u32 index;

    if (GetInventoryValue(ITEM_SKILL_SPIN_ATTACK) != 0) {
        index = (Random() & 1) + 2;
    } else {
        if (gSave.stats.bombCount < gBombBagSizes[gSave.stats.bombBagType]) {
            index = 1;
        } else {
            index = 0;
        }
    }
    MessageNoOverlap(gUnk_0810A362[index], this);
}

void sub_0806030C(Entity* this, ScriptExecutionContext* context) {
    ModBombs(context->intVariable);
}

void sub_08060318(void) {
    Entity* ent;
    int i;

    for (i = 2; i >= 0; i--) {
        ent = FindEntityByID(PLAYER_ITEM, PLAYER_ITEM_BOMB, 2);
        if (ent != NULL) {
            CreateDust(ent);
            DeleteEntity(ent);
        }
    }
}

void sub_08060340(void) {
    gSave.timers[1] = gSave.unk50;
}

u32 sub_08060354(void) {
    s32 iVar2;

    iVar2 = gSave.unk50 - gSave.timers[1];
    if (CheckGlobalFlag(DRUG_1) == 0) {
        if (4 < iVar2) {
            return 0x8444;
        }
    } else {
        if (CheckGlobalFlag(DRUG_2) == 0) {
            if (iVar2 > 9) {
                return 0x8444;
            }
        } else {
            if (CheckGlobalFlag(DRUG_3) == 0) {
                if (iVar2 > 14) {
                    return 0x8444;
                }
            }
        }
    }
    return 0;
}

void ForestMinish_Fusion(Entity* this) {
    if (this->action == 0) {
        if (LoadExtraSpriteData(this, &gUnk_0810A348)) {
            this->action++;
            this->spriteSettings.draw = TRUE;
            SetDefaultPriority(this, PRIO_MESSAGE);
            InitializeAnimation(this, 6);
        }
    } else {
        GetNextFrame(this);
    }
}
