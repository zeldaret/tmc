#include "global.h"
#include "entity.h"
#include "npc.h"
#include "textbox.h"
#include "flags.h"
#include "structures.h"
#include "functions.h"

extern u32 LoadExtraSpriteData(Entity*, SpriteLoadData*);
extern void sub_0807DD50(Entity*);
extern void sub_0806C7D4(Entity*);
extern void sub_0806F118(Entity*);
extern void sub_0807DD94(Entity*, u32);
extern void sub_0807DD80(Entity*, u32*);
extern u32 sub_0801E99C();
extern void sub_08078784(Entity*, u32);
extern void SetExtraSpriteFrame(Entity*, u32, u32);
extern void SetSpriteSubEntryOffsetData2(Entity*, u32, u32);
extern void SetSpriteSubEntryOffsetData1(Entity*, u32, u32);
extern void sub_0807000C(Entity*);

extern void (*const gUnk_08113A7C[])(Entity*);
extern void (*const gUnk_08113A8C[])(Entity*, Entity*);

extern SpriteLoadData gUnk_08113A1C[];
extern u32 gUnk_08014A80;
extern Dialog gUnk_08113ABC[];
extern u16 gUnk_08113B0C[];

void WindTribespeople(Entity* this) {
    gUnk_08113A7C[this->action](this);
}

void sub_0806C798(Entity* this) {
    s32 iVar1;

    iVar1 = LoadExtraSpriteData(this, gUnk_08113A1C + (this->entityType.form * 4));
    if (iVar1 != 0) {
        this->action = 1;
        this->spriteSettings.b.draw = 1;
        this->animationState = this->actionDelay;
        sub_0807DD50(this);
        sub_0806C7D4(this);
    }
}

void sub_0806C7D4(Entity* this) {
    u32 iVar1;
    u32 uVar2;

    if (this->interactType == '\x02') {
        this->action = 3;
        this->interactType = '\0';
        sub_0806F118(this);
    } else {
        sub_0807DD94(this, 0);
        if ((this->entityType.parameter == 3) && (!CheckGlobalFlag(WARP_EVENT_END)) && (CheckLocalFlag(0x63)) &&
            (CheckRoomFlag(0))) {
            (this->entityType).parameter = 7;
            sub_0807DD80(this, &gUnk_08014A80);
        }
    }
}

void sub_0806C834(Entity* this) {
    if ((gTextBox.doTextBox & 0x7f) == 0) {
        --this->action;
        InitializeAnimation(this, (this->animationState / 2) + 4);
    }
}

void sub_0806C85C(Entity* this) {
    if (UpdateFuseInteraction(this) != 0) {
        this->action = 1;
    }
}

void sub_0806C870(Entity* this) {
    u8 bVar1;

    bVar1 = sub_0801E99C(this);
    this->field_0x68.HALF.LO = bVar1;
    sub_08078784(this, this->field_0x68.HALF.LO);
}

void WindTribespeople_Head(Entity* this) {
    u32 uVar1;
    u32 uVar2;
    u8 pbVar3;

    pbVar3 = (this->frames.all & 0x3F);
    if (this->entityType.form == 4) {
        SetExtraSpriteFrame(this, 0, 9);
        SetExtraSpriteFrame(this, 1, pbVar3);
        SetExtraSpriteFrame(this, 2, this->frameIndex);
        SetSpriteSubEntryOffsetData2(this, 2, 0);
        SetSpriteSubEntryOffsetData1(this, 2, 1);
        sub_0807000C(this);
    } else {
        if (this->frames.b.f2 != 0) {
            uVar2 = 1;
            uVar1 = 0;
        } else {
            uVar2 = 0;
            uVar1 = 1;
        }
        SetExtraSpriteFrame(this, uVar2, pbVar3);
        SetExtraSpriteFrame(this, uVar1, this->frameIndex);
        SetSpriteSubEntryOffsetData1(this, uVar1, uVar2);
        sub_0807000C(this);
    }
}

// body and head entities?
void sub_0806C90C(Entity* param_1, Entity* param_2) {
    *(u32*)&param_2->animationState = 0;
    gUnk_08113A8C[param_1->entityType.parameter](param_1, param_2);
}

void sub_0806C928(Entity* this) {
    ShowNPCDialogue(this, &gUnk_08113ABC[gUnk_02002A40.unk8]);
}

void sub_0806C944(Entity* this) {
    int iVar1;
    int iVar2;

    iVar1 = CheckGlobalFlag(WARP_EVENT_END);
    if (iVar1 == 0) {
        iVar2 = 0;
    } else {
        iVar1 = CheckLocalFlag(0x63);
        iVar2 = 2;
        if (iVar1 != 0) {
            iVar2 = 1;
        }
    }
    TextboxNoOverlap(gUnk_08113B0C[iVar2], this);
}
