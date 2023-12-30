/**
 * @file smith.c
 * @ingroup NPCs
 *
 * @brief Smith NPC
 */
#include "functions.h"
#include "npc.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 fusionOffer;
    /*0x69*/ u8 unused[23];
    /*0x80*/ u16 unk_80;
} SmithEntity;

static const SpriteLoadData gUnk_08110354[] = {
    { 0x4d, 0x38, 0x4 },
    { 0x4004, 0x38, 0x4 },
    { 0, 0, 0 },
};

void sub_080660EC(SmithEntity*);
void sub_08066118(SmithEntity*);
void sub_08066170(SmithEntity*);
void sub_08066178(SmithEntity*);
void sub_080661B0(SmithEntity*);
void sub_080661BC(SmithEntity*);
void sub_08066200(SmithEntity*);
void sub_08066218(SmithEntity*);

void Smith(SmithEntity* this) {
    static void (*const actionFuncs[])(SmithEntity*) = {
        sub_080660EC,
        sub_08066118,
        sub_08066170,
    };
    static void (*const scriptedActionFuncs[])(SmithEntity*) = {
        sub_08066178, sub_080661B0, sub_080661BC, sub_08066200, sub_08066218,
    };
    static const u16 gUnk_08110380[] = {
        0xdc, 0xdd, 0xde, 0xdc, 0xdd, 0xde, 0xdc, 0xdd,
    };
    u32 index;

    if ((super->flags & ENT_SCRIPTED) != 0) {
        if (super->interactType == INTERACTION_FUSE) {
            super->action = 4;
            super->interactType = INTERACTION_NONE;
            index = (super->animIndex == 0xc) ? 8 : 0;
            index += GetAnimationStateForDirection4(GetFacingDirection(super, &gPlayerEntity.base));
            InitAnimationForceUpdate(super, index);
            InitializeNPCFusion(super);
        }
        scriptedActionFuncs[super->action](this);
    } else {
        actionFuncs[super->action](this);
        sub_0806ED78(super);
    }
    if (super->animIndex == 0xc) {
        super->spritePriority.b1 = 0;
    } else {
        super->spritePriority.b1 = 1;
    }
    if ((super->frame & 1) != 0) {
        super->frame &= 0xfe;
        CreateFx(super, FX_STARS2, 0x20);
        SoundReq(gUnk_08110380[(Random() & 7)]);
    }
}

void Smith_Head(Entity* this) {
    u8 bVar1;

    bVar1 = this->frame;
    SetExtraSpriteFrame(this, 0, this->frameIndex);
    if ((bVar1 & 0x40) != 0) {
        SetExtraSpriteFrame(this, 1, 0x16);
    } else {
        SetExtraSpriteFrame(this, 1, 0xff);
    }
    SetSpriteSubEntryOffsetData1(this, 0, 1);
    sub_0807000C(this);
}

void sub_080660EC(SmithEntity* this) {
    if (LoadExtraSpriteData(super, gUnk_08110354)) {
        super->action = 1;
        this->fusionOffer = GetFusionToOffer(super);
        InitAnimationForceUpdate(super, 2);
    }
}

void sub_08066118(SmithEntity* this) {
    s32 uVar1;

    uVar1 = GetAnimationStateInRectRadius(super, 0x28, 0x28);
    if (uVar1 < 0) {
        uVar1 = 2;
    } else {
        if (super->subtimer == 0) {
            super->subtimer = 16;
        } else {
            --super->subtimer;
            uVar1 = super->animIndex;
        }
    }
    if (sub_0806F078(super, uVar1) == 0) {
        UpdateAnimationSingleFrame(super);
    }
    if (super->interactType != INTERACTION_NONE) {
        super->action = 2;
        MessageFromTarget(0);
    }
}

void sub_08066170(SmithEntity* this) {
    super->action = 1;
}

void sub_08066178(SmithEntity* this) {
    if (LoadExtraSpriteData(super, gUnk_08110354)) {
        super->action = 1;
        super->spriteSettings.draw = 1;
        this->fusionOffer = GetFusionToOffer(super);
        InitScriptForNPC(super);
    }
}

void sub_080661B0(SmithEntity* this) {
    ExecuteScriptAndHandleAnimation(super, NULL);
}

