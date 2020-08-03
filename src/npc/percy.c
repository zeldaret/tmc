#include "global.h"
#include "entity.h"
#include "npc.h"
#include "textbox.h"
#include "functions.h"

extern void sub_0806B41C(Entity*);
void sub_0806B3CC(Entity*);

extern SpriteLoadData gUnk_08112E1C;

void Percy(Entity* this) {
    if ((this->flags & 2) != 0) {
        sub_0806B41C(this);
    } else {
        sub_0806B3CC(this);
    }
}

void sub_0806B3CC(Entity *this)
{
  if (this->action == 0) {
    if (!LoadExtraSpriteData(this, &gUnk_08112E1C)) {
      return;
    }
    this->action = 1;
    InitializeAnimation(this, 0);
    sub_08078778(this);
  }
  GetNextFrame(this);
  if (this->interactType != 0) {
    this->interactType = 0;
    TextboxNoOverlapFollow(0);
  }
  sub_0806ED78(this);
}
