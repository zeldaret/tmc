#include "global.h"
#include "sound.h"
#include "entity.h"
#include "player.h"
#include "npc.h"
#include "functions.h"

void sub_0806920C(Entity* ent);
void sub_0806924C(Entity* ent);
void sub_08068FC0(Entity* ent);
void sub_08069018(Entity* ent);
void sub_08069068(Entity* ent);
void sub_08069124(Entity* ent);
void sub_080691E0(Entity* ent);
void sub_08069148(Entity* ent);
void sub_08069168(Entity* ent);
void sub_08069188(Entity* ent);
void sub_080691BC(Entity* ent);

void Cow(Entity* ent) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_08068FC0, sub_08069018, sub_08069068, sub_08069124, sub_080691E0,
    };
    actionFuncs[ent->action](ent);
    sub_0806ED78(ent);
    sub_0806920C(ent);
}

void sub_08068FC0(Entity* ent) {
    u32 r2;

    ent->action = 1;
    ent->animationState = ent->type2;
    ent->speed = 0x40;

    ent->field_0x6c.HALF.HI = 0xFF;

    r2 = sub_0805ACC0(ent);
    if (r2 == 0) {
        u16 x, y;

        x = ent->x.HALF.HI;
        *(u16*)&ent->field_0x68 = x;

        y = ent->y.HALF.HI;
        ent->field_0x6a.HWORD = y;
    } else {
        u32 var1 = r2 >> 16;
        // 0x68+0x69 probably a SplitWord
        *(u16*)&ent->field_0x68 = var1;
        ent->field_0x6a.HWORD = r2;
    }
    ent->field_0x6c.HALF.LO = GetFusionToOffer(ent);

    InitAnimationForceUpdate(ent, ent->animationState + 4);
}

void sub_08069018(Entity* ent) {
    s32 var0;

    if (ent->subAction == 0) {
        ent->subAction++;
        ent->subtimer = (Random() & 0x3F) + 0x3C;
        InitAnimationForceUpdate(ent, ent->animationState);
    }

    UpdateAnimationSingleFrame(ent);
    var0 = --ent->subtimer;
    if (var0 == 0) {
        if (ent->timer == 0) {
            ent->action = 2;
        } else {
            ent->action = 3;
        }
        ent->subAction = var0;
    }

    sub_0806924C(ent);
}

void sub_08069068(Entity* ent) {
    s32 var0;

    if (ent->subAction == 0) {
        u32 anim;

        ent->subAction++;

        anim = (Random() & 2) - 1;
        anim = (anim + ent->animationState) & 3;
        ent->animationState = anim;
        ent->direction = anim <<= 3;

        ent->subtimer = (Random() & 0x3F) + 60;
        InitAnimationForceUpdate(ent, ent->animationState + 4);
    }

    ProcessMovement0(ent);
    UpdateAnimationSingleFrame(ent);

    {
        s32 x = ent->x.HALF.HI;
        s16* x2 = (s16*)&ent->field_0x68;
        x -= *x2;
        if (x > 16) {
            ent->x.HALF.HI = *x2 + 16;
            ent->subtimer = 1;
        }
        if (x < -16) {
            ent->x.HALF.HI = *x2 - 16;
            ent->subtimer = 1;
        }
    }
    {
        s32 y = ent->y.HALF.HI;
        s16* y2 = &ent->field_0x6a.HWORD;
        y -= *y2;
        if (y > 16) {
            ent->y.HALF.HI = *y2 + 16;
            ent->subtimer = 1;
        }
        if (y < -16) {
            ent->y.HALF.HI = *y2 - 16;
            ent->subtimer = 1;
        }
    }

    var0 = --ent->subtimer;
    if (var0 == 0) {
        ent->action = 3;
        ent->subAction = var0;
    }

    sub_0806924C(ent);
}

