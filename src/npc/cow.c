/**
 * @file cow.c
 * @ingroup NPCs
 *
 * @brief Cow NPC
 */
#include "entity.h"
#include "functions.h"
#include "npc.h"
#include "player.h"
#include "sound.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u16 unk_68;
    /*0x6a*/ u16 unk_6a;
    /*0x6c*/ u8 fusionOffer;
    /*0x6d*/ u8 unk_6d;
} CowEntity;

void sub_0806920C(CowEntity* this);
void sub_0806924C(CowEntity* this);
void sub_08068FC0(CowEntity* this);
void sub_08069018(CowEntity* this);
void sub_08069068(CowEntity* this);
void sub_08069124(CowEntity* this);
void sub_080691E0(CowEntity* this);
void sub_08069148(CowEntity* this);
void sub_08069168(CowEntity* this);
void sub_08069188(CowEntity* this);
void sub_080691BC(CowEntity* this);

void Cow(CowEntity* this) {
    static void (*const actionFuncs[])(CowEntity*) = {
        sub_08068FC0, sub_08069018, sub_08069068, sub_08069124, sub_080691E0,
    };
    actionFuncs[super->action](this);
    sub_0806ED78(super);
    sub_0806920C(this);
}

void sub_08068FC0(CowEntity* this) {
    u32 r2;

    super->action = 1;
    super->animationState = super->type2;
    super->speed = 0x40;

    this->unk_6d = 0xff;

    r2 = sub_0805ACC0(super);
    if (r2 == 0) {
        u16 x, y;

        x = super->x.HALF.HI;
        this->unk_68 = x;

        y = super->y.HALF.HI;
        this->unk_6a = y;
    } else {
        u32 var1 = r2 >> 16;
        // 0x68+0x69 probably a SplitWord
        this->unk_68 = var1;
        this->unk_6a = r2;
    }
    this->fusionOffer = GetFusionToOffer(super);

    InitAnimationForceUpdate(super, super->animationState + 4);
}

void sub_08069018(CowEntity* this) {
    s32 var0;

    if (super->subAction == 0) {
        super->subAction++;
        super->subtimer = (Random() & 0x3F) + 0x3C;
        InitAnimationForceUpdate(super, super->animationState);
    }

    UpdateAnimationSingleFrame(super);
    var0 = --super->subtimer;
    if (var0 == 0) {
        if (super->timer == 0) {
            super->action = 2;
        } else {
            super->action = 3;
        }
        super->subAction = var0;
    }

    sub_0806924C(this);
}

void sub_08069068(CowEntity* this) {
    s32 var0;

    if (super->subAction == 0) {
        u32 anim;

        super->subAction++;

        anim = (Random() & 2) - 1;
        anim = (anim + super->animationState) & 3;
        super->animationState = anim;
        super->direction = anim <<= 3;

        super->subtimer = (Random() & 0x3F) + 60;
        InitAnimationForceUpdate(super, super->animationState + 4);
    }

    ProcessMovement0(super);
    UpdateAnimationSingleFrame(super);

    {
        s32 x = super->x.HALF.HI;
        s16* x2 = (s16*)&this->unk_68;
        x -= *x2;
        if (x > 16) {
            super->x.HALF.HI = *x2 + 16;
            super->subtimer = 1;
        }
        if (x < -16) {
            super->x.HALF.HI = *x2 - 16;
            super->subtimer = 1;
        }
    }
    {
        s32 y = super->y.HALF.HI;
        s16* y2 = &this->unk_6a;
        y -= *y2;
        if (y > 16) {
            super->y.HALF.HI = *y2 + 16;
            super->subtimer = 1;
        }
        if (y < -16) {
            super->y.HALF.HI = *y2 - 16;
            super->subtimer = 1;
        }
    }

    var0 = --super->subtimer;
    if (var0 == 0) {
        super->action = 3;
        super->subAction = var0;
    }

    sub_0806924C(this);
}

