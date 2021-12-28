#ifndef OVERWORLD_H
#define OVERWORLD_H

#include "global.h"
#include "area.h"

void ChangeLightLevel(s32);
void SetPopupState(u32 type, u32 choice_idx);

bool32 CheckIsOverworld(void);
bool32 sub_08052638(u32 r0);
#ifndef EU
u32 sub_08052654(void);
#endif
u32 CheckIsDungeon(void);
u32 CheckIsInteriorWithEnemies(void);
u32 CheckIsInteriorNoEnemies(void);
u32 CheckHasMap(void);

u32 ItemIsSword(u32 item);

void sub_080526F8(s32 a1);
u32 sub_08052724(void);
u32 HasDungeonMap(void);
u32 HasDungeonCompass(void);
u32 HasDungeonBigKey(void);
u32 HasDungeonSmallKey(void);

void sub_080527FC(u32 a1, u32 a2);
#ifndef EU
void sub_08052878(void);
#endif

void RoomExitCallback(void);
void InitParachuteRoom(void);
u32 sub_08052B24(void);
void DisplayEzloMessage(void);

void sub_08052CA4(u32 area, u32 room, u32 x, u32 y);
void sub_08052CD0(u32 area, u32 room, u32 x, u32 y);

void sub_08052CFC(void);

/**
 * @brief Get bank offset for area
 */
u32 GetFlagBankOffset(u32 idx);

RoomResInfo* GetCurrentRoomInfo(void);
void sub_08052EA0(void);
void sub_08052FD8(u32 room, u32 area);
void sub_08053250(void);
void sub_08053320(void);
void sub_080533CC(void);
void sub_08053494(void);
void sub_080534AC(void);
void sub_08053500(void);

u32 GetBottleContaining(u32);

#endif // OVERWORLD_H