void sub_080661BC(SmithEntity* this) {
    if (super->animIndex == 0xc) {
        UpdateAnimationSingleFrame(super);
        if (super->frame & ANIM_DONE) {
            this->unk_80 = GetAnimationState(super) + 8;
            InitAnimationForceUpdate(super, this->unk_80);
        }
    } else {
        ExecuteScriptAndHandleAnimation(super, NULL);
    }
}

void sub_08066200(SmithEntity* this) {
    ExecuteScriptForEntity(super, NULL);
    HandleEntity0x82Actions(super);
    UpdateAnimationSingleFrame(super);
}

void sub_08066218(SmithEntity* this) {
    if (UpdateFuseInteraction(super) != 0) {
        super->action = 1;
    }
}

void sub_0806622C(Entity* this) {
    static const Dialog dialogs[] = {
        { TABIDACHI,
          DIALOG_GLOBAL_FLAG,
          DIALOG_CHECK_FLAG,
          1,
          { TEXT_INDEX(TEXT_SMITH, 0x01), TEXT_INDEX(TEXT_PROLOGUE, 0x0e) } },
        { TABIDACHI,
          DIALOG_GLOBAL_FLAG,
          DIALOG_CHECK_FLAG,
          1,
          { TEXT_INDEX(TEXT_SMITH, 0x01), TEXT_INDEX(TEXT_PROLOGUE, 0x0e) } },
        { TABIDACHI,
          DIALOG_GLOBAL_FLAG,
          DIALOG_CHECK_FLAG,
          1,
          { TEXT_INDEX(TEXT_SMITH, 0x02), TEXT_INDEX(TEXT_PROLOGUE, 0x0e) } },
        { TABIDACHI,
          DIALOG_GLOBAL_FLAG,
          DIALOG_CHECK_FLAG,
          1,
          { TEXT_INDEX(TEXT_SMITH, 0x03), TEXT_INDEX(TEXT_PROLOGUE, 0x0e) } },
        { TABIDACHI,
          DIALOG_GLOBAL_FLAG,
          DIALOG_CHECK_FLAG,
          1,
          { TEXT_INDEX(TEXT_SMITH, 0x04), TEXT_INDEX(TEXT_PROLOGUE, 0x0e) } },
        { TABIDACHI,
          DIALOG_GLOBAL_FLAG,
          DIALOG_CHECK_FLAG,
          1,
          { TEXT_INDEX(TEXT_SMITH, 0x05), TEXT_INDEX(TEXT_PROLOGUE, 0x0e) } },
        { TABIDACHI,
          DIALOG_GLOBAL_FLAG,
          DIALOG_CHECK_FLAG,
          1,
          { TEXT_INDEX(TEXT_SMITH, 0x06), TEXT_INDEX(TEXT_PROLOGUE, 0x0e) } },
        { TABIDACHI,
          DIALOG_GLOBAL_FLAG,
          DIALOG_CHECK_FLAG,
          1,
          { TEXT_INDEX(TEXT_SMITH, 0x06), TEXT_INDEX(TEXT_PROLOGUE, 0x0e) } },
    };
    u32 index;

    if (gSave.global_progress - 2 < 0) {
        index = 0;
    } else {
        index = gSave.global_progress - 2;
    }
    ShowNPCDialogue(this, &dialogs[index]);
}

void nullsub_501(Entity* this) {
}

void sub_08066258(void) {
    static const u16 hammerSounds[] = {
        SFX_HAMMER4, SFX_HAMMER5, SFX_HAMMER6, SFX_HAMMER4, SFX_HAMMER5, SFX_HAMMER6, SFX_HAMMER4, SFX_HAMMER5,
    };
    SoundReq(hammerSounds[Random() & 7]);
}

void Smith_ChangeInteractableHitbox(Entity* this) {
    static const Rect gUnk_081103E0 = { 0, 6, 8, 12 };
    SetInteractableObjectCollision(this, 1, 0, &gUnk_081103E0);
}

void Smith_MakeInteractable(SmithEntity* this) {
    AddInteractableWhenBigFuser(super, this->fusionOffer);
}

void Smith_Fusion(Entity* this) {
    if (this->action == 0) {
        if (LoadExtraSpriteData(this, gUnk_08110354)) {
            this->action++;
            this->spriteSettings.draw = 1;
            InitAnimationForceUpdate(this, 6);
        }
    } else {
        UpdateAnimationSingleFrame(this);
    }
}
