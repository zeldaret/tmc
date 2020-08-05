#include "global.h"
#include "entity.h"

extern void EnemyFunctionHandler(Entity*, void (*const func[])(Entity*));
extern void sub_0804AA30(Entity*, void (*const func[][])(Entity*));
extern void sub_0804A7D4(Entity*);
extern void sub_0804A720(Entity*);
extern void sub_08045678(Entity*);
extern void sub_080AEFE0(void);
extern u32 sub_08003FC4(Entity*, u32);
extern void sub_08045678(Entity*);

extern void (*const gUnk_080D1868[])(Entity*);
extern void (*const gUnk_080D1880[])(Entity*);

void MiniFireballGuy(Entity *this)
{
  EnemyFunctionHandler(this, gUnk_080D1868);
}

void sub_080455BC(Entity *this)
{
  gUnk_080D1880[this->action](this);
}

void sub_080455D4(Entity *this)
{
  sub_0804AA30(this, &gUnk_080D1868);
}

void sub_080455E4(Entity *this)
{
  if ((this != this->parent) && (this->parent != NULL)) {
    this->field_0x6c.HALF.LO &= 0x7f;
    this->parent->attachedEntity = this->attachedEntity;
    this->attachedEntity->parent = this->parent;
  }
  sub_0804A7D4(this);
}

void nullsub_23(Entity* this) {}

void sub_08045618(Entity *this)
{
  this->action = 1;
  this->spriteSettings.b.draw = 1;
  this->nonPlanarMovement = 0x80;
  this->field_0x3c = this->field_0x3c | 0x10;
  sub_0804A720(this);
  InitializeAnimation(this, 1);
  sub_08045678(this);
}

void sub_08045654(Entity *this)
{
  sub_080AEFE0();
  GetNextFrame(this);
  if (sub_08003FC4(this, 0x1800) == 0) {
    sub_08045678(this);
  }
}