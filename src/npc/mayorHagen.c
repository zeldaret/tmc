#include "global.h"
#include "entity.h"
#include "player.h"
#include "flags.h"
#include "npc.h"
#include "functions.h"
#include "item.h"

extern u32 gUnk_08113F44;
extern Dialog gUnk_08113F48[];

void MayorHagen(Entity* this) {
    u32 v;
    switch (this->action) {
        case 0:
            this->action = 1;
            this->field_0x68.HALF.HI = 0;
            this->field_0x68.HALF.LO = sub_0801E99C(this);
            SetDefaultPriority(this, PRIO_MESSAGE);
            sub_0807DD50(this);
            break;
        case 1:
            v = this->interactType;
            if (v == 2) {
                this->action = v;
                this->interactType = 0;
                this->field_0x68.HALF.HI = this->animIndex;
                InitAnimationForceUpdate(this, 4 + sub_0806F5A4(GetFacingDirection(this, &gPlayerEntity)));
                sub_0806F118(this);
                break;
            }
            ExecuteScriptForEntity(this, NULL);
            HandleEntity0x82Actions(this);
            UpdateAnimationSingleFrame(this);
            break;
        case 2:
            if (UpdateFuseInteraction(this)) {
                this->action = 1;
                InitAnimationForceUpdate(this, this->field_0x68.HALF.HI);
            }
    }
}

void sub_0806CE5C(Entity* this) {
    sub_08078784(this, sub_0801E99C(this));
    sub_08078850(this, 1, 0, &gUnk_08113F44);
}

void sub_0806CE80(Entity* this) {
    u32 v;
    u32 v2;
    v = gSave.global_progress;
    if (v == 5) {
        if (GetInventoryValue(ITEM_FLIPPERS) == 0) {
            if (CheckLocalFlag(0x70) != 0) {
                v2 = CheckLocalFlag(MIZUKAKI_HINT3_MAYOR);
                if (v2 == 0) {
                    v = 0xb;
                    SetLocalFlag(MIZUKAKI_HINT3_MAYOR);
                } else {
                    v = 0xc;
                }
            } else {
                v = 0xa;
            }
        } else {
            v2 = CheckLocalFlag(MAYOR_2_TALK1ST);
            if (v2 == 0) {
                v = 0xd;
                SetLocalFlag(MAYOR_2_TALK1ST);
            } else {
                v = 0xe;
            }
        }
    }
    ShowNPCDialogue(this, &gUnk_08113F48[v]);
}

void MayorHagen_Fusion(Entity* this) {
    if (this->action == 0) {
        this->action++;
        this->spriteSettings.draw = 1;
        InitAnimationForceUpdate(this, 8);
    } else {
        UpdateAnimationSingleFrame(this);
    }
}
