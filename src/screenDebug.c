#include "global.h"
#include "functions.h"
#include "main.h"
#include "menu.h"
#include "screen.h"
#include "structures.h"
#include "textbox.h"

typedef struct {
    u16 unk0;
    u16 unk2;
    u16 unk4;
} VStruct;

extern VStruct gInput;
extern u8 gBG3Buffer[];

extern void (*const gUnk_08109A30[])();

void HandleDebugTextScreen() {
    gUnk_08109A30[gUnk_03001000.funcIndex]();
}

void sub_0805FA04(void) {
    sub_0801DA90(1);
    _DmaZero((void*)&gBG0Buffer, sizeof(BGBuffer));
    _DmaZero((void*)&gBG3Buffer, 0x1000);
    gScreen.lcd.displayControl = 0x940;
    gScreen.bg.bg1Control = 0;
    gScreen.bg.bg2Control = 0;
    gScreen.affine.bg3xOffset = 0;
    gScreen.affine.bg3yOffset = 0;
    gScreen.affine.bg3Control = 0x1e0f;
    gScreen.affine.unk4 = 1;
    sub_08056418();
    _DmaZero((void*)&gUnk_02032EC0, sizeof(UI));
    _DmaZero((void*)&gMenu, sizeof(Menu));
    gMenu.unk16 = gUnk_02000000->gameLanguage;
    sub_08053320();
    sub_0801D79C(0, 0x1144);
    gUnk_03001000.funcIndex = 1;
    sub_080A3210();
    sub_08050008();
}

void sub_0805FA98(void) {
    int iVar1;

    switch (gInput.unk2) {
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
            sub_08056418();
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
    gScreen.affine.unk4 = 1;
}

void sub_0805FBC4() {
    InitScreen(0);
}
