#include "global.h"
#include "collision.h"
#include "entity.h"
#include "room.h"
#include "area.h"
#include "game.h"
#include "asm.h"
#include "item.h"
#include "physics.h"
#include "transitions.h"
#include "functions.h"

bool32 sub_080AF0C8(Entity*);

/** The type of the movement/collision? that is done. */
typedef enum {
    CollisionType0,  // Normal/common? Used by most enemies and NPCs.
    CollisionType1,  // chaser, enemy50, fallingBoulder, ghini, keese, pesto, sensorBladeTrap, vaatiRebornEnemy,
                     // PlayerItemGust, PlayerItemHeldObject
    CollisionType2,  // acroBandits, beetle, chuchu, fireballGuy, flyingSkull, helmasaur, keaton, lakitu,
                     // miniFireballGuy, peahat, rollobite, spikedBeetle, spinyChuchu, stalfos, itemOnGround,
                     // smallIceBlock, flyingPot, object1F
    CollisionType3,  // arrowProjectile, boneProjectile, cannonballProjectile, deekuSeedProjectile, fireProjectile,
                     // gyorgMaleEnergyProjectile, iceProjectile, lakituLightning, mandiblesProjectile, rockProjectile,
                     // spikedRollers, torchTrapProjectile, v2Projectile, v3ElectricProjectile, v3HandProjectile,
                     // v3TennisBallProjectile, windProjectile
    CollisionType4,  // lilypadLarge
    CollisionType5,  // chuchu
    CollisionType6,  // npc5
    CollisionType7,  // not used?
    CollisionType8,  // not used?
    CollisionType9,  // not used?
    CollisionType10, // PlayerItemHeldObject, rollobite
    CollisionType11, // not used?
    CollisionType12, // chaser, sensorBladeTrap
} CollisionType;

/** The collision function that is evaluated for a tile depending on the x/y position of the entity in the tile. */
typedef enum {
    FilledNone = 0,
    FilledAll = 1,
    FilledNorthWest = 2,
    FilledNorthEast = 3,
    FilledSouthWest = 4,
    FilledSouthEast = 5,
    FilledSouth = 6,
    FilledNorth = 7,
    FilledWest = 8,
    FilledEast = 9
} TileFilled;

bool32 MoveNorth(Entity*, s32, s32, u32);
bool32 MoveNorthEast(Entity*, s32, s32, u32);
bool32 MoveEast(Entity*, s32, s32, u32);
bool32 MoveSouthEast(Entity*, s32, s32, u32);
bool32 MoveSouth(Entity*, s32, s32, u32);
bool32 MoveSouthWest(Entity*, s32, s32, u32);
bool32 MoveWest(Entity*, s32, s32, u32);
bool32 MoveNorthWest(Entity*, s32, s32, u32);

/** Empty */
bool32 TileCollisionFunction0(s32 x, s32 y) {
    return FALSE;
}

/** Fully filled */
bool32 TileCollisionFunction1(s32 x, s32 y) {
    return TRUE;
}
const u16 gUnk_08133918[] = {
    /*
    0b1000000000000000,
    0b1100000000000000,
    0b1110000000000000,
    0b1111000000000000,
    0b1111100000000000,
    0b1111110000000000,
    0b1111111000000000,
    0b1111111100000000,
    0b1111111110000000,
    0b1111111111000000,
    0b1111111111100000,
    0b1111111111110000,
    0b1111111111111000,
    0b1111111111111100,
    0b1111111111111110,
    0b1111111111111111,
    */
    0x8000, 0xC000, 0xE000, 0xF000, 0xF800, 0xFC00, 0xFE00, 0xFF00,
    0xFF80, 0xFFC0, 0xFFE0, 0xFFF0, 0xFFF8, 0xFFFC, 0xFFFE, 0xFFFF,
};
/** Diagonal North West filled*/
bool32 TileCollisionFunction2(s32 x, s32 y) {

    return gUnk_08133918[y & 0xf] >> (x & 0xf) & 1;
}

/** Diagonal North East filled*/
bool32 TileCollisionFunction3(s32 x, s32 y) {
    static const u16 gUnk_08133938[] = {
        /*
        0b0000000000000001,
        0b0000000000000011,
        0b0000000000000111,
        0b0000000000001111,
        0b0000000000011111,
        0b0000000000111111,
        0b0000000001111111,
        0b0000000011111111,
        0b0000000111111111,
        0b0000001111111111,
        0b0000011111111111,
        0b0000111111111111,
        0b0001111111111111,
        0b0011111111111111,
        0b0111111111111111,
        0b1111111111111111,
        */
        0x1, 0x3, 0x7, 0xF, 0x1F, 0x3F, 0x7F, 0xFF, 0x1FF, 0x3FF, 0x7FF, 0xFFF, 0x1FFF, 0x3FFF, 0x7FFF, 0xFFFF,
    };
    return gUnk_08133938[y & 0xf] >> (x & 0xf) & 1;
}

