/**
 * @file townMinish.c
 * @ingroup NPCs
 *
 * @brief Town Minish NPC
 */
#include "asm.h"
#include "entity.h"
#include "functions.h"
#include "item.h"
#include "npc.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 fusionOffer;
    /*0x69*/ u8 unk_69;
    /*0x6a*/ u8 unk_6a;
    /*0x6b*/ u8 unused[23];
    /*0x82*/ u16 unk_82;
    /*0x84*/ ScriptExecutionContext* context;
} TownMinishEntity;

extern u32 sub_080B1AC8(u32, u32, u32);
void sub_0806ACC4(TownMinishEntity*);
void sub_0806ABFC(TownMinishEntity*);
void sub_0806AC3C(TownMinishEntity*);
void sub_0806AEA8(TownMinishEntity*);
void sub_0806AEE4(TownMinishEntity*);
void sub_0806AFE8(Entity*, ScriptExecutionContext*);
void sub_0806B004(Entity*, ScriptExecutionContext*);
void sub_0806B098(Entity*, ScriptExecutionContext*);
void sub_0806B0E0(Entity*, ScriptExecutionContext*);
void sub_0806B064(Entity*, ScriptExecutionContext*);
void sub_0806B134(Entity*, ScriptExecutionContext*);

static const u8 gUnk_081125F4[][0x10][2] = {
    {
        { 0x24, 0x1a },
        { 0x25, 0x1a },
        { 0x26, 0x1a },
        { 0x27, 0x9b },
        { 0x28, 0x9b },
        { 0x29, 0x9b },
        { 0x2a, 0x9b },
        { 0x2b, 0x98 },
        { 0x1c, 0x98 },
        { 0x1d, 0x98 },
        { 0x1e, 0x99 },
        { 0x1f, 0x99 },
        { 0x20, 0x99 },
        { 0x21, 0x99 },
        { 0x22, 0x1a },
        { 0x23, 0x1a },
    },
    {
        { 0x24, 0x9a },
        { 0x25, 0x9a },
        { 0x26, 0x1b },
        { 0x27, 0x1b },
        { 0x28, 0x1b },
        { 0x29, 0x1b },
        { 0x2a, 0x1b },
        { 0x2b, 0x98 },
        { 0x1c, 0x98 },
        { 0x1d, 0x98 },
        { 0x1e, 0x98 },
        { 0x1f, 0x99 },
        { 0x20, 0x99 },
        { 0x21, 0x99 },
        { 0x22, 0x9a },
        { 0x23, 0x9a },
    },
    {
        { 0x24, 0x9a },
        { 0x25, 0x9a },
        { 0x26, 0x9b },
        { 0x27, 0x9b },
        { 0x28, 0x9b },
        { 0x29, 0x9b },
        { 0x2a, 0x18 },
        { 0x2b, 0x18 },
        { 0x1c, 0x18 },
        { 0x1d, 0x18 },
        { 0x1e, 0x18 },
        { 0x1f, 0x99 },
        { 0x20, 0x99 },
        { 0x21, 0x99 },
        { 0x22, 0x99 },
        { 0x23, 0x9a },
    },
    {
        { 0x24, 0x9a },
        { 0x25, 0x9a },
        { 0x26, 0x9a },
        { 0x27, 0x9b },
        { 0x28, 0x9b },
        { 0x29, 0x9b },
        { 0x2a, 0x98 },
        { 0x2b, 0x98 },
        { 0x1c, 0x98 },
        { 0x1d, 0x98 },
        { 0x1e, 0x19 },
        { 0x1f, 0x19 },
        { 0x20, 0x19 },
        { 0x21, 0x19 },
        { 0x22, 0x19 },
        { 0x23, 0x9a },
    },
};
static const SpriteLoadData gUnk_08112674[][4] = {
    {
        { 0xea, 0x1d, 0x4 },
        { 0x20ea, 0x1d, 0x4 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
    },
    {
        { 0xea, 0x1d, 0x4 },
        { 0x20ea, 0x1d, 0x4 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
    },
    {
        { 0xeb, 0x1d, 0x4 },
        { 0x20eb, 0x1d, 0x4 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
    },
    {
        { 0xec, 0x1d, 0x4 },
        { 0x20ec, 0x1d, 0x4 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
    },
    {
        { 0xed, 0x1d, 0x4 },
        { 0x20ed, 0x1d, 0x4 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
    },
    {
        { 0xee, 0x1d, 0x4 },
        { 0x20ee, 0x1d, 0x4 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
    },
};
static const Rect gUnk_081126D4[4] = {
    { 0, 8, 8, 16 },
    { -8, -2, 16, 8 },
    { 0, 8, 8, 16 },
    { 8, -2, 16, 8 },
};
static const u8 gUnk_081126E4[4] = { 0x0e, 0x0d, 0x0b, 0x07 };

void TownMinish(TownMinishEntity* this) {
    static void (*const scriptedActionFuncs[])(TownMinishEntity*) = {
        sub_0806ABFC,
        sub_0806AC3C,
    };
    if ((super->flags & ENT_SCRIPTED) == 0) {
        scriptedActionFuncs[super->action](this);
        sub_0806ED78(super);
    } else {
        sub_0806ACC4(this);
    }
}

void sub_0806ABFC(TownMinishEntity* this) {
    const SpriteLoadData* SpriteLoadData = gUnk_08112674[super->type];
    if (!LoadExtraSpriteData(super, SpriteLoadData)) {
        return;
    }

    InitializeAnimation(super, 2);
    super->action = 1;
    this->unk_6a = super->timer;

    super->animationState = this->unk_6a << 1;
    this->unk_69 = super->animationState * 4;

    super->timer = 0;
}

void sub_0806AC3C(TownMinishEntity* this) {
    if (super->animIndex <= 3) {
        s32 unk;
        Entity* link = &gPlayerEntity.base;
        if (EntityInRectRadius(super, link, 0x18, 0x18)) {
            unk = GetFacingDirection(super, link) & 0x1e;
        } else {
            unk = super->animationState * 4;
        }

        if (unk != this->unk_69) {
            if (((unk - this->unk_69) & 0x1f) <= 0xf) {
                this->unk_69--;
            } else {
                this->unk_69++;
            }

            this->unk_69 &= 0x1f;
        }

        if (!(this->unk_69 & 7)) {
            super->animationState = GetAnimationStateForDirection8(this->unk_69);
            InitializeAnimation(super, AnimationStateFlip90(super->animationState / 2));
        }
    }

    UpdateAnimationSingleFrame(super);
}

void sub_0806ACC4(TownMinishEntity* this) {
    u8 delay;
    switch (super->action) {
        case 0:
            if (!LoadExtraSpriteData(super, gUnk_08112674[super->type]))
                return;

            super->action = 1;
            delay = super->timer;
            this->unk_6a = delay;
            super->animationState = delay * 2;
            super->timer = 0;

            this->fusionOffer = GetFusionToOffer(super);
            InitScriptForNPC(super);
            InitializeAnimation(super, (super->animationState / 2) + 8);
            break;
        case 1:
            if (super->interactType == INTERACTION_FUSE) {
                super->action = 3;
                super->interactType = INTERACTION_NONE;
                InitializeNPCFusion(super);
            } else {
                ExecuteScriptForEntity(super, NULL);
                sub_0806AEA8(this);
                if (super->type2 == 10 && super->interactType) {
                    super->action = 2;
                    super->interactType = INTERACTION_NONE;
                    InitializeAnimation(
                        super, GetAnimationStateForDirection4(GetFacingDirection(super, &gPlayerEntity.base)) + 8);
                    sub_0806AFE8(super, this->context);
                }
                if (super->type == 1) {
                    u8 idx = gPlayerEntity.base.animationState >> 1;
                    SetInteractableObjectCollision(super, 1, gUnk_081126E4[idx], &gUnk_081126D4[idx]);
                }
            }
            break;
        case 2:
            if (gMessage.state & MESSAGE_ACTIVE)
                break;

            super->action = 1;
            InitializeAnimation(super, super->animationState / 2 + 4);
            break;
        case 3:
            if (UpdateFuseInteraction(super))
                super->action = 1;
            break;
    }

    if (super->frameDuration != 0xff) {
        GetNextFrame(super);
    }
}

void TownMinish_MakeInteractable(TownMinishEntity* this) {
    AddInteractableWhenBigFuser(super, this->fusionOffer);
}

void TownMinish_Head(TownMinishEntity* this) {
    u32 frames;

    if ((super->flags & ENT_SCRIPTED) == 0) {
        frames = this->unk_69 / 2;
        if ((super->frameSpriteSettings & 1)) {
            SetExtraSpriteFrame(super, 0, frames + 0x1c);
        } else {
            SetExtraSpriteFrame(super, 0, 0xff);
        }
        SetExtraSpriteFrame(super, 1, super->frameIndex);
        SetSpriteSubEntryOffsetData1(super, 1, 0);
        sub_0807000C(super);
    } else {
        frames = super->frame;
        if (frames != 0xff) {
            frames &= ~0x80;
        }
        if ((super->frameSpriteSettings & 1) == 0) {
            frames = 0xff;
        }
        SetExtraSpriteFrame(super, 0, frames);
        SetExtraSpriteFrame(super, 1, super->frameIndex);
        SetSpriteSubEntryOffsetData1(super, 1, 0);
        sub_0807000C(super);
    }
}

void sub_0806AEA8(TownMinishEntity* this) {
    int old = this->unk_82;
    this->unk_82 &= ~0x20;
    if (old & 0x20) {
        GravityUpdate(super, Q_8_8(64.0));
    }
    HandleEntity0x82Actions(super);
    this->unk_82 = old;
}

void sub_0806AED8(TownMinishEntity* this) {
    super->timer = 0;
    sub_0806AEE4(this);
}

void sub_0806AEE4(TownMinishEntity* this) {
    int index;
    const u8* idx3;
    u8 tmp1, tmp2;

    if (super->timer) {
        super->timer--;
    } else {
        super->timer = 2;
        index = GetFacingDirectionInRectRadius(super, 0x20, 0x20);
        if (index < 0) {
            int state = this->unk_6a;
            super->animationState = state * 2;
            index = state * 8;
        }

        idx3 = gUnk_081125F4[super->animationState / 2][index >> 1];
        tmp1 = idx3[0];
        tmp2 = idx3[1];

        if (tmp2 & 0x80) {
            super->animationState = GetAnimationStateForDirection8(index);
        }
        tmp2 &= ~0x80;
        super->frame = tmp1;
        super->frameIndex = tmp2;
        super->frameSpriteSettings = 1;
        super->animIndex = 0;
        super->frameDuration = 0xff;
    }
}

void sub_0806AF60(Entity* this, ScriptExecutionContext* context) {
    InitializeAnimation(this, context->intVariable + (this->animationState / 2));
}

void sub_0806AF70(Entity* this, ScriptExecutionContext* context) {
    this->zVelocity = Q_16_16(2.25);
}

void sub_0806AF78(Entity* this, ScriptExecutionContext* context) {
    GravityUpdate(this, Q_8_8(24.0));
    if (0 <= this->z.WORD && this->zVelocity <= 0) {
        this->z.WORD = 0;
        sub_0806AF70(this, context);
    }
}

void sub_0806AFA0(Entity* this) {
    if (sub_0806ED78(this)) {
        LinearMoveAngle(this, -this->speed, this->direction);
    }
}

void sub_0806AFBC(Entity* this, ScriptExecutionContext* context) {
    //! @bug sub_0806B004 uses context but ShowNPCDialogue doesn't pass it.
    // In fact r1 contains sub_0806B004's address.
    static const Dialog dialogs[][8] = {
        { { 0x0, 0x0, DIALOG_CALL_FUNC, 0, { .func = (EntityActionPtr)sub_0806B004 } },
          { 0x0, 0x0, DIALOG_CALL_FUNC, 0, { .func = (EntityActionPtr)sub_0806B004 } },
          { 0x0, 0x0, DIALOG_CALL_FUNC, 0, { .func = (EntityActionPtr)sub_0806B004 } },
          { 0x0, 0x0, DIALOG_CALL_FUNC, 0, { .func = (EntityActionPtr)sub_0806B004 } },
          { 0x0, 0x0, DIALOG_CALL_FUNC, 0, { .func = (EntityActionPtr)sub_0806B004 } },
          { 0x0, 0x0, DIALOG_CALL_FUNC, 0, { .func = (EntityActionPtr)sub_0806B004 } },
          { 0x0, 0x0, DIALOG_CALL_FUNC, 0, { .func = (EntityActionPtr)sub_0806B004 } },
          { 0x0, 0x0, DIALOG_CALL_FUNC, 0, { .func = (EntityActionPtr)sub_0806B004 } } },
        { { 0x0, 0x0, DIALOG_CALL_FUNC, 0, { .func = (EntityActionPtr)sub_0806B064 } },
          { 0x0, 0x0, DIALOG_CALL_FUNC, 0, { .func = (EntityActionPtr)sub_0806B064 } },
          { 0x0, 0x0, DIALOG_CALL_FUNC, 0, { .func = (EntityActionPtr)sub_0806B064 } },
          { 0x0, 0x0, DIALOG_CALL_FUNC, 0, { .func = (EntityActionPtr)sub_0806B064 } },
          { 0x0, 0x0, DIALOG_CALL_FUNC, 0, { .func = (EntityActionPtr)sub_0806B064 } },
          { 0x0, 0x0, DIALOG_CALL_FUNC, 0, { .func = (EntityActionPtr)sub_0806B064 } },
          { 0x0, 0x0, DIALOG_CALL_FUNC, 0, { .func = (EntityActionPtr)sub_0806B064 } },
          { 0x0, 0x0, DIALOG_CALL_FUNC, 0, { .func = (EntityActionPtr)sub_0806B064 } } },
        { { ITEM_FLIPPERS,
            DIALOG_INVENTORY,
            DIALOG_CHECK_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN_MINISH2, 0x0a), TEXT_INDEX(TEXT_TOWN_MINISH2, 0x04) } },
          { ITEM_FLIPPERS,
            DIALOG_INVENTORY,
            DIALOG_CHECK_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN_MINISH2, 0x0a), TEXT_INDEX(TEXT_TOWN_MINISH2, 0x04) } },
          { ITEM_FLIPPERS,
            DIALOG_INVENTORY,
            DIALOG_CHECK_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN_MINISH2, 0x0a), TEXT_INDEX(TEXT_TOWN_MINISH2, 0x04) } },
          { ITEM_FLIPPERS,
            DIALOG_INVENTORY,
            DIALOG_CHECK_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN_MINISH2, 0x0a), TEXT_INDEX(TEXT_TOWN_MINISH2, 0x04) } },
          { ITEM_FLIPPERS,
            DIALOG_INVENTORY,
            DIALOG_CHECK_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN_MINISH2, 0x0a), TEXT_INDEX(TEXT_TOWN_MINISH2, 0x04) } },
          { ITEM_FLIPPERS,
            DIALOG_INVENTORY,
            DIALOG_CHECK_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN_MINISH2, 0x0a), TEXT_INDEX(TEXT_TOWN_MINISH2, 0x04) } },
          { ITEM_FLIPPERS,
            DIALOG_INVENTORY,
            DIALOG_CHECK_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN_MINISH2, 0x0a), TEXT_INDEX(TEXT_TOWN_MINISH2, 0x04) } },
          { ITEM_FLIPPERS,
            DIALOG_INVENTORY,
            DIALOG_CHECK_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN_MINISH2, 0x0a), TEXT_INDEX(TEXT_TOWN_MINISH2, 0x04) } } },
        { { ITEM_FLIPPERS,
            DIALOG_INVENTORY,
            DIALOG_CHECK_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN_MINISH2, 0x07), TEXT_INDEX(TEXT_TOWN_MINISH2, 0x01) } },
          { ITEM_FLIPPERS,
            DIALOG_INVENTORY,
            DIALOG_CHECK_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN_MINISH2, 0x07), TEXT_INDEX(TEXT_TOWN_MINISH2, 0x01) } },
          { ITEM_FLIPPERS,
            DIALOG_INVENTORY,
            DIALOG_CHECK_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN_MINISH2, 0x07), TEXT_INDEX(TEXT_TOWN_MINISH2, 0x01) } },
          { ITEM_FLIPPERS,
            DIALOG_INVENTORY,
            DIALOG_CHECK_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN_MINISH2, 0x07), TEXT_INDEX(TEXT_TOWN_MINISH2, 0x01) } },
          { ITEM_FLIPPERS,
            DIALOG_INVENTORY,
            DIALOG_CHECK_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN_MINISH2, 0x07), TEXT_INDEX(TEXT_TOWN_MINISH2, 0x01) } },
          { ITEM_FLIPPERS,
            DIALOG_INVENTORY,
            DIALOG_CHECK_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN_MINISH2, 0x07), TEXT_INDEX(TEXT_TOWN_MINISH2, 0x01) } },
          { ITEM_FLIPPERS,
            DIALOG_INVENTORY,
            DIALOG_CHECK_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN_MINISH2, 0x07), TEXT_INDEX(TEXT_TOWN_MINISH2, 0x01) } },
          { ITEM_FLIPPERS,
            DIALOG_INVENTORY,
            DIALOG_CHECK_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN_MINISH2, 0x07), TEXT_INDEX(TEXT_TOWN_MINISH2, 0x01) } } },
        { { ITEM_FLIPPERS,
            DIALOG_INVENTORY,
            DIALOG_CHECK_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN_MINISH2, 0x08), TEXT_INDEX(TEXT_TOWN_MINISH2, 0x02) } },
          { ITEM_FLIPPERS,
            DIALOG_INVENTORY,
            DIALOG_CHECK_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN_MINISH2, 0x08), TEXT_INDEX(TEXT_TOWN_MINISH2, 0x02) } },
          { ITEM_FLIPPERS,
            DIALOG_INVENTORY,
            DIALOG_CHECK_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN_MINISH2, 0x08), TEXT_INDEX(TEXT_TOWN_MINISH2, 0x02) } },
          { ITEM_FLIPPERS,
            DIALOG_INVENTORY,
            DIALOG_CHECK_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN_MINISH2, 0x08), TEXT_INDEX(TEXT_TOWN_MINISH2, 0x02) } },
          { ITEM_FLIPPERS,
            DIALOG_INVENTORY,
            DIALOG_CHECK_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN_MINISH2, 0x08), TEXT_INDEX(TEXT_TOWN_MINISH2, 0x02) } },
          { ITEM_FLIPPERS,
            DIALOG_INVENTORY,
            DIALOG_CHECK_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN_MINISH2, 0x08), TEXT_INDEX(TEXT_TOWN_MINISH2, 0x02) } },
          { ITEM_FLIPPERS,
            DIALOG_INVENTORY,
            DIALOG_CHECK_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN_MINISH2, 0x08), TEXT_INDEX(TEXT_TOWN_MINISH2, 0x02) } },
          { ITEM_FLIPPERS,
            DIALOG_INVENTORY,
            DIALOG_CHECK_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN_MINISH2, 0x08), TEXT_INDEX(TEXT_TOWN_MINISH2, 0x02) } } },
        { { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_HAGEN, 0x5) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_HAGEN, 0x5) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_HAGEN, 0x5) } },
          { ITEM_FLIPPERS,
            DIALOG_INVENTORY,
            DIALOG_CHECK_FLAG,
            1,
            { TEXT_INDEX(TEXT_HAGEN, 0xa), TEXT_INDEX(TEXT_HAGEN, 0x5) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_HAGEN, 0x5) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_HAGEN, 0x5) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_HAGEN, 0x5) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_HAGEN, 0x5) } } },
        { { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_HAGEN, 0x6) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_HAGEN, 0x6) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_HAGEN, 0x6) } },
          { ITEM_FLIPPERS,
            DIALOG_INVENTORY,
            DIALOG_CHECK_FLAG,
            1,
            { TEXT_INDEX(TEXT_HAGEN, 0xb), TEXT_INDEX(TEXT_HAGEN, 0x6) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_HAGEN, 0x6) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_HAGEN, 0x6) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_HAGEN, 0x6) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_HAGEN, 0x6) } } },
        { { 0x0, 0x0, DIALOG_CALL_FUNC, 0, { .func = (EntityActionPtr)sub_0806B098 } },
          { 0x0, 0x0, DIALOG_CALL_FUNC, 0, { .func = (EntityActionPtr)sub_0806B098 } },
          { 0x0, 0x0, DIALOG_CALL_FUNC, 0, { .func = (EntityActionPtr)sub_0806B098 } },
          { 0x0, 0x0, DIALOG_CALL_FUNC, 0, { .func = (EntityActionPtr)sub_0806B098 } },
          { 0x0, 0x0, DIALOG_CALL_FUNC, 0, { .func = (EntityActionPtr)sub_0806B098 } },
          { 0x0, 0x0, DIALOG_CALL_FUNC, 0, { .func = (EntityActionPtr)sub_0806B098 } },
          { 0x0, 0x0, DIALOG_CALL_FUNC, 0, { .func = (EntityActionPtr)sub_0806B098 } },
          { 0x0, 0x0, DIALOG_CALL_FUNC, 0, { .func = (EntityActionPtr)sub_0806B098 } } },
        { { 0x0, 0x0, DIALOG_CALL_FUNC, 0, { .func = (EntityActionPtr)sub_0806B098 } },
          { 0x0, 0x0, DIALOG_CALL_FUNC, 0, { .func = (EntityActionPtr)sub_0806B098 } },
          { 0x0, 0x0, DIALOG_CALL_FUNC, 0, { .func = (EntityActionPtr)sub_0806B098 } },
          { 0x0, 0x0, DIALOG_CALL_FUNC, 0, { .func = (EntityActionPtr)sub_0806B098 } },
          { 0x0, 0x0, DIALOG_CALL_FUNC, 0, { .func = (EntityActionPtr)sub_0806B098 } },
          { 0x0, 0x0, DIALOG_CALL_FUNC, 0, { .func = (EntityActionPtr)sub_0806B098 } },
          { 0x0, 0x0, DIALOG_CALL_FUNC, 0, { .func = (EntityActionPtr)sub_0806B098 } },
          { 0x0, 0x0, DIALOG_CALL_FUNC, 0, { .func = (EntityActionPtr)sub_0806B098 } } },
        { { 0x0, 0x0, DIALOG_CALL_FUNC, 0, { .func = (EntityActionPtr)sub_0806B0E0 } },
          { 0x0, 0x0, DIALOG_CALL_FUNC, 0, { .func = (EntityActionPtr)sub_0806B0E0 } },
          { 0x0, 0x0, DIALOG_CALL_FUNC, 0, { .func = (EntityActionPtr)sub_0806B0E0 } },
          { 0x0, 0x0, DIALOG_CALL_FUNC, 0, { .func = (EntityActionPtr)sub_0806B0E0 } },
          { 0x0, 0x0, DIALOG_CALL_FUNC, 0, { .func = (EntityActionPtr)sub_0806B0E0 } },
          { 0x0, 0x0, DIALOG_CALL_FUNC, 0, { .func = (EntityActionPtr)sub_0806B0E0 } },
          { 0x0, 0x0, DIALOG_CALL_FUNC, 0, { .func = (EntityActionPtr)sub_0806B0E0 } },
          { 0x0, 0x0, DIALOG_CALL_FUNC, 0, { .func = (EntityActionPtr)sub_0806B0E0 } } },
        { { 0x0, 0x0, DIALOG_CALL_FUNC, 0, { .func = (EntityActionPtr)sub_0806B134 } },
          { 0x0, 0x0, DIALOG_CALL_FUNC, 0, { .func = (EntityActionPtr)sub_0806B134 } },
          { 0x0, 0x0, DIALOG_CALL_FUNC, 0, { .func = (EntityActionPtr)sub_0806B134 } },
          { 0x0, 0x0, DIALOG_CALL_FUNC, 0, { .func = (EntityActionPtr)sub_0806B134 } },
          { 0x0, 0x0, DIALOG_CALL_FUNC, 0, { .func = (EntityActionPtr)sub_0806B134 } },
          { 0x0, 0x0, DIALOG_CALL_FUNC, 0, { .func = (EntityActionPtr)sub_0806B134 } },
          { 0x0, 0x0, DIALOG_CALL_FUNC, 0, { .func = (EntityActionPtr)sub_0806B134 } },
          { 0x0, 0x0, DIALOG_CALL_FUNC, 0, { .func = (EntityActionPtr)sub_0806B134 } } },
        { { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN8, 0x2f) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN8, 0x2f) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN8, 0x2f) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN8, 0x2f) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN8, 0x30) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN8, 0x31) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN8, 0x32) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN8, 0x33) } } },
        { { 0x0,
            DIALOG_ROOM_FLAG,
            DIALOG_TOGGLE_FLAG,
            1,
            { TEXT_INDEX(TEXT_CAFE, 0x15), TEXT_INDEX(TEXT_CAFE, 0x14) } },
          { 0x0,
            DIALOG_ROOM_FLAG,
            DIALOG_TOGGLE_FLAG,
            1,
            { TEXT_INDEX(TEXT_CAFE, 0x15), TEXT_INDEX(TEXT_CAFE, 0x14) } },
          { 0x0,
            DIALOG_ROOM_FLAG,
            DIALOG_TOGGLE_FLAG,
            1,
            { TEXT_INDEX(TEXT_CAFE, 0x15), TEXT_INDEX(TEXT_CAFE, 0x14) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_CAFE, 0x22) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_CAFE, 0x2e) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_CAFE, 0x3a) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_CAFE, 0x3a) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_CAFE, 0x3a) } } },
        { { 0x1,
            DIALOG_ROOM_FLAG,
            DIALOG_TOGGLE_FLAG,
            1,
            { TEXT_INDEX(TEXT_CAFE, 0x17), TEXT_INDEX(TEXT_CAFE, 0x16) } },
          { 0x1,
            DIALOG_ROOM_FLAG,
            DIALOG_TOGGLE_FLAG,
            1,
            { TEXT_INDEX(TEXT_CAFE, 0x17), TEXT_INDEX(TEXT_CAFE, 0x16) } },
          { 0x1,
            DIALOG_ROOM_FLAG,
            DIALOG_TOGGLE_FLAG,
            1,
            { TEXT_INDEX(TEXT_CAFE, 0x17), TEXT_INDEX(TEXT_CAFE, 0x16) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_CAFE, 0x23) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_CAFE, 0x2f) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_CAFE, 0x3b) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_CAFE, 0x3b) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_CAFE, 0x3b) } } },
        { { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN_MINISH2, 0xd) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN_MINISH2, 0xd) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN_MINISH2, 0xd) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN_MINISH2, 0xd) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN_MINISH2, 0x11) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN_MINISH2, 0x11) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN_MINISH2, 0x15) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN_MINISH2, 0x15) } } },
        { { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN_MINISH2, 0xe) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN_MINISH2, 0xe) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN_MINISH2, 0xe) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN_MINISH2, 0xe) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN_MINISH2, 0x12) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN_MINISH2, 0x12) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN_MINISH2, 0x16) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN_MINISH2, 0x16) } } },
        { { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN_MINISH2, 0xf) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN_MINISH2, 0xf) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN_MINISH2, 0xf) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN_MINISH2, 0xf) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN_MINISH2, 0x13) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN_MINISH2, 0x13) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN_MINISH2, 0x17) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN_MINISH2, 0x17) } } },
        { { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN_MINISH2, 0x10) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN_MINISH2, 0x10) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN_MINISH2, 0x10) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN_MINISH2, 0x10) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN_MINISH2, 0x14) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN_MINISH2, 0x14) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN_MINISH2, 0x18) } },
          { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, TEXT_INDEX(TEXT_TOWN_MINISH2, 0x18) } } },
        { { 0x0,
            DIALOG_ROOM_FLAG,
            DIALOG_TOGGLE_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN8, 0x26), TEXT_INDEX(TEXT_TOWN8, 0x25) } },
          { 0x0,
            DIALOG_ROOM_FLAG,
            DIALOG_TOGGLE_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN8, 0x26), TEXT_INDEX(TEXT_TOWN8, 0x25) } },
          { 0x0,
            DIALOG_ROOM_FLAG,
            DIALOG_TOGGLE_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN8, 0x26), TEXT_INDEX(TEXT_TOWN8, 0x25) } },
          { 0x0,
            DIALOG_ROOM_FLAG,
            DIALOG_TOGGLE_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN8, 0x26), TEXT_INDEX(TEXT_TOWN8, 0x25) } },
          { 0x0,
            DIALOG_ROOM_FLAG,
            DIALOG_TOGGLE_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN8, 0x26), TEXT_INDEX(TEXT_TOWN8, 0x25) } },
          { 0x0,
            DIALOG_ROOM_FLAG,
            DIALOG_TOGGLE_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN8, 0x26), TEXT_INDEX(TEXT_TOWN8, 0x25) } },
          { 0x0,
            DIALOG_ROOM_FLAG,
            DIALOG_TOGGLE_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN8, 0x26), TEXT_INDEX(TEXT_TOWN8, 0x25) } },
          { 0x0,
            DIALOG_ROOM_FLAG,
            DIALOG_TOGGLE_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN8, 0x26), TEXT_INDEX(TEXT_TOWN8, 0x25) } } },
        { { 0x9c,
            DIALOG_LOCAL_FLAG,
            DIALOG_SET_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN8, 0x28), TEXT_INDEX(TEXT_TOWN8, 0x27) } },
          { 0x9c,
            DIALOG_LOCAL_FLAG,
            DIALOG_SET_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN8, 0x28), TEXT_INDEX(TEXT_TOWN8, 0x27) } },
          { 0x9c,
            DIALOG_LOCAL_FLAG,
            DIALOG_SET_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN8, 0x28), TEXT_INDEX(TEXT_TOWN8, 0x27) } },
          { 0x9c,
            DIALOG_LOCAL_FLAG,
            DIALOG_SET_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN8, 0x28), TEXT_INDEX(TEXT_TOWN8, 0x27) } },
          { 0x9c,
            DIALOG_LOCAL_FLAG,
            DIALOG_SET_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN8, 0x28), TEXT_INDEX(TEXT_TOWN8, 0x27) } },
          { 0x9c,
            DIALOG_LOCAL_FLAG,
            DIALOG_SET_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN8, 0x28), TEXT_INDEX(TEXT_TOWN8, 0x27) } },
          { 0x9c,
            DIALOG_LOCAL_FLAG,
            DIALOG_SET_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN8, 0x28), TEXT_INDEX(TEXT_TOWN8, 0x27) } },
          { 0x9c,
            DIALOG_LOCAL_FLAG,
            DIALOG_SET_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN8, 0x28), TEXT_INDEX(TEXT_TOWN8, 0x27) } } }
    };
    int idx = gSave.global_progress - 2;
    if (idx < 0)
        idx = 0;

    ShowNPCDialogue(this, &dialogs[this->type2][idx]);
}

