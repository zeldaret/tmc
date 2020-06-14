#ifndef _FUNCTIONS_H_
#define _FUNCTIONS_H_

#include "global.h"
#include "entity.h"

void LoadAnimation(Entity*, u32);
void sub_080042B8(Entity*);
u32 sub_080045C4(Entity*, Entity*);
u32 sub_0801E99C(Entity*);
void sub_0805E3A0(Entity*, u32);
Entity* sub_0805EB00(u32, u32, u32);
void sub_0806ED78(Entity*);
void sub_0806F118(Entity*);
u32 UpdateFuseInteraction(void);
void ShowNPCDialogue(Entity*, u64*);
u32 sub_0806F5A4(u32);
void PositionRelative(Entity*, Entity*, s32, s32);
void sub_08078778(Entity*);
void sub_08078784(Entity*, u32);
void sub_080787A8(Entity*, u32);
void sub_080791D0(void);
void sub_0807DD50(Entity*);
void sub_0807DD94(Entity*, u32);
void PlaySFX(u32);

#endif