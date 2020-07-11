#include "global.h"
#include "entity.h"

extern void (*const gUnk_081243D4[])(Entity*);

void Fan(Entity *this)
{
  gUnk_081243D4[this->action](this);
}