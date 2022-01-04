#include "global.h"
#include "entity.h"
#include "area.h"
#include "main.h"
#include "common.h"
#include "screen.h"
#include "object.h"
#include "functions.h"

typedef struct {
    u8 filler[18];
    u32 unk;
} struct_02018EB0;

extern void (*const gUnk_080D4120[])();
extern void (*const gUnk_080D412C[])();

extern struct_02018EB0 gUnk_02018EB0;

u32 IsEnterPortal(void) {
    if (gArea.playShrinkSeq) {
        gMain.substate = 4;
        gArea.filler[8] = 0;
        gArea.filler[9] = 0;
        *(u16*)&gArea.filler[10] = 0;
        SetInitializationPriority();
        return 1;
    } else {
        gArea.filler[18] = gArea.playShrinkSeq;
        *(vu8*)&gArea.playShrinkSeq = gArea.playShrinkSeq;
        return 0;
    }
}

void GameMain_MinishPortal(void) {
    gUnk_080D4120[gArea.filler[8]]();
}

void sub_0804AAD4(void) {
    MemClear(&gUnk_02018EB0, 0x28);
    gUnk_02018EB0.unk = 0;
    EraseAllEntities();
    CreateObject(OBJECT_3D, gArea.curPortalType, 0);
    gArea.filler[8]++;
}

void sub_0804AB04(void) {
    UpdateEntities();
    if (gArea.field_0x10 != 0) {
        FlushSprites();
        DrawEntities();
        CopyOAM();
    }
}

void sub_0804AB24(void) {
    if (!gFadeControl.active) {
        gScreen.lcd.displayControl = 0;
        sub_0801E104();
        gArea.filler[8] = 0;
        MenuFadeIn(6, 0);
        gFadeControl.active = 0;
    }
}

void Subtask_PortalCutscene(void) {
    gUnk_080D412C[gArea.filler[8]]();
}
