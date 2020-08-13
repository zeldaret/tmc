#include "global.h"
#include "menu.h"
#include "main.h"
#include "entity.h"
#include "functions.h"
#include "readKeyInput.h"
#include "screen.h"
#include "structures.h"

static void sub_080AD3F4(void);
static void sub_080AD474(void);
static void sub_080AD670(void);
static void sub_080AD834(void);

static void (*const gUnk_081320F0[])(void) = {
    sub_080AD3F4,
    sub_080AD474,
    sub_080AD834,
};

extern const u16 gUnk_081320FC[];

u32 IntroSetTransition(u32 transition)
{
    gUnk_02032EC0.transitionType = transition;
    gUnk_03001000.funcIndex = 2;
    _DmaZero(&gMenu, sizeof(gMenu));
    DoFade(7, 8);
}

void HandleIntroScreen(void)
{
  sub_080AD90C();
  switch (gUnk_03001000.funcIndex) {
      case 0:
        sub_08056418();
        _DmaZero(&gUnk_02032EC0, 0x3b4);
        IntroSetTransition(0);
        break;
      case 1:
        gUnk_081320F0[gUnk_02032EC0.transitionType]();
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

static void sub_080AD3F4(void)
{
  u32 iVar1;
  u32 paletteGroup;
  
  iVar1 = sub_080AD84C();
  if (gMenu.menuType == 0) {
    sub_0801DA90(1);
    gMenu.menuType = 1;
    gMenu.transitionTimer = 120;
    LoadGfxGroup(16);
    LoadGfxGroup(1);
    if (((struct_02000000 *)0x2000000)->gameLanguage == 0) {
      paletteGroup = 1;
    }
    else {
        paletteGroup = 2;
    }
    LoadPaletteGroup(paletteGroup);
    gScreen.lcd.lcdControl2 |= 0x400;
    gScreen.bg2.bg0xOffset = 1;
    DoFade(6, 8);
    iVar1 = 0;
  }
  else {
    if (iVar1 == 1) {
      iVar1 = 2;
    }
  }
  if (iVar1 == 2) {
    gUnk_02000010.field_0x5 = 1;
    IntroSetTransition(1);
  }
}

// typedef struct {
//     u16 field_0x0[5];
// } struct_03001010;

extern u16 gUnk_03001010[5];

extern u8 gUnk_02024490;

static void sub_080AD474(void)
{
    int iVar2;
    u32 paletteGroup;

    gMenu.field_0x12++;
    switch (gMenu.menuType) {
        case 0:
            gMenu.menuType = 1;
            gMenu.overlayType = 0;
            gMenu.transitionTimer = 0x1e;
            gMenu.field_0x4 = 7;
            EraseAllEntities();
            sub_0801CFA8(0);
            sub_080ADD30();
            gUnk_02024490 = 1;
            LoadGfxGroup(2);
            if (((struct_02000000*)0x2000000)->gameLanguage == 0) {
                paletteGroup = 3;
            }
            else {
                paletteGroup = 4;
            }
            LoadPaletteGroup(paletteGroup);
            if (((struct_02000000*)0x2000000)->gameLanguage == 0) {
                gScreen.controls.windowOutsideControl = 0x844;
                gScreen.controls.mosaicSize = 0x909;
                gScreen.bg1.unk = 0x1c09;
                gScreen.bg2.unk = 0x1d02;
                gScreen.affine.unk2 = 0x1e03;
                gScreen.lcd.lcdControl2 |= 0x1e00;
                gScreen.bg2.bg0Control = 0xff60;
            }
            else {
                gScreen.controls.windowOutsideControl = 0x241;
                gScreen.controls.mosaicSize = 0x909;
                gScreen.lcd.lcdControl1 = 0x1d02;
                gScreen.bg1.unk = 0x1E03;
                gScreen.bg2.unk = 0x7C89;
                gScreen.lcd.lcdControl2 |= 1;
                gScreen.lcd.lcdControl2 |= 0x1300;
                gMenu.field_0x2c = 0x10;
                sub_080AD670();
            }
            sub_080A3210();
            PlaySFX(3); //fanfare
            DoFade(6, 8);
            break;
        case 1:
            if (gFadeControl.active) {
                return;
            }
            if (((struct_02000000*)0x2000000)->gameLanguage == 0) {
                sub_080AD6AC();
            }
            else {
                sub_080AD76C();
            }
            break;
        case 2:
            gMenu.transitionTimer--;
            if (gMenu.transitionTimer == 0) {
                gMenu.transitionTimer = 0xe10;
                gMenu.menuType++;
            }
            sub_080AD644();
            break;
        default:
            iVar2 = sub_080AD84C();
            if (iVar2 != 0) {
                if (iVar2 == 2) {
                    PlaySFX(0x6a);
                }
                else {
                    iVar2 = 0;
                }
                IntroSetTransition(iVar2);
                PlaySFX(0x80080000);
            }
            sub_080AD644();
            if ((gMenu.transitionTimer & 0x20) == 0) {
                gUnk_03001010[4] = 0xe000;
                gUnk_03001010[1] = 0x84;
                sub_080ADA14(0x1ff,0);
            }
    }
    if (gMenu.field_0x4 != ((struct_02000000*)0x2000000)->gameLanguage) {
        gMenu.field_0x4 = ((struct_02000000*)0x2000000)->gameLanguage;
        LoadGfxGroup(3);
    }
    sub_080AD89C();
    sub_0805E5C0();
    sub_080AD9B0();
}

void sub_080AD644(void) {

    gUnk_03001010[2] = 0;
    gUnk_03001010[3] = 0;
    gUnk_03001010[4] = 57376;
    gUnk_03001010[0] = 120;
    gUnk_03001010[1] = 152;
    sub_080ADA14(511, 1);
    return;
}

static void sub_080AD670(void)
{
    struct BgAffineSrcData aff;
    aff.texY = 0x8000;
    aff.texX = 0x8000;
    aff.scrX = 0x78;
    aff.scrY = 0x48;
    aff.alpha = 0;
    aff.sy = aff.sx = gMenu.field_0x2c;
    BgAffineSet(&aff, (struct BgAffineDstData*)&gBgControls, 1);
}

void sub_080AD6AC(void)
{
    Entity *pEVar2;

    switch (gMenu.overlayType) {
        case 0:
            if (!gFadeControl.active) {
                if ((gMenu.field_0x12 & 1) == 0) {
                    gScreen.bg2.bg0Control++;
                }

                if ((sub_080AD84C() == 2) || (gScreen.bg2.bg0Control == 0)) {
                    gMenu.overlayType++;
                    gScreen.bg2.bg0Control = 0;
                    gScreen.bg1.unk = 0xc09;
                    gFadeControl.field_0x4 = 0x40;
                    DoFade(6,0x10);
                    PlaySFX(0xf8);
                }
            }
            break;
        case 1:
            if (!gFadeControl.active) {
                gFadeControl.field_0x4 = -1;
                gMenu.overlayType++;
                gMenu.transitionTimer = 0x5a;
                pEVar2 = CreateObject(0xb4,0,0);
                if (pEVar2 != NULL) {
                    pEVar2->x.HALF.HI = 0;
                    pEVar2->y.HALF.HI = 0x48;
                }
            }
            break;
        case 2:
            if (sub_080AD84C()) {
                gMenu.menuType++;
                gMenu.transitionTimer = 0x3c;
            }
    }
}

void sub_080AD76C(void) {
    switch (gMenu.overlayType) {
        case 0:
            if (!gFadeControl.active) {
                gMenu.overlayType = 1;
                gScreen.lcd.lcdControl2 |= 0x400;
                PlaySFX(0xF6);
            }
            break;
        case 1:
            gMenu.field_0x2c += 16;
            if (gMenu.field_0x2c > 256) {
                gMenu.field_0x2c = 256;
                gMenu.transitionTimer = 40;
                gMenu.overlayType++;
                DoFade(6, 16);
            }
            sub_080AD670();
            break;
        case 2:
            if (--gMenu.transitionTimer == 0) {
                gMenu.transitionTimer = 300;
                gMenu.overlayType++;
                CreateObject(0xBD, 0, 0);
                DoFade(6, 16);
                PlaySFX(0xF8);
            }
            break;
        default:
            if (!gFadeControl.active && sub_080AD84C()) {
                gMenu.menuType++;
                gMenu.transitionTimer = 60;
            }
            break;
    }
}

static void sub_080AD834(void) {
    if (!gFadeControl.active) {
        InitScreen(SCREEN_CHOOSE_FILE);
    }
}

u32 sub_080AD84C(void) {
    u32 newKeys;

    if (gFadeControl.active) {
        return 0;
    }

    if (gUnk_02000010.field_0x5 == 0) {
        newKeys = 0;
    } else {
        newKeys = gUnk_03000FF0.newKeys & (A_BUTTON | START_BUTTON);
    }

    if (--gMenu.transitionTimer == 0) {
        return 1;
    }

    if (newKeys) {
        return 2;
    }

    return 0;
}

void sub_080AD89C(void) {
    if ((gMenu.field_0x12 & 0x7) == 0) {
        gMenu.unk10[0] = (gMenu.unk10[0] + 1) & 0x3;
        LoadPaletteGroup(gMenu.unk10[0] + 5);
    }

    if ((gMenu.field_0x12 & 0x1F) == 0) {
        gMenu.unk10[1] = (gMenu.unk10[1] + 1) & 0x7;
        gScreen.controls.mosaicSize = gUnk_081320FC[gMenu.unk10[1]];
    }
}
