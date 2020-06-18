#include "global.h"
#include "entity.h"
#include "functions.h"

extern s32 sub_080012DC(Entity*);
extern u32 GetNextFunction(Entity*);

extern void (*gUnk_080012C8[])(Entity*);
extern void (*gUnk_080CD0F0[])(Entity*);

void BombPeahat(Entity *this)
{
  s32 iVar1;
  u32 uVar2;
  
  if (((this->entityType).parameter1 == 2) && (iVar1 = sub_080012DC(this), iVar1 != 0)) {
    gUnk_080012C8[iVar1](this);
  }
  else {
    gUnk_080CD0F0[GetNextFunction(this)](this);
  }
}