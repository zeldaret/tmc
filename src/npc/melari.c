/**
 * @file melari.c
 * @ingroup NPCs
 *
 * @brief Melari NPC
 */
#include "item.h"
#include "npc.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 fusionOffer;
} MelariEntity;

void sub_08068780(Entity*);
void sub_08068708(Entity*);
void sub_08068730(Entity*);

static const SpriteLoadData gUnk_08111520[] = {
    { 0xb5, 0x1a, 0x4 },
    { 0x1cb5, 0x1a, 0x4 },
    { 0x50b4, 0x1c, 0x4 },
    { 0, 0, 0 },
};

void Melari(Entity* this) {
    static void (*const scriptedActionFuncs[])(Entity*) = {
        sub_08068708,
        sub_08068730,
    };
    if ((this->flags & ENT_SCRIPTED) == 0) {
        scriptedActionFuncs[this->action](this);
        sub_0806ED78(this);
    } else {
        sub_08068780(this);
    }
}

void sub_08068708(Entity* this) {
    if (LoadExtraSpriteData(this, gUnk_08111520)) {
        this->action = 1;
        InitializeAnimation(this, 0);
        AddInteractableWhenBigObject(this);
    }
}

void sub_08068730(Entity* this) {
    s32 animIndex;

    animIndex = GetAnimationStateInRectRadius(this, 0x20, 0x20);
    if (-1 < animIndex) {
        if (this->subtimer == 0) {
            this->subtimer = 16;
            if (this->animIndex != animIndex) {
                InitializeAnimation(this, animIndex);
            }
        } else {
            this->subtimer--;
        }
    }
    if (this->interactType != INTERACTION_NONE) {
        this->interactType = INTERACTION_NONE;
        MessageFromTarget(this->timer + TEXT_INDEX(TEXT_MINISH2, 0x0));
    }
}

void sub_08068780(Entity* this) {
    static const u16 soundOnScreen[] = { SFX_HAMMER1, SFX_HAMMER2, SFX_HAMMER3 };
    static const u16 soundNotOnScreen[] = { SFX_HAMMER4, SFX_HAMMER5, SFX_HAMMER6 };
    Entity* ent;

    switch (this->action) {
        case 0:
            if (!LoadExtraSpriteData(this, gUnk_08111520)) {
                return;
            }
            this->action = 1;
            this->spriteSettings.draw = TRUE;
            this->animationState = this->type;
            SetEntityPriority(this, PRIO_MESSAGE);
            InitScriptForNPC(this);
            break;
        case 1:
            if (this->interactType == INTERACTION_FUSE) {
                this->action = 2;
                this->interactType = INTERACTION_NONE;
                InitializeNPCFusion(this);
            } else {
                ExecuteScriptForEntity(this, NULL);
                HandleEntity0x82Actions(this);
                GetNextFrame(this);
            }
            break;
        case 2:
            if (UpdateFuseInteraction(this)) {
                this->action = 1;
            }
    }

    if (this->frame & 0x40) {
        this->frame &= 0xbf;
        if (CheckOnScreen(this) == 0) {
            SoundReq(soundNotOnScreen[(s32)Random() % 3]);
        } else {
            EnqueueSFX(soundOnScreen[(s32)Random() % 3]);
        }
        ent = CreateFx(this, FX_STARS2, 0x20);
        if (ent != NULL) {
            PositionRelative(this, ent, Q_16_16(24.0), Q_16_16(-10.0));
        }
    }
}

void Melari_MakeInteractable(MelariEntity* this) {
    this->fusionOffer = GetFusionToOffer(super);
    AddInteractableWhenBigFuser(super, this->fusionOffer);
}

void Melari_Head(Entity* this) {
    u32 bVar1;

    bVar1 = this->frame;
    bVar1 &= -0xc1;
    SetExtraSpriteFrame(this, 1, this->frameIndex);
    if ((bVar1 & 0x20) != 0) {
        SetExtraSpriteFrame(this, 0, bVar1 & -0xe1);
        SetExtraSpriteFrame(this, 2, 0xff);
        SetSpriteSubEntryOffsetData1(this, 1, 0);
    } else {
        SetExtraSpriteFrame(this, 0, 0xff);
        SetExtraSpriteFrame(this, 2, bVar1 & -0xe1);
        SetSpriteSubEntryOffsetData2(this, 1, 2);
    }
    sub_0807000C(this);
}

void sub_08068910(Entity* this) {
    s32 iVar1;

    if (this->timer != 0) {
        this->timer--;
    } else {
        this->timer = 16;
        if ((this->frame & 0x20) != 0) {
            iVar1 = GetFacingDirectionInRectRadius(this, 0x30, 0x30);
            if (iVar1 < 0) {
                iVar1 = 0x10;
            } else {
            }
            iVar1 = GetAnimationStateForDirection4(iVar1);
            InitializeAnimation(this, (this->animIndex & -0x4) + iVar1);
        }
    }
}

void sub_08068964(Entity* this) {
    InitItemGetSequence(ITEM_QST_BROKEN_SWORD, 0, 3);
    SetInventoryValue(ITEM_QST_BROKEN_SWORD, 2);
}

void Melari_Fusion(Entity* this) {
    if (this->action == 0) {
        if (LoadExtraSpriteData(this, gUnk_08111520)) {
            this->action++;
            this->spriteSettings.draw = TRUE;
            InitializeAnimation(this, 6);
        }
    } else {
        GetNextFrame(this);
    }
}

void nullsub_502(Entity* this) {
}