/** Diagonal South West filled*/
bool32 TileCollisionFunction4(s32 x, s32 y) {
    static const u16 gUnk_08133958[] = {
        /*
        0b1111111111111111,
        0b1111111111111110,
        0b1111111111111100,
        0b1111111111111000,
        0b1111111111110000,
        0b1111111111100000,
        0b1111111111000000,
        0b1111111110000000,
        0b1111111100000000,
        0b1111111000000000,
        0b1111110000000000,
        0b1111100000000000,
        0b1111000000000000,
        0b1110000000000000,
        0b1100000000000000,
        0b1000000000000000,
        */
        0xFFFF, 0xFFFE, 0xFFFC, 0xFFF8, 0xFFF0, 0xFFE0, 0xFFC0, 0xFF80,
        0xFF00, 0xFE00, 0xFC00, 0xF800, 0xF000, 0xE000, 0xC000, 0x8000,
    };
    return gUnk_08133958[y & 0xf] >> (x & 0xf) & 1;
}

/** Diagonal South East filled*/
bool32 TileCollisionFunction5(s32 x, s32 y) {
    static const u16 gUnk_08133978[] = {
        /*
        0b1111111111111111,
        0b0111111111111111,
        0b0011111111111111,
        0b0001111111111111,
        0b0000111111111111,
        0b0000011111111111,
        0b0000001111111111,
        0b0000000111111111,
        0b0000000011111111,
        0b0000000001111111,
        0b0000000000111111,
        0b0000000000011111,
        0b0000000000001111,
        0b0000000000000111,
        0b0000000000000011,
        0b0000000000000001,
        */
        0xFFFF, 0x7FFF, 0x3FFF, 0x1FFF, 0xFFF, 0x7FF, 0x3FF, 0x1FF, 0xFF, 0x7F, 0x3F, 0x1F, 0xF, 0x7, 0x3, 0x1,
    };
    return gUnk_08133978[y & 0xf] >> (x & 0xf) & 1;
}

/** 3/8 South filled */
bool32 TileCollisionFunction6(s32 x, s32 y) {
    static const u16 gUnk_08133998[] = {
        /*
        0b1111111111111111,
        0b1111111111111111,
        0b1111111111111111,
        0b1111111111111111,
        0b1111111111111111,
        0b1111111111111111,
        0b1111111111111111,
        0b1111111111111111,
        0b1111111111111111,
        0b1111111111111111,
        0b0000000000000000,
        0b0000000000000000,
        0b0000000000000000,
        0b0000000000000000,
        0b0000000000000000,
        0b0000000000000000,
        */
        0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    };

    return gUnk_08133998[y & 0xf] >> (x & 0xf) & 1;
}

/** 3/8 North filled */
bool32 TileCollisionFunction7(s32 x, s32 y) {
    static const u16 gUnk_081339B8[] = {
        /*
        0b0000000000000000,
        0b0000000000000000,
        0b0000000000000000,
        0b0000000000000000,
        0b0000000000000000,
        0b0000000000000000,
        0b1111111111111111,
        0b1111111111111111,
        0b1111111111111111,
        0b1111111111111111,
        0b1111111111111111,
        0b1111111111111111,
        0b1111111111111111,
        0b1111111111111111,
        0b1111111111111111,
        0b1111111111111111,
        */
        0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF,
    };
    return gUnk_081339B8[y & 0xf] >> (x & 0xf) & 1;
}

/** 3/8 West filled */
bool32 TileCollisionFunction8(s32 x, s32 y) {
    static const u16 gUnk_081339D8[] = {
        /*
        0b1111111111000000,
        0b1111111111000000,
        0b1111111111000000,
        0b1111111111000000,
        0b1111111111000000,
        0b1111111111000000,
        0b1111111111000000,
        0b1111111111000000,
        0b1111111111000000,
        0b1111111111000000,
        0b1111111111000000,
        0b1111111111000000,
        0b1111111111000000,
        0b1111111111000000,
        0b1111111111000000,
        0b1111111111000000,
        */
        0xFFC0, 0xFFC0, 0xFFC0, 0xFFC0, 0xFFC0, 0xFFC0, 0xFFC0, 0xFFC0,
        0xFFC0, 0xFFC0, 0xFFC0, 0xFFC0, 0xFFC0, 0xFFC0, 0xFFC0, 0xFFC0,
    };
    return gUnk_081339D8[y & 0xf] >> (x & 0xf) & 1;
}

/** 3/8 East filled */
bool32 TileCollisionFunction9(s32 x, s32 y) {
    static const u16 gUnk_081339F8[] = {
        /*
        0b[000001111111111,
        0b0000001111111111,
        0b0000001111111111,
        0b0000001111111111,
        0b0000001111111111,
        0b0000001111111111,
        0b0000001111111111,
        0b0000001111111111,
        0b0000001111111111,
        0b0000001111111111,
        0b0000001111111111,
        0b0000001111111111,
        0b0000001111111111,
        0b0000001111111111,
        0b0000001111111111,
        0b0000001111111111,
        */
        0x3FF, 0x3FF, 0x3FF, 0x3FF, 0x3FF, 0x3FF, 0x3FF, 0x3FF, 0x3FF, 0x3FF, 0x3FF, 0x3FF, 0x3FF, 0x3FF, 0x3FF, 0x3FF,
    };
    return gUnk_081339F8[y & 0xf] >> (x & 0xf) & 1;
}

bool32 IsTileCollision(const u8* collisionData, s32 x, s32 y, u32 collisionType) {
    static bool32 (*const tileCollisionFunctions[])(s32, s32) = {
        TileCollisionFunction0, TileCollisionFunction1, TileCollisionFunction2, TileCollisionFunction3,
        TileCollisionFunction4, TileCollisionFunction5, TileCollisionFunction6, TileCollisionFunction7,
        TileCollisionFunction8, TileCollisionFunction9,
    };

    u32 tileType = collisionData[TILE(x, y)];
    if (tileType == 0) {
        if (collisionType == 4) {
            return TRUE;
        } else {
            return FALSE;
        }
    } else {
        if (tileType < 0x10) {
            static const u8 collisionLookup[] = {
                0xff,       FilledAll, FilledNone, FilledNone, 0xff,      FilledAll, FilledNone, FilledAll, FilledAll,
                FilledAll,  0xff,      FilledAll,  0xff,       FilledAll, FilledAll, FilledAll,  FilledAll, FilledAll,
                FilledNone, FilledAll, 0xff,       FilledAll,  FilledAll, FilledAll, 0xff,       FilledAll,
            };

            if (collisionLookup[collisionType * 2 + ((tileType + 1) >> 4)] == FilledNone) {
                return FALSE;
            }
            if (collisionLookup[collisionType * 2 + ((tileType + 1) >> 4)] == FilledAll) {
                return TRUE;
            }
            // Calculation for 0xff in previous lookup.
            if ((y & 8) == 0) {
                tileType = collisionData[TILE(x, y)];
                tileType >>= 2;
            }
            if ((x & 8) == 0) {
                tileType >>= 1;
            }
            return tileType & 1;
        } else {
            if (tileType == 0xff) {
                static const u8 collisionFunctionLookup[] = {
                    FilledAll, FilledAll, FilledAll, FilledNone, FilledAll, FilledAll, FilledAll,
                    FilledAll, FilledAll, FilledAll, FilledAll,  FilledAll, FilledAll,
                };
                return tileCollisionFunctions[collisionFunctionLookup[collisionType]](x, y);
            } else {
                static const u8 collisionFunctionLookup[] = {
                    /* collisionType: 0 */
                    FilledNorthWest,
                    FilledNorthEast,
                    FilledSouthWest,
                    FilledSouthEast,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledNorthWest,
                    FilledNorthEast,
                    FilledSouthWest,
                    FilledSouthEast,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledNone,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledNone,
                    FilledAll,
                    FilledNone,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    /* collisionType: 1 */
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledAll,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledAll,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    /* collisionType: 2 */
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledNorthWest,
                    FilledNorthEast,
                    FilledSouthWest,
                    FilledSouthEast,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledNone,
                    FilledNone,
                    FilledAll,
                    FilledAll,
                    FilledNone,
                    FilledAll,
                    FilledAll,
                    FilledNone,
                    FilledAll,
                    FilledNone,
                    FilledAll,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledAll,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    /* collisionType: 3 */
                    FilledNorthWest,
                    FilledNorthEast,
                    FilledSouthWest,
                    FilledSouthEast,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledAll,
                    FilledNone,
                    FilledAll,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    /* collisionType: 4 */
                    FilledNorthWest,
                    FilledNorthEast,
                    FilledSouthWest,
                    FilledSouthEast,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledNone,
                    FilledAll,
                    FilledAll,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledAll,
                    FilledNorthWest,
                    FilledNorthEast,
                    FilledSouthWest,
                    FilledSouthEast,
                    FilledNone,
                    FilledNone,
                    FilledAll,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    /* collisionType: 5 */
                    FilledNorthWest,
                    FilledNorthEast,
                    FilledSouthWest,
                    FilledSouthEast,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledNorthWest,
                    FilledNorthEast,
                    FilledSouthWest,
                    FilledSouthEast,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledNone,
                    FilledAll,
                    FilledNone,
                    FilledAll,
                    FilledNorthWest,
                    FilledNorthEast,
                    FilledSouthWest,
                    FilledSouthEast,
                    FilledNone,
                    FilledNone,
                    FilledAll,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    /* collisionType: 6 */
                    FilledNorthWest,
                    FilledNorthEast,
                    FilledSouthWest,
                    FilledSouthEast,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledNorthWest,
                    FilledNorthEast,
                    FilledSouthWest,
                    FilledSouthEast,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledNone,
                    FilledAll,
                    FilledNone,
                    FilledNone,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledNone,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledNone,
                    FilledSouth,
                    FilledNorth,
                    FilledWest,
                    FilledEast,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    /* collisionType: 7 */
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledNone,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledNone,
                    FilledAll,
                    FilledNone,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    /* collisionType: 8 */
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledNone,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledNone,
                    FilledAll,
                    FilledNone,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    /* collisionType: 9 */
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledNorthWest,
                    FilledNorthEast,
                    FilledSouthWest,
                    FilledSouthEast,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledAll,
                    FilledAll,
                    FilledNone,
                    FilledAll,
                    FilledAll,
                    FilledNone,
                    FilledAll,
                    FilledNone,
                    FilledAll,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledAll,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    /* collisionType: 10 */
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledNorthWest,
                    FilledNorthEast,
                    FilledSouthWest,
                    FilledSouthEast,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledAll,
                    FilledAll,
                    FilledNone,
                    FilledAll,
                    FilledAll,
                    FilledNone,
                    FilledAll,
                    FilledNone,
                    FilledAll,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledAll,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    /* collisionType: 11 */
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledNone,
                    FilledAll,
                    FilledNone,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledNone,
                    FilledAll,
                    FilledNone,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    /* collisionType: 12 */
                    FilledNorthWest,
                    FilledNorthEast,
                    FilledSouthWest,
                    FilledSouthEast,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledNorthWest,
                    FilledNorthEast,
                    FilledSouthWest,
                    FilledSouthEast,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledNone,
                    FilledAll,
                    FilledNone,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledNone,
                    FilledAll,
                    FilledNone,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledNone,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    FilledAll,
                    /**/
                    FilledNone,
                };
                if (tileType > 0x6f) {
                    return TRUE;
                }

                return tileCollisionFunctions[collisionFunctionLookup[collisionType * 0x60 + tileType - 0x10]](x, y);
                // return tileCollisionFunctions[collisionFunctionLookup[collisionType][tileType - 0x10]](x, y);
            }
        }
    }
    return FALSE;
}

void CalculateEntityTileCollisions(Entity* this, u32 direction, u32 collisionType) {
    u8* collisionData;
    u32 colResult;
    Hitbox* hb;
    s32 xMin;
    s32 yMin;
    s32 temp;
    u32 hitboxUnkX;
    u32 hitboxUnkY;

    collisionData = GetLayerByIndex(this->collisionLayer)->collisionData;
    hb = this->hitbox;
    xMin = this->x.HALF.HI + hb->offset_x;
    yMin = this->y.HALF.HI + hb->offset_y;
    hitboxUnkX = hb->unk2[0];
    hitboxUnkY = hb->unk2[1];
    if ((direction & 0xf) != 0) {
        if (0xf >= direction) {
            temp = xMin + hitboxUnkX;
            colResult = IsTileCollision(collisionData, temp, yMin, collisionType);
            colResult <<= 1;
            colResult |= IsTileCollision(collisionData, temp, yMin + hitboxUnkY, collisionType);
            colResult <<= 1;
            colResult |= IsTileCollision(collisionData, temp, yMin - hitboxUnkY, collisionType);
            colResult <<= 6;
        } else {
            temp = xMin - hitboxUnkX;
            colResult = IsTileCollision(collisionData, temp, yMin, collisionType);
            colResult <<= 1;
            colResult |= IsTileCollision(collisionData, temp, yMin + hitboxUnkY, collisionType);
            colResult <<= 1;
            colResult |= IsTileCollision(collisionData, temp, yMin - hitboxUnkY, collisionType);
            colResult <<= 2;
        }
    } else {
        temp = xMin + hitboxUnkX;
        colResult = IsTileCollision(collisionData, temp, yMin, collisionType);
        colResult <<= 1;
        colResult |= IsTileCollision(collisionData, temp, yMin + hitboxUnkY, collisionType);
        colResult <<= 1;
        colResult |= IsTileCollision(collisionData, temp, yMin - hitboxUnkY, collisionType);
        colResult <<= 2;
        temp = xMin - hitboxUnkX;
        colResult |= IsTileCollision(collisionData, temp, yMin, collisionType);
        colResult <<= 1;
        colResult |= IsTileCollision(collisionData, temp, yMin + hitboxUnkY, collisionType);
        colResult <<= 1;
        colResult |= IsTileCollision(collisionData, temp, yMin - hitboxUnkY, collisionType);
        colResult <<= 2;
    }

    hitboxUnkX = hb->unk2[2];
    hitboxUnkY = hb->unk2[3];

    direction -= 8;
    if (((direction)&0xf) != 0) {
        if (direction < 0x10) {
            temp = yMin + hitboxUnkY;
            colResult |= IsTileCollision(collisionData, xMin, temp, collisionType);
            colResult <<= 1;
            colResult |= IsTileCollision(collisionData, xMin + hitboxUnkX, temp, collisionType);
            colResult <<= 1;
            colResult |= IsTileCollision(collisionData, xMin - hitboxUnkX, temp, collisionType);
            colResult <<= 5;
        } else {
            temp = yMin - hitboxUnkY;
            colResult <<= 4;
            colResult |= IsTileCollision(collisionData, xMin, temp, collisionType);
            colResult <<= 1;
            colResult |= IsTileCollision(collisionData, xMin + hitboxUnkX, temp, collisionType);
            colResult <<= 1;
            colResult |= IsTileCollision(collisionData, xMin - hitboxUnkX, temp, collisionType);
            colResult <<= 1;
        }
    } else {
        temp = yMin + hitboxUnkY;
        colResult |= IsTileCollision(collisionData, xMin, temp, collisionType);
        colResult <<= 1;
        colResult |= IsTileCollision(collisionData, xMin + hitboxUnkX, temp, collisionType);
        colResult <<= 1;
        colResult |= IsTileCollision(collisionData, xMin - hitboxUnkX, temp, collisionType);
        colResult <<= 2;
        temp = yMin - hitboxUnkY;
        colResult |= IsTileCollision(collisionData, xMin, temp, collisionType);
        colResult <<= 1;
        colResult |= IsTileCollision(collisionData, xMin + hitboxUnkX, temp, collisionType);
        colResult <<= 1;
        colResult |= IsTileCollision(collisionData, xMin - hitboxUnkX, temp, collisionType);
        colResult <<= 1;
    }
    this->collisions = colResult;
}

bool32 ProcessMovementInternal(Entity* this, s32 radius, s32 direction, u32 collisionType) {
    static bool32 (*const gDirectionalMovementFunctions[])(Entity*, s32, s32, u32) = {
        MoveNorth,
        /**/
        MoveNorthEast,
        MoveNorthEast,
        MoveNorthEast,
        MoveNorthEast,
        MoveNorthEast,
        MoveNorthEast,
        MoveNorthEast,
        /**/
        MoveEast,
        /**/
        MoveSouthEast,
        MoveSouthEast,
        MoveSouthEast,
        MoveSouthEast,
        MoveSouthEast,
        MoveSouthEast,
        MoveSouthEast,
        /**/
        MoveSouth,
        /**/
        MoveSouthWest,
        MoveSouthWest,
        MoveSouthWest,
        MoveSouthWest,
        MoveSouthWest,
        MoveSouthWest,
        MoveSouthWest,
        /**/
        MoveWest,
        /**/
        MoveNorthWest,
        MoveNorthWest,
        MoveNorthWest,
        MoveNorthWest,
        MoveNorthWest,
        MoveNorthWest,
        MoveNorthWest,
    };
    return gDirectionalMovementFunctions[direction](this, radius, direction << 3, collisionType);
}

bool32 MoveNorth(Entity* this, s32 radius, s32 angle, u32 collisionType) {
    s32 moveA = 0;
    s32 moveB = 0;
    if ((this->collisions & COL_NORTH_ANY) != COL_NONE) {
        if ((this->collisions & COL_NORTH_ANY) == COL_NORTH_WEST) {
            if ((this->collisions & COL_EAST_ANY) == COL_NONE) {
                moveA = radius * 0x100;
                this->x.WORD += moveA;
                CalculateEntityTileCollisions(this, DirectionNorthEast, collisionType);
                if ((this->collisions & COL_NORTH_ANY) == COL_NONE) {
                    moveB = gSineTable[0x40] * radius;
                    moveA = radius * 0x100;
                    this->y.WORD -= moveB;
                }
            }
        } else {
            if ((this->collisions & COL_NORTH_ANY) == COL_NORTH_EAST) {
                if ((this->collisions & COL_WEST_ANY) == COL_NONE) {
                    moveA = radius * 0x100;
                    this->x.WORD -= moveA;
                    CalculateEntityTileCollisions(this, DirectionNorthWest, collisionType);
                    if ((this->collisions & COL_NORTH_ANY) == COL_NONE) {
                        moveB = gSineTable[0x40] * radius;
                        moveA = radius * 0x100;
                        this->y.WORD -= moveB;
                    }
                }
            }
        }
    } else {
        moveA = gSineTable[0x40] * radius;
        this->y.WORD -= moveA;
    }
    if (((moveA >= -0x3333) && (moveA < 0x3333)) && ((moveB >= -0x3333) && (moveB < 0x3333))) {
        return FALSE;
    } else {
        return TRUE;
    }
}

bool32 MoveNorthEast(Entity* this, s32 radius, s32 angle, u32 collisionType) {
    s32 moveA = 0;
    s32 moveB = 0;
    s32 northCollision = (this->collisions & COL_NORTH_ANY);
    u32 northCollision2 = northCollision;
    s32 eastCollision = (this->collisions & COL_EAST_ANY);
    u32 eastCollision2 = eastCollision;
    if ((northCollision == COL_NONE) || (eastCollision == COL_NONE)) {
        if ((northCollision | eastCollision) == COL_NONE) {
            moveA = gSineTable[angle + 0x40] * radius;
            this->y.WORD -= moveA;
            moveB = gSineTable[angle] * radius;
            this->x.WORD += moveB;
        } else {
            if (northCollision2 == COL_NORTH_WEST) {
                moveA = radius * 0x100;
                this->x.WORD += moveA;
                CalculateEntityTileCollisions(this, DirectionNorthEast, collisionType);
            } else {
                if (eastCollision2 == COL_EAST_NORTH) {
                    moveA = radius * 0x100;
                    this->y.WORD -= moveA;
                    CalculateEntityTileCollisions(this, DirectionNorthEast, collisionType);
                }
            }
            if ((this->collisions & COL_NORTH_ANY) == COL_NONE) {
                moveB = gSineTable[angle + 0x40] * radius;
                this->y.WORD -= moveB;
            }
            if ((this->collisions & COL_EAST_ANY) == COL_NONE) {
                moveB = gSineTable[angle] * radius;
                this->x.WORD += moveB;
            }
        }
    }
    if (((moveA < -0x3333) || (moveA >= 0x3333))) {
        return TRUE;
    } else if ((moveB < -0x3333) || (moveB >= 0x3333)) {
        return TRUE;
    } else {
        return FALSE;
    }
}

bool32 MoveEast(Entity* this, s32 radius, s32 angle, u32 collisionType) {
    s32 moveA = 0;
    s32 moveB = 0;
    if ((this->collisions & COL_EAST_ANY) != COL_NONE) {
        if ((this->collisions & COL_EAST_ANY) == COL_EAST_SOUTH) {
            if ((this->collisions & COL_SOUTH_ANY) == COL_NONE) {
                moveA = radius * 0x100;
                this->y.WORD += moveA;
                CalculateEntityTileCollisions(this, DirectionSouthEast, collisionType);
                if ((this->collisions & COL_EAST_ANY) == COL_NONE) {
                    moveB = gSineTable[angle] * radius;
                    this->x.WORD += moveB;
                }
            }
        } else {
            if ((this->collisions & COL_EAST_ANY) == COL_EAST_NORTH) {
                if ((this->collisions & COL_NORTH_ANY) == COL_NONE) {
                    moveA = radius * 0x100;
                    this->y.WORD -= moveA;
                    CalculateEntityTileCollisions(this, DirectionNorthEast, collisionType);
                    if ((this->collisions & COL_EAST_ANY) == COL_NONE) {
                        moveB = gSineTable[angle] * radius;
                        this->x.WORD += moveB;
                    }
                }
            }
        }
    } else {
        moveA = gSineTable[angle] * radius;
        this->x.WORD += moveA;
    }
    if (((moveA >= -0x3333) && (moveA < 0x3333)) && ((moveB >= -0x3333) && (moveB < 0x3333))) {
        return FALSE;
    } else {
        return TRUE;
    }
}

