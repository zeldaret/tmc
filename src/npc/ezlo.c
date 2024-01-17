/**
 * @file ezlo.c
 * @ingroup NPCs
 *
 * @brief Ezlo NPC
 */
#include "npc.h"

const u8 gUnk_08114134[];
const u8 gUnk_08114144[];

// Ezlo as a cap in the Minish Woods, is destroyed as soon as link wears ezlo
void Ezlo(Entity* this) {
    if (this->action == 0) {
        this->action++;
        SetEntityPriority(this, PRIO_MESSAGE);
        InitScriptForNPC(this);
    }
    ExecuteScriptForEntity(this, NULL);
    HandleEntity0x82Actions(this);
    UpdateAnimationSingleFrame(this);
}

void sub_0806D8A0(Entity* this, ScriptExecutionContext* context) {
    s32 xOffset;
    s32 yOffset;

    context->unk_19 = 8;
    context->postScriptActions |= 2;
    context->condition = 0;
    xOffset = 16;
    if (this->spriteSettings.flipX) {
        xOffset = -xOffset;
    }
    xOffset += gPlayerEntity.base.x.HALF.HI;
    yOffset = gPlayerEntity.base.y.HALF.HI + 2;
    context->x.HALF.HI = xOffset;
    context->y.HALF.HI = yOffset;

    xOffset -= this->x.HALF.HI;
    this->direction = CalculateDirectionFromOffsets(xOffset, yOffset - this->y.HALF.HI);
    this->animationState = (this->animationState & 0x80) | gUnk_08114134[this->direction >> 4];
}

void sub_0806D908(Entity* this) {
    this->direction = CalculateDirectionTo(this->x.HALF.HI, this->y.HALF.HI, gPlayerEntity.base.x.HALF.HI,
                                           gPlayerEntity.base.y.HALF.HI);
    this->animationState = (this->animationState & 0x80) | gUnk_08114144[this->direction >> 0x1];
}

// called when talk to ezlo, also when ezlo moves after you
void sub_0806D944(Entity* this) {
    this->spriteSettings.flipX = 0;
    if (this->x.WORD <= gPlayerEntity.base.x.WORD) {
        this->spriteSettings.flipX = 1;
    }
}

// Ezlo Angry FX
void sub_0806D96C(Entity* this) {
    Entity* fx = CreateFx(this, FX_STEAM_EFC, 0);
    if (fx != NULL) {
        fx->spritePriority.b0 = 1;
        PositionRelative(this, fx, 0, Q_16_16(-24.0));
    }
}

void sub_0806D9A4(Entity* this) {
    if (this->x.WORD <= gPlayerEntity.base.x.WORD) {
        gPlayerEntity.base.spriteSettings.flipX = 0;
    } else {
        gPlayerEntity.base.spriteSettings.flipX = 1;
    }
    gPlayerEntity.base.animationState = 4;
}

// animation states
const u8 gUnk_08114134[] = { 0x00, 0x01, 0x01, 0x02, 0x02, 0x03, 0x03, 0x04,
                             0x04, 0x05, 0x05, 0x06, 0x06, 0x07, 0x07, 0x00 };

// animation states
const u8 gUnk_08114144[] = { 0x00, 0x01, 0x01, 0x02, 0x02, 0x03, 0x03, 0x04,
                             0x04, 0x05, 0x05, 0x06, 0x06, 0x07, 0x07, 0x00 };
