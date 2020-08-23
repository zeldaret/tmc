#include "global.h"
#include "entity.h"
#include "functions.h"
#include "flags.h"

extern void (*const gUnk_08120DD0[])(Entity*);

void Object2A(Entity* this) {
    gUnk_08120DD0[this->action](this);
}

void sub_08089B18(Entity *this)
{
  this->action = 1;
  this->spriteSettings.b.draw = TRUE;
  if (this->entityType.parameter != 0) {
    this->actionDelay = this->entityType.parameter;
  }
  InitializeAnimation(this, 0);
  switch (this->entityType.form) {
        case 1:
            this->y.HALF.HI -= 8;
            this->actionDelay = 0x28;
            break;
        case 2:
            this->actionDelay = 0xf;
            sub_08004168(this);
            break;
        case 3:
            CopyPosition(this->parent, this);
            break;
        case 4:
            if (!CheckFlags(this->field_0x86)) {
                this->spriteSettings.b.draw = FALSE;
                this->previousActionFlag = 1;
                return;
            }
    }
    sub_08004488(0x124);
}
