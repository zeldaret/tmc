#include "npc.h"
#include "functions.h"

static const SpriteLoadData gUnk_08110354[] = {
    { 0x4d, 0x38, 0x4 },
    { 0x4004, 0x38, 0x4 },
    { 0, 0, 0 },
};

void sub_080660EC(Entity*);
void sub_08066118(Entity*);
void sub_08066170(Entity*);
void sub_08066178(Entity*);
void sub_080661B0(Entity*);
void sub_080661BC(Entity*);
void sub_08066200(Entity*);
void sub_08066218(Entity*);

void Smith(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_080660EC,
        sub_08066118,
        sub_08066170,
    };
    static void (*const scriptedActionFuncs[])(Entity*) = {
        sub_08066178, sub_080661B0, sub_080661BC, sub_08066200, sub_08066218,
    };
    static const u16 gUnk_08110380[] = {
        0xdc, 0xdd, 0xde, 0xdc, 0xdd, 0xde, 0xdc, 0xdd,
    };
    u32 index;

    if ((this->flags & ENT_SCRIPTED) != 0) {
        if (this->interactType == 2) {
            this->action = 4;
            this->interactType = 0;
            index = (this->animIndex == 0xc) ? 8 : 0;
            index += sub_0806F5A4(GetFacingDirection(this, &gPlayerEntity));
            InitAnimationForceUpdate(this, index);
            sub_0806F118(this);
        }
        scriptedActionFuncs[this->action](this);
    } else {
        actionFuncs[this->action](this);
        sub_0806ED78(this);
    }
    if (this->animIndex == 0xc) {
        this->spritePriority.b1 = 0;
    } else {
        this->spritePriority.b1 = 1;
    }
    if ((this->frame & 1) != 0) {
        this->frame &= 0xfe;
        CreateFx(this, FX_STARS2, 0x20);
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

void sub_080660EC(Entity* this) {
    if (LoadExtraSpriteData(this, gUnk_08110354)) {
        this->action = 1;
        this->field_0x68.HALF.LO = GetFusionToOffer(this);
        InitAnimationForceUpdate(this, 2);
    }
}

void sub_08066118(Entity* this) {
    s32 uVar1;

    uVar1 = GetAnimationStateInRectRadius(this, 0x28, 0x28);
    if (uVar1 < 0) {
        uVar1 = 2;
    } else {
        if (this->subtimer == 0) {
            this->subtimer = 16;
        } else {
            --this->subtimer;
            uVar1 = this->animIndex;
        }
    }
    if (sub_0806F078(this, uVar1) == 0) {
        UpdateAnimationSingleFrame(this);
    }
    if (this->interactType != 0) {
        this->action = 2;
        MessageFromTarget(0);
    }
}

void sub_08066170(Entity* this) {
    this->action = 1;
}

void sub_08066178(Entity* this) {
    if (LoadExtraSpriteData(this, gUnk_08110354)) {
        this->action = 1;
        this->spriteSettings.draw = 1;
        this->field_0x68.HALF.LO = GetFusionToOffer(this);
        sub_0807DD50(this);
    }
}

void sub_080661B0(Entity* this) {
    sub_0807DD94(this, NULL);
}

void sub_080661BC(Entity* this) {
    if (this->animIndex == 0xc) {
        UpdateAnimationSingleFrame(this);
        if (this->frame & ANIM_DONE) {
            this->field_0x80.HWORD = GetAnimationState(this) + 8;
            InitAnimationForceUpdate(this, this->field_0x80.HWORD);
        }
    } else {
        sub_0807DD94(this, NULL);
    }
}

void sub_08066200(Entity* this) {
    ExecuteScriptForEntity(this, NULL);
    HandleEntity0x82Actions(this);
    UpdateAnimationSingleFrame(this);
}

void sub_08066218(Entity* this) {
    if (UpdateFuseInteraction(this) != 0) {
        this->action = 1;
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

void Smith_MakeInteractable(Entity* this) {
    AddInteractableWhenBigFuser(this, this->field_0x68.HALF.LO);
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
