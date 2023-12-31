/**
 * @file macroPlayer.c
 * @ingroup Objects
 *
 * @brief Macro Player object
 */
#include "area.h"
#include "entity.h"
#include "functions.h"
#include "object.h"
#include "physics.h"
#include "player.h"

typedef struct {
    Entity base;
    union SplitHWord unk68;
    u16 unk6a;
} MacroPlayerEntity;

void MacroPlayer_Type0(MacroPlayerEntity*);
void MacroPlayer_Type1(MacroPlayerEntity*);
void MacroPlayer_Type0_Init(MacroPlayerEntity*);
void MacroPlayer_Type0_Action1(MacroPlayerEntity*);
void MacroPlayer_Type0_Action2(MacroPlayerEntity*);
void MacroPlayer_Type0_Action3(MacroPlayerEntity*);
void MacroPlayer_Type0_Action4(MacroPlayerEntity*);
void MacroPlayer_Type0_Action5(MacroPlayerEntity*);
void MacroPlayer_Type0_Action6(MacroPlayerEntity*);
void MacroPlayer_Type0_Action7(MacroPlayerEntity*);
void MacroPlayer_Type0_Action8(MacroPlayerEntity*);
void MacroPlayer_Type0_Action9(MacroPlayerEntity*);
void MacroPlayer_Type0_Action10(MacroPlayerEntity*);
void sub_0808CB9C(MacroPlayerEntity*);

void MacroPlayer(Entity* this) {
    static void (*const MacroPlayer_Types[])(MacroPlayerEntity*) = {
        MacroPlayer_Type0,
        MacroPlayer_Type1,
    };
    MacroPlayer_Types[this->type]((MacroPlayerEntity*)this);
}

void MacroPlayer_Type0(MacroPlayerEntity* this) {
    static void (*const MacroPlayer_Type0_Actions[])(MacroPlayerEntity*) = {
        MacroPlayer_Type0_Init,    MacroPlayer_Type0_Action1, MacroPlayer_Type0_Action2,  MacroPlayer_Type0_Action3,
        MacroPlayer_Type0_Action4, MacroPlayer_Type0_Action5, MacroPlayer_Type0_Action6,  MacroPlayer_Type0_Action7,
        MacroPlayer_Type0_Action8, MacroPlayer_Type0_Action9, MacroPlayer_Type0_Action10,
    };
    MacroPlayer_Type0_Actions[super->action](this);
    sub_0808CB9C(this);
}

void MacroPlayer_Type1(MacroPlayerEntity* this) {
    Entity* pEVar1;

    if (super->action == 0) {
        super->action = 1;
        super->spriteSettings.draw = 3;
        super->spriteIndex = 0xa7;
        super->frameIndex = 13;
        super->spriteVramOffset = 1;
        super->palette.b.b0 = 5;
        super->spriteRendering.b3 = 0;
        super->spritePriority.b0 = 0;
        super->spriteOrientation.flipY = 2;
    }
    pEVar1 = super->parent;
    super->x = pEVar1->x;
    super->y = pEVar1->y;
    super->z.WORD = 0;
    SortEntityBelow(pEVar1, super);
    if (super->subAction != 0) {
        super->spriteVramOffset = 0;
        super->subAction = 0;
        super->frameIndex = 4;
    }
}

void sub_0808CB9C(MacroPlayerEntity* this) {
    u32 uVar1;
    u32 uVar2;
    u32 uVar3;
    u32 uVar4;
    u32 val;

    uVar2 = this->unk68.HWORD;
    uVar1 = this->unk68.HALF.LO;
    uVar4 = uVar2 >> 8;
    val = 0;
    uVar3 = super->animationState;
    val = uVar3 > 4;
    super->spriteSettings.flipX = val;
    if (uVar1 < 0xb8) {
        uVar1 += super->animationState >> 1;
    }
    if ((uVar4 != (u16)super->spriteIndex) || (uVar1 != super->animIndex)) {
        super->spriteIndex = uVar4;
        InitAnimationForceUpdate(super, uVar1);
    }
}

void MacroPlayer_Type0_Init(MacroPlayerEntity* this) {
    Entity* pEVar1;
    u8* ptr;

    super->action++;
    super->spriteSettings.draw = 1;
    super->animationState = 4;
    super->spriteRendering.b3 = 0;
    super->spritePriority.b0 = 0;
    super->spriteOrientation.flipY = 2;
    this->unk68.HWORD = 0x114;
    super->animIndex = 0xff;
    super->z.HALF.HI = -0xb0;
    this->unk6a = 4;
    super->spriteRendering.b0 = 3;
    SetAffineInfo(super, 4, 4, 0);
    gUnk_02018EB0.unk_14 = super;
    ChangeObjPalette(super, GetPlayerPalette(FALSE));
    pEVar1 = CreateObject(PORTAL_FALLING_PLAYER, 1, 0);
    if (pEVar1 != NULL) {
        pEVar1->parent = super;
        super->child = pEVar1;
    }
}

