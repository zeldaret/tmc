#include "global.h"
#include "entity.h"
#include "player.h"
#include "flags.h"
#include "message.h"
#include "npc.h"

extern SpriteLoadData gUnk_08110C00;
extern u16 gUnk_08110C0C[];
extern Dialog gUnk_08110C10[];

void Mutoh(Entity* this) {
    if (*(u32*)&this->cutsceneBeh == 0) {
        DeleteThisEntity();
    }

    switch (this->action) {
        case 0:
            if (LoadExtraSpriteData(this, &gUnk_08110C00)) {
                this->action = 1;
                this->spriteSettings.draw = TRUE;
                SetDefaultPriority(this, PRIO_MESSAGE);
                sub_0807DD50(this);
            }
            break;
        case 1:
            if (this->interactType == 2) {
                this->action = 2;
                this->interactType = 0;
                InitAnimationForceUpdate(this, sub_0806F5A4(GetFacingDirection(this, &gPlayerEntity)) + 4);
                sub_0806F118(this);
            } else {
                sub_0807DD94(this, NULL);
            }
            break;
        case 2:
            if (UpdateFuseInteraction(this)) {
                this->action = 1;
            }
    }
}

void Mutoh_Head(Entity* this) {
    SetExtraSpriteFrame(this, 0, (this->frame & -0x81));
    SetExtraSpriteFrame(this, 1, this->frameIndex);
    SetSpriteSubEntryOffsetData1(this, 1, 0);
    sub_0807000C(this);
}

void sub_080670B4(Entity* this) {
    u32 uVar2;

    uVar2 = 0;
    if (GetInventoryValue(0x11) == 0) {
        if (CheckGlobalFlag(TABIDACHI)) {
            uVar2 = 1;
        }
    }
    MessageNoOverlap(gUnk_08110C0C[uVar2], this);
}

void sub_080670E4(Entity* this) {
    ShowNPCDialogue(this, &gUnk_08110C10[gSave.global_progress]);
}

void sub_08067100(Entity* this) {
    this->field_0x68.HALF.LO = sub_0801E99C(this);
    sub_08078784(this, this->field_0x68.HALF.LO);
}

void Mutoh_Fusion(Entity* this) {
    if (this->action == 0) {
        if (LoadExtraSpriteData(this, &gUnk_08110C00) != 0) {
            this->action++;
            this->spriteSettings.draw = TRUE;
            InitializeAnimation(this, 2);
        }
    } else {
        GetNextFrame(this);
    }
}
