/**
 * @file staffroll.c
 * @ingroup Tasks
 *
 * @brief Staffroll task
 */
#include "common.h"
#include "fileselect.h"
#include "flags.h"
#include "game.h"
#include "main.h"
#include "menu.h"
#include "room.h"
#include "save.h"
#include "screen.h"
#include "subtask.h"

typedef struct {
    /*0x00*/ Menu base;
    s16 gfxEntry;
    u16 bg2XOffset;
    u16 unk_14;
    u8 unk_16;
    u8 unk_17;
    u8 unk_18;
    u8 font;
    u8 bgmMusicStarted;
    u8 unk_1b[0x14];
    u8 unk_2f;
} StaffrollMenu;
#define gStaffrollMenu (*(StaffrollMenu*)&gMenu)

const Font gUnk_08127280 = {
    &gBG1Buffer[0x21], BG_TILE_ADDR(0x188), gTextGfxBuffer, 0, 61472, 240, 0, 0, 0, 0, 0, 5, 0, 1, 0
};
const Font gUnk_08127298 = {
    &gBG1Buffer[0x30], BG_TILE_ADDR(0x188), gTextGfxBuffer, 0, 61472, 240, 0, 0, 0, 0, 0, 5, 0, 1, 0
};
const Font gUnk_081272B0 = {
    &gBG1Buffer[0x8f], BG_TILE_ADDR(0x188), gTextGfxBuffer, 0, 61472, 240, 1, 0, 0, 0, 0, 5, 0, 1, 0
};
const Font gUnk_081272C8 = {
    &gBG1Buffer[0x1cf], BG_TILE_ADDR(0x188), gTextGfxBuffer, 0, 61472, 240, 1, 0, 0, 0, 0, 5, 0, 1, 0
};

const Font* const gStaffrollFonts[] = {
    &gUnk_08127280,
    &gUnk_08127298,
    &gUnk_081272B0,
    &gUnk_081272C8,
};

// TODO figure out structure of gStaffrollMenu.base.field_0xc
extern StaffrollEntry gUnk_081272F0[];
extern StaffrollEntry gUnk_08127644[];
extern StaffrollEntry gUnk_08127998[];
extern const StaffrollGfxEntry gUnk_08127CEC[];
extern void (*const gUnk_08127D00[])(void);
extern void (*const gUnk_08127D10[])(void);

void sub_080A3954(void);

void StaffrollTask(void) {
    gRoomTransition.frameCount++;
    gUnk_08127D00[gMain.state]();
}

void StaffrollTask_State0(void) {
    gSave.saw_staffroll = TRUE;
    SetGlobalFlag(GAMECLEAR);
    gMain.state = 1;
    gStaffrollMenu.base.menuType = 0;
    gStaffrollMenu.base.transitionTimer = 180;
    gStaffrollMenu.unk_16 = 5;
    gStaffrollMenu.unk_17 = 4;
    gStaffrollMenu.bgmMusicStarted = 0;
    if (gSaveHeader->language >= LANGUAGE_FR) { // European
        gStaffrollMenu.base.field_0xc = (void*)gUnk_08127998;
    } else {
        if (gSaveHeader->language == LANGUAGE_EN) { // English
            gStaffrollMenu.base.field_0xc = (void*)gUnk_08127644;
        } else { // Japanese
            gStaffrollMenu.base.field_0xc = (void*)gUnk_081272F0;
        }
    }
    DispReset(0);
    LoadPaletteGroup(0xb);
    LoadPaletteGroup(0xc);
    SetColor(0, 0);
    gScreen.lcd.displayControl = 0x640;
    gScreen.controls.layerFXControl = 0x2442;
    gScreen.controls.alphaBlend = 0x1000;
    gScreen.bg1.control = 0x1e4d;
    gScreen.bg2.control = 0x1dc3;
    InitSoundPlayingInfo();
    ClearEventPriority();
    SetFade(FADE_IN_OUT | FADE_INSTANT, 0x100);
}

void StaffrollTask_State1(void) {
    gUnk_08127D10[gMenu.menuType]();
}

void StaffrollTask_State1MenuType0(void) {
    if (--gMenu.transitionTimer == 0) {
        sub_080A3954();
    }
}

