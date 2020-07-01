#include "global.h"
#include "entity.h"
#include "link.h"

extern void sub_0806ED78(Entity*);
extern void sub_0806920C(Entity*);
extern void UpdateAnimationSingleFrame(Entity*);
extern u32 sub_0805ACC0(Entity*);
extern u32 sub_0801E99C(Entity*);
extern void sub_0806924C(Entity*);
extern void sub_080AEF88(Entity*);
extern void ShowNPCDialogue(Entity*, u32*);
extern void sub_08078778(Entity*);
extern void sub_080787A8(Entity*, u32);
extern void sub_0806F118(Entity*);
extern void sub_080791D0();
extern void (*gUnk_08111914[])(Entity*);
extern void (*gUnk_08111928[])(Entity*);
extern u32 gUnk_08111938[];
extern void InitAnimationForceUpdate();
extern void PlaySFX(u32);
extern u32 Random();
extern u32 UpdateFuseInteraction(Entity*);
extern LinkState gLinkState;

void Cow(Entity* ent) {
    gUnk_08111914[ent->action](ent);
    sub_0806ED78(ent);
    sub_0806920C(ent);
}

void sub_08068FC0(Entity* ent) {
    u32 r2;

    ent->action = 1;
    ent->animationState = ent->entityType.parameter;
    ent->nonPlanarMovement = 0x40;

    ent->field_0x6d = 0xFF;

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
    ent->field_0x6c = sub_0801E99C(ent);

    InitAnimationForceUpdate(ent, ent->animationState + 4);
}

void sub_08069018(Entity* ent) {
    s32 var0;

    if (ent->previousActionFlag == 0) {
        ent->previousActionFlag++;
        ent->field_0xf = (Random() & 0x3F) + 0x3C;
        InitAnimationForceUpdate(ent, ent->animationState);
    }

    UpdateAnimationSingleFrame(ent);
    var0 = --ent->field_0xf;
    if (var0 == 0) {
        if (ent->actionDelay == 0) {
            ent->action = 2;
        } else {
            ent->action = 3;
        }
        ent->previousActionFlag = var0;
    }

    sub_0806924C(ent);
}

void sub_08069068(Entity* ent) {
    s32 var0;

    if (ent->previousActionFlag == 0) {
        u32 anim;

        ent->previousActionFlag++;

        anim = (Random() & 2) - 1;
        anim = (anim + ent->animationState) & 3;
        ent->animationState = anim;
        ent->direction = anim <<= 3;

        ent->field_0xf = (Random() & 0x3F) + 0x3C;
        InitAnimationForceUpdate(ent, ent->animationState + 4);
    }

    sub_080AEF88(ent);
    UpdateAnimationSingleFrame(ent);

    {
        s32 x = ent->x.HALF.HI;
        s16* x2 = (s16*)&ent->field_0x68;
        x -= *x2;
        if (x > 16) {
            ent->x.HALF.HI = *x2 + 16;
            ent->field_0xf = 1;
        }
        if (x < -16) {
            ent->x.HALF.HI = *x2 - 16;
            ent->field_0xf = 1;
        }
    }
    {
        s32 y = ent->y.HALF.HI;
        s16* y2 = &ent->field_0x6a.HWORD;
        y -= *y2;
        if (y > 16) {
            ent->y.HALF.HI = *y2 + 16;
            ent->field_0xf = 1;
        }
        if (y < -16) {
            ent->y.HALF.HI = *y2 - 16;
            ent->field_0xf = 1;
        }
    }

    var0 = --ent->field_0xf;
    if (var0 == 0) {
        ent->action = 3;
        ent->previousActionFlag = var0;
    }

    sub_0806924C(ent);
}

void sub_08069124(Entity* ent) {
    UpdateAnimationSingleFrame(ent);
    gUnk_08111928[ent->previousActionFlag](ent);
    sub_0806924C(ent);
}

void sub_08069148(Entity* ent) {
    u32 var0 = Random() & 3;
    var0 += 3;
    ent->field_0xf = var0;
    ent->previousActionFlag = 1;
    InitAnimationForceUpdate(ent, ent->animationState + 8);
}

void sub_08069168(Entity* ent) {
    if ((s8)ent->frames.all < 0) {
        ent->previousActionFlag = 2;
        InitAnimationForceUpdate(ent, ent->animationState + 12);
    }
}

void sub_08069188(Entity* ent) {
    if (ent->frames.b.f0 == 0)
        return;
    ent->frames.all = 0;

    if (((s8)--ent->field_0xf) != 0)
        return;
    ent->previousActionFlag = 3;
    InitAnimationForceUpdate(ent, ent->animationState + 16);
}

void sub_080691BC(Entity* ent) {
    if ((s8)ent->frames.all < 0) {
        ent->action = 1;
        ent->previousActionFlag = 0;
        InitAnimationForceUpdate(ent, ent->animationState + 4);
    }
}

void sub_080691E0(Entity* ent) {
    if (UpdateFuseInteraction(ent) != 0) {
        ent->action = 1;
        ent->previousActionFlag = 0;
    }
}

// Show dialogue
void sub_080691F8(Entity* ent) {
    u32 var0 = ent->entityType.form;
    u32* var1 = gUnk_08111938 + (var0 * 2);
    ShowNPCDialogue(ent, var1);
}

void sub_0806920C(Entity* ent) {
    // TODO: figure out what bitfield flag this is
    u32 var0 = gLinkState.flags.all & 0x80;
    u32 var1 = -var0 >> 0x1F;

    if (var1 != ent->field_0x6d) {
        if (var1 == 0) {
            sub_08078778(ent);
        } else {
            sub_080787A8(ent, ent->field_0x6c);
        }
    }

    ent->field_0x6d = var1;
}

// Check if player interacting
void sub_0806924C(Entity* ent) {
    s8 itype = ent->interactType;
    if (itype != 0) {
        // TODO: figure out what bitfield flag this is
        if ((gLinkState.flags.all & 0x80) != 0) {
            if (itype == 2) {
                ent->action = 4;
                sub_0806F118(ent);
            } else {
                sub_080691F8(ent);
            }
        } else {
            sub_080691F8(ent);
            sub_080791D0();
        }
        PlaySFX(212);
        ent->interactType = 0;
    }
}

void Cow_Fusion(Entity* ent) {
    if (ent->action == 0) {
        ent->action++;
        ent->spriteSettings.b.ss0 = 1;
        InitAnimationForceUpdate(ent, 15);
    } else {
        UpdateAnimationSingleFrame(ent);
    }
}
