#include "global.h"
#include "menu.h"
#include "main.h"
#include "entity.h"
#include "functions.h"
#include "readKeyInput.h"
#include "screen.h"
#include "structures.h"

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
    gUnk_02032EC0.transitionType = transition;
    gUnk_03001000.funcIndex = 2;
    _DmaZero(&gIntroState, sizeof(gIntroState));
    DoFade(7, 8);
}

void HandleIntroScreen(void) {
    sub_080AD90C();
    switch (gUnk_03001000.funcIndex) {
        case 0:
            sub_08056418();
            _DmaZero(&gUnk_02032EC0, 0x3b4);
            AdvanceIntroSequence(0);
            break;
        case 1:
            sIntroSequenceHandlers[gUnk_02032EC0.transitionType]();
            break;
        case 2:
            if (gFadeControl.active) {
                return;
            }
            sub_0801DA90(1);
            gUnk_03001000.funcIndex = 1;
            break;
    }
    sub_080AD918();
}

static void HandleNintendoCapcomLogos(void) {
    u32 advance;
    u32 paletteGroup;

    advance = GetAdvanceState();
    if (gIntroState.state == 0) {
        sub_0801DA90(1);
        gIntroState.state = 1;
        gIntroState.timer = 120;
        LoadGfxGroup(16);
        LoadGfxGroup(1);
        if (((struct_02000000*)0x2000000)->gameLanguage == 0) {
            paletteGroup = 1;
        } else {
            paletteGroup = 2;
        }
        LoadPaletteGroup(paletteGroup);
        gScreen.lcd.displayControl |= 0x400;
        gScreen.bg.bg2yOffset = 1;
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

extern u16 gUnk_03001010[5];

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
            if (((struct_02000000*)0x2000000)->gameLanguage == 0) {
                paletteGroup = 3;
            } else {
                paletteGroup = 4;
            }
            LoadPaletteGroup(paletteGroup);
            if (((struct_02000000*)0x2000000)->gameLanguage == 0) {
                gScreen.controls.layerFXControl = 0x844;
                gScreen.controls.alphaBlend = BLDALPHA_BLEND(9, 9);
                gScreen.bg.bg1xOffset = 0x1c09;
                gScreen.affine.bg2Control = 0x1d02;
                gScreen.affine.bg3Control = 0x1e03;
                gScreen.lcd.displayControl |= 0x1e00;
                gScreen.bg.bg2xOffset = 0xff60;
            } else {
                gScreen.controls.layerFXControl = 0x241;
                gScreen.controls.alphaBlend = BLDALPHA_BLEND(9, 9);
                gScreen.bg.bg0Control = 0x1d02;
                gScreen.bg.bg1xOffset = 0x1E03;
                gScreen.affine.bg2Control = 0x7C89;
                gScreen.lcd.displayControl |= 1;
                gScreen.lcd.displayControl |= 0x1300;
                gIntroState.swordBgScaleRatio = 0x10;
                UpdateSwordBgAffineData();
            }
            sub_080A3210();
            PlaySFX(3); // fanfare
            DoFade(6, 8);
            break;
        case 1:
            if (gFadeControl.active) {
                return;
            }
            if (((struct_02000000*)0x2000000)->gameLanguage == 0) {
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
                    PlaySFX(0x6a);
                } else {
                    advance = ADVANCE_NONE;
                }
                AdvanceIntroSequence(advance);
                PlaySFX(0x80080000);
            }
            UpdatePressStartIcon();
            if ((gIntroState.timer & 0x20) == 0) {
                gUnk_03001010[4] = 0xe000;
                gUnk_03001010[1] = 0x84;
                sub_080ADA14(0x1ff, 0);
            }
    }
    if (gIntroState.gameLanguage != ((struct_02000000*)0x2000000)->gameLanguage) {
        gIntroState.gameLanguage = ((struct_02000000*)0x2000000)->gameLanguage;
        LoadGfxGroup(3);
    }
    UpdateLightRays();
    sub_0805E5C0();
    sub_080AD9B0();
}

static void UpdatePressStartIcon(void) {
    gUnk_03001010[2] = 0;
    gUnk_03001010[3] = 0;
    gUnk_03001010[4] = 0xE020;
    gUnk_03001010[0] = 120;
    gUnk_03001010[1] = 152;
    sub_080ADA14(511, 1);
    return;
}

static void UpdateSwordBgAffineData(void) {
    struct BgAffineSrcData aff;
    aff.texY = 0x8000;
    aff.texX = 0x8000;
    aff.scrX = 0x78;
    aff.scrY = 0x48;
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
                    gScreen.bg.bg2xOffset++;
                }

                if (GetAdvanceState() == ADVANCE_KEY_PRESSED || gScreen.bg.bg2xOffset == 0) {
                    gIntroState.subState++;
                    gScreen.bg.bg2xOffset = 0;
                    gScreen.bg.bg1xOffset = 0xc09;
                    gFadeControl.field_0x4 = 0x40;
                    DoFade(6, 0x10);
                    PlaySFX(0xf8);
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
                    pEVar2->y.HALF.HI = 0x48;
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
                gScreen.lcd.displayControl |= 0x400;
                PlaySFX(0xF6);
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
                PlaySFX(0xF8);
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
        newKeys = gUnk_03000FF0.newKeys & (A_BUTTON | START_BUTTON);
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
    // Periodically rotate the palette to give a shimmeriming effect.
    if ((gIntroState.counter & 0x7) == 0) {
        gIntroState.lightRaysPaletteGroup++;
        gIntroState.lightRaysPaletteGroup &= 0x3;
        LoadPaletteGroup(5 + gIntroState.lightRaysPaletteGroup);
    }

    // Periodiccally update the transparency of the light rays.
    if ((gIntroState.counter & 0x1F) == 0) {
        gIntroState.lightRaysAlphaBlendIndex = (gIntroState.lightRaysAlphaBlendIndex + 1) & 0x7;
        gScreen.controls.alphaBlend = sLightRaysAlphaBlends[gIntroState.lightRaysAlphaBlendIndex];
    }
}
