#include "global.h"
#include "entity.h"
#include "functions.h"

void WindTribeFlag(Entity *this)
{
  if (this->action == 0) {
    this->action++;
    this->collisionLayer = 2;
    if ((this->entityType).parameter1 == 0) {
      this->spriteSettings.b.ss6 = 0;
    }
    else {
      this->spriteSettings.b.ss6 = 1;
    }
    UpdateSpriteOrderAndFlip(this);
    InitializeAnimation(this,0);
  }
  else {
    GetNextFrame(this);
  }
  if (this->animTime == 0xff) {
    this->animTime = (Random() & 0xf) + 0x10;
  }
}