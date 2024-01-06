/**
 * @file diggingCaveEntranceManager.c
 * @ingroup Managers
 *
 * @brief Manages digging cave entrances
 */
#include "manager/diggingCaveEntranceManager.h"
#include "area.h"
#include "asm.h"
#include "functions.h"
#include "player.h"
#include "room.h"
#include "scroll.h"
#include "tiles.h"

void DiggingCaveEntranceManager_Main(DiggingCaveEntranceManager*);
void DiggingCaveEntranceManager_Init(DiggingCaveEntranceManager*);
void DiggingCaveEntranceManager_Action1(DiggingCaveEntranceManager*);
bool32 DiggingCaveEntranceManager_CheckEnterEntrance(DiggingCaveEntranceManager*, const DiggingCaveEntrance*);
void DiggingCaveEntranceManager_EnterEntrance(DiggingCaveEntranceManager*, const DiggingCaveEntrance*);
const DiggingCaveEntrance* GetDiggingCaveEntranceForRoom(const DiggingCaveEntrance*, int);

void DiggingCaveEntranceManager_Main(DiggingCaveEntranceManager* this) {
    static void (*const DiggingCaveEntranceManager_Actions[])(DiggingCaveEntranceManager*) = {
        DiggingCaveEntranceManager_Init,
        DiggingCaveEntranceManager_Action1,
    };
    DiggingCaveEntranceManager_Actions[super->action](this);
}

void DiggingCaveEntranceManager_Init(DiggingCaveEntranceManager* this) {
    const DiggingCaveEntrance* entrance;
    u8 room;
    u8 area;
    u16 tileIndex = SPECIAL_TILE_128;
    UpdateIsDiggingCave();
    if (gDiggingCaveEntranceTransition.isDiggingCave) {
        if (gDiggingCaveEntranceTransition.entrance == NULL) {
            gDiggingCaveEntranceTransition.previousArea = 0xff;
            room = gRoomControls.room;
            entrance = diggingCaveEntrances[gRoomControls.area];
            entrance = GetDiggingCaveEntranceForRoom(entrance, room);
            if (entrance != 0) {
                room = entrance->targetRoom;
                entrance = diggingCaveEntrances[entrance->targetArea];
                entrance = GetDiggingCaveEntranceForRoom(entrance, room);
                if (entrance != 0) {
                    gDiggingCaveEntranceTransition.entrance = entrance;
                }
            }
        }
        room = gRoomControls.room;
        entrance = diggingCaveEntrances[gRoomControls.area];
        tileIndex = SPECIAL_TILE_128;
        for (entrance = GetDiggingCaveEntranceForRoom(entrance, room); entrance != 0;
             entrance = GetDiggingCaveEntranceForRoom(entrance, room)) {
            SetTile(tileIndex, entrance->sourceTilePos + TILE_POS(-1, 1), LAYER_BOTTOM);
            SetTile(tileIndex, entrance->sourceTilePos + TILE_POS(0, 1), LAYER_BOTTOM);
            SetTile(tileIndex, entrance->sourceTilePos + TILE_POS(1, 1), LAYER_BOTTOM);
            entrance++;
        }
    }
    super->action = 1;
}

void DiggingCaveEntranceManager_Action1(DiggingCaveEntranceManager* this) {
    const DiggingCaveEntrance* entrance;
    u8 room = gRoomControls.room;
    for (entrance = diggingCaveEntrances[gRoomControls.area];
         (entrance = GetDiggingCaveEntranceForRoom(entrance, room)) != NULL &&
         !DiggingCaveEntranceManager_CheckEnterEntrance(this, entrance);
         entrance++)
        ;
}

