#ifndef DIGGINGCAVEENTRANCEMANAGER_H
#define DIGGINGCAVEENTRANCEMANAGER_H

#include "manager.h"

typedef struct {
    Manager base;
} DiggingCaveEntranceManager;

enum DiggingCaveEntranceType {
    CAVE_LAKE_WOODS_ENTER,
    CAVE_LAKE_WOODS_LEAVE,
    CAVE_HYRULE_TOWN_ENTER,
    CAVE_HYRULE_TOWN_LEAVE,
    CAVE_EASTERN_HILL_ENTER,
    CAVE_EASTERN_HILL_LEAVE,
    CAVE_CRENEL_ENTER,
    CAVE_CRENEL_LEAVE,
    CAVE_VEIL_FALLS_ENTER,
    CAVE_VEIL_FALLS_LEAVE,
    CAVE_TRILBY_HIGHLANDS_ENTER,
    CAVE_TRILBY_HIGHLANDS_LEAVE,
    CAVE_CASTOR_WILDS_ENTER,
    CAVE_CASTOR_WILDS_LEAVE,
    CAVE_LAKE_HYLIA_NORTH_ENTER,
    CAVE_LAKE_HYLIA_NORTH_LEAVE,
    CAVE_LON_LON_RANCH_ENTER,
    CAVE_LON_LON_RANCH_LEAVE,
    CAVE_LAKE_HYLIA_CENTER_ENTER,
    CAVE_LAKE_HYLIA_CENTER_LEAVE,
};

typedef struct {
    u16 sourceTilePos; /**< Tile position for the entrance in the source room. */
    u8 sourceRoom;     /**< @see RoomID */
    u8 type;           /**< @see DiggingCaveEntranceType */
    u8 targetArea;     /**< @see AreaID */
    u8 targetRoom;     /**< @see RoomID */
    u16 targetTilePos; /**< Tile position for the entrance in the target room. */
} DiggingCaveEntrance;

typedef struct {
    const DiggingCaveEntrance* entrance;
    u16 offsetX; /**< X offset from the player to the entrance. */
    u16 offsetY; /**< Y offset from the player to the entrance. */
    bool8 isDiggingCave;
    u8 currentArea;  /**< Area the player was in before the transition. */
    u8 previousArea; /**< Previous value of currentArea. */
    u8 targetRoom;   /**< targetRoom | 0x80 ? */
} DiggingCaveEntranceTransition;
extern DiggingCaveEntranceTransition gDiggingCaveEntranceTransition;

extern const DiggingCaveEntrance* const diggingCaveEntrances[];

#endif // DIGGINGCAVEENTRANCEMANAGER_H
