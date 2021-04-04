#include "audio.h"
#include "global.h"
#include "main.h"
#include "entity.h"
#include "functions.h"
#include "utils.h"
#include "screen.h"
#include "structures.h"
#include "textbox.h"

typedef struct {
    u8 filler0[0x4];
    u8 gameLanguage;
    u8 state;
    u8 subState;
    u8 filler7[0x1];
    u16 timer;
    u8 fillerA[0x6];
    u8 lightRaysPaletteGroup;
    u8 lightRaysAlphaBlendIndex;
    u8 counter;
    u8 filler13[0x19];
    int swordBgScaleRatio;
} IntroState;

// TODO: This occupies the same memory region as gMenu
extern IntroState gIntroState;

enum {
    ADVANCE_NONE,
    ADVANCE_TIMER_EXPIRED,
    ADVANCE_KEY_PRESSED,
};

static void HandleNintendoCapcomLogos(void);
static void HandleTitlescreen(void);
static void UpdateSwordBgAffineData(void);
static void ExitTitlescreen(void);
static void HandleJapaneseTitlescreenAnimationIntro(void);
static void HandleTitlescreenAnimationIntro(void);
static u32 GetAdvanceState(void);
static void UpdateLightRays(void);
static void UpdatePressStartIcon(void);

static void (*const sIntroSequenceHandlers[])(void) = {
    HandleNintendoCapcomLogos,
    HandleTitlescreen,
    ExitTitlescreen,
};

static const u16 sLightRaysAlphaBlends[] = {
    BLDALPHA_BLEND(9, 9),  BLDALPHA_BLEND(8, 10), BLDALPHA_BLEND(7, 11), BLDALPHA_BLEND(6, 12),
    BLDALPHA_BLEND(5, 13), BLDALPHA_BLEND(6, 12), BLDALPHA_BLEND(7, 11), BLDALPHA_BLEND(8, 10),
};

static u32 AdvanceIntroSequence(u32 transition) {
    gUnk_02032EC0.lastState = transition;
    gMain.funcIndex = 2;
    MemClear(&gIntroState, sizeof(gIntroState));
    DoFade(7, 8);
}

void HandleIntroScreen(void) {
    FlushSprites();
    switch (gMain.funcIndex) {
        case 0:
            MessageInitialize();
            MemClear(&gUnk_02032EC0, sizeof(gUnk_02032EC0));
            AdvanceIntroSequence(0);
            break;
        case 1:
            sIntroSequenceHandlers[gUnk_02032EC0.lastState]();
            break;
        case 2:
            if (gFadeControl.active) {
                return;
            }
            DispReset(1);
            gMain.funcIndex = 1;
            break;
    }
    sub_080AD918();
}

static void HandleNintendoCapcomLogos(void) {
    u32 advance;
    u32 paletteGroup;

    advance = GetAdvanceState();
    if (gIntroState.state == 0) {
        DispReset(1);
        gIntroState.state = 1;
        gIntroState.timer = 120;
        LoadGfxGroup(16);
        LoadGfxGroup(1);
        if (gUnk_02000000->gameLanguage == 0) {
            paletteGroup = 1;
        } else {
            paletteGroup = 2;
        }
        LoadPaletteGroup(paletteGroup);
        gScreen.lcd.displayControl |= DISPCNT_BG2_ON;
        gScreen.bg.bg1Updated = 1;
        DoFade(6, 8);
        advance = ADVANCE_NONE;
    } else {
        if (advance == ADVANCE_TIMER_EXPIRED) {
            advance = ADVANCE_KEY_PRESSED;
        }
    }

    if (advance == ADVANCE_KEY_PRESSED) {
        gUnk_02000010.listenForKeyPresses = 1;
        AdvanceIntroSequence(1);
    }
}