bool32 DiggingCaveEntranceManager_CheckEnterEntrance(DiggingCaveEntranceManager* this,
                                                     const DiggingCaveEntrance* entr) {
    u16 offsetX, offsetY, offsetX2, offsetY2;
    u32 tmp, tmp2;
    if (gDiggingCaveEntranceTransition.isDiggingCave) {
        offsetX = gPlayerEntity.base.x.HALF.HI - gRoomControls.origin_x;
        offsetY = gPlayerEntity.base.y.HALF.HI - gRoomControls.origin_y;
        offsetX2 = (entr->sourceTilePos & TILE_POS_X_COMPONENT) * 16 + 8;
        offsetY2 = ((entr->sourceTilePos & TILE_POS_Y_COMPONENT) >> 6) * 16 + 0x18;
        tmp = offsetX - offsetX2;
        if (tmp + 0x18 > 0x30 || offsetY - offsetY2 + 8 > 0x10U)
            return FALSE;
        if (offsetY < offsetY2 && tmp + 0xC <= 0x18)
            return FALSE;
        DiggingCaveEntranceManager_EnterEntrance(this, entr);
        return TRUE;
    } else {
        if (COORD_TO_TILE(&gPlayerEntity.base) != entr->sourceTilePos)
            return FALSE;
        offsetY2 = gRoomControls.origin_y + ((entr->sourceTilePos >> 6) << 4) + 6;
        if (gPlayerEntity.base.y.HALF.HI >= offsetY2)
            return FALSE;
        DiggingCaveEntranceManager_EnterEntrance(this, entr);
        return TRUE;
    }
}

void DiggingCaveEntranceManager_EnterEntrance(DiggingCaveEntranceManager* this, const DiggingCaveEntrance* entr) {
    u16 isDiggingCave;
    SetInitializationPriority();
    gDiggingCaveEntranceTransition.previousArea = gDiggingCaveEntranceTransition.currentArea;
    gDiggingCaveEntranceTransition.currentArea = gRoomControls.area;
    gRoomTransition.player_status.area_next = entr->targetArea;
    gRoomTransition.player_status.room_next = entr->targetRoom;
    gRoomControls.area = entr->targetArea;
    gRoomControls.room = entr->targetRoom;
    gDiggingCaveEntranceTransition.entrance = entr;
    gDiggingCaveEntranceTransition.offsetX =
        gPlayerEntity.base.x.HALF.HI - gRoomControls.origin_x - ((entr->sourceTilePos & TILE_POS_X_COMPONENT) * 16);
    gDiggingCaveEntranceTransition.offsetY =
        gPlayerEntity.base.y.HALF.HI - gRoomControls.origin_y - ((entr->sourceTilePos & TILE_POS_Y_COMPONENT) >> 2);

#ifndef EU
    isDiggingCave = gDiggingCaveEntranceTransition.isDiggingCave;
    if (!isDiggingCave) {
        if ((entr->targetRoom | 0x80) != gDiggingCaveEntranceTransition.targetRoom) {
            gUnk_02034480.unk_00 = gDiggingCaveEntranceTransition.isDiggingCave;
        }
        gDiggingCaveEntranceTransition.targetRoom = entr->targetRoom | 0x80;
    }
#endif

    sub_08080930(entr->type);
    DeleteManager(this);
}

const DiggingCaveEntrance* GetDiggingCaveEntranceForRoom(const DiggingCaveEntrance* entr, int room) {
    for (; entr->sourceTilePos != 0xffff; entr++) {
        if (entr->sourceRoom == room)
            return entr;
    }
    return 0;
}

#define END_OF_LIST \
    { 0xffff, 0, 0, 0, 0 }

static const DiggingCaveEntrance diggingCaveEntrancesEmpty[] = { END_OF_LIST };
static const DiggingCaveEntrance diggingCaveEntrancesMinishWoods[] = {
    { TILE_POS(37, 19), ROOM_MINISH_WOODS_MAIN, CAVE_LAKE_WOODS_ENTER, AREA_LAKE_WOODS_CAVE, ROOM_LAKE_WOODS_CAVE_MAIN,
      TILE_POS(37, 51) },
    { TILE_POS(31, 15), ROOM_MINISH_WOODS_MAIN, CAVE_LAKE_WOODS_ENTER, AREA_LAKE_WOODS_CAVE, ROOM_LAKE_WOODS_CAVE_MAIN,
      TILE_POS(31, 47) },
    END_OF_LIST
};
static const DiggingCaveEntrance diggingCaveEntrancesHyruleField[] = {
    { TILE_POS(3, 11), ROOM_HYRULE_FIELD_EASTERN_HILLS_NORTH, CAVE_EASTERN_HILL_ENTER, AREA_DIG_CAVES,
      ROOM_DIG_CAVES_EASTERN_HILLS, TILE_POS(3, 11) },
    { TILE_POS(35, 5), ROOM_HYRULE_FIELD_LON_LON_RANCH, CAVE_LON_LON_RANCH_ENTER, AREA_HYLIA_DIG_CAVES,
      ROOM_HYLIA_DIG_CAVES_1, TILE_POS(8, 17) },
    { TILE_POS(5, 14), ROOM_HYRULE_FIELD_TRILBY_HIGHLANDS, CAVE_TRILBY_HIGHLANDS_ENTER, AREA_DIG_CAVES,
      ROOM_DIG_CAVES_TRILBY_HIGHLANDS, TILE_POS(5, 14) },
    { TILE_POS(16, 14), ROOM_HYRULE_FIELD_TRILBY_HIGHLANDS, CAVE_TRILBY_HIGHLANDS_ENTER, AREA_DIG_CAVES,
      ROOM_DIG_CAVES_TRILBY_HIGHLANDS, TILE_POS(16, 14) },
    END_OF_LIST
};
static const DiggingCaveEntrance diggingCaveEntrancesHyruleTown[] = { { TILE_POS(45, 24), ROOM_HYRULE_TOWN_MAIN,
                                                                        CAVE_HYRULE_TOWN_ENTER, AREA_HYRULE_DIG_CAVES,
                                                                        ROOM_HYRULE_DIG_CAVES_TOWN, TILE_POS(45, 40) },
                                                                      END_OF_LIST };