void sub_08069124(CowEntity* this) {
    static void (*const subActionFuncs[])(CowEntity*) = {
        sub_08069148,
        sub_08069168,
        sub_08069188,
        sub_080691BC,
    };
    UpdateAnimationSingleFrame(super);
    subActionFuncs[super->subAction](this);
    sub_0806924C(this);
}

void sub_08069148(CowEntity* this) {
    u32 var0 = Random() & 3;
    var0 += 3;
    super->subtimer = var0;
    super->subAction = 1;
    InitAnimationForceUpdate(super, super->animationState + 8);
}

void sub_08069168(CowEntity* this) {
    if ((s8)super->frame < 0) {
        super->subAction = 2;
        InitAnimationForceUpdate(super, super->animationState + 12);
    }
}

void sub_08069188(CowEntity* this) {
    if ((super->frame & 1) == 0)
        return;
    super->frame = 0;

    if (--super->subtimer != 0)
        return;
    super->subAction = 3;
    InitAnimationForceUpdate(super, super->animationState + 16);
}

void sub_080691BC(CowEntity* this) {
    if ((s8)super->frame < 0) {
        super->action = 1;
        super->subAction = 0;
        InitAnimationForceUpdate(super, super->animationState + 4);
    }
}

void sub_080691E0(CowEntity* this) {
    if (UpdateFuseInteraction(super) != 0) {
        super->action = 1;
        super->subAction = 0;
    }
}

// Show dialogue
void Cow_ShowDialogue(CowEntity* this) {
    static const Dialog gUnk_08111938[] = {
        { 0x0, 0x0, DIALOG_MINISH, 1, { TEXT_INDEX(TEXT_LON_LON, 0X18), TEXT_INDEX(TEXT_TINGLE, 0x34) } },
        { 0x0, 0x0, DIALOG_MINISH, 1, { TEXT_INDEX(TEXT_LON_LON, 0X18), TEXT_INDEX(TEXT_TINGLE, 0x35) } },
        { 0x0, 0x0, DIALOG_MINISH, 1, { TEXT_INDEX(TEXT_LON_LON, 0X18), TEXT_INDEX(TEXT_TINGLE, 0x36) } },
        { 0x0, 0x0, DIALOG_MINISH, 1, { TEXT_INDEX(TEXT_LON_LON, 0X18), TEXT_INDEX(TEXT_TINGLE, 0x37) } },
        { 0x0, 0x0, DIALOG_MINISH, 1, { TEXT_INDEX(TEXT_LON_LON, 0X18), TEXT_INDEX(TEXT_TINGLE, 0x38) } }
    };
    ShowNPCDialogue(super, &gUnk_08111938[super->type]);
}

void sub_0806920C(CowEntity* this) {
    u32 var1;
    if ((gPlayerState.flags & PL_MINISH) != 0) {
        var1 = TRUE;
    } else {
        var1 = FALSE;
    }

    if (var1 != this->unk_6d) {
        if (var1 == 0) {
            AddInteractableWhenBigObject(super);
        } else {
            AddInteractableAsMinishFuser(super, this->fusionOffer);
        }
    }

    this->unk_6d = var1;
}

// Check if player interacting
void sub_0806924C(CowEntity* this) {
    s8 itype = super->interactType;
    if (itype != INTERACTION_NONE) {
        if (gPlayerState.flags & PL_MINISH) {
            if (itype == INTERACTION_FUSE) {
                super->action = 4;
                InitializeNPCFusion(super);
            } else {
                Cow_ShowDialogue(this);
            }
        } else {
            Cow_ShowDialogue(this);
            ResetPlayerAnimationAndAction();
        }
        SoundReq(SFX_VO_COW);
        super->interactType = INTERACTION_NONE;
    }
}

void Cow_Fusion(CowEntity* this) {
    if (super->action == 0) {
        super->action++;
        super->spriteSettings.draw = 1;
        InitAnimationForceUpdate(super, 15);
    } else {
        UpdateAnimationSingleFrame(super);
    }
}
