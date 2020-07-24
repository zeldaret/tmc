#include "global.h"
#include "functions.h"
#include "screen.h"

typedef struct {
    u8 field_0x0;
    u8 field_0x1;
    u8 field_0x2;
    u8 field_0x3;
    u32 field_0x4;
    u16 fadeType; // fade in or out, are there others?
    u16 fadeSpeed; // subtracted from duration
    u16 fadeDuration;
    u16 field_0xe;
    s16 field_0x10;
    s16 field_0x12;
    s16 field_0x14;
    u16 field_0x16;
    u16 field_0x18;
} struct_03000FD0;

extern struct_03000FD0 gUnk_03000FD0;

typedef struct {
    u8 field_0x0;
    u8 field_0x1;
    u8 spritesOffset;
} struct_03000000;

extern struct_03000000 gUnk_03000000;

extern u32 gUnk_0200B644;

extern void sub_0801E104();
extern void DoFade(u32, u32);

void sub_08050024() {
    sub_0801E104();
    DoFade(5, 0x80 << 1);
    return;
}

void sub_08050038(u32 arg0)
{
  if ((gUnk_03000FD0.fadeType & 1) != 0) {
    gUnk_03000FD0.field_0xe = arg0;
  }
  else {
      gUnk_03000FD0.fadeDuration = arg0;
  }
}

void DoFade(u32 fadeType, u32 fadeSpeed)
{
  gUnk_03000FD0.fadeSpeed = fadeSpeed;
  gUnk_03000FD0.fadeType = fadeType;
  gUnk_03000FD0.field_0x0 = 1;
  gUnk_03000FD0.fadeDuration = 0x100;
  gUnk_03000FD0.field_0xe = 0;
  if ((gUnk_03000FD0.fadeType & 2) != 0) {
    gUnk_03000FD0.field_0x2 = 0xf8;
  }
  else {
    gUnk_03000FD0.field_0x2 = 0;
  }
  if ((fadeType & 8) != 0) {
    gUnk_03000000.spritesOffset = 1;
    gScreen.bg1.unk |= 0x40;
    gScreen.bg2.unk |= 0x40;
    gScreen.affine.unk2 |= 0x40;
  }
  if ((fadeType & 0x10) != 0) {
    sub_0801E1B8(gUnk_03000FD0.field_0x16, gUnk_03000FD0.field_0x18);
    sub_0801E1EC(gUnk_03000FD0.field_0x12, gUnk_03000FD0.field_0x14, gUnk_03000FD0.field_0x10);
    if ((fadeType & 1) == 0) {
      gUnk_03000FD0.fadeType &= 0xfffb;
      sub_08050008();
      gUnk_0200B644 = 0xffffffff;
    }
  }
}

void sub_080500F4(u32 arg0)
{
    gUnk_03000FD0.fadeSpeed = arg0;
    gUnk_03000FD0.fadeType ^= 1;
    gUnk_03000FD0.field_0x0 = 1;
    gUnk_03000FD0.fadeDuration = 0x100;
}

void sub_08050110(u32 param_1, u32 param_2, u32 fadeType, u32 fadeSpeed)
{
  if ((fadeType & 1) != 0) {
    gUnk_03000FD0.field_0x10 = 0x96;
  }
  else {
    gUnk_03000FD0.field_0x10 = 0;
  }
  gUnk_03000FD0.field_0x12 = param_1;
  gUnk_03000FD0.field_0x14 = param_2;
  gUnk_03000FD0.field_0x16 = 0x3f3f;
  gUnk_03000FD0.field_0x18 = 0;
  DoFade(fadeType, fadeSpeed);
}