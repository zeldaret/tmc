
#ifndef FUNCTIONS_H
#define FUNCTIONS_H

#include "global.h"
#include "entity.h"
#include "manager.h"
#include "coord.h"
#include "player.h"
#include "room.h"
#include "structures.h"
#include "script.h"

// Identified - to be sorted into header files
extern void SetDirtTile(u32);
extern bool32 LoadFixedGFX(Entity*, u32);
extern void MenuFadeIn(u32, u32);
extern void TryLoadPrologueHyruleTown(void);
extern void FlushSprites(void);

// Unidentified
extern void sub_0805EC9C(Entity*, u32, u32, u32);
extern void sub_0805EC60(Entity*);
extern void sub_0806D0B0(Entity*);
extern void sub_0806D02C(Entity*);
extern void sub_0806FD3C(Entity*);
extern void sub_0805ED14(u32*);
extern void sub_080A7C18(u32, u32, u32);
extern void sub_0804AA30(Entity*, void (*const[])());
extern void sub_0804A720(Entity*);
extern u32 sub_080AEFE0(Entity*);
extern u32 sub_08049FA0(Entity*);
extern u32 sub_08049FDC(Entity*, u32);
extern u32 sub_08049EE4(Entity*);
extern void sub_08077E54(ItemBehavior*);
extern void sub_080042BA(Entity*, u32);
extern bool32 sub_08077F24(ItemBehavior*, u32);
extern void sub_08079184();
extern void sub_08077F50(ItemBehavior* beh, u32 arg1);
extern void sub_0807AA80(Entity*);
extern s32 sub_0807887C(Entity*, u32, u32);
extern s32 sub_08078904();
extern void DrawEntities(void);
extern void CopyOAM(void);
extern void sub_0801E104(void);
extern void sub_080A57F4(void);
extern void sub_08030118(u32);
extern void sub_080575C8(u32);
extern void sub_08057688(void);
extern void sub_080580B0(u32);
extern void sub_080751E8(u32, u32, void*);
extern void sub_0808091C(const ScreenTransitionData*, u32);
extern void sub_0805BC4C(void);
extern void sub_0807BB68(u32*, u32, u32);
extern void sub_08054570(void);
extern void sub_08059278(void);
extern void sub_0804C128();
extern void sub_08058324(u32);
extern void sub_0801AFE4(void);
extern void sub_0807AABC(Entity*);
extern void sub_0805B4D0(u32);
extern void sub_0807BA8C(u32, u32);
extern void sub_080AF284(void);
extern void sub_080A71C4(u32, u32, u32, u32);
extern void sub_08054564();
extern void DrawDirect(u32, u32); // trampoline to sub_080B27F4
extern void sub_0801C1D4(void);
extern void DrawOAMCmd(void);
extern u32 sub_0807953C(void);
extern void sub_080AE068(Entity*);
extern u32 sub_0800445C(Entity*);
extern u32 sub_0801766C(Entity*);
extern void sub_08004168(Entity*);
extern u32 sub_0806F520();
extern void sub_0806F4E8(Entity*);
extern void sub_080784C8();
extern u32 sub_0808288C(Entity*, u32, u32, u32);
extern bool32 sub_0806FDA0(Entity*);
extern bool32 LoadSwapGFX(Entity*, u16, u32);
extern void sub_0807921C();
extern void sub_0807ACCC(Entity*);
extern u32 sub_08079F8C(void);
extern void sub_080787CC(Entity*);
extern u32 sub_080044EC(Entity*, u32);
extern u32 sub_080002B8(Entity*);
extern u32 sub_08049F84(Entity*, u32);
extern u32 sub_0800419C(Entity*, Entity*, u32, u32);
extern void sub_08004542(Entity*);
extern u32 IsCollidingPlayer(Entity*);
extern void sub_080809D4(void);
extern void sub_08080CB4(Entity*);
extern void sub_0807B7D8(u32, u32, u32);
extern void sub_0800451C(Entity*);
extern u32 sub_080040D8(Entity*, u8*, s32, s32);
extern u32 sub_0805F8F8(u32);
extern u32 sub_0805F7A0(u32);
extern u32* sub_0805F25C(u32);
u32 EntityWithinDistance(Entity*, s32, s32, s32);
extern void LinearMoveAngle(Entity*, u32, u32);
extern void sub_080A1ED0(u32, u32, u32);
extern u32 sub_0806F5B0(u32);
extern void sub_08078790(Entity*, u32);
extern void sub_080788E0(Entity*);
extern void sub_08078B48(void);
extern void sub_0807919C();
extern void sub_0807CAA0(u32, u32);
extern void sub_080085B0(Entity*);
extern u32 sub_08079D48();
extern u32 sub_080542AC(u32);
extern u32 sub_08079FC4(u32);
extern void sub_0805F8E4(u32 r0, WStruct* r1);
extern Entity* sub_08077C94(ItemBehavior*, u32);
extern Entity* sub_08077C0C(ItemBehavior*, u32);
extern void sub_08077D38(ItemBehavior*, u32);
extern void sub_08077E78(ItemBehavior*, u32);
extern void UpdateItemAnim(ItemBehavior*);
extern u32 sub_0806F948(Entity*);
extern void sub_08077DF4(ItemBehavior*, u32);
extern void sub_08077BB8(ItemBehavior*);
extern bool32 sub_08077EFC(ItemBehavior*);
extern void sub_08078E84(Entity*, Entity*);
extern void sub_080042D0(Entity*, u32, u16);
extern u32 sub_080002A8(u32, u32, u32);
extern bool32 sub_080806BC(u32, u32, u32, u32);
extern bool32 sub_0806FC80(Entity*, Entity*, s32);
extern u32 sub_080002B4(Entity*, u32, u32);
extern u32 sub_080AF134(Entity*);
extern void LinearMoveDirection(Entity*, u32, u32);
extern void sub_080A2AF4(Entity*, u32, u32);
extern u32 sub_080002CC(Entity*, s32, s32);
extern bool32 sub_0807BD14(Entity*, u32);
extern void sub_0807A5B8(u32);
extern Entity* sub_080A2AD4(Entity*);
extern u32 sub_080040A2(Entity*);