bool32 MoveSouthEast(Entity* this, s32 radius, s32 angle, u32 collisionType) {
    s32 moveA = 0;
    s32 moveB = 0;
    s32 anySouth = this->collisions & COL_SOUTH_ANY;
    s32 anySouth2 = anySouth;
    s32 anyEast = this->collisions & COL_EAST_ANY;
    s32 anyEast2 = anyEast;
    if ((anySouth == COL_NONE) || (anyEast == COL_NONE)) {
        if ((anySouth | anyEast) == COL_NONE) {
            moveA = gSineTable[angle + 0x40] * radius;
            this->y.WORD -= moveA;
            moveB = gSineTable[angle] * radius;
            this->x.WORD += moveB;
        } else {
            if (anySouth2 == COL_SOUTH_WEST) {
                moveA = radius * 0x100;
                this->x.WORD += moveA;
                CalculateEntityTileCollisions(this, DirectionSouthEast, collisionType);
            } else if (anyEast2 == COL_EAST_SOUTH) {
                moveA = radius * 0x100;
                this->y.WORD += moveA;
                CalculateEntityTileCollisions(this, DirectionSouthEast, collisionType);
            }
            if ((this->collisions & COL_SOUTH_ANY) == COL_NONE) {
                moveB = gSineTable[angle + 0x40] * radius;
                this->y.WORD -= moveB;
            }
            if ((this->collisions & COL_EAST_ANY) == COL_NONE) {
                moveB = gSineTable[angle] * radius;
                this->x.WORD += moveB;
            }
        }
    }
    if (moveA < -0x3333 || moveA >= 0x3333) {
        return TRUE;
    }

    if (moveB < -0x3333 || moveB >= 0x3333) {
        return TRUE;
    }

    return FALSE;
}

bool32 MoveSouth(Entity* this, s32 radius, s32 angle, u32 collisionType) {
    s32 moveA = 0;
    s32 moveB = 0;

    if ((this->collisions & COL_SOUTH_ANY) != COL_NONE) {
        if ((this->collisions & COL_SOUTH_ANY) == COL_SOUTH_WEST) {
            if ((this->collisions & COL_EAST_ANY) == COL_NONE) {
                moveA = radius * 0x100;
                this->x.WORD += moveA;
                CalculateEntityTileCollisions(this, DirectionSouthEast, collisionType);
                if ((this->collisions & COL_SOUTH_ANY) == COL_NONE) {
                    moveB = gSineTable[angle + 0x40] * radius;
                    this->y.WORD -= moveB;
                }
            }
        } else {
            if ((this->collisions & COL_SOUTH_ANY) == COL_SOUTH_EAST) {
                if ((this->collisions & COL_WEST_ANY) == COL_NONE) {
                    moveA = radius * 0x100;
                    this->x.WORD -= moveA;
                    CalculateEntityTileCollisions(this, DirectionSouthWest, collisionType);
                    if ((this->collisions & COL_SOUTH_ANY) == COL_NONE) {
                        moveB = gSineTable[angle + 0x40] * radius;
                        this->y.WORD -= moveB;
                    }
                }
            }
        }
    } else {
        moveA = gSineTable[angle + 0x40] * radius;
        this->y.WORD -= moveA;
    }
    if (((moveA >= -0x3333) && (moveA < 0x3333)) && ((moveB >= -0x3333) && (moveB < 0x3333))) {
        return FALSE;
    } else {
        return TRUE;
    }
}

bool32 MoveSouthWest(Entity* this, s32 radius, s32 angle, u32 collisionType) {
    s32 moveA = 0;
    s32 moveB = 0;
    s32 anySouth = this->collisions & COL_SOUTH_ANY;
    s32 anySouth2 = anySouth;
    s32 anyWest = this->collisions & COL_WEST_ANY;
    s32 anyWest2 = anyWest;
    if ((anySouth == COL_NONE) || (anyWest == COL_NONE)) {
        if ((anySouth | anyWest) == COL_NONE) {
            moveA = gSineTable[angle + 0x40] * radius;
            this->y.WORD -= moveA;
            moveB = gSineTable[angle] * radius;
            this->x.WORD += moveB;
        } else {
            if (anySouth2 == COL_SOUTH_EAST) {
                moveA = radius * 0x100;
                this->x.WORD -= moveA;
                CalculateEntityTileCollisions(this, DirectionSouthWest, collisionType);
            } else if (anyWest2 == COL_WEST_SOUTH) {
                moveA = radius * 0x100;
                this->y.WORD += moveA;
                CalculateEntityTileCollisions(this, DirectionSouthWest, collisionType);
            }
            if ((this->collisions & COL_SOUTH_ANY) == COL_NONE) {
                moveB = gSineTable[angle + 0x40] * radius;
                this->y.WORD -= moveB;
            }
            if ((this->collisions & COL_WEST_ANY) == COL_NONE) {
                moveB = gSineTable[angle] * radius;
                this->x.WORD += moveB;
            }
        }
    }
    if (moveA < -0x3333 || moveA >= 0x3333) {
        return TRUE;
    }

    if (moveB < -0x3333 || moveB >= 0x3333) {
        return TRUE;
    }

    return FALSE;
}

