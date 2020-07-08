#include "global.h"
#include "entity.h"

extern void EnemyFunctionHandler(Entity*, void (*const funcs[])(Entity*));
extern void DeleteThisEntity();

extern void (*const gUnk_080CB570[])(Entity*);
extern void (*const gUnk_080CB588[])(Entity*);

void HangingSeed(Entity *this)
{
  EnemyFunctionHandler(this, gUnk_080CB570);
}

void sub_080216E4(Entity *this)
{
  gUnk_080CB588[this->action](this);
}

void sub_080216FC(Entity *this)
{
  if ((this->bitfield & 0x80) != 0) {
    CreateFx(this, 3, 0x80);
    DeleteThisEntity();
  }
}

void nullsub_7(Entity* this){}

void sub_08021720(Entity *this)
{
  this->action = 1;
  this->spriteSettings.b.ss0 = 1;
  this->frameIndex = (this->entityType).form;
  this->spriteOrder.b3 = 1;
  this->ticks.b0 = 3;
}

void nullsub_08(Entity* this){}
