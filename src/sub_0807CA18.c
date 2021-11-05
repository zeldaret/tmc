#include "global.h"
#include "structures.h"
#include "save.h"
#include "utils.h"

u8 sub_0807CA18() {
    if (gSave.unk_00 != 0x00 || gSave.unk_01 != 1) {
        gSave.unk_00 = 0;
        gSave.unk_01 = 1;
        gSave.unk8 = 1;
        gSave.stats.health = 0x18;
        gSave.stats.maxHealth = 0x18;
        gSave.unk_88 = 0x22;
        gSave.unk_89 = 0x15;
        gSave.unk_8A = 0;
        gSave.unk_8B = 0;
        gSave.unk_8F = 1;
        gSave.unk_8C = 0x90;
        gSave.unk_8E = 0x38;
    }
    if (gSave.playerName[0] == 0) {
        MemCopy(gUnk_0811E470, &gSave.playerName, 5);
    }
#ifdef DEMO
    {
        const u8* tmp;
        MemCopy(demoPointers[gSaveHeader->saveFileId], &gSave, 0x4B4);
        if (gSaveHeader->gameLanguage == 0) {
            gSave.playerName[0] = 0x97;
            gSave.playerName[1] = 0x7F;
            gSave.playerName[2] = 0xDD;
            gSave.playerName[3] = 0;
        }
        ModHealth(0xA0);
        ModRupees(-9999);
        tmp = demoUnknown1 + gUnk_02000010.field_0x7 * 3;
        gSave.unk_4a8 = tmp[gSaveHeader->saveFileId] * 3600;
    }
#endif
    return 1;
}
