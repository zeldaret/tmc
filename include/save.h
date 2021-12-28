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

extern SaveResult HandleSave(u32 arg0);

typedef struct {
    /*0x000*/ u8 unk_00;
    /*0x000*/ u8 unk_01;
    /*0x002*/ u8 messageSpeed;
    /*0x003*/ u8 brightnessPref;
    /*0x004*/ u8 filler4[0x2];
    /*0x006*/ u8 unk6;
    /*0x007*/ u8 unk7;
    /*0x008*/ u8 global_progress;
    /*0x009*/ u8 field_0x9[0x34];
    /*0x040*/ u32 windcrests;
    /*0x044*/ u8 filler44[0xC];
    /*0x050*/ u32 unk50;
    /*0x054*/ u8 filler54[0xC];
    /*0x060*/ u32 areaVisitFlags[8];
    /*0x080*/ u8 playerName[FILENAME_LENGTH];
    /*0x086*/ u8 filler86[0x2];
    /*0x088*/ PlayerWorldStatus saved_status;
    /*0x0A8*/ Stats stats;
    /*0x0D0*/ u8 fillerD0[0x71];
    /*0x141*/ u8 unk141[0x1c1 - 0x141];
    /*0x1C1*/ u8 unk1C1[0x45c - 0x1c1];
    /*0x45C*/ u8 unk45C[0x10];
    /*0x46C*/ u8 unk46C[0x20];
    /*0x48C*/ u32 unk48C[8];
    /*0x4AC*/ u8 filler4ac[0x8];
} SaveFile;

extern SaveFile gSave;

u32 InitSaveData(void);

u32 Write_02000000(struct_02000000*);
s32 ReadSaveFile(u32, SaveFile*);
u32 Read_02000000(struct_02000000*);
void SetFileStatusDeleted(u32 index);

extern const char gUnk_0811E470[];

void UpdateGlobalProgress(void);

#ifdef DEMO_USA
extern const u8* const demoPointers[];
extern const u8 demoUnknown1[];
#endif

#endif
