#ifndef SAVE_H
#define SAVE_H

#include "global.h"
#include "player.h"
#include "structures.h"
#include "room.h"

#define FILENAME_LENGTH 6

typedef enum {
    SAVE_BUSY = 0,
    SAVE_OK = 1,
    SAVE_ERROR = -1,
} SaveResult;

typedef enum {
    SAVE_INIT,
    SAVE_IN_PROGRESS,
    SAVE_DONE,
} SaveState;

/**
 * Attempt to save the game.
 *
 * @param idx The save slot.
 * @return #SaveResult result.
 */
extern SaveResult HandleSave(u32 idx);

/**
 * Contains save data regarding kinstones
 */
typedef struct {
    u8 unused[2];          /**< unused */
    u8 didAllFusions;      /**< completed all 100 kinstone fusions */
    u8 fusedCount;         /**< number of kinstones fused */
    u8 types[19];          /**< item id for each kinstone type present in kinstone bag */
    u8 amounts[19];        /**< amount of each kinstone type above */
    u8 filler[3];          /**< unused filler */
    u8 fuserProgress[128]; /**< indexed by fuser id, incremented after fusion */
    u8 fuserOffers[128];   /**< available kinstone fusion for each fuser */
    u8 fusedKinstones[13]; /**< bitfield for fused kinstones
                            * @see CheckKinstoneFused */
    u8 fusionUnmarked[13]; /**< bitfield for disabled fusion map markers
                            * @see CheckFusionMapMarkerDisabled */
} KinstoneSave;

/**
 * Contains all information about a save file.
 * The contents of this structure are read from and written to EEPROM.
 */
typedef struct {
    /*0x000*/ u8 invalid;                    /**< save file is invalid */
    /*0x001*/ u8 initialized;                /**< save file is initialized */
    /*0x002*/ u8 msg_speed;                  /**< message speed setting */
    /*0x003*/ u8 brightness;                 /**< brightness setting */
    /*0x004*/ u8 filler4[2];                 /**< unused filler */
    /*0x006*/ u8 saw_staffroll;              /**< beat the game and watched the credits */
    /*0x007*/ u8 dws_barrel_state;           /**< state of the big barrel in DWS, 0 or 2 */
    /*0x008*/ u8 global_progress;            /**< @see UpdateGlobalProgress */
    /*0x009*/ u8 available_figurines;        /**< figurines available to get */
    /*0x00A*/ u8 fillerA[22];                /**< unused filler */
    /*0x020*/ u16 map_hints;                 /**< bitmask, used by subtask MapHint */
    /*0x022*/ u8 filler22[30];               /**< unused filler */
    /*0x040*/ u32 windcrests;                /**< upper 8 bit Windcrest flags @see WindcrestID
                                              * lower bits used for other things */
    /*0x044*/ u8 filler44[12];               /**< unused filler */
    /*0x050*/ u32 enemies_killed;            /**< number of enemies killed */
    /*0x054*/ u8 filler54[8];                /**< unused filler */
    /*0x05C*/ u32 items_bought;              /**< number of items bought in stockwells shop */
    /*0x060*/ u32 areaVisitFlags[8];         /**< Area visit flags. */
    /*0x080*/ char name[FILENAME_LENGTH];    /**< Save file name. */
    /*0x086*/ u8 filler86[2];                /**< unused filler */
    /*0x088*/ PlayerRoomStatus saved_status; /**< Player room status. */
    /*0x0A8*/ Stats stats;                   /**< Player stats. */
    /*0x0CC*/ u8 fillerCC[2];                /**< unused filler */
    /*0x0D0*/ u8 figurines[36];              /**< figurine bitset */
    /*0x0F2*/ u8 inventory[34];              /**< 2 bit per item @see Item */
    /*0x114*/ KinstoneSave kinstones;        /**< save data for kinstones @see KinstoneSave */
    /*0x25C*/ u8 flags[0x200];               /**< flags */
    /*0x45C*/ u8 dungeonKeys[0x10];          /**< indexed by dungeon id, keys per dungeon */
    /*0x46C*/ u8 dungeonItems[0x10];         /**< dungeon items 4: compass, 2: big key, 1: small key */
    /*0x47C*/ u8 dungeonWarps[0x10];         /**< indexed by dungeon id */
    /*0x48C*/ u32 darknut_timer;             /**< timer for darknut fight before Vaati fight */
    /*0x490*/ u32 drug_kill_count;           /**< "timer" enemy kill count when turning in the last drug quest item */
    /*0x494*/ u32 biggoron_timer;            /**< timer for biggoron mirror shield */
    /*0x498*/ u32 vaati_timer;               /**< timer for vaati wrath fight */
    /*0x49C*/ u32 timer4;                    /**< "timer4" unused */
    /*0x4A0*/ u32 timer5;                    /**< "timer5" unused */
    /*0x4A4*/ u32 timer6;                    /**< "timer6" unused */
    /*0x4A8*/ u32 demo_timer;                /**< timer for US demo version playtime limit */
    /*0x4AC*/ u8 filler4ac[8];               /**< unused filler */
} SaveFile;

/**
 * The current save file.
 */
extern SaveFile gSave;

/**
 * Initialize the save system.
 *
 * @return Success
 */
u32 InitSaveData(void);

/**
 * Read save header.
 *
 * @return Success.
 */
u32 ReadSaveHeader(SaveHeader*);

/**
 * Write save header.
 *
 * @return Success.
 */
u32 WriteSaveHeader(SaveHeader*);

/**
 * Read save file.
 *
 * @return Success.
 */
s32 ReadSaveFile(u32, SaveFile*);

/**
 * Mark a save file as deleted.
 *
 * @param index The save file index.
 */
void SetFileStatusDeleted(u32 index);

extern const char gUnk_0811E470[];

/**
 * Update the global progress (0 - 10).
 * There are 10 different indicators of game completion:
    9 : Flag SEIIKI_STAINED_GLASS
    8 : Flag LV5_CLEAR
    7 : Flag OUBO_KAKERA
    6 : Flag LV4_CLEAR
    5 : Flag LV3_CLEAR
    4 : Flag SOUGEN_08_TORITSUKI
    2 : Flag LV1_CLEAR
    1 : Default
    }
 */
void UpdateGlobalProgress(void);
void sub_0807CD9C(void);

#ifdef DEMO_USA
extern const u8* const demoPointers[];
extern const u8 demoUnknown1[];
#endif

#endif // SAVE_H