static const DiggingCaveEntrance diggingCaveEntrancesMtCrenel[] = { { TILE_POS(3, 5), ROOM_MT_CRENEL_WALL_CLIMB,
                                                                      CAVE_CRENEL_ENTER, AREA_CRENEL_DIG_CAVE,
                                                                      ROOM_CRENEL_DIG_CAVE_0, TILE_POS(3, 25) },
                                                                    END_OF_LIST };
static const DiggingCaveEntrance diggingCaveEntrancesVeilFalls[] = {
    { TILE_POS(26, 37), ROOM_VEIL_FALLS_MAIN, CAVE_VEIL_FALLS_ENTER, AREA_VEIL_FALLS_DIG_CAVE,
      ROOM_VEIL_FALLS_DIG_CAVE_0, TILE_POS(26, 37) },
    { TILE_POS(14, 39), ROOM_VEIL_FALLS_MAIN, CAVE_VEIL_FALLS_ENTER, AREA_VEIL_FALLS_DIG_CAVE,
      ROOM_VEIL_FALLS_DIG_CAVE_0, TILE_POS(14, 39) },
    END_OF_LIST
};
static const DiggingCaveEntrance diggingCaveEntrancesCastorWilds[] = {
    { TILE_POS(48, 25), ROOM_CASTOR_WILDS_MAIN, CAVE_CASTOR_WILDS_ENTER, AREA_CASTOR_WILDS_DIG_CAVE,
      ROOM_CASTOR_WILDS_DIG_CAVE_0, TILE_POS(48, 25) },
    END_OF_LIST
};
static const DiggingCaveEntrance diggingCaveEntrancesLakeHylia[] = {
    { TILE_POS(30, 5), ROOM_LAKE_HYLIA_MAIN, CAVE_LAKE_HYLIA_NORTH_ENTER, AREA_HYLIA_DIG_CAVES, ROOM_HYLIA_DIG_CAVES_1,
      TILE_POS(46, 17) },
    { TILE_POS(30, 30), ROOM_LAKE_HYLIA_MAIN, CAVE_LAKE_HYLIA_CENTER_ENTER, AREA_HYLIA_DIG_CAVES,
      ROOM_HYLIA_DIG_CAVES_0, TILE_POS(8, 9) },
    END_OF_LIST
};
static const DiggingCaveEntrance diggingCaveEntrancesLakeWoodsCave[] = {
    { TILE_POS(37, 51), ROOM_LAKE_WOODS_CAVE_MAIN, CAVE_LAKE_WOODS_LEAVE, AREA_MINISH_WOODS, ROOM_MINISH_WOODS_MAIN,
      TILE_POS(37, 19) },
    { TILE_POS(31, 47), ROOM_LAKE_WOODS_CAVE_MAIN, CAVE_LAKE_WOODS_LEAVE, AREA_MINISH_WOODS, ROOM_MINISH_WOODS_MAIN,
      TILE_POS(31, 15) },
    END_OF_LIST
};
static const DiggingCaveEntrance diggingCaveEntrancesHyruleDigCaves[] = {
    { TILE_POS(45, 40), ROOM_HYRULE_DIG_CAVES_TOWN, CAVE_HYRULE_TOWN_LEAVE, AREA_HYRULE_TOWN, ROOM_HYRULE_TOWN_MAIN,
      TILE_POS(45, 24) },
    END_OF_LIST
};
static const DiggingCaveEntrance diggingCaveEntrancesAreaDigCaves[] = {
    { TILE_POS(3, 11), ROOM_DIG_CAVES_EASTERN_HILLS, CAVE_EASTERN_HILL_LEAVE, AREA_HYRULE_FIELD,
      ROOM_HYRULE_FIELD_EASTERN_HILLS_NORTH, TILE_POS(3, 11) },
    { TILE_POS(5, 14), ROOM_DIG_CAVES_TRILBY_HIGHLANDS, CAVE_TRILBY_HIGHLANDS_LEAVE, AREA_HYRULE_FIELD,
      ROOM_HYRULE_FIELD_TRILBY_HIGHLANDS, TILE_POS(5, 14) },
    { TILE_POS(16, 14), ROOM_DIG_CAVES_TRILBY_HIGHLANDS, CAVE_TRILBY_HIGHLANDS_LEAVE, AREA_HYRULE_FIELD,
      ROOM_HYRULE_FIELD_TRILBY_HIGHLANDS, TILE_POS(16, 14) },
    END_OF_LIST
};
static const DiggingCaveEntrance diggingCaveEntrancesCrenelDigCave[] = { { TILE_POS(3, 25), ROOM_CRENEL_DIG_CAVE_0,
                                                                           CAVE_CRENEL_LEAVE, AREA_MT_CRENEL,
                                                                           ROOM_MT_CRENEL_WALL_CLIMB, TILE_POS(3, 5) },
                                                                         END_OF_LIST };
