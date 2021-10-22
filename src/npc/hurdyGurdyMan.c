#include "entity.h"
#include "functions.h"
#include "save.h"
#include "npc.h"
#include "script.h"

extern Dialog gUnk_081144FC[];

extern SpriteLoadData gUnk_081144F0;

extern u32 sub_08002632(Entity*);
extern u16* gUnk_08001A7C[];

void HurdyGurdyMan(Entity* this) {
    u32 index;
    u16* pointerToArray;

    switch (this->action) {
        case 0:
            if (LoadExtraSpriteData(this, &gUnk_081144F0) != 0) {
                this->action = 1;
                this->field_0x68.HALF.HI = 0;
                sub_0805E3A0(this, 2);
                sub_0807DD50(this);
            }
            break;
        case 1:
            if (this->interactType == 2) {
                this->action = 2;
                this->interactType = 0;
                this->field_0x68.HALF.HI = this->animIndex;
                InitializeAnimation(this, sub_0806F5A4(GetFacingDirection(this, &gPlayerEntity)));
                index = sub_08002632(this);
                pointerToArray = gUnk_08001A7C[index];
                if (this->field_0x68.HALF.LO == 0x32) {
                    pointerToArray = pointerToArray + 3;
                }
                sub_0801DFB4(this, (u32)*pointerToArray, (u32)pointerToArray[1], (u32)pointerToArray[2]);
                gPlayerState.field_0x8b = 3;
            } else {
                sub_0807DD94(this, NULL);
            }

            break;
        case 2:
            if ((UpdateFuseInteraction(this) != 0)) {
                this->action = 1;
                InitializeAnimation(this, this->field_0x68.HALF.HI);
            }
            break;
    }
}

void HurdyGurdyMan_Head(Entity* this) {
    SetExtraSpriteFrame(this, 0, (this->frames.all & 0xffffff7f) + 8);
    SetExtraSpriteFrame(this, 1, this->frameIndex);
    SetSpriteSubEntryOffsetData1(this, 1, 0);
    sub_0807000C(this);
}

void sub_0806E418(Entity* this) {
    s32 tmp = gSave.unk8 - 2;
    if (tmp < 0) {
        tmp = 0;
    }
    ShowNPCDialogue(this, &gUnk_081144FC[tmp]);
}

void sub_0806E440(Entity* this) {
    this->field_0x68.HALF.LO = sub_0801E99C(this);
    sub_08078784(this, this->field_0x68.HALF.LO);
}

void HurdyGurdyMan_Fusion(Entity* this) {
    u32 uVar1;

    if (this->action == 0) {
        uVar1 = LoadExtraSpriteData(this, &gUnk_081144F0);
        if (uVar1 != 0) {
            this->action += 1;
            this->spriteSettings.b.draw = 1;
            sub_0805E3A0(this, 2);
            InitializeAnimation(this, 10);
        }
    } else {
        GetNextFrame(this);
    }
}