bool32 MoveWest(Entity* this, s32 radius, s32 angle, u32 collisionType) {
    s32 moveA = 0;
    s32 moveB = 0;

    if ((this->collisions & COL_WEST_ANY) != COL_NONE) {

        if ((this->collisions & COL_WEST_ANY) == COL_WEST_SOUTH) {
            if ((this->collisions & COL_SOUTH_ANY) == COL_NONE) {
                moveA = radius * 0x100;
                this->y.WORD += moveA;
                CalculateEntityTileCollisions(this, DirectionNorthWest,
                                              collisionType); // @bug? Should this calculate for DirectionSouthWest?
                if ((this->collisions & COL_WEST_ANY) == COL_NONE) {
                    moveB = gSineTable[angle] * radius;
                    this->x.WORD += moveB;
                }
            }
        } else {
            if ((this->collisions & COL_WEST_ANY) == COL_WEST_NORTH) {
                if ((this->collisions & COL_NORTH_ANY) == COL_NONE) {
                    moveA = radius * 0x100;
                    this->y.WORD -= moveA;
                    CalculateEntityTileCollisions(this, DirectionNorthWest, collisionType);
                    if ((this->collisions & COL_WEST_ANY) == COL_NONE) {
                        moveB = gSineTable[angle] * radius;
                        this->x.WORD += moveB;
                    }
                }
            }
        }
    } else {
        moveA = gSineTable[angle] * radius;
        this->x.WORD += moveA;
    }

    if (((moveA >= -0x3333) && (moveA < 0x3333)) && ((moveB >= -0x3333) && (moveB < 0x3333))) {
        return FALSE;
    } else {
        return TRUE;
    }
}

bool32 MoveNorthWest(Entity* this, s32 radius, s32 angle, u32 collisionType) {
    s32 moveA = 0;
    s32 moveB = 0;
    u32 colNorthAny = (this->collisions & COL_NORTH_ANY);
    u32 colNorthAny2 = colNorthAny;
    u32 colWestAny = (this->collisions & COL_WEST_ANY);
    u32 colWestAny2 = colWestAny;
    if ((colNorthAny == COL_NONE) || (colWestAny == COL_NONE)) {
        if ((colNorthAny | colWestAny) == COL_NONE) {
            moveA = gSineTable[angle + 0x40] * radius;
            this->y.WORD -= moveA;
            moveB = gSineTable[angle] * radius;
            this->x.WORD += moveB;
        } else {
            if (colNorthAny2 == COL_NORTH_EAST) {
                moveA = radius * 0x100;
                this->x.WORD -= moveA;
                CalculateEntityTileCollisions(this, DirectionNorthWest, collisionType);
            } else {
                if (colWestAny2 == COL_WEST_NORTH) {
                    moveA = radius * 0x100;
                    this->y.WORD -= moveA;
                    CalculateEntityTileCollisions(this, DirectionNorthWest, collisionType);
                }
            }
            if ((this->collisions & COL_NORTH_ANY) == COL_NONE) {
                moveB = gSineTable[angle + 0x40] * radius;
                this->y.WORD -= moveB;
            }
            if ((this->collisions & COL_WEST_ANY) == COL_NONE) {
                moveB = gSineTable[angle] * radius;
                this->x.WORD += moveB;
            }
        }
    }
    if (moveA < -0x3333 || moveA >= 0x3333) {
        return TRUE;
    }

    if (moveB < -0x3333 || moveB >= 0x3333) {
        return TRUE;
    }

    return FALSE;
}

bool32 ProcessMovement0(Entity* this) {
    bool32 result;

    if (!(this->direction & DIR_NOT_MOVING_CHECK)) {
        CalculateEntityTileCollisions(this, this->direction, 0);
        result = ProcessMovementInternal(this, this->speed, this->direction, 0);
    } else {
        result = FALSE;
    }
    return result;
}

bool32 ProcessMovement1(Entity* this) {
    bool32 result;

    if (!(this->direction & DIR_NOT_MOVING_CHECK)) {
        CalculateEntityTileCollisions(this, this->direction, 1);
        result = ProcessMovementInternal(this, this->speed, this->direction, 1);
    } else {
        result = FALSE;
    }
    return result;
}

bool32 ProcessMovement2(Entity* this) {
    bool32 result;

    if (!(this->direction & DIR_NOT_MOVING_CHECK)) {
        CalculateEntityTileCollisions(this, this->direction, 2);
        result = ProcessMovementInternal(this, this->speed, this->direction, 2);
    } else {
        result = FALSE;
    }
    return result;
}

bool32 ProcessMovement10(Entity* this) {
    bool32 result;

    if (!(this->direction & DIR_NOT_MOVING_CHECK)) {
        CalculateEntityTileCollisions(this, this->direction, 10);
        result = ProcessMovementInternal(this, this->speed, this->direction, 10);
    } else {
        result = FALSE;
    }
    return result;
}

bool32 ProcessMovement12(Entity* this) {
    bool32 result;

    if (!(this->direction & DIR_NOT_MOVING_CHECK)) {
        CalculateEntityTileCollisions(this, this->direction, 12);
        result = ProcessMovementInternal(this, this->speed, this->direction, 12);
    } else {
        result = FALSE;
    }
    return result;
}