void sub_0806AFE8(Entity* this, ScriptExecutionContext* context) {
    static void (*const typeFuncs[])(Entity*, ScriptExecutionContext*) = {
        sub_0806B004, sub_0806B064, sub_0806AFBC, sub_0806AFBC, sub_0806AFBC, sub_0806AFBC, sub_0806AFBC,
        sub_0806B098, sub_0806B098, sub_0806B0E0, sub_0806B134, sub_0806AFBC, sub_0806AFBC, sub_0806AFBC,
        sub_0806AFBC, sub_0806AFBC, sub_0806AFBC, sub_0806AFBC, sub_0806AFBC, sub_0806AFBC,
    };
    context->condition = 0;
    typeFuncs[this->type2](this, context);
}

void sub_0806B004(Entity* this, ScriptExecutionContext* context) {
    static const u16 messageIndices[5] = { TEXT_INDEX(TEXT_TOWN_MINISH1, 0x11), TEXT_INDEX(TEXT_TOWN_MINISH1, 0x01),
                                           TEXT_INDEX(TEXT_TOWN_MINISH1, 0x03), TEXT_INDEX(TEXT_TOWN_MINISH1, 0x05),
                                           TEXT_INDEX(TEXT_TOWN_MINISH1, 0x13) };
    int idx = 0;

    if (CheckGlobalFlag(MIZUKAKI_START)) {
        if (CheckLocalFlag(MIZUKAKI_BOOK_ALLBACK)) {
            if (GetInventoryValue(ITEM_FLIPPERS) == 0) {
                idx = 3;
                if (CheckLocalFlag(KHOUSE51_00) == 0) {
                    idx = 2;
                    context->condition = 1;
                    SetLocalFlag(KHOUSE51_00);
                }
            } else {
                idx = 4;
            }
        } else {
            idx = 1;
            SetLocalFlag(MIZUKAKI_KOBITO);
        }
    }
    MessageNoOverlap(messageIndices[idx], this);
}

