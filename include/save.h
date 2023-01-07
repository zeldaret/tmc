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
 * Contains all information about a save file.
 * The contents of this structure are read from and written to EEPROM.
 */
typedef struct {
    /*0x000*/ u8 invalid;     /**< File is invalid. */
    /*0x000*/ u8 initialized; /**< File is initialized. */
    /*0x002*/ u8 msg_speed;   /**< Message speed. */
    /*0x003*/ u8 brightness;  /**< Brightness. */
    /*0x004*/ u8 filler4[0x2];
    /*0x006*/ u8 saw_staffroll;
    /*0x007*/ u8 unk7;            // TODO rolling barrel state?
    /*0x008*/ u8 global_progress; /**< @see UpdateGlobalProgress */
    /*0x009*/ u8 field_0x9[0x17];
    /*0x020*/ u16 field_0x20;
    /*0x022*/ u8 field_0x22[0x1e];
    /*0x040*/ u32 windcrests; /**< Windcrest flags. */
    /*0x044*/ u8 filler44[0xC];
    /*0x050*/ u32 unk50;
    /*0x054*/ u8 filler54[0x8];
    /*0x05C*/ u32 unk5C;
    /*0x060*/ u32 areaVisitFlags[8];      /**< Area visit flags. */
    /*0x080*/ char name[FILENAME_LENGTH]; /**< Save file name. */
    /*0x086*/ u8 filler86[0x2];
    /*0x088*/ PlayerRoomStatus saved_status; /**< Player room status. */
    /*0x0A8*/ Stats stats;                   /**< Player stats. */
    /*0x0D0*/ u8 fillerD0[34];
    /*0x0F2*/ u8 inventory[36];
    /*0x116*/ u8 didAllFusions;
    /*0x117*/ u8 fusedKinstoneCount;
    /*0x118*/ u8 unk118[0x13]; // TODO also related to kinstones
    /*0x12B*/ u8 unk12B[0x16]; // TODO also related to kinstones
    /*0x141*/ u8 fuserProgress[128]; // indexed by fuser id, incremented after fusion
    /*0x1C1*/ u8 fuserOffers[128];   // available kinstone fusion for each fuser
    /*0x241*/ u8 fusedKinstones[13]; /**< Bitfield for fused kinstones. @see CheckKinstoneFused */
    /*0x24E*/ u8 unk24E[14];         // TODO something else with kinstones @see sub_0801E810
    /*0x25C*/ u8 flags[0x200];       /**< Flags. */
    /*0x45C*/ u8 dungeonKeys[0x10];  // TODO Indexed by dungeon id, keys per dungeon
    /*0x46C*/ u8 dungeonItems[0x10]; // TODO items in the dungeon. 4: compass, 2: big key, 1: small key
    /*0x46C*/ u8 dungeonWarps[0x10]; // TODO indexed by dungeon id, EnableDungeonWarp, IsDungeonWarpActive
    /*0x48C*/ u32 timers[7];
    /*0x4A8*/ u32 demo_timer; /**< Demo timer. */
    /*0x4AC*/ u8 filler4ac[0x8];
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
