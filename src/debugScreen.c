#include "global.h"
#include "utils.h"
#include "functions.h"
#include "main.h"
#include "menu.h"
#include "screen.h"
#include "structures.h"
#include "textbox.h"

extern void (*const gUnk_08109A30[])();

void HandleDebugTextScreen() {
    gUnk_08109A30[gMain.funcIndex]();
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
    MemClear((void*)&gUnk_02032EC0, sizeof(UI));
    MemClear((void*)&gMenu, sizeof(Menu));
    gMenu.unk16 = gSaveHeader->gameLanguage;
    sub_08053320();
    SetColor(0, 0x1144);
    gMain.funcIndex = 1;
    InitSoundPlayingInfo();
    sub_08050008();
}

void sub_0805FA98(void) {
    int iVar1;

    switch (gInput.newKeys) {
        case DPAD_UP:
            gMenu.focusCoords[1] -= 1;
            break;
        case DPAD_DOWN:
            gMenu.focusCoords[1] += 1;
            break;
        case L_BUTTON:
            gMenu.focusCoords[0] ^= 1;
            if (gMenu.focusCoords[0] == 0) {
                gScreen.bg0.control = BGCNT_SCREENBASE(31) | BGCNT_CHARBASE(3);
                gScreen.bg3.control = BGCNT_SCREENBASE(30) | BGCNT_CHARBASE(3) | BGCNT_PRIORITY(3);
            } else {
                gScreen.bg0.control = BGCNT_SCREENBASE(31) | BGCNT_CHARBASE(3) | BGCNT_PRIORITY(3);
                gScreen.bg3.control = BGCNT_SCREENBASE(30) | BGCNT_CHARBASE(3);
            }
            break;
        case R_BUTTON:
            gSaveHeader->gameLanguage = gMenu.unk16;
            MessageFromTarget(gMenu.unk14 * 0x100 + gMenu.unk15);
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
            switch (gMenu.focusCoords[1]) {
                case 0:
                    gMenu.unk14 = (gMenu.unk14 + iVar1 + 0x50) % 0x50;
                    break;
                case 1:
                    gMenu.unk15 += iVar1;
                    break;
                case 2:
                    gMenu.unk16 = (gMenu.unk16 + iVar1 + 7) % 7;
                    break;
            }
    }
    gMenu.focusCoords[1] = (gMenu.focusCoords[1] + 3) % 3;
    gScreen.bg3.updated = 1;
}

void sub_0805FBC4() {
    InitScreen(0);
}