void sub_0806B064(Entity* this, ScriptExecutionContext* context) {
    static const u16 messageIndices[3] = {
        TEXT_INDEX(TEXT_TOWN_MINISH1, 0x9),
        TEXT_INDEX(TEXT_TOWN_MINISH1, 0xb),
        TEXT_INDEX(TEXT_TOWN_MINISH1, 0xc),
    };
    int idx = 0;

    if (CheckGlobalFlag(MIZUKAKI_START)) {
        idx = 1;
        if (CheckLocalFlag(0x73)) {
            idx = 2;
        }
    }
    MessageNoOverlap(messageIndices[idx], this);
}

void sub_0806B098(Entity* this, ScriptExecutionContext* context) {
    static const u16 messageIndices[][3] = {
        { TEXT_INDEX(TEXT_TOWN_MINISH2, 0x1f), TEXT_INDEX(TEXT_TOWN_MINISH2, 0x20),
          TEXT_INDEX(TEXT_TOWN_MINISH2, 0x21) },
        { TEXT_INDEX(TEXT_TOWN_MINISH2, 0x22), TEXT_INDEX(TEXT_TOWN_MINISH2, 0x23),
          TEXT_INDEX(TEXT_TOWN_MINISH2, 0x24) },
    };
    int idx = 2;

    if (GetInventoryValue(ITEM_FLIPPERS) == 0) {
        idx = 1;
        if (CheckGlobalFlag(MIZUKAKI_START)) {
            if (!CheckGlobalFlag(MIZUKAKI_HARIFALL)) {
                idx = 0;
            }
        }
    }
    MessageNoOverlap(messageIndices[this->type2 - 7][idx], this);
}

