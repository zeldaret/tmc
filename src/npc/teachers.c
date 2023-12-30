/**
 * @file teachers.c
 * @ingroup NPCs
 *
 * @brief Teachers NPC
 */
#include "entity.h"
#include "npc.h"
#include "player.h"
#include "save.h"
#include "script.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 fusionOffer;
    /*0x69*/ u8 animIndex;
} TeachersEntity;

static const SpriteLoadData gUnk_08113910[] = {
    { 0x103, 0x4f, 0x4 }, { 0x2103, 0x4f, 0x4 }, { 0, 0, 0 },           { 0, 0, 0 },
    { 0, 0x50, 0x4 },     { 0x2002, 0x50, 0x4 }, { 0x4000, 0x50, 0x4 }, { 0, 0, 0 },
};

void Teachers(TeachersEntity* this) {
    switch (super->action) {
        case 0:
            if (LoadExtraSpriteData(super, &gUnk_08113910[super->type * 4])) {
                super->action = 1;
                super->spriteSettings.draw = TRUE;
                super->animationState = super->timer;
                this->animIndex = 0;
                SetEntityPriority(super, PRIO_MESSAGE);
                InitScriptForNPC(super);
            }
            break;
        case 1:
            if (super->interactType == INTERACTION_FUSE) {
                super->action = 2;
                super->interactType = INTERACTION_NONE;
                this->animIndex = super->animIndex;
                InitializeAnimation(super, (super->animIndex & -4) + GetAnimationStateForDirection4(GetFacingDirection(
                                                                         super, &gPlayerEntity.base)));
                InitializeNPCFusion(super);
            } else {
                ExecuteScriptAndHandleAnimation(super, NULL);
            }
            break;
        case 2:
            if (UpdateFuseInteraction(super)) {
                super->action = 1;
                InitializeAnimation(super, this->animIndex);
            }
    }
}

void Teachers_MakeInteractable(TeachersEntity* this) {
    this->fusionOffer = GetFusionToOffer(super);
    AddInteractableWhenBigFuser(super, this->fusionOffer);
}

void Teachers_Head(Entity* this) {
    u8 bVar1;
    u8 bVar2;
    u32 uVar3;

    uVar3 = this->frame & -0x81;
    bVar1 = this->frameIndex;
    bVar2 = this->frameSpriteSettings & 0x3f;
    if (this->type == 0) {
        SetExtraSpriteFrame(this, 0, (uVar3 + 3));
        SetExtraSpriteFrame(this, 1, bVar1);
        SetSpriteSubEntryOffsetData1(this, 1, 0);
        sub_0807000C(this);
    } else {
        SetExtraSpriteFrame(this, 0, (uVar3 + 6));
        SetExtraSpriteFrame(this, 1, ((bVar2) + 3));
        SetExtraSpriteFrame(this, 2, bVar1);
        SetSpriteSubEntryOffsetData1(this, 2, 1);
        SetSpriteSubEntryOffsetData2(this, 2, 0);
        sub_0807000C(this);
    }
}

void sub_0806C70C(Entity* this) {
    static const Dialog gUnk_08113930[][8] = {
        { { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_SCHOOL, 0x1) } },
          { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_SCHOOL, 0x1) } },
          { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_SCHOOL, 0x1) } },
          { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_SCHOOL, 0x1) } },
          { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_SCHOOL, 0x1) } },
          { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_SCHOOL, 0x1) } },
          { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_SCHOOL, 0x9) } },
          { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_SCHOOL, 0x9) } } },
        { { 0xa,
            DIALOG_ROOM_FLAG,
            DIALOG_TOGGLE_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN, 0x35), TEXT_INDEX(TEXT_TOWN, 0x34) } },
          { 0xa,
            DIALOG_ROOM_FLAG,
            DIALOG_TOGGLE_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN, 0x35), TEXT_INDEX(TEXT_TOWN, 0x34) } },
          { 0xa,
            DIALOG_ROOM_FLAG,
            DIALOG_TOGGLE_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN2, 0x28), TEXT_INDEX(TEXT_TOWN2, 0x27) } },
          { 0xa,
            DIALOG_ROOM_FLAG,
            DIALOG_TOGGLE_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN3, 0x25), TEXT_INDEX(TEXT_TOWN3, 0x24) } },
          { 0,
            DIALOG_ROOM_FLAG,
            DIALOG_TOGGLE_FLAG,
            1,
            { TEXT_INDEX(TEXT_SCHOOL, 0x3), TEXT_INDEX(TEXT_SCHOOL, 0x2) } },
          { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_SCHOOL, 0x6) } },
          { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_SCHOOL, 0xa) } },
          { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_SCHOOL, 0xa) } } },
    };
    int offset;

    offset = gSave.global_progress - 2;
    if (offset < 0)
        offset = 0;

    ShowNPCDialogue(this, &gUnk_08113930[this->type][offset]);
}

void Teachers_Fusion(Entity* this) {
    if (this->action == 0) {
        if (LoadExtraSpriteData(this, &gUnk_08113910[this->type * 4])) {
            this->action++;
            this->spriteSettings.draw = TRUE;
            InitializeAnimation(this, 2);
        }
    } else {
        GetNextFrame(this);
    }
}
