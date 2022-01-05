#ifndef GAME_H
#define GAME_H

#include "global.h"
#include "area.h"

void ChangeLightLevel(s32 level);
void SetPopupState(u32 type, u32 choice_idx);

bool32 CheckAreaOverworld(u32 area);
bool32 AreaIsOverworld(void);
bool32 AreaIsDungeon(void);
bool32 AreaHasEnemies(void);
bool32 AreaHasNoEnemies(void);
bool32 AreaHasMap(void);
bool32 AreaHasKeys(void);

#ifndef EU
// This function was introduced to allow warping from indoor areas (palace of winds).
u32 AreaAllowsWarp(void);

// related to a music bug?
void sub_08052878(void);
#endif

void sub_080526F8(s32 a1);
bool32 HasDungeonMap(void);
bool32 HasDungeonCompass(void);
bool32 HasDungeonBigKey(void);
bool32 HasDungeonSmallKey(void);

bool32 ItemIsSword(u32 item);
bool32 ItemIsShield(u32 item);
u32 GetBottleContaining(u32 item);

void LoadGfxGroups(void);
void LoadCutsceneRoom(u32 room, u32 area);
void InitRoom(void);
void InitParachuteRoom(void);

void RegisterTransitionManager(void* mgr, void (*onEnter)(void), void (*onExit)(void));
void RoomExitCallback(void);

void RestoreGameTask(u32 a1);

bool32 CanDispEzloMessage(void);
void DisplayEzloMessage(void);

void SetWorldMapPos(u32 area, u32 room, u32 x, u32 y);
void SetDungeonMapPos(u32 area, u32 room, u32 x, u32 y);

/**
 * @brief Get bank offset for area
 */
u32 GetFlagBankOffset(u32 idx);

RoomResInfo* GetCurrentRoomInfo(void);
void sub_08052EA0(void);
void sub_08053250(void);
void sub_080533CC(void);

void sub_08053494(void);
void sub_080534AC(void);
void InitBiggoronTimer(void);

enum {
    GAMETASK_TRANSITION, /* transition from fileselect task */
    GAMETASK_INIT,
    GAMETASK_MAIN,
    GAMETASK_EXIT, /* gameover task or reset */
};

enum {
    GAMEMAIN_INITROOM,
    GAMEMAIN_CHANGEROOM,
    GAMEMAIN_UPDATE,
    GAMEMAIN_CHANGEAREA,
    GAMEMAIN_MINISHPORTAL, /* moments after viewing portal cutscene */
    GAMEMAIN_BARRELUPDATE, /* barrel in deepwood shrine */
    GAMEMAIN_RESERVED,
    GAMEMAIN_SUBTASK,
};

/**
 * @brief Subtasks override the game task for short periods
 */
enum {
    SUBTASK_EXIT,
    SUBTASK_PAUSEMENU,
    SUBTASK_EXIT2,
    SUBTASK_MAPHINT,
    SUBTASK_KINSTONEMENU,
    SUBTASK_AUXCUTSCENE,    /* cutscene without presence of player */
    SUBTASK_PORTALCUTSCENE, /* player "falling" down portal cutscene */
    SUBTASK_FIGURINEMENU,
    SUBTASK_WORLDEVENT,
    SUBTASK_FASTTRAVEL,
    SUBTASK_LOCALMAPHINT,
};

typedef void(Subtask)(void);
Subtask Subtask_Exit;
Subtask Subtask_PauseMenu;
Subtask Subtask_Exit;
Subtask Subtask_MapHint;
Subtask Subtask_KinstoneMenu;
Subtask Subtask_AuxCutscene;
Subtask Subtask_PortalCutscene;
Subtask Subtask_FigurineMenu;
Subtask Subtask_WorldEvent;
Subtask Subtask_FastTravel;
Subtask Subtask_LocalMapHint;

#endif // GAME_H
