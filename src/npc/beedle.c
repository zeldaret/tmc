/**
 * @file beedle.c
 * @ingroup NPCs
 *
 * @brief Beedle NPC
 */
#include "entity.h"
#include "functions.h"
#include "game.h"
#include "item.h"
#include "message.h"
#include "npc.h"
#include "room.h"
#include "script.h"

typedef struct {
    Rect customHitbox;
    s8 interactDirections;
    u8 unused[3];
} InteractCollisionData;

void Beedle_Init(Entity* this);
void Beedle_Action1(Entity* this);
void Beedle_Action2(Entity* this);
void Beedle_Action3(Entity* this);

static const u8 gBeedleItems[] = {
    ITEM_NONE,
    ITEM_BOTTLE_PICOLYTE_BLUE,
    ITEM_BOTTLE_PICOLYTE_GREEN,
    ITEM_BOTTLE_PICOLYTE_RED,
    ITEM_BOTTLE_PICOLYTE_ORANGE,
    ITEM_BOTTLE_PICOLYTE_YELLOW,
    ITEM_BOTTLE_PICOLYTE_WHITE,
    0,
};
static const Hitbox gUnk_0810C894 = { 0, 0, { 0, 0, 0, 0 }, 16, 6 };
static const InteractCollisionData gBeedleCollisionData[] = {
    { 0, 0, 6, 6, 0, 0, 0, 0 },    { -24, 0, 6, 6, 0, 0, 0, 0 }, { -24, 16, 6, 6, 0, 0, 0, 0 },
    { -24, 32, 6, 6, 0, 0, 0, 0 }, { 24, 0, 6, 6, 0, 0, 0, 0 },  { 24, 16, 6, 6, 0, 0, 0, 0 },
    { 24, 32, 6, 6, 0, 0, 0, 0 },
};
static const SpriteLoadData gUnk_0810C8D4[] = {
    { 0x3e, 0x31, 0x4 },
    { 0x203e, 0x31, 0x4 },
    { 0, 0, 0 },
};

void Beedle_Update(Entity* this);
void sub_08063410(Entity* this);
s32 Beedle_GetAnimIndexFacingPlayer(Entity* this);
void sub_0806346C(Entity* this);

void Beedle(Entity* this) {
    if (this->flags & ENT_SCRIPTED) {
        sub_08063410(this);
    } else {
        Beedle_Update(this);
    }
}

void Beedle_Update(Entity* this) {
    static void (*const beedleActions[])(Entity*) = {
        Beedle_Init,
        Beedle_Action1,
        Beedle_Action2,
        Beedle_Action3,
    };
    beedleActions[this->action](this);
}

void Beedle_Init(Entity* this) {
    if (LoadExtraSpriteData(this, gUnk_0810C8D4)) {
        InitializeAnimation(this, 0);
        AddInteractableWhenBigObject(this);
        this->spriteSettings.draw = 1;
        this->action = 1;
    }
}

void Beedle_Action1(Entity* this) {
    u32 animIndex;

    if (((++this->subtimer & 0xF) == 0) &&
        (animIndex = Beedle_GetAnimIndexFacingPlayer(this), this->animIndex != animIndex)) {
        InitializeAnimation(this, animIndex);
    }
    if (this->interactType != INTERACTION_NONE) {
        MessageFromTarget(this->timer + TEXT_INDEX(TEXT_EMPTY, 0x01));
        this->action++;
    }
    sub_0806ED78(this);
}

void Beedle_Action2(Entity* this) {
    if ((gMessage.state & MESSAGE_ACTIVE) == 0) {
        this->action++;
        InitializeAnimation(this, 8);
    }
}

void Beedle_Action3(Entity* this) {
    GetNextFrame(this);
    if (this->frame & ANIM_DONE) {
        this->action = 1;
        InitializeAnimation(this, GetAnimationState(this));
        AddInteractableWhenBigObject(this);
    }
    sub_0806ED78(this);
}