void StaffrollTask_State1MenuType1(void) {
    if (gFadeControl.active == 0) {
        const StaffrollGfxEntry* ptr = &gUnk_08127CEC[gStaffrollMenu.gfxEntry];
        LoadPaletteGroup(ptr->paletteGroup);
        LoadGfxGroup(ptr->gfxGroup);
        MemClear(&gBG1Buffer, sizeof(gBG1Buffer));
        gScreen.bg1.updated = 1;
        gScreen.bg2.xOffset = gStaffrollMenu.bg2XOffset;
        gScreen.controls.alphaBlend = 0x1000;
        gStaffrollMenu.base.menuType = 0;
        if (gStaffrollMenu.bgmMusicStarted == 0) {
            gStaffrollMenu.bgmMusicStarted = 1;
            SoundReq(BGM_CREDITS);
        }
        SetFade(FADE_INSTANT, 8);
    }
}

void StaffrollTask_State1MenuType2(void) {
    u8 tmp;
    switch (gStaffrollMenu.base.overlayType) {
        case 0:
            MemClear(&gBG1Buffer, sizeof(gBG1Buffer));
            ShowTextBox(gStaffrollMenu.gfxEntry, gStaffrollFonts[gStaffrollMenu.font]);
            gScreen.bg1.updated = 1;
            gStaffrollMenu.base.overlayType++;
            gStaffrollMenu.unk_18 = 0;
            break;
        case 1:
            if (gFadeControl.active != 0) {
                return;
            }
            if ((gRoomTransition.frameCount & 1) != 0) {
                return;
            }
            tmp = ++gStaffrollMenu.unk_18;
            gScreen.controls.alphaBlend = (0x10 - tmp) * 0x100 | tmp;
            if (gStaffrollMenu.unk_18 >= 0x10) {
                gStaffrollMenu.base.overlayType++;
            }
            break;
        case 2:
            gStaffrollMenu.base.transitionTimer--;
            if (gStaffrollMenu.base.transitionTimer == 0) {
                gStaffrollMenu.base.overlayType++;
            }
            break;
        case 3:
            if ((gRoomTransition.frameCount & 1) != 0) {
                return;
            }
            tmp = --gStaffrollMenu.unk_18;
            gScreen.controls.alphaBlend = (0x10 - tmp) * 0x100 | tmp;
            if (gStaffrollMenu.unk_18 == 0) {
                gStaffrollMenu.base.overlayType++;
            }
            break;
        default:
            if (gFadeControl.active == 0) {
                gFadeControl.mask = 0xffffffff;
                sub_080A3954();
            }
            break;
    }
}

void StaffrollTask_State1MenuType3(void) {
    gMenu.transitionTimer--;
    if (gMenu.transitionTimer == 0) {
        sub_080A3954();
        SetFade(FADE_IN_OUT | FADE_INSTANT, 8);
    }
}

void StaffrollTask_State1MenuType4(void) {
    gFadeControl.mask = 0xffff7fff;
    SetFade(FADE_IN_OUT | FADE_INSTANT, 4);
    SetFadeProgress(gMenu.transitionTimer);
    sub_080A3954();
}

void StaffrollTask_State1MenuType5(void) {
    SetFade(FADE_INSTANT, 4);
    SetFadeProgress(gMenu.transitionTimer);
    sub_080A3954();
}

void StaffrollTask_State1MenuType6(void) {
    if (gFadeControl.active == 0) {
        MemClear(&gBG1Buffer, sizeof(gBG1Buffer));
        gScreen.bg1.updated = 1;
        MemClear(&gBG2Buffer, sizeof(gBG2Buffer));
        gScreen.bg2.updated = 1;
        gScreen.controls.alphaBlend = 0x1000;
        gMenu.menuType = 0;
        SetFade(FADE_INSTANT, 8);
    }
}

void StaffrollTask_State1MenuType7(void) {
    if (gFadeControl.active == 0) {
        SetFade(FADE_IN_OUT | FADE_BLACK_WHITE | FADE_INSTANT, 8);
        gMain.state = 2;
    }
}