extern Entity* sub_08049DF4(u32);
extern s32 sub_080012DC(Entity*);
extern s32 sub_08056338(void);
extern s32 sub_080AF090(Entity*);
extern u32 PlayerInRange(Entity*, u32, u32);
extern u32 sub_080002C8(u16, u8);
extern u32 sub_080002D4(s32, s32, u32);
extern u32 sub_080002E0(u32, u32);
extern u32 sub_08031E04(Entity*);
extern u32 sub_080322A4(Entity*);
extern u32 sub_08049F1C(Entity*, Entity*, u32);
extern u32 sub_08049F1C(Entity*, Entity*, u32);
extern void SoundReqClipped(Entity*, u32);
extern void SoundReqClipped(Entity*, u32);
extern void sub_08001328(Entity*);
extern void sub_08031E48(Entity*, Entity*);
extern void sub_08032290(Entity*);
extern void sub_08032338(Entity*);
extern void sub_0803C0AC(Entity*);
extern void sub_0804AA1C(Entity*);
extern u32 sub_0806F824(Entity*, Entity*, s32, s32);
extern void sub_08078930(Entity*);
extern void sub_08078954(Entity*);
extern void sub_08079BD8(Entity*);
extern void sub_080AEFB4(Entity*);
extern void UnloadOBJPalette(Entity*);
void sub_080322E8(Entity*);
extern u32 GetTileIndex(u32, u32);
extern void sub_0806FBB4(Entity*);
extern u32 sub_080002D4(s32, s32, u32);
extern void sub_08078930(Entity*);
extern void sub_080044AE(Entity*, u32, u32);
extern void sub_0801AF18(u8*, u32, u32);
extern void sub_0807B9B8(s32, s32, s32);
extern void sub_08000148(u32, u32, u32);
extern void CreateRandomItemDrop(Entity*, s32);
extern Entity* sub_080A2A3C(Entity*, u32, u32, u32);
extern void sub_0806FCF4(Entity*, s32, s32, s32);
extern u32 sub_080041DC(Entity*, u32, u32);
extern void sub_080AE58C(Entity*, u32, u32);
extern u32 sub_0800132C(Entity*, Entity*);
extern bool32 sub_080AE4CC(Entity*, u32, u32, u32);
#endif
