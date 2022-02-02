#ifndef GAME_H
#define GAME_H

#include "global.h"
#include "area.h"

/**
 * Change the light level of the room.
 *
 * @param level The new light level.
 */
void ChangeLightLevel(s32 level);

/**
 * Set the dislayed popup state
 *
 * @param type The popup type.
 * @param choice_idx The choice index.
 */
void SetPopupState(u32 type, u32 choice_idx);

/**
 * Check if an area is overworld (not dungeon or inside).
 *
 * @param area The area to check.
 * @return True if the area is overworld.
 */
bool32 CheckAreaOverworld(u32 area);

/**
 * Check if the current area is overworld.
 *
 * @return True if the current area is overworld.
 */
bool32 AreaIsOverworld(void);

/**
 * Check if the current area is a dungeon.
 *
 * @return True if the current area is a dungeon.
 */
bool32 AreaIsDungeon(void);

/**
 * Check if the current area has enemies.
 *
 * @return True if the current area has enemies.
 */
bool32 AreaHasEnemies(void);

/**
 * Check if the current area has no enemies.
 *
 * @return True if the current area has no enemies.
 */
bool32 AreaHasNoEnemies(void);

/**
 * Check if the current area has a map
 *
 * @return True if the current area has a map.
 */
bool32 AreaHasMap(void);

/**
 * Check if current area has keys.
 *
 * @return True if the current area has keys.
 */
bool32 AreaHasKeys(void);

#ifndef EU
/**
 * This function was introduced to allow warping from indoor areas (palace of winds).
 *
 * @return True if the current area allows warping.
 */
u32 AreaAllowsWarp(void);

/**
 * Related to a music bug?
 */
void sub_08052878(void);
#endif

void sub_080526F8(s32 a1);

/**
 * Check if the current dungeon has a map item.
 *
 * @return True if the current dungeon has a map item.
 */
bool32 HasDungeonMap(void);

/**
 * Check if the current dungeon has a compass item.
 *
 * @return True if the current dungeon has a compass item.
 */
bool32 HasDungeonCompass(void);

/**
 * Check if the current dungeon has a big key item.
 *
 * @return True if the current dungeon has a big key item.
 */
bool32 HasDungeonBigKey(void);

/**
 * Check if the current dungeon has a small key item.
 *
 * @return True if the current dungeon has a small key item.
 */
bool32 HasDungeonSmallKey(void);

/**
 * @brief Check if item is a sword.
 *
 * @param item The item to check.
 * @return True if the item is a sword.
 */
bool32 ItemIsSword(u32 item);

/**
 * Check if item is a shield.
 *
 * @return True if the item is a shield.
 */
bool32 ItemIsShield(u32 item);

/**
 * @brief Get the index of the bottle containing the specified item.
 *
 * @param item The item to check.
 * @return Bottle index, or 0 if the item is not in a bottle.
 */
u32 GetBottleContaining(u32 item);

/**
 * Put an item in A or B slot.
 *
 * @param item The item to put.
 */
void PutItemOnSlot(u32 item);

/**
 * Force equip an item.
 *
 * @param item The item to equip.
 * @param slot The slot to equip the item in.
 */
void ForceEquipItem(u32 item, u32 slot);

/**
 * Get item price.
 *
 * @param item The item to get the price of.
 * @return The price of the item.
 */
s32 GetItemPrice(u32 item);

/**
 * Get the item purchase enquiry message.
 *
 * @param item The item to get the message for.
 * @return The message index.
 */
u32 GetSaleItemConfirmMessageID(u32 item);

/**
 * Automatically load overworld graphics groups.
 */
void LoadGfxGroups(void);
/**
 * Load an auxiliary room (no player present).
 *
 * @param area Area index.
 * @param room Room index.
 */
void LoadAuxiliaryRoom(u32 area, u32 room);

/**
 * Initialize a loaded room.
 */
void InitRoom(void);

/**
 * Initialize a parachute room.
 */
void InitParachuteRoom(void);

/**
 * Register a manager for room changes.
 *
 * @param mgr Manager to register.
 * @param onEnter Room enter callback.
 * @param onExit Room exit callback.
 */
void RegisterTransitionManager(void* mgr, void (*onEnter)(void*), void (*onExit)(void*));

/**
 * Call the room exit callback.
 */
void RoomExitCallback(void);

/**
 * Restore the game task from a subtask.
 *
 * @param a1
 */
void RestoreGameTask(u32 a1);

/**
 * Check if an Ezlo message can be displayed.
 *
 * @return True if an Ezlo message can be displayed.
 */
bool32 CanDispEzloMessage(void);

/**
 * Display an Ezlo message.
 */
void DisplayEzloMessage(void);

/**
 * Set the player's world map position.
 *
 * @param area Area index.
 * @param room Room index.
 * @param x X position.
 * @param y Y position.
 */
void SetWorldMapPos(u32 area, u32 room, u32 x, u32 y);

/**
 * Set the player's dungeon map position.
 *
 * @param area Area index.
 * @param room Room index.
 * @param x X position.
 * @param y Y position.
 */
void SetDungeonMapPos(u32 area, u32 room, u32 x, u32 y);

/**
 * Get flag bank offset for area
 *
 * @param idx Area index.
 * @return Flag bank offset.
 */
u32 GetFlagBankOffset(u32 idx);

/**
 * Retrieve information about the current room.
 *
 * @return RoomResInfo object.
 */
RoomResInfo* GetCurrentRoomInfo(void);

void sub_08052EA0(void);
void sub_08053250(void);
void sub_080533CC(void);

void sub_08053494(void);
void sub_080534AC(void);
void InitBiggoronTimer(void);

/** Game tasks states */
typedef enum {
    GAMETASK_TRANSITION, /* transition from fileselect task */
    GAMETASK_INIT,
    GAMETASK_MAIN,
    GAMETASK_EXIT, /* gameover task or reset */
} EGameTaskState;

/** game task main substates */
typedef enum {
    GAMEMAIN_INITROOM,
    GAMEMAIN_CHANGEROOM,
    GAMEMAIN_UPDATE,
    GAMEMAIN_CHANGEAREA,
    GAMEMAIN_MINISHPORTAL, /* moments after viewing portal cutscene */
    GAMEMAIN_BARRELUPDATE, /* barrel in deepwood shrine */
    GAMEMAIN_RESERVED,
    GAMEMAIN_SUBTASK,
} EGameMainState;

#endif // GAME_H
