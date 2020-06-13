#include "global.h"
#include "entity.h"
#include "textbox.h"
#include "link.h"

extern void sub_0806ED78(Entity*);
extern u32 sub_0801E99C(Entity*);
extern void LoadAnimation(Entity*, u32);
extern void sub_080042B8(Entity*);
extern void sub_08065AA4(Entity*);
extern u32 UpdateFuseInteraction(void);
extern void ShowNPCDialogue(Entity*, u64*);
extern void sub_08078778(Entity*);
extern void sub_080787A8(Entity*, u32);
extern void sub_0806F118(Entity*);
extern void sub_0805E3A0(Entity*, u8);
extern u32 sub_080045C4(Entity*, Entity*);
extern u32 sub_0806F5A4(void);
extern void sub_080791D0(void);
extern void PlaySFX(u32);

extern TextBox gTextBox;
extern LinkState gLinkState;
extern Entity gLinkEntity;

void sub_08065A64(Entity* ent);

extern void (*gUnk_0811006C[])(Entity*);
extern u64 gUnk_08110080[];

void sub_08065990(Entity* ent)
{
    gUnk_0811006C[ent->action](ent);
    sub_08065A64(ent);
    sub_0806ED78(ent);
}

void sub_080659B8(Entity* ent)
{
    ent->action = 1;
    ent->spriteSettings.b.ss0 = 1;
    ent->animationState = 6;
    ent->field_0x69 = -1;
    ent->field_0x68 = sub_0801E99C(ent);
    LoadAnimation(ent, ent->animationState / 2);
}

void sub_080659F0(Entity* ent)
{
    sub_080042B8(ent);
    sub_08065AA4(ent);
}

void sub_08065A00(Entity* ent)
{
    sub_080042B8(ent);
    sub_08065AA4(ent);
}

void sub_08065A10(Entity* ent)
{
    if ((gTextBox.doTextBox & 0x7F) == 0)
    {
        ent->action = 1;
        LoadAnimation(ent, ent->animationState / 2);
    }
}

void sub_08065A34(Entity* ent)
{
    if (UpdateFuseInteraction() != 0)
    {
        ent->action = 1;
        LoadAnimation(ent, ent->animationState / 2);
    }
}

void sub_08065A50(Entity* ent)
{
    ShowNPCDialogue(ent, &gUnk_08110080[ent->entityType.parameter1]);
}

void sub_08065A64(Entity* ent)
{
    u32 uVar2;
    
    uVar2 = -(gLinkState.flags.all & 0x80) >> 0x1f;
    if (uVar2 != ent->field_0x69) 
    {
        if (uVar2 == 0)
        {
            sub_08078778(ent);
        }
        else
        {
            sub_080787A8(ent, ent->field_0x68);
        }
    }
    ent->field_0x69 = uVar2;
}

void sub_08065AA4(Entity* ent)
{ 
    if (ent->interactType != 0)
    {
        if (gLinkState.flags.all & 0x80)
        {
            if (ent->interactType == 2)
            {
                ent->action = 4;
                sub_0806F118(ent);
            }
            else
            {
                ent->action = 3;
                sub_0805E3A0(ent, 2);
                sub_08065A50(ent);
            }
            sub_080045C4(ent, &gLinkEntity);
            LoadAnimation(ent, sub_0806F5A4());
        }
        else
        {
            sub_08065A50(ent);
            sub_080791D0();
        }
        PlaySFX(0xD3);
        ent->interactType = 0;
    }
}

void sub_08065B1C(Entity* ent)
{
    if (ent->action == 0)
    {
        ent->action += 1;
        ent->spriteSettings.b.ss0 = 1;
        LoadAnimation(ent, 7);
    }
    else
    {
        sub_080042B8(ent);
    }
}