void sub_080A3954(void) {
    u16* puVar1;
    u16* puVar2;
    u16* puVar3;
    u8* pbVar4;

    puVar1 = (u16*)(gStaffrollMenu.base.field_0xc + 6);
    puVar2 = (u16*)(gStaffrollMenu.base.field_0xc + 8);
    puVar3 = (u16*)(gStaffrollMenu.base.field_0xc + 10);
    pbVar4 = gStaffrollMenu.base.field_0xc + 1;
    gStaffrollMenu.base.menuType = *gStaffrollMenu.base.field_0xc;
    gStaffrollMenu.base.overlayType = 0;
    gStaffrollMenu.gfxEntry = *puVar1;
    gStaffrollMenu.base.transitionTimer = *(u16*)(gStaffrollMenu.base.field_0xc + 4);
    gStaffrollMenu.bg2XOffset = *puVar2;
    gStaffrollMenu.unk_14 = *puVar3;
    gStaffrollMenu.font = *pbVar4;
    gStaffrollMenu.base.field_0xc += 0xc;
}

void StaffrollTask_State3(void) {
    if (gFadeControl.active == 0) {
        DoSoftReset();
    }
}

void StaffrollTask_State2(void) {
    SaveResult saveResult;
    u32 choice;
    u32 tmp;
    switch (gStaffrollMenu.base.overlayType) {
        case 0:
            gStaffrollMenu.base.overlayType = 1;
            gStaffrollMenu.base.transitionTimer = 30;
            gStaffrollMenu.base.field_0x3 = 0;
            DispReset(1);
            InitSoundPlayingInfo();
            sub_080A4D34();
            LoadPaletteGroup(10);
            SetColor(0, 0);
            LoadGfxGroup(4);
            MemClear((void*)VRAM, 0x20);
            SetPopupState(0, 0);
            gScreen.lcd.displayControl |= 0x600;
            gScreen.bg1.control = 0x1c01;
            gScreen.bg2.control = 0x1d05;
            gScreen.bg2.updated = 1;
            SetFade(FADE_INSTANT, 8);
            break;
        case 1:
            if (gFadeControl.active == 0) {
                if (gStaffrollMenu.base.transitionTimer != 0) {
                    gStaffrollMenu.base.transitionTimer--;
                } else {
                    choice = gStaffrollMenu.base.field_0x3;
                    switch (gInput.newKeys) {
                        case DPAD_UP:
                            choice = 0;
                            break;
                        case DPAD_DOWN:
                            choice = 1;
                            break;
                        case A_BUTTON:
                            if (choice != 0) {
                                tmp = 4;
                            } else {
                                CreateDialogBox(8, 0);
                                tmp = 2;
                            }
                            gStaffrollMenu.base.overlayType = tmp;
                            gStaffrollMenu.base.transitionTimer = 60;
                            SoundReq(SFX_TEXTBOX_SELECT);
                            break;
                    }
                    if (gStaffrollMenu.base.field_0x3 != choice) {
                        gStaffrollMenu.base.field_0x3 = choice;
                        SetPopupState(0, choice);
                        SoundReq(SFX_TEXTBOX_CHOICE);
                    }
                }
            }
            break;
        case 2:
            saveResult = HandleSave(0);
            gStaffrollMenu.base.field_0x0 = saveResult;
            switch (saveResult) {
                case SAVE_OK:
                    gStaffrollMenu.base.overlayType = 4;
                    break;
                case SAVE_ERROR:
                    gStaffrollMenu.base.transitionTimer = 60;
                    CreateDialogBox(9, 0);
                    gStaffrollMenu.base.overlayType = 3;
                    break;
            }
            break;
        case 3:
            if (gStaffrollMenu.base.transitionTimer != 0) {
                gStaffrollMenu.base.transitionTimer--;
            } else {
                if ((gInput.newKeys & (A_BUTTON | B_BUTTON | START_BUTTON)) != 0) {
                    gStaffrollMenu.base.overlayType = 1;
                }
            }
            break;
        case 4:
        default:
            gScreen.lcd.displayControl &= 0xfdff;
            sub_08050384();
            SetFade(FADE_IN_OUT | FADE_BLACK_WHITE | FADE_INSTANT, 8);
            gMain.state = 3;
            gStaffrollMenu.base.overlayType = 0;
            break;
    }
}
