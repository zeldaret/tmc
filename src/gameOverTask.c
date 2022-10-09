/**
 * @file gameOverTask.c
 * @ingroup Tasks
 *
 * @brief Game Over Task
 */
#include "common.h"
#include "fade.h"
#include "fileselect.h"
#include "functions.h"
#include "game.h"
#include "main.h"
#include "menu.h"
#include "save.h"
#include "sound.h"
#include "subtask.h"

typedef void(GameOverState)(void);

static GameOverState GameOver_Init;
static GameOverState GameOver_FadeIn;
static GameOverState GameOver_TextMove;
static GameOverState GameOver_Update;
static GameOverState GameOver_Exit;

void DrawGameOverText(void);

void GameOverTask(void) {
    static GameOverState* const sStates[] = {
        GameOver_Init, GameOver_FadeIn, GameOver_TextMove, GameOver_Update, GameOver_Exit,
    };

    sStates[gMain.state]();
    if (gMain.state != GAMETASK_TRANSITION) {
        FlushSprites();
        DrawGameOverText();
        CopyOAM();
    }
}
void switch_state(u32 idx) {
    gMain.state = idx;
    SetMenuType(0);
}
void GameOver_Init(void) {
    if (gFadeControl.active)
        return;
    sub_08052010();
    gGenericMenu.unk10.a[0] = 80;
    gMenu.transitionTimer = 60;
    gSave.stats.health = 24;
    gMain.field_0x5 = 60;
    SoundReq(BGM_GAMEOVER);
    SetFadeInverted(4);
    gFadeControl.mask = 0xFFFF0001;
    switch_state(GAMETASK_INIT);
}
void GameOver_FadeIn(void) {
    if (gFadeControl.active)
        return;

    if (gMain.field_0x5 == 0) {
        if (gGenericMenu.unk10.a[0] >= 38) {
            gGenericMenu.unk10.a[0]--;
        } else {
            gMenu.transitionTimer--;
            if (gMenu.transitionTimer == 0) {
                switch_state(GAMETASK_MAIN);
#if defined(DEMO_USA) || defined(DEMO_JP)
                SoundReq(SONG_VOL_FADE_OUT);
                SetFade(FADE_IN_OUT | FADE_BLACK_WHITE | FADE_INSTANT, 4);
#else
                SetPopupState(0, 0);
                gScreen.lcd.displayControl |= DISPCNT_BG1_ON | DISPCNT_BG2_ON;
                gFadeControl.mask = 0x0000ffff;
                SetFade(FADE_INSTANT, 16);
#endif
            }
        }
    } else {
        gMain.field_0x5--;
    }
}
void GameOver_TextMove(void) {
#if defined(DEMO_USA) || defined(DEMO_JP)
    if (gFadeControl.active == 0) {
        DoSoftReset();
    }
#else
    s32 temp3;
    u32 temp2;

    if (gFadeControl.active)
        return;

    switch (gMenu.menuType) {
        case 0:
            gMenu.transitionTimer = 30;
            gMenu.field_0x3 = 0;
            SetMenuType(1);
            SetPopupState(0, 0);
            gFadeControl.mask = 0xffffffff;
            return;
        case 1:
            if (gMenu.transitionTimer == 0) {
                u32 temp = gMenu.field_0x3;
                switch (gInput.newKeys) {
                    case DPAD_UP:
                        temp = 0;
                        break;
                    case DPAD_DOWN:
                        temp = 1;
                        break;
                    case A_BUTTON:
                        if (gMenu.field_0x3 != 0) {
                            temp2 = 4;
                        } else {
                            CreateDialogBox(8, 0);
                            temp2 = 2;
                        }
                        gMenu.transitionTimer = 60;
                        SetMenuType(temp2);
                        SoundReq(SFX_TEXTBOX_SELECT);
                        break;
                }
                if (gMenu.field_0x3 != temp) {
                    gMenu.field_0x3 = temp;
                    SetPopupState(0, temp);
                    SoundReq(SFX_TEXTBOX_CHOICE);
                }
                return;
            }
            gMenu.transitionTimer--;
            return;
        case 2:
            temp3 = HandleSave(0);
            gMenu.field_0x0 = temp3;
            switch (temp3) {
                case 1:
                    SetMenuType(4);
                    break;
                case -1:
                    gMenu.transitionTimer = 60;
                    CreateDialogBox(9, 0);
                    SetMenuType(3);
                    break;
            }
            return;
        case 3:
            if (gMenu.transitionTimer != 0) {
                gMenu.transitionTimer--;
            } else if (gInput.newKeys & (A_BUTTON | B_BUTTON | START_BUTTON)) {
                SetMenuType(0);
            }
            return;
        case 4:
        default:
            gScreen.lcd.displayControl &= ~DISPCNT_BG1_ON;
            sub_08050384();
            switch_state(GAMETASK_EXIT);
            return;
    }
#endif
}
void GameOver_Update(void) {
    switch (gMenu.menuType) {
        case 0:
            gMenu.transitionTimer = 30;
            gMenu.field_0x3 = 0;
            SetMenuType(1);
            SetPopupState(1, 0);
            return;
        case 1:
            gScreen.lcd.displayControl |= DISPCNT_BG1_ON;
            if (gMenu.transitionTimer != 0) {
                gMenu.transitionTimer--;
                return;
            } else {
                u32 temp = gMenu.field_0x3;
                switch (gInput.newKeys) {
                    case DPAD_UP:
                        temp = 0;
                        break;
                    case DPAD_DOWN:
                        temp = 1;
                        break;
                    case A_BUTTON:
                        SetMenuType(2);
                        SoundReq(SFX_TEXTBOX_SELECT);
                        if (temp == 0) {
                            SetFade(FADE_IN_OUT | FADE_INSTANT, 8);
                        } else {
                            SetFade(FADE_IN_OUT | FADE_BLACK_WHITE | FADE_INSTANT, 8);
                        }
                        break;
                }
                if (gMenu.field_0x3 != temp) {
                    gMenu.field_0x3 = temp;
                    SetPopupState(1, temp);
                    SoundReq(SFX_TEXTBOX_CHOICE);
                }
            }
            return;
        case 2:
        default:
            if (gFadeControl.active == 0) {
                if (gMenu.field_0x3 == 0) {
                    SetTask(TASK_GAME);
                } else {
                    DoSoftReset();
                }
            }
            return;
    }
}

// Unused, since task is set above
// if we got here, it would be a softlock
void GameOver_Exit(void) {
}

void DrawGameOverText(void) {
    static const u8 sOffsets[] = {
        48, 68, 88, 108, 137, 156, 174, 192,
    };

    u32 i;

    gOamCmd._4 = 0;
    gOamCmd._6 = 0;
    gOamCmd._8 = 0x8600;
    gOamCmd.y = gGenericMenu.unk10.a[0];
    for (i = 0; i < 8; ++i) {
        gOamCmd.x = sOffsets[i];
#ifdef EU
        DrawDirect(0x1fc, i);
#else
        DrawDirect(0x1fd, i);
#endif
    }
}