void sub_0808CC88(MacroPlayerEntity* this) {
    if (this->unk6a < 0x400) {
        this->unk6a += 4;
        SetAffineInfo(super, this->unk6a, this->unk6a, 0);
        sub_0806FCF4(super, this->unk6a, 8, 2);
    }
}

void MacroPlayer_Type0_Action1(MacroPlayerEntity* this) {
    sub_0808CC88(this);
    if (GravityUpdate(super, Q_8_8(16.0)) == 0) {
        super->action++;
        super->direction = DirectionSouthWest;
        super->speed = 0x100;
        super->zVelocity = Q_16_16(3.0);
        super->spriteSettings.shadow = 0;
        super->child->subAction = 1;
        gUnk_02018EB0.unk_18 = 1;
    }
}

void MacroPlayer_Type0_Action2(MacroPlayerEntity* this) {
    sub_0808CC88(this);
    UpdateAnimationSingleFrame(super);
    if (GravityUpdate(super, Q_8_8(32.0))) {
        LinearMoveUpdate(super);
    } else {
        super->action++;
        super->direction = 10;
        super->speed = 0xc0;
        super->zVelocity = Q_16_16(2.5);
        gUnk_02018EB0.unk_19 = 1;
    }
}

void MacroPlayer_Type0_Action3(MacroPlayerEntity* this) {
    sub_0808CC88(this);
    UpdateAnimationSingleFrame(super);
    if (GravityUpdate(super, Q_8_8(32.0))) {
        LinearMoveUpdate(super);
    } else {
        super->action++;
        super->direction = 17;
        super->speed = 0x100;
        super->zVelocity = Q_16_16(2.25);
        gUnk_02018EB0.unk_1a = 1;
    }
}

void MacroPlayer_Type0_Action4(MacroPlayerEntity* this) {
    sub_0808CC88(this);
    if (GravityUpdate(super, Q_8_8(24.0))) {
        UpdateAnimationSingleFrame(super);
        LinearMoveUpdate(super);
        if (super->x.HALF.HI < 0x80) {
            super->x.HALF.HI = 0x80;
        }
    } else {
        super->action++;
        super->timer = 60;
        this->unk68.HWORD = 0xc04;
        DeleteEntity(super->child);
        sub_0805EC60(super);
    }
}

void MacroPlayer_Type0_Action5(MacroPlayerEntity* this) {
    if (--super->timer == 0) {
        super->action++;
        super->timer = 16;
    }
}

void MacroPlayer_Type0_Action6(MacroPlayerEntity* this) {
    static const u8 gUnk_081216B4[] = { 0, 0x1a, 0x2, 0x5, 0x4, 0x11, 0x6, 0x1a };
    u32 uVar2;

    if (--super->timer == 0) {
        uVar2 = gArea.portal_exit_dir;
        super->action++;
        super->action += uVar2;
        super->animationState = gUnk_081216B4[uVar2 * 2];
        super->direction = gUnk_081216B4[uVar2 * 2 + 1];
        super->speed = 0x140;
    }
}

void MacroPlayer_Type0_Action7(MacroPlayerEntity* this) {
    UpdateAnimationSingleFrame(super);
    LinearMoveUpdate(super);
    if (super->y.HALF.HI < 200) {
        super->direction = DirectionWest;
    }
    if (super->x.HALF.HI < 0x30) {
        gUnk_02018EB0.unk_1b = 1;
    }
}

void MacroPlayer_Type0_Action8(MacroPlayerEntity* this) {
    UpdateAnimationSingleFrame(super);
    LinearMoveUpdate(super);
    if (super->y.HALF.HI < 200) {
        super->direction = DirectionEast;
    }
    if (super->x.HALF.HI > 0xd0) {
        gUnk_02018EB0.unk_1b = 1;
    }
}

void MacroPlayer_Type0_Action9(MacroPlayerEntity* this) {
    UpdateAnimationSingleFrame(super);
    LinearMoveUpdate(super);
    if (super->y.HALF.HI > 0x120) {
        gUnk_02018EB0.unk_1b = 1;
    }
}

void MacroPlayer_Type0_Action10(MacroPlayerEntity* this) {
    UpdateAnimationSingleFrame(super);
    LinearMoveUpdate(super);
    if (super->y.HALF.HI < 200) {
        super->direction = DirectionWest;
    }
    if (super->x.HALF.HI < 0x10) {
        gUnk_02018EB0.unk_1b = 1;
    }
}
