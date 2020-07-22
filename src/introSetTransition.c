#include "global.h"
#include "menu.h"
#include "main.h"
#include "entity.h"
#include "functions.h"
#include "screen.h"

extern void (*const gUnk_081320F0[])();

extern u8 gUnk_03000FD0;

typedef struct {
    char header[4];
    u8 saveFile;
    u8 field_0x5;
    u8 brightnessPref;
    u8 gameLanguage;
} struct_02000000;

typedef struct {
    u8 filler[5];
    u8 field_0x5;
} struct_02000010;

extern struct_02000010 gUnk_02000010;

u32 IntroSetTransition(u32 transition)
{
    gUnk_02032EC0.transitionType = transition;
    gUnk_03001000.field_0x3 = 2;
    _DmaZero((u32 *)&gMenu, 48);
    DoFade(7, 8);
}

void sub_080AD380()
{
  sub_080AD90C();
  switch (gUnk_03001000.field_0x3) {
      case 0:
        sub_08056418();
        _DmaZero(&gUnk_02032EC0, 0x3b4);
        IntroSetTransition(0);
        break;
      case 1:
        gUnk_081320F0[gUnk_02032EC0.transitionType]();
        break;
      case 2:
        if (gUnk_03000FD0 != 0) {
          return;
        }
        sub_0801DA90(1);
        gUnk_03001000.field_0x3 = 1;
        break;
  }
  sub_080AD918();
}

void sub_080AD3F4(void)
{
  u32 iVar1;
  u32 uVar2;
  
  iVar1 = sub_080AD84C();
  if (gMenu.secret == 0) {
    sub_0801DA90(1);
    gMenu.secret = 1;
    gMenu.transitionTimer = 0x78;
    sub_0801D7EC(0x10);
    sub_0801D7EC(1);
    if (((struct_02000000 *)0x2000000)->gameLanguage == 0) {
      uVar2 = 1;
    }
    else {
        uVar2 = 2;
    }
    LoadPalettesByPaletteGroupIndex(uVar2);
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

typedef struct {
    u16 field_0x0;
    u16 field_0x2;
    u16 field_0x4[2];
    u16 field_0x8;
} struct_03001010;

extern struct_03001010 gUnk_03001010;

extern u8 gUnk_02024490;
extern u8 gUnk_03000FD0;

void sub_080AD474(void)
{
    int iVar2;
    u32 uVar3;

    gMenu.field_0x12++;
    switch (gMenu.secret) {
        case 0:
            gMenu.secret = 1;
            gMenu.overlayType = 0;
            gMenu.transitionTimer = 0x1e;
            gMenu.field_0x2 = 7;
            EraseAllEntities();
            sub_080ADD30(sub_0801CFA8(0));
            gUnk_02024490 = 1;
            sub_0801D7EC(2);
            if (((struct_02000000*)0x2000000)->gameLanguage == 0) {
                uVar3 = 3;
            }
            else {
                uVar3 = 4;
            }
            LoadPalettesByPaletteGroupIndex(uVar3);
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
            PlaySFX(3);
            DoFade(6, 8);
            break;
        case 1:
            if (gUnk_03000FD0 != 0) {
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
                gMenu.secret++;
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
                gUnk_03001010.field_0x8 = 0xe000;
                gUnk_03001010.field_0x2 = 0x84;
                sub_080ADA14(0x1ff,0);
            }
    }
    if (gMenu.field_0x2 != ((struct_02000000*)0x2000000)->gameLanguage) {
        gMenu.field_0x2 = ((struct_02000000*)0x2000000)->gameLanguage;
        sub_0801D7EC(3);
    }
    sub_080AD89C();
    sub_0805E5C0();
    sub_080AD9B0();
}