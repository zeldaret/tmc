#include "global.h"
#include "functions.h"
#include "menu.h"
#include "structures.h"

extern void (*const gUnk_081280C4[])();

void DrawKinstoneMenu(void)
{
  gUnk_030010A0.field_0x24[8] = 2;
  sub_080AD90C();
  gUnk_081280C4[gMenu.menuType]();
  sub_080A3B74();
  sub_080A4054();
  sub_0801C1D4();
  sub_0801C208();
  sub_0805E5C0();
  sub_080AD9B0();
  sub_080AD918();
  gUnk_030010A0.field_0x24[8] = 0;
}