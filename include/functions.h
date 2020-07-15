
#ifndef FUNCTIONS_H
#define FUNCTIONS_H

#include "global.h"
#include "entity.h"
#include "position.h"
#include "link.h"

// Identified - to be sorted into header files
extern u32 Random(void);
extern void PlaySFX(u32);
extern void ShowNPCDialogue(Entity*, u32*);
extern u32 UpdateFuseInteraction();
extern void DeleteEntity(Entity*);
extern u32 __modsi3(u32, u32);
extern void DoFade(u32, u32);
extern u32 GetInventoryValue(u32);
extern u32 CheckKinstoneFused(u32);
extern void ForceEquipItem(u8, u8);
extern void LoadRoomEntityList();
void CopyPosition(Entity*, Entity*);
extern u32* StartCutscene(Entity*, u8*);
extern void ResolveEntityOnTop(Entity*, Entity*);
extern u32 GetFacingDirection(Entity*, Entity*);
Entity* CreatePlayerItem(u32, u32, u32, u32);
extern Entity* GetEmptyEntity(void);
extern u32 GetTileTypeByPos(s32 x, s32 y, u32 layer);

// Unidentified
extern void sub_0806ED78(Entity*);
extern void sub_0806920C(Entity*);
extern u32 sub_0805ACC0(Entity*);
extern u32 sub_0801E99C(Entity*);
extern void sub_0806924C(Entity*);
extern void sub_080AEF88(Entity*);
extern void sub_08078778(Entity*);
extern void sub_080787A8(Entity*, u32);
extern void sub_0806F118(Entity*);
extern void sub_080791D0();
extern void sub_0805EC9C();
extern void sub_0805EC60();
extern void sub_080873D0();
extern void sub_080045D4();
extern void sub_0806F69C();
extern void sub_0805E3A0(Entity*, u32);
extern void sub_0806D0B0(Entity*);
extern void sub_0807DD64(Entity*);
extern void sub_0807DDAC(Entity*, u32);
extern void sub_0807DDE4(Entity*);
extern void sub_0806D02C(Entity*);
extern u32 sub_0806F5A4(u32);
extern void sub_08078784(Entity*, u32);
extern void sub_0807DD50(Entity*);
extern void sub_0807DD94(Entity*, u32);
extern Entity* sub_0805EB00(u32, u32, u32);
extern Entity* sub_0805EB2C(u32, u32, u32, u32, u32);
extern s32 sub_0806ED9C(Entity*, u32, u32);
extern void sub_0807000C(Entity*);
extern void sub_0805E47C(Entity*);
extern void sub_0805E584(Entity*);
extern void sub_0806ED78(Entity*);
extern void sub_08068BEC(Entity*, u32);
extern void sub_08078778(Entity*);
extern s32 sub_0806ED9C(Entity*, u32, u32);
extern s32 sub_0806F078(Entity*, s32);
extern void sub_0801D2B4(Entity*, u32);
extern void sub_0806FD3C(Entity*);
extern u32 sub_0801E99C(Entity*);
extern void sub_0807DD50(Entity*);
extern void sub_0806F118(Entity*);
extern void sub_0807DD94(Entity*, u32);
extern void sub_0805ED14(u32*);
extern void sub_080A7C18(u32, u32, u32);
extern void sub_08068BEC(Entity*, u32);
void sub_08077E54(Entity*);
extern void sub_080042BA(Entity*);
extern void sub_0801D630(void*, u32);
extern void sub_08077F24(ItemBehavior*, u32);
extern void sub_08079184();
void sub_08077F50(ItemBehavior *beh, u32 arg1);
extern void sub_0807AA80(Entity*);
extern s32 sub_0807887C(Entity*, u32, u32);
extern s32 sub_08078904();

#endif