// If the player is inside a 32x32 rect, face the player. Otherwise keep facing the same direction.
s32 Beedle_GetAnimIndexFacingPlayer(Entity* this) {
    s32 animationState = GetAnimationStateInRectRadius(this, 32, 32);
    if (animationState < 0) {
        animationState = this->animIndex;
    }
    return animationState;
}

void Beedle_Head(Entity* this) {
    SetExtraSpriteFrame(this, 0, this->frame & 0x3F);
    SetExtraSpriteFrame(this, 1, this->frameIndex);
    SetSpriteSubEntryOffsetData1(this, 1, 0);
    sub_0807000C(this);
}

void sub_08063410(Entity* this) {
    if (this->action == 0) {
        if (!LoadExtraSpriteData(this, gUnk_0810C8D4)) {
            return;
        }
        this->action++;
        if (this->type != 0) {
            this->hitbox = (Hitbox*)&gUnk_0810C894;
            this->type2 = 0;
        }
        sub_0807DD64(this);
        AddInteractableWhenBigObject(this);
    }
    if (this->type != 0) {
        sub_0806346C(this);
    }
    ExecuteScriptForEntity(this, NULL);
    HandleEntity0x82Actions(this);
    GetNextFrame(this);
}

// figures out with which of the 7 objects the player interacts with
// based on the player's position and facing direction
void sub_0806346C(Entity* this) {
    static const u8 gUnk_0810C8F0[5][6][4] = {
        {
            { 1, 1, 1, 1 },
            { 1, 1, 1, 1 },
            { 0, 0, 0, 0 },
            { 0, 0, 0, 0 },
            { 4, 4, 4, 4 },
            { 4, 4, 4, 4 },
        },
        {
            { 1, 1, 1, 1 },
            { 0, 0, 0, 0 },
            { 0, 0, 0, 0 },
            { 0, 0, 0, 0 },
            { 0, 0, 0, 0 },
            { 4, 4, 4, 4 },
        },
        {
            { 2, 2, 2, 2 },
            { 0, 0, 0, 0 },
            { 0, 0, 0, 2 },
            { 0, 5, 0, 0 },
            { 0, 0, 0, 0 },
            { 5, 5, 5, 5 },
        },
        {
            { 3, 3, 3, 3 },
            { 0, 0, 0, 0 },
            { 0, 0, 0, 3 },
            { 0, 6, 0, 0 },
            { 0, 0, 0, 0 },
            { 6, 6, 6, 6 },
        },
        {
            { 3, 3, 3, 3 },
            { 3, 3, 3, 3 },
            { 3, 3, 3, 3 },
            { 6, 6, 6, 6 },
            { 6, 6, 6, 6 },
            { 6, 6, 6, 6 },
        },
    };
    u8 bVar1;
    s32 iVar2;
    s32 iVar3;

    iVar3 = (gPlayerEntity.base.x.HALF.HI - this->x.HALF.HI);
    iVar2 = (gPlayerEntity.base.y.HALF.HI - this->y.HALF.HI);

    iVar3 += 0x30;
    iVar2 += 0x18;
    if (iVar3 < 0) {
        iVar3 = 0;
    }
    if (iVar3 > 0x50) {
        iVar3 = 0x50;
    }
    if (iVar2 < 0) {
        iVar2 = 0;
    }
    if (iVar2 > 0x40) {
        iVar2 = 0x40;
    }

    iVar3 >>= 4;
    iVar2 >>= 4;

    bVar1 = gUnk_0810C8F0[iVar2][iVar3][gPlayerEntity.base.animationState >> 1];
    if (bVar1 != this->type2) {
        const InteractCollisionData* data = &gBeedleCollisionData[bVar1];
        SetInteractableObjectCollision(this, 1, data->interactDirections, data);
        this->type2 = bVar1;
    }
}

void Beedle_GetObjectType(Entity* this, ScriptExecutionContext* context) {
    context->intVariable = this->type2;
}

void Beedle_ConfirmBuyItem(Entity* this) {
    gRoomVars.shopItemType = gBeedleItems[this->type2];
}

void Beedle_IsBottleInInventory(Entity* this, ScriptExecutionContext* context) {
    context->condition = !!GetBottleContaining(gBeedleItems[this->type2]);
}
