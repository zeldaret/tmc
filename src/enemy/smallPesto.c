#include "global.h"
#include "entity.h"

extern u32 GetNextFunction(Entity*);
extern u32 sub_0806F520(Entity*);
extern void sub_0806F4E8(Entity*);
extern u32 sub_0806F3E4();
extern void sub_0804A7D4(Entity*);
extern void sub_0804A720(Entity*);
extern void sub_080317F8(Entity*);

extern void (*gUnk_080CE530[])(Entity*);
extern void (*gUnk_080CE548[])(Entity*);
extern void (*gUnk_080CE554[])(Entity*);

void SmallPesto(Entity *this)
{
  gUnk_080CE530[GetNextFunction(this)](this);
}

void sub_08031680(Entity *this)
{
  gUnk_080CE548[this->action](this);
}

void nullsub_152(){}

void sub_0803169C(Entity *this)
{
  s32 iVar1;
  
  GetNextFrame(this);
  iVar1 = sub_0806F520(this);
  if (iVar1 == 0) {
    this->action = 1;
    this->previousActionFlag = 0;
    this->flags = this->flags | 0x80;
    this->nonPlanarMovement = 0x40;
    this->field_0xf = 1;
  }
  else {
    gUnk_080CE554[this->previousActionFlag](this);
  }
}

void sub_080316DC(Entity *this)
{
  this->previousActionFlag = 1;
  this->field_0x1d = 0x3c;
}

void sub_080316E8(Entity *this)
{
    sub_0806F4E8(this);
}

void sub_080316F0(Entity *this)
{
  if (sub_0806F3E4()) {
    sub_0804A7D4(this);
  }
}

void sub_08031704(Entity *this)
{
  sub_0804A720(this);
  sub_080317F8(this);
}