void sub_08069124(Entity* ent) {
    static void (*const subActionFuncs[])(Entity*) = {
        sub_08069148,
        sub_08069168,
        sub_08069188,
        sub_080691BC,
    };
    UpdateAnimationSingleFrame(ent);
    subActionFuncs[ent->subAction](ent);
    sub_0806924C(ent);
}

void sub_08069148(Entity* ent) {
    u32 var0 = Random() & 3;
    var0 += 3;
    ent->subtimer = var0;
    ent->subAction = 1;
    InitAnimationForceUpdate(ent, ent->animationState + 8);
}

void sub_08069168(Entity* ent) {
    if ((s8)ent->frame < 0) {
        ent->subAction = 2;
        InitAnimationForceUpdate(ent, ent->animationState + 12);
    }
}

void sub_08069188(Entity* ent) {
    if ((ent->frame & 1) == 0)
        return;
    ent->frame = 0;

    if (--ent->subtimer != 0)
        return;
    ent->subAction = 3;
    InitAnimationForceUpdate(ent, ent->animationState + 16);
}

void sub_080691BC(Entity* ent) {
    if ((s8)ent->frame < 0) {
        ent->action = 1;
        ent->subAction = 0;
        InitAnimationForceUpdate(ent, ent->animationState + 4);
    }
}

void sub_080691E0(Entity* ent) {
    if (UpdateFuseInteraction(ent) != 0) {
        ent->action = 1;
        ent->subAction = 0;
    }
}

// Show dialogue
void Cow_ShowDialogue(Entity* ent) {
    static const Dialog gUnk_08111938[] = {
        { 0x0, 0x0, DIALOG_MINISH, 1, { TEXT_INDEX(TEXT_LON_LON, 0X18), TEXT_INDEX(TEXT_TINGLE, 0x34) } },
        { 0x0, 0x0, DIALOG_MINISH, 1, { TEXT_INDEX(TEXT_LON_LON, 0X18), TEXT_INDEX(TEXT_TINGLE, 0x35) } },
        { 0x0, 0x0, DIALOG_MINISH, 1, { TEXT_INDEX(TEXT_LON_LON, 0X18), TEXT_INDEX(TEXT_TINGLE, 0x36) } },
        { 0x0, 0x0, DIALOG_MINISH, 1, { TEXT_INDEX(TEXT_LON_LON, 0X18), TEXT_INDEX(TEXT_TINGLE, 0x37) } },
        { 0x0, 0x0, DIALOG_MINISH, 1, { TEXT_INDEX(TEXT_LON_LON, 0X18), TEXT_INDEX(TEXT_TINGLE, 0x38) } }
    };
    ShowNPCDialogue(ent, &gUnk_08111938[ent->type]);
}

void sub_0806920C(Entity* ent) {
    u32 var1;
    if ((gPlayerState.flags & PL_MINISH) != 0) {
        var1 = TRUE;
    } else {
        var1 = FALSE;
    }

    if (var1 != ent->field_0x6c.HALF.HI) {
        if (var1 == 0) {
            AddInteractableWhenBigObject(ent);
        } else {
            AddInteractableAsMinishFuser(ent, ent->field_0x6c.HALF.LO);
        }
    }

    ent->field_0x6c.HALF.HI = var1;
}

// Check if player interacting
void sub_0806924C(Entity* ent) {
    s8 itype = ent->interactType;
    if (itype != 0) {
        if ((gPlayerState.flags & PL_MINISH) != 0) {
            if (itype == 2) {
                ent->action = 4;
                sub_0806F118(ent);
            } else {
                Cow_ShowDialogue(ent);
            }
        } else {
            Cow_ShowDialogue(ent);
            ResetPlayerAnimationAndAction();
        }
        SoundReq(SFX_VO_COW);
        ent->interactType = 0;
    }
}

void Cow_Fusion(Entity* ent) {
    if (ent->action == 0) {
        ent->action++;
        ent->spriteSettings.draw = 1;
        InitAnimationForceUpdate(ent, 15);
    } else {
        UpdateAnimationSingleFrame(ent);
    }
}
