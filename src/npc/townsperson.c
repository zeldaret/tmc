#include "global.h"
#include "entity.h"
#include "npc.h"
#include "link.h"
#include "textbox.h"

extern void (*const gUnk_0810B774[])(Entity*);
extern void (*const gUnk_0810B77C[])(Entity*);
extern void sub_08061CB4(Entity*, u32);
extern u32 sub_0806ED9C(Entity*, u32, u32);
extern void sub_0806ED78(Entity*);

extern SpriteLoadData* gUnk_0810B6EC[];

void Townsperson(Entity *this)
{
  if ((this->flags & 2) != 0) {
    gUnk_0810B77C[this->action](this);
  }
  else {
    gUnk_0810B774[this->action](this);
  }
}

void sub_08061BC8(Entity *this)
{  
  if (LoadExtraSpriteData(this, gUnk_0810B6EC[this->entityType.form])) {
    this->animationState = 2;
    this->field_0xf = this->entityType.form + 1;
    this->action++;
    sub_08061CB4(this, 2);
  }
}

void sub_08061C00(Entity *this)
{
  s32 uVar1;
  
  uVar1 = sub_0806ED9C(this, 0x20, 0x20);
  if (uVar1 < 0) {
    uVar1 = this->animationState + 4;
  }
  else {
    if (this->field_0xf == 0) {
      this->field_0xf = 0x10;
    }
    else {
      this->field_0xf--;
      uVar1 = this->animIndex & 3;
    }
  }
  sub_08061CB4(this, uVar1);
  sub_0806ED78(this);
  if (this->interactType != 0) {
    this->interactType = 0;
    TextboxNoOverlapFollow(this->entityType.parameter + 0xa01);
  }
}