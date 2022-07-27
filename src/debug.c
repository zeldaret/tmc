/**
 * @file debug.c
 * @ingroup Tasks
 *
 * @brief Debug task
 */

#include "global.h"
#include "sound.h"
#include "common.h"
#include "functions.h"
#include "main.h"
#include "menu.h"
#include "screen.h"
#include "message.h"
#include "game.h"

extern void (*const gUnk_08109A30[])(void);

void DebugTask(void) {
    gUnk_08109A30[gMain.state]();
}

void sub_0805FA04(void) {
    DispReset(1);
    MemClear(&gBG0Buffer, sizeof(gBG0Buffer));
    MemClear(&gBG3Buffer, sizeof(gBG3Buffer));
    gScreen.lcd.displayControl = DISPCNT_BG0_ON | DISPCNT_BG3_ON | DISPCNT_OBJ_1D_MAP;
    gScreen.bg0.xOffset = 0;
    gScreen.bg0.yOffset = 0;
    gScreen.bg3.xOffset = 0;
    gScreen.bg3.yOffset = 0;
    gScreen.bg3.control = BGCNT_SCREENBASE(30) | BGCNT_PRIORITY(3) | BGCNT_CHARBASE(3);
    gScreen.bg3.updated = 1;
    MessageInitialize();
    MemClear((void*)&gUI, sizeof(UI));
    MemClear((void*)&gGenericMenu, sizeof(GenericMenu));
    gGenericMenu.unk16 = gSaveHeader->language;
    LoadGfxGroups();
    SetColor(0, 0x1144);
    gMain.state = GAMETASK_INIT;
    InitSoundPlayingInfo();
    ResetFadeMask();
}

void sub_0805FA98(void) {
    int iVar1;

    switch (gInput.newKeys) {
        case DPAD_UP:
            gGenericMenu.unk10.a[1]--;
            break;
        case DPAD_DOWN:
            gGenericMenu.unk10.a[1]++;
            break;
        case L_BUTTON:
            gGenericMenu.unk10.a[0] ^= 1;
            if (gGenericMenu.unk10.a[0] == 0) {
                gScreen.bg0.control = BGCNT_SCREENBASE(31) | BGCNT_CHARBASE(3);
                gScreen.bg3.control = BGCNT_SCREENBASE(30) | BGCNT_CHARBASE(3) | BGCNT_PRIORITY(3);
            } else {
                gScreen.bg0.control = BGCNT_SCREENBASE(31) | BGCNT_CHARBASE(3) | BGCNT_PRIORITY(3);
                gScreen.bg3.control = BGCNT_SCREENBASE(30) | BGCNT_CHARBASE(3);
            }
            break;
        case R_BUTTON:
            gSaveHeader->language = gGenericMenu.unk16;
            MessageFromTarget(gGenericMenu.unk14 * 0x100 + gGenericMenu.unk15);
            break;
        case B_BUTTON:
            MessageInitialize();
            break;
        default:
            switch (gInput.unk4) {
                case DPAD_LEFT:
                    iVar1 = -1;
                    break;
                case DPAD_RIGHT:
                    iVar1 = 1;
                    break;
                default:
                    iVar1 = 0;
                    break;
            }
            switch (gGenericMenu.unk10.a[1]) {
                case 0:
                    gGenericMenu.unk14 = (gGenericMenu.unk14 + iVar1 + 0x50) % 0x50;
                    break;
                case 1:
                    gGenericMenu.unk15 += iVar1;
                    break;
                case 2:
                    gGenericMenu.unk16 = (gGenericMenu.unk16 + iVar1 + 7) % 7;
                    break;
            }
    }
    gGenericMenu.unk10.a[1] = (gGenericMenu.unk10.a[1] + 3) % 3;
    gScreen.bg3.updated = 1;
}

void sub_0805FBC4(void) {
    SetTask(TASK_TITLE);
}