void sub_0806B0E0(Entity* this, ScriptExecutionContext* context) {
    static const u16 gUnk_08112C5C[2] = { TEXT_INDEX(TEXT_TOWN_MINISH2, 0x25), TEXT_INDEX(TEXT_TOWN_MINISH2, 0x26) };
    int idx = 0;

    // Checks if the dust is gone at these four tiles.
    if (GetActTileAtRoomCoords(56, 184, 1) == ACT_TILE_87 && GetActTileAtRoomCoords(72, 184, 1) == ACT_TILE_87 &&
        GetActTileAtRoomCoords(56, 200, 1) == ACT_TILE_87 && GetActTileAtRoomCoords(72, 200, 1) == ACT_TILE_87) {
        idx = 1;
    }

    MessageNoOverlap(gUnk_08112C5C[idx], this);
}

void sub_0806B134(Entity* this, ScriptExecutionContext* context) {
    static const u16 gUnk_08112C60[4] = { TEXT_INDEX(TEXT_DR_LEFT, 0xb), TEXT_INDEX(TEXT_DR_LEFT, 0xc),
                                          TEXT_INDEX(TEXT_DR_LEFT, 0xd), TEXT_INDEX(TEXT_DR_LEFT, 0xe) };
    int idx;

    if (GetInventoryValue(ITEM_POWER_BRACELETS)) {
        idx = 2;
        if (CheckLocalFlag(KHOUSE42_00) == 0) {
            idx = 1;
            SetLocalFlag(KHOUSE42_00);
        }
    } else {
        idx = 0;
        SetGlobalFlag(POWERGLOVE_HINT);
    }
    if (5 < gSave.global_progress) {
        idx = 3;
    }
    MessageNoOverlap(gUnk_08112C60[idx], this);
}

void TownMinish_Fusion(Entity* this) {
    if (this->action == 0) {
        if (LoadExtraSpriteData(this, gUnk_08112674[this->type])) {
            this->action++;
            this->spriteSettings.draw = 1;
            InitializeAnimation(this, 6);
        }
    } else {
        GetNextFrame(this);
    }
}
