#ifndef DIGGINGCAVEENTRANCEMANAGER_H
#define DIGGINGCAVEENTRANCEMANAGER_H

#include "manager.h"

typedef struct {
    Manager base;
} DiggingCaveEntranceManager;

typedef struct {
    u16 sourceTilePosition; /**< Tile position for the entrance in the source room. */
    u8 sourceRoom;
    u8 type; // TODO some sort of type that is used to index gUnk_08109194
    u8 targetArea;
    u8 targetRoom;
    u16 targetTilePosition; /**< Tile position for the entrance in the target room. */
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
