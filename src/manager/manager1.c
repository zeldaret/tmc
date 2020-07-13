#include "global.h"
#include "entity.h"
#include "screen.h"

extern void sub_0801D7EC(u32);
extern void sub_08056250(void);
extern void sub_080570B8(Entity*);
void sub_080570F8(void);
extern void sub_08052D74(void*, void*, void*);

extern void (*const gUnk_08107C5C[])(Entity*);
extern void (*const gUnk_08107C48[])(Entity*);

extern u8 gUnk_08107C40[];

void Manager1(Entity *this)
{
  u8 bVar1;
  u8 *pbVar2;
  
  gUnk_08107C5C[this->action](this);
  gUnk_08107C48[((u8*)&this->field_0x20)[1]](this);
  bVar1 = gUnk_08107C40[((u8*)&this->field_0x20)[1]];
  if ((bVar1 != 0) && (*(u8 *)&this->field_0x20 != bVar1)) {
    ((u8*)&this->field_0x20)[0] = bVar1;
    sub_0801D7EC(bVar1);
  }
}

void sub_080570B8(Entity *this)
{
  u8 *pbVar1;
  
  sub_0801D7EC(((u8 *)&this->field_0x20)[0]);
  this->height.WORD = 0;
  pbVar1 = ((u8 *)&this->field_0x20 + 1);
  if (*pbVar1 == 3) {
    gScreen.affine.bg3xOffset = 1;
  }
  else {
    gUnk_08107C48[*pbVar1](this);
  }
}

void sub_080570F8(void)
{
  gScreen.lcd.lcdControl2 &= 0xf7ff;
  gScreen.controls.windowOutsideControl = 0;
  sub_08056250();
}

void sub_08057118(Entity *this)
{
  this->actionDelay = 0;
  *(u8 *)&this->field_0x20 = 0;
  ((u8 *)&this->field_0x20)[1] = 0;
  ((u8 *)&this->field_0x20)[2] = 0;
  this->action = 1;
  gScreen.affine.unk2 = 0x1e04;
  *(u16 *)&gScreen.lcd.lcdControl2 |= 0x800;
  gScreen.controls.windowOutsideControl = 0x3648;
  gScreen.controls.mosaicSize = 0x1000;
  sub_08052D74(this, sub_080570B8, sub_080570F8);
}