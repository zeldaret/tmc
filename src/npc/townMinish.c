#include "global.h"
#include "entity.h"
#include "npc.h"
#include "functions.h"
#include "item.h"

extern u32 sub_080B1AC8(u32, u32, u32);
void sub_0806ACC4(Entity*);
void sub_0806ABFC(Entity*);
void sub_0806AC3C(Entity*);
void sub_0806AEA8(Entity*);
void sub_0806AEE4(Entity*);
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

void TownMinish(Entity* this) {
    static void (*const scriptedActionFuncs[])(Entity*) = {
        sub_0806ABFC,
        sub_0806AC3C,
    };
    if ((this->flags & ENT_SCRIPTED) == 0) {
        scriptedActionFuncs[this->action](this);
        sub_0806ED78(this);
    } else {
        sub_0806ACC4(this);
    }
}

void sub_0806ABFC(Entity* this) {
    const SpriteLoadData* SpriteLoadData = gUnk_08112674[this->type];
    if (!LoadExtraSpriteData(this, SpriteLoadData)) {
        return;
    }

    InitializeAnimation(this, 2);
    this->action = 1;
    this->field_0x6a.HALF.LO = this->timer;

    this->animationState = this->field_0x6a.HALF.LO << 1;
    this->field_0x68.HALF.HI = this->animationState * 4;

    this->timer = 0;
}

void sub_0806AC3C(Entity* this) {
    if (this->animIndex <= 3) {
        s32 unk;
        Entity* link = &gPlayerEntity;
        if (EntityInRectRadius(this, link, 0x18, 0x18)) {
            unk = GetFacingDirection(this, link) & 0x1e;
        } else {
            unk = this->animationState * 4;
        }

        if (unk != this->field_0x68.HALF.HI) {
            if (((unk - this->field_0x68.HALF.HI) & 0x1f) <= 0xf) {
                this->field_0x68.HALF.HI--;
            } else {
                this->field_0x68.HALF.HI++;
            }

            this->field_0x68.HALF.HI &= 0x1f;
        }

        if (!(this->field_0x68.HALF.HI & 7)) {
            this->animationState = sub_0806F5B0(this->field_0x68.HALF.HI);
            InitializeAnimation(this, AnimationStateFlip90(this->animationState / 2));
        }
    }

    UpdateAnimationSingleFrame(this);
}

void sub_0806ACC4(Entity* this) {
    u8 delay;
    switch (this->action) {
        case 0:
            if (!LoadExtraSpriteData(this, gUnk_08112674[this->type]))
                return;

            this->action = 1;
            delay = this->timer;
            this->field_0x6a.HALF.LO = delay;
            this->animationState = delay * 2;
            this->timer = 0;

            this->field_0x68.HALF.LO = GetFusionToOffer(this);
            sub_0807DD50(this);
            InitializeAnimation(this, (this->animationState / 2) + 8);
            break;
        case 1:
            if (this->interactType == 2) {
                this->action = 3;
                this->interactType = 0;
                sub_0806F118(this);
            } else {
                ExecuteScriptForEntity(this, NULL);
                sub_0806AEA8(this);
                if (this->type2 == 10 && this->interactType) {
                    this->action = 2;
                    this->interactType = 0;
                    InitializeAnimation(this, sub_0806F5A4(GetFacingDirection(this, &gPlayerEntity)) + 8);
                    sub_0806AFE8(this, *(ScriptExecutionContext**)&this->cutsceneBeh);
                }
                if (this->type == 1) {
                    u8 idx = gPlayerEntity.animationState >> 1;
                    SetInteractableObjectCollision(this, 1, gUnk_081126E4[idx], &gUnk_081126D4[idx]);
                }
            }
            break;
        case 2:
            if (gMessage.doTextBox & 0x7f)
                break;

            this->action = 1;
            InitializeAnimation(this, this->animationState / 2 + 4);
            break;
        case 3:
            if (UpdateFuseInteraction(this))
                this->action = 1;
            break;
    }

    if (this->frameDuration != 0xff) {
        GetNextFrame(this);
    }
}

void TownMinish_MakeInteractable(Entity* this) {
    AddInteractableWhenBigFuser(this, this->field_0x68.HALF.LO);
}

void TownMinish_Head(Entity* this) {
    u32 frames;

    if ((this->flags & ENT_SCRIPTED) == 0) {
        frames = this->field_0x68.HALF.HI / 2;
        if ((this->frameSpriteSettings & 1)) {
            SetExtraSpriteFrame(this, 0, frames + 0x1c);
        } else {
            SetExtraSpriteFrame(this, 0, 0xff);
        }
        SetExtraSpriteFrame(this, 1, this->frameIndex);
        SetSpriteSubEntryOffsetData1(this, 1, 0);
        sub_0807000C(this);
    } else {
        frames = this->frame;
        if (frames != 0xff) {
            frames &= ~0x80;
        }
        if ((this->frameSpriteSettings & 1) == 0) {
            frames = 0xff;
        }
        SetExtraSpriteFrame(this, 0, frames);
        SetExtraSpriteFrame(this, 1, this->frameIndex);
        SetSpriteSubEntryOffsetData1(this, 1, 0);
        sub_0807000C(this);
    }
}

void sub_0806AEA8(Entity* this) {
    int old = this->field_0x82.HWORD;
    this->field_0x82.HWORD &= ~0x20;
    if (old & 0x20) {
        GravityUpdate(this, Q_8_8(64.0));
    }
    HandleEntity0x82Actions(this);
    this->field_0x82.HWORD = old;
}

void sub_0806AED8(Entity* this) {
    this->timer = 0;
    sub_0806AEE4(this);
}

void sub_0806AEE4(Entity* this) {
    int index;
    const u8* idx3;
    u8 tmp1, tmp2;

    if (this->timer) {
        this->timer--;
    } else {
        this->timer = 2;
        index = GetFacingDirectionInRectRadius(this, 0x20, 0x20);
        if (index < 0) {
            int state = this->field_0x6a.HALF.LO;
            this->animationState = state * 2;
            index = state * 8;
        }

        idx3 = gUnk_081125F4[this->animationState / 2][index >> 1];
        tmp1 = idx3[0];
        tmp2 = idx3[1];

        if (tmp2 & 0x80) {
            this->animationState = sub_0806F5B0(index);
        }
        tmp2 &= ~0x80;
        this->frame = tmp1;
        this->frameIndex = tmp2;
        this->frameSpriteSettings = 1;
        this->animIndex = 0;
        this->frameDuration = 0xff;
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

    if (sub_080B1AC8(0x38, 0xb8, 1) == 0x57 && sub_080B1AC8(0x48, 0xb8, 1) == 0x57 &&
        sub_080B1AC8(0x38, 200, 1) == 0x57 && sub_080B1AC8(0x48, 200, 1) == 0x57) {
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