bool32 ProcessMovement0_custom(Entity* this, u32 direction, u32 speed) {
    bool32 result;

    if (!(direction & DIR_NOT_MOVING_CHECK)) {
        CalculateEntityTileCollisions(this, direction, 0);
        result = ProcessMovementInternal(this, speed, direction, 0);
    } else {
        result = FALSE;
    }
    return result;
}

bool32 ProcessMovement3(Entity* this) {
    bool32 result;

    if (!(this->direction & DIR_NOT_MOVING_CHECK) && !sub_080AF0C8(this)) {
        CalculateEntityTileCollisions(this, this->direction, 3);
        result = ProcessMovementInternal(this, this->speed, this->direction, 3);
    } else {
        result = FALSE;
    }
    return result;
}

bool32 sub_080AF0C8(Entity* this) {
    u32 tileType = GetTileTypeAtEntity(this);
    switch (tileType) {
        case 0x87:
            if (((this->direction + 7) & (0x3 | DIR_DIAGONAL | DirectionNorth | DirectionEast | DirectionSouth |
                                          DirectionWest)) < DirectionSouth) {
                this->collisions = COL_NORTH_ANY;
                return TRUE;
            }
            break;
        case 0x8a:
            if (((this->direction - 1) & (0x3 | DIR_DIAGONAL | DirectionNorth | DirectionEast | DirectionSouth |
                                          DirectionWest)) < DirectionSouth) {
                this->collisions = COL_EAST_ANY;
                return TRUE;
            }
            break;
        case 0x88:
            if (((this->direction - 9) & (0x3 | DIR_DIAGONAL | DirectionNorth | DirectionEast | DirectionSouth |
                                          DirectionWest)) < DirectionSouth) {
                this->collisions = COL_SOUTH_ANY;
                return TRUE;
            }
            break;
        case 0x89:
            if (((this->direction - 0x11) & (0x3 | DIR_DIAGONAL | DirectionNorth | DirectionEast | DirectionSouth |
                                             DirectionWest)) < DirectionSouth) {
                this->collisions = COL_WEST_ANY;
                return TRUE;
            }
            break;
    }
    return FALSE;
}

bool32 ProcessMovement4(Entity* this) {
    bool32 result;

    if (!(this->direction & DIR_NOT_MOVING_CHECK)) {
        CalculateEntityTileCollisions(this, this->direction, 4);
        result = ProcessMovementInternal(this, this->speed, this->direction, 4);
    } else {
        result = FALSE;
    }
    return result;
}

bool32 ProcessMovement5(Entity* this) {
    bool32 result;

    if (!(this->direction & DIR_NOT_MOVING_CHECK)) {
        CalculateEntityTileCollisions(this, this->direction, 5);
        result = ProcessMovementInternal(this, this->speed, this->direction, 5);
    } else {
        result = FALSE;
    }
    return result;
}

void Knockback1(Entity* this) {
    this->knockbackDuration--;
    CalculateEntityTileCollisions(this, this->knockbackDirection, 2);
    ProcessMovementInternal(this, this->knockbackSpeed, this->knockbackDirection, 2);
}

void Knockback2(Entity* this) {
    this->knockbackDuration--;
    CalculateEntityTileCollisions(this, this->knockbackDirection, 1);
    ProcessMovementInternal(this, this->knockbackSpeed, this->knockbackDirection, 1);
}

bool32 ProcessMovement6(Entity* this) {
    bool32 result;

    if (!(this->direction & DIR_NOT_MOVING_CHECK)) {
        CalculateEntityTileCollisions(this, this->direction, 6);
        result = ProcessMovementInternal(this, this->speed, this->direction, 6);
    } else {
        result = FALSE;
    }
    return result;
}

bool32 ProcessMovement6_custom(Entity* this, u32 direction, u32 speed) {
    bool32 result;

    if (!(direction & DIR_NOT_MOVING_CHECK)) {
        CalculateEntityTileCollisions(this, direction, 6);
        result = ProcessMovementInternal(this, speed, direction, 6);
    } else {
        result = FALSE;
    }
    return result;
}

void ProcessMovementInternal2(Entity* this, u32 direction, u32 speed) {
    ProcessMovementInternal(this, direction, speed, 2);
}

void sub_080AF250(s32 param_1) {
    gArea.pCurrentRoomInfo = GetCurrentRoomInfo();
    if (param_1 != 0) {
        gArea.pCurrentRoomInfo->exits = gUnk_08135190;
    } else {
        gArea.pCurrentRoomInfo->exits = gExitList_RoyalValley_ForestMaze;
    }
}

void sub_080AF284(void) {
    if (CheckPlayerInRegion(0x78, gRoomControls.height - 0x50, 0x78, 0x50)) {
        gArea.pCurrentRoomInfo = GetCurrentRoomInfo();
        gArea.pCurrentRoomInfo->exits = gUnk_08135048;
    } else {
        if (GetInventoryValue(ITEM_FOURSWORD) != 0) {
            gArea.pCurrentRoomInfo = GetCurrentRoomInfo();
            gArea.pCurrentRoomInfo->exits = gUnk_08134FBC;
        }
    }
}

void sub_080AF2E4(void) {
    if (GetInventoryValue(ITEM_FOURSWORD)) {
        gArea.pCurrentRoomInfo = GetCurrentRoomInfo();
        gArea.pCurrentRoomInfo->exits = gUnk_0813A76C;
    }
}
