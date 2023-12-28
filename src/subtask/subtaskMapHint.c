/**
 * @file subtask.c
 * @ingroup Subtasks
 *
 * @brief Map Hint Subtask
 */
#include "menu.h"
#include "functions.h"
#include "subtask.h"
#include "common.h"
#include "main.h"
#include "sound.h"
#include "save.h"
#include "flags.h"
#include "fileselect.h"
#include "kinstone.h"
#include "game.h"

void sub_080A6438();

void Subtask_MapHint(void) {
    extern void (*const Subtask_MapHint_Functions[])(void);
    FlushSprites();
    Subtask_MapHint_Functions[gMenu.menuType]();
    if ((gGenericMenu.unk2c & 0x20) != 0) {
        sub_080A6438();
    }
    sub_080A6498();
    CopyOAM();
}

void Subtask_MapHint_0(void) {
    extern const u16 gUnk_08128F4C[];
    u32 val;
    sub_080A4D34();
    sub_080A4DB8(4);
    sub_080A6290();
    gScreen.lcd.displayControl = gScreen.lcd.displayControl & 0xf7ff;
    SetColor(0, gPaletteBuffer[81]);
    val = gUnk_08128F4C[gUI.field_0x3];
    gSave.map_hints |= val;
    gGenericMenu.unk10.h[1] = val & gGenericMenu.unk10.h[0];
    gGenericMenu.unk10.h[0] = 0;
    gMenu.transitionTimer = 60;
    SetMenuType(1);
    SetFade(FADE_INSTANT, 8);
}

void Subtask_MapHint_1(void) {
    if (!gFadeControl.active) {
        gGenericMenu.unk2c++;
        switch (gMenu.transitionTimer) {
            case 0x1e:
                gGenericMenu.unk10.h[0] = gGenericMenu.unk10.h[1];
                gGenericMenu.unk2c = 0x20;
                SoundReq(SFX_103);
            default:
                gMenu.transitionTimer--;
                break;
            case 0:
                switch (gInput.newKeys) {
                    case A_BUTTON:
                    case B_BUTTON:
                    case START_BUTTON:
                        Subtask_Exit();
                        break;
                }
                break;
        }
    }
}