static void HandleTitlescreen(void) {
    int advance;
    u32 paletteGroup;

    gIntroState.counter++;
    switch (gIntroState.state) {
        case 0:
            gIntroState.state = 1;
            gIntroState.subState = 0;
            gIntroState.timer = 30;
            gIntroState.gameLanguage = 7;
            EraseAllEntities();
            sub_0801CFA8(0);
            sub_080ADD30();
            gUnk_02024490.unk0 = 1;
            LoadGfxGroup(2);
            if (gUnk_02000000->gameLanguage == 0) {
                paletteGroup = 3;
            } else {
                paletteGroup = 4;
            }
            LoadPaletteGroup(paletteGroup);
            if (gUnk_02000000->gameLanguage == 0) {
                // Blend first and second layer
                gScreen.controls.layerFXControl = BLDCNT_TGT1_BG2 | BLDCNT_TGT2_BG3 | BLDCNT_EFFECT_BLEND;
                gScreen.controls.alphaBlend = BLDALPHA_BLEND(9, 9);
                gScreen.bg.bg1Control = 0x1c09;
                gScreen.affine.bg2Control = BGCNT_SCREENBASE(29) | BGCNT_PRIORITY(2);
                gScreen.affine.bg3Control = BGCNT_SCREENBASE(30) | BGCNT_PRIORITY(3);
                gScreen.lcd.displayControl |= DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_BG3_ON | DISPCNT_OBJ_ON;
                gScreen.bg.bg1yOffset = 0xff60;
            } else {
                gScreen.controls.layerFXControl = BLDCNT_TGT1_BG0 | BLDCNT_TGT2_BG1 | BLDCNT_EFFECT_BLEND;
                gScreen.controls.alphaBlend = BLDALPHA_BLEND(9, 9);
                gScreen.bg.bg0Control = BGCNT_SCREENBASE(29) | BGCNT_PRIORITY(2);
                gScreen.bg.bg1Control = 0x1E03;
                gScreen.affine.bg2Control = BGCNT_PRIORITY(1) | BGCNT_CHARBASE(2) | BGCNT_256COLOR |
                                            BGCNT_SCREENBASE(28) | BGCNT_WRAP | BGCNT_TXT512x256;
                gScreen.lcd.displayControl |= DISPCNT_MODE_1;
                gScreen.lcd.displayControl |= DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_OBJ_ON;
                gIntroState.swordBgScaleRatio = 0x10;
                UpdateSwordBgAffineData();
            }
            InitSoundPlayingInfo();
            SoundReq(BGM_TITLE_SCREEN);
            DoFade(6, 8);
            break;
        case 1:
            if (gFadeControl.active) {
                return;
            }
            if (gUnk_02000000->gameLanguage == 0) {
                HandleJapaneseTitlescreenAnimationIntro();
            } else {
                HandleTitlescreenAnimationIntro();
            }
            break;
        case 2:
            if (--gIntroState.timer == 0) {
                gIntroState.timer = 3600;
                gIntroState.state++;
            }
            UpdatePressStartIcon();
            break;
        default:
            advance = GetAdvanceState();
            if (advance != ADVANCE_NONE) {
                if (advance == ADVANCE_KEY_PRESSED) {
                    SoundReq(SFX_TEXTBOX_SELECT);
                } else {
                    advance = ADVANCE_NONE;
                }
                AdvanceIntroSequence(advance);
                SoundReq(SONG_VOL_FADE_OUT);
            }
            UpdatePressStartIcon();
            if ((gIntroState.timer & 0x20) == 0) {
                gOamCmd._8 = 0xe000;
                gOamCmd.y = 0x84;
                sub_080ADA14(0x1ff, 0);
            }
    }
    if (gIntroState.gameLanguage != gUnk_02000000->gameLanguage) {
        gIntroState.gameLanguage = gUnk_02000000->gameLanguage;
        LoadGfxGroup(3);
    }
    UpdateLightRays();
    sub_0805E5C0();
    sub_080AD9B0();
}

static void UpdatePressStartIcon(void) {
    gOamCmd._4 = 0;
    gOamCmd._6 = 0;
    gOamCmd._8 = 0xE020;
    gOamCmd.x = 120;
    gOamCmd.y = 152;
    sub_080ADA14(511, 1);
}

static void UpdateSwordBgAffineData(void) {
    struct BgAffineSrcData aff;
    aff.texY = 0x8000;
    aff.texX = 0x8000;
    aff.scrX = DISPLAY_WIDTH / 2;
    aff.scrY = DISPLAY_HEIGHT / 2 - 8;
    aff.alpha = 0;
    aff.sy = aff.sx = gIntroState.swordBgScaleRatio;
    BgAffineSet(&aff, (struct BgAffineDstData*)&gBgControls, 1);
}

