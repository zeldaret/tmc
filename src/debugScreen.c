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
    gScreen.lcd.displayControl = 0x940;
    gScreen.bg.bg0xOffset = 0;
    gScreen.bg.bg0yOffset = 0;
    gScreen.affine.bg3xOffset = 0;
    gScreen.affine.bg3yOffset = 0;
    gScreen.affine.bg3Control = 0x1e0f;
    gScreen.affine.bg3Updated = 1;
    MessageInitialize();
    MemClear((void*)&gUnk_02032EC0, sizeof(UI));
    MemClear((void*)&gMenu, sizeof(Menu));
    gMenu.unk16 = gUnk_02000000->gameLanguage;
    sub_08053320();
    sub_0801D79C(0, 0x1144);
    gMain.funcIndex = 1;
    InitSoundPlayingInfo();
    sub_08050008();
}

void sub_0805FA98(void) {
    int iVar1;

    switch (gInput.newKeys) {
        case 0x40:
            gMenu.focusCoords[1] -= 1;
            break;
        case 0x80:
            gMenu.focusCoords[1] += 1;
            break;
        case 0x200:
            gMenu.focusCoords[0] ^= 1;
            if (gMenu.focusCoords[0] == 0) {
                gScreen.bg.bg0Control = 0x1f0c;
                gScreen.affine.bg3Control = 0x1e0f;
            } else {
                gScreen.bg.bg0Control = 0x1f0f;
                gScreen.affine.bg3Control = 0x1e0c;
            }
            break;
        case 0x100:
            gUnk_02000000->gameLanguage = gMenu.unk16;
            TextboxNoOverlapFollow(gMenu.unk14 * 0x100 + gMenu.unk15);
            break;
        case 0x2:
            MessageInitialize();
            break;
        default:
            switch (gInput.unk4) {
                case 0x20:
                    iVar1 = -1;
                    break;
                case 0x10:
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
    gScreen.affine.bg3Updated = 1;
}

void sub_0805FBC4() {
    InitScreen(0);
}
