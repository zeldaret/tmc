/**
 * @file minishEzlo.c
 * @ingroup NPCs
 *
 * @brief Minish Ezlo NPC
 */
#include "entity.h"
#include "npc.h"
#include "script.h"
#include "sound.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u32 filler;
    /*0x6c*/ union SplitWord field_0x6c;
    /*0x70*/ u32 field_0x70;
    /*0x74*/ u8 filler2[0xC];
    /*0x80*/ s16 field_0x80;
} MinishEzloEntity;

extern void sub_0806FF10(Entity* this, u32 param_2, u32 param_3);

void MinishEzlo(Entity* this) {
    static const SpriteLoadData gUnk_0810C48C[] = {
        { 0x411c, 0x25, 0x4 },
        { 0x11c, 0x25, 0x4 },
        { 0x0, 0x0, 0x0 },
    };
    if (this->action == 0) {
        if (!LoadExtraSpriteData(this, gUnk_0810C48C)) {
            return;
        }
        this->action++;
        this->animationState = this->timer * 2;
        SetEntityPriority(this, PRIO_MESSAGE);
        InitScriptForNPC(this);
    }
    ExecuteScriptForEntity(this, NULL);
    HandleEntity0x82Actions(this);
    GetNextFrame(this);
    if ((this->frameSpriteSettings & 0x10) != 0) {
        this->frameSpriteSettings &= 0xef;
        EnqueueSFX(SFX_ELEMENT_CHARGE);
    }
    if ((this->frameSpriteSettings & 0x20) != 0) {
        this->frameSpriteSettings &= 0xdf;
        EnqueueSFX(SFX_PICOLYTE);
    }
}

void MinishEzlo_Head(Entity* this) {
    u32 uVar1;
    u32 uVar2;
    u32 uVar3;
    if ((this->frameSpriteSettings & 4) != 0) {
        uVar2 = 1;
        uVar1 = 0;
    } else {
        uVar2 = 0;
        uVar1 = 1;
    }

    if ((this->frameSpriteSettings & 8) != 0) {
        uVar3 = 0x16;
    } else {
        uVar3 = 0x11c;
    }
    SetExtraSpriteFrame(this, uVar2, (this->frame & ~ANIM_DONE) - 1);
    SetExtraSpriteFrame(this, uVar1, this->frameIndex);
    sub_0806FF10(this, uVar1, uVar3);
    SetSpriteSubEntryOffsetData1(this, uVar1, uVar2);
    sub_0807000C(this);
}

void sub_0806305C(MinishEzloEntity* this) {
    super->spritePriority.b1 = 0;
    super->spriteRendering.b0 = 3;
    this->field_0x6c.WORD_U = 0x100;
    this->field_0x70 = 0x100;
    SetAffineInfo(super, 0x100, 0x100, 0x0);
    InitAnimationForceUpdate(super, 0x10);
    this->field_0x80 = 0x10;
    SoundReq(SFX_PLY_SHRINKING);
}

void sub_080630A4(MinishEzloEntity* this) {
    static const u8 gUnk_0810C498[] = { 1, 1, 1, 1, 2, 4, 8, 16 };
    u32 uVar4;
    u32 uVar5;
    u32 uVar6;
    u32 uVar7;

    if (this->field_0x6c.BYTES.byte1 != 0) {
        uVar5 = ((this->field_0x6c.WORD_U + 0x80) * 0x100000) >> 0x17;
    } else {
        uVar5 = (0x10 / ((this->field_0x6c.BYTES.byte0 >> 6 ^ 3) + 1)) >> 1;
    }

    if (this->field_0x70 >= 0x101) {
        uVar4 = (this->field_0x70 + 0x80) * 0x100000 >> 0x17;
    } else {
        if (this->field_0x70 == 0x100) {
            uVar4 = 0x10;
        } else {
            uVar4 = gUnk_0810C498[this->field_0x70 >> 5];
        }
    }

    uVar6 = Q_16_16(1);
    switch (super->frameSpriteSettings & 3) {
        case 1:
            super->spritePriority.b1 = 0;
            if (0x80 < this->field_0x6c.WORD_U) {
                this->field_0x6c.WORD_U -= uVar5;
            }
            this->field_0x70 += uVar4 * 2;
            super->y.WORD += uVar6 * 2;
            break;
        case 2:
            this->field_0x6c.WORD_U += uVar5;
            uVar7 = this->field_0x70;
            if (uVar7 >= 0x101) {
                if (uVar7 < 0x180) {
                    uVar4 = uVar4 >> 1;
                }
                if (uVar7 - uVar4 < 0x100) {
                    this->field_0x70 = 0x100;
                } else {
                    this->field_0x70 = uVar7 - uVar4;
                }
            } else {
                if (0x80 < uVar7) {
                    this->field_0x70 = uVar7 - uVar4;
                }
            }
            super->z.WORD -= uVar6;
            break;
        case 3:
            if (this->field_0x6c.WORD_U < 0x340) {
                this->field_0x6c.WORD_U += uVar5;
            }
            if (0x33f < this->field_0x70) {
                SetAffineInfo(super, 0x100, 0x100, 0);
                InitAnimationForceUpdate(super, 0x11);
                this->field_0x80 = 0x11;
                gActiveScriptInfo.flags |= 1;
                return;
            }
            this->field_0x70 += uVar4 * 2;
            super->z.WORD -= uVar6 * 2;
            break;
    }

    SetAffineInfo(super, this->field_0x6c.WORD_U, this->field_0x70, 0);
    gActiveScriptInfo.commandSize = 0;
}