static const DiggingCaveEntrance diggingCaveEntrancesVeilFallsDigCave[] = {
    { TILE_POS(26, 37), ROOM_VEIL_FALLS_DIG_CAVE_0, CAVE_VEIL_FALLS_LEAVE, AREA_VEIL_FALLS, ROOM_VEIL_FALLS_MAIN,
      TILE_POS(26, 37) },
    { TILE_POS(14, 39), ROOM_VEIL_FALLS_DIG_CAVE_0, CAVE_VEIL_FALLS_LEAVE, AREA_VEIL_FALLS, ROOM_VEIL_FALLS_MAIN,
      TILE_POS(14, 39) },
    END_OF_LIST
};
static const DiggingCaveEntrance diggingCaveEntrancesCastorWildsDigCave[] = {
    { TILE_POS(48, 25), ROOM_CASTOR_WILDS_DIG_CAVE_0, CAVE_CASTOR_WILDS_LEAVE, AREA_CASTOR_WILDS,
      ROOM_CASTOR_WILDS_MAIN, TILE_POS(48, 25) },
    END_OF_LIST
};
static const DiggingCaveEntrance diggingCaveEntrancesHyliaDigCaves[] = {
    { TILE_POS(46, 17), ROOM_HYLIA_DIG_CAVES_1, CAVE_LAKE_HYLIA_NORTH_LEAVE, AREA_LAKE_HYLIA, ROOM_LAKE_HYLIA_MAIN,
      TILE_POS(30, 5) },
    { TILE_POS(8, 17), ROOM_HYLIA_DIG_CAVES_1, CAVE_LON_LON_RANCH_LEAVE, AREA_HYRULE_FIELD,
      ROOM_HYRULE_FIELD_LON_LON_RANCH, TILE_POS(35, 5) },
    { TILE_POS(8, 9), ROOM_HYLIA_DIG_CAVES_0, CAVE_LAKE_HYLIA_CENTER_LEAVE, AREA_LAKE_HYLIA, ROOM_LAKE_HYLIA_MAIN,
      TILE_POS(30, 30) },
    END_OF_LIST
};

/** Holds the lists of DiggingCaveEntrances indexed by area id. */
static const DiggingCaveEntrance* const diggingCaveEntrances[] = {
    diggingCaveEntrancesMinishWoods,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesHyruleTown,
    diggingCaveEntrancesHyruleField,
    diggingCaveEntrancesCastorWilds,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesMtCrenel,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesVeilFalls,
    diggingCaveEntrancesLakeHylia,
    diggingCaveEntrancesLakeWoodsCave,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesHyruleDigCaves,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesAreaDigCaves,
    diggingCaveEntrancesCrenelDigCave,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesVeilFallsDigCave,
    diggingCaveEntrancesCastorWildsDigCave,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesHyliaDigCaves,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
    diggingCaveEntrancesEmpty,
};
