#ifndef GAME_H
#define GAME_H

#include "global.h"
#include "area.h"
#include "structures.h"

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

/**
 * Modify the number of keys the player has for the current dungeon.
 */
void ModDungeonKeys(s32 keys);

/**
 * Check if the player has at least one small key for the current dungeon.
 *
 * @return True if the player has a small key.
 */
bool32 HasDungeonSmallKey(void);

/**
 * Check if the player has the big key for the current dungeon.
 *
 * @return True if the player has the big key.
 */
bool32 HasDungeonBigKey(void);

/**
 * Check if the player has the compass for the current dungeon.
 *
 * @return True if the player has the compass.
 */
bool32 HasDungeonCompass(void);

/**
 * Check if the player has the map for the current dungeon.
 *
 * @return True if the player has the map.
 */
bool32 HasDungeonMap(void);

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
void ForceEquipItem(u32 item, /*EquipSlot*/ u32 slot);

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
void RestoreGameTask(bool32 loadGfx);

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

void StartDarkNutTimer(void);
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

typedef struct {
    u8 minX;
    u8 minY;
    u8 maxX;
    u8 maxY;
    u8 windcrestId; /**< Id to set in gSave.windcrests when the user entered a room in the boundaries specified above.*/
    // u8 pad;
    u16 textIndex; /**< The text to show for this area.*/
} OverworldLocation;
extern const OverworldLocation gOverworldLocations[];

typedef struct {
    const Font* font;
    u16 width;
    u16 height;
    u16 transitionTimer;
    u16 fadeSpeed;
} struct_080FCCB4;

typedef struct {
    u16 itemPrice;
    u16 unused;
    u16 saleItemConfirmMessageId;
    u16 gotItemMessageId;
} struct_080FD964;
extern const struct_080FD964 gUnk_080FD964[];

// Defined in gameUtils.c
extern void ResetTmpFlags(void);
extern void UpdateFakeScroll(void);
extern void UpdatePlayerMapCoords(void);
extern void CreateMiscManager(void);
extern void CheckAreaDiscovery(void);
extern void UpdateTimerCallbacks(void);
extern void DecreasePortalTimer(void);
extern bool32 CheckRoomExit(void);
extern bool32 CheckGameOver(void);
extern void InitializePlayer(void);
extern void LoadRoomBgm(void);
extern void sub_0805329C(void);
extern void UpdatePlayerRoomStatus(void);
extern void sub_08054524(void);
extern void sub_08052FF4(u32 area, u32 room);
extern void InitScriptData(void);
extern void LoadItemGfx(void);

// Defined in playerUtils.c
extern void CloneMapData(void);
extern void InitializeCamera(void);
extern void ForceSetPlayerState(u32);

extern void sub_080186D4(void);
extern void sub_0806F364(void);
extern void UpdateRoomTracker(void);
extern void GenerateAreaHint(void);
extern void sub_0801AE44(bool32 loadGfx);
extern void sub_080ADE24(void);
extern void CleanUpGFXSlots(void);
void sub_08051F9C(u32 a1, u32 a2, u32 a3, u32 a4);
extern void UpdateBgAnimations(void);
extern void UpdateScroll(void);
extern void sub_08018710(u32);
extern void sub_0806F38C(void);
extern void sub_08052010(void);
void ModArrows(s32);
bool32 ItemIsBottle(u32);
void ModShells(s32);
#endif // GAME_H
