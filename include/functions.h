#ifndef FUNCTIONS_H
#define FUNCTIONS_H

#include "global.h"
#include "entity.h"
#include "manager.h"
#include "physics.h"
#include "player.h"
#include "room.h"
#include "structures.h"
#include "script.h"
#include "map.h"

// Identified - to be sorted into header files
extern u32 CheckRegionOnScreen(u32, u32, u32, u32);
extern void CopyOAM(void);
extern void CreateChestSpawner(Entity*);
extern Entity* CreateGroundItem(Entity*, u32, u32);
extern Entity* CreateGroundItemWithFlags(Entity*, u32, u32, u32);
extern void CreateItemOnGround(Entity*);
extern void CreateMagicSparkles(u32, u32, u32);
extern void CreateMinishEntrance(u32 tile);
extern u32 CreateRandomItemDrop(Entity*, u32);
extern void DrawDirect(u32 spriteIndex, u32 frameIndex);
extern void DrawEntities(void);
extern bool32 EntityWithinDistance(Entity*, s32, s32, s32);
extern void FlushSprites(void);
extern LayerStruct* GetLayerByIndex(u32);
extern u32 GetTileIndex(u32 tilePos, u32 layer);
extern u32 GiveItem(u32, u32);
extern bool32 LoadFixedGFX(Entity*, u32);
extern void LoadResources(void);
extern bool32 LoadSwapGFX(Entity*, u16, u32);
extern void MenuFadeIn(u32, u32);
extern void SetDirtTile(u32);
/**
 * @brief Sets multiple tiles at once
 *
 * @param tileData [u16 tileIndex, s16 positionOffset], ends with 0xffff
 * @param basePosition the position the offsets in tileData are based on
 * @param layer the tile layer
 */
extern void SetMultipleTiles(const TileData* tileData, u32 basePosition, u32 layer);
extern void TryLoadPrologueHyruleTown(void);
extern void UnloadGFXSlots(Entity*);
extern void UnloadOBJPalette(Entity*);
extern void UpdateDisplayControls(void);
extern void ClearBgAnimations(void);
extern void SetBGDefaults(void);

// Unidentified
extern void sub_08000148(u32, u32, u32);
extern u32 sub_080B1A0C(Entity*, s32, s32);
extern u32 sub_080B1AE0(u16, u8);
extern u32 sub_080B1AF0(Entity*, s32, s32);
extern u32 sub_080B1B18(s32, s32, u32);
extern u32 sub_080B1B44(u32, u32);
extern s32 sub_080012DC(Entity*);
extern void sub_08001318(Entity*);
extern void sub_080027EA(Entity*, u32, u32);
extern void sub_080028E0(Entity*);
extern u32 sub_080040A2(Entity*);
extern u32 sub_080040D8(Entity*, u8*, s32, s32);
extern void sub_08004168(Entity*);
extern u32 sub_0800419C(Entity*, Entity*, u32, u32);
extern u32 sub_080041DC(Entity*, u32, u32);
extern void sub_080042BA(Entity*, u32);
extern void sub_080042D0(Entity*, u32, u16);
extern void sub_080043A8(Entity*);
extern u32 sub_0800445C(Entity*);
extern void sub_080044AE(Entity*, u32, u32);
extern u32 sub_080044EC(Entity*, u32);
extern void sub_0800451C(Entity*);
extern void sub_08004542(Entity*);
extern void sub_080085B0(Entity*);
extern u16* sub_08008796(Entity*, u32, u32, u32);
extern void sub_08016AD2(Entity*);
extern u32 sub_0801766C(Entity*);
extern void sub_0801AFE4(void);
extern void UpdateUIElements(void);
extern void sub_0801E104(void);
extern void sub_08030118(u32);
extern void sub_0803C0AC(Entity*);
extern void sub_08049CF4(Entity*);
extern u32 sub_0804A024(Entity*, u32, u32);
extern u32 sub_080542AC(u32);
extern void DisableRandomDrops();
extern void EnableRandomDrops(void);
extern s32 sub_08056338(void);
extern void sub_080575C8(u32);
extern void sub_08057688(void);
extern void sub_080580B0(u32);
extern void sub_08058324(u32);
extern void sub_08059278(void);
extern void LoadStaticBackground(u32);
extern void sub_0805BC4C(void);
extern void sub_0805EC60(Entity*);
extern void InitPlayerMacro(PlayerMacroEntry*);
extern u32* sub_0805F25C(u32);
extern void sub_0805F8E4(u32 r0, WStruct* r1);
extern void sub_0806D0B0(Entity*);
extern bool32 sub_080806BC(u32, u32, u32, u32);
extern void sub_0808091C(const ScreenTransitionData* screenTransition, u32 transitionType);
extern void sub_080809D4(void);
extern void sub_08080CB4(Entity*);
extern u32 sub_0808288C(Entity*, u32, u32, u32);
extern bool32 sub_08083734(Entity*, u32);
extern void sub_08095C48(Entity*);
extern void sub_080A57F4(void);
extern void sub_080A71C4(u32, u32, u32, u32);
extern void sub_080ADD70(void);
extern void sub_080AF284(void);

#endif // FUNCTIONS_H