static void HandleJapaneseTitlescreenAnimationIntro(void) {
    Entity* pEVar2;

    switch (gIntroState.subState) {
        case 0:
            if (!gFadeControl.active) {
                if ((gIntroState.counter & 1) == 0) {
                    gScreen.bg.bg1yOffset++;
                }

                if (GetAdvanceState() == ADVANCE_KEY_PRESSED || gScreen.bg.bg1yOffset == 0) {
                    gIntroState.subState++;
                    gScreen.bg.bg1yOffset = 0;
                    gScreen.bg.bg1Control = 0xc09;
                    gFadeControl.field_0x4 = 0x40;
                    DoFade(6, 0x10);
                    SoundReq(SFX_F8);
                }
            }
            break;
        case 1:
            if (!gFadeControl.active) {
                gFadeControl.field_0x4 = -1;
                gIntroState.subState++;
                gIntroState.timer = 90;
                pEVar2 = CreateObject(0xb4, 0, 0);
                if (pEVar2 != NULL) {
                    pEVar2->x.HALF.HI = 0;
                    pEVar2->y.HALF.HI = DISPLAY_HEIGHT / 2 - 8;
                }
            }
            break;
        case 2:
            if (GetAdvanceState() != ADVANCE_NONE) {
                gIntroState.state++;
                gIntroState.timer = 60;
            }
    }
}

static void HandleTitlescreenAnimationIntro(void) {
    switch (gIntroState.subState) {
        case 0:
            if (!gFadeControl.active) {
                gIntroState.subState = 1;
                gScreen.lcd.displayControl |= DISPCNT_BG2_ON;
                SoundReq(SFX_EVAPORATE);
            }
            break;
        case 1:
            gIntroState.swordBgScaleRatio += 0x10;
            if (gIntroState.swordBgScaleRatio > 0x100) {
                gIntroState.swordBgScaleRatio = 0x100;
                gIntroState.timer = 40;
                gIntroState.subState++;
                DoFade(6, 16);
            }
            UpdateSwordBgAffineData();
            break;
        case 2:
            if (--gIntroState.timer == 0) {
                gIntroState.timer = 300;
                gIntroState.subState++;
                CreateObject(0xBD, 0, 0);
                DoFade(6, 16);
                SoundReq(SFX_F8);
            }
            break;
        default:
            if (!gFadeControl.active && GetAdvanceState() != ADVANCE_NONE) {
                gIntroState.state++;
                gIntroState.timer = 60;
            }
            break;
    }
}

static void ExitTitlescreen(void) {
    if (!gFadeControl.active) {
        InitScreen(SCREEN_CHOOSE_FILE);
    }
}

static u32 GetAdvanceState(void) {
    u32 newKeys;

    if (gFadeControl.active) {
        return ADVANCE_NONE;
    }

    if (!gUnk_02000010.listenForKeyPresses) {
        newKeys = 0;
    } else {
        newKeys = gInput.newKeys & (A_BUTTON | START_BUTTON);
    }

    if (--gIntroState.timer == 0) {
        return ADVANCE_TIMER_EXPIRED;
    }

    if (newKeys) {
        return ADVANCE_KEY_PRESSED;
    }

    return ADVANCE_NONE;
}

static void UpdateLightRays(void) {
    // Periodically rotate the palette to give a shimmering effect.
    if ((gIntroState.counter & 0x7) == 0) {
        gIntroState.lightRaysPaletteGroup++;
        gIntroState.lightRaysPaletteGroup &= 0x3;
        LoadPaletteGroup(5 + gIntroState.lightRaysPaletteGroup);
    }

    // Periodically update the transparency of the light rays.
    if ((gIntroState.counter & 0x1F) == 0) {
        gIntroState.lightRaysAlphaBlendIndex = (gIntroState.lightRaysAlphaBlendIndex + 1) & 0x7;
        gScreen.controls.alphaBlend = sLightRaysAlphaBlends[gIntroState.lightRaysAlphaBlendIndex];
    }
}
