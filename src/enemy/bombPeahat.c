#include "global.h"
#include "entity.h"
#include "functions.h"
#include "link.h"

extern s32 sub_080012DC(Entity*);
extern u32 GetNextFunction(Entity*);
extern void sub_0802AD54(Entity*);
extern void sub_0802B048(Entity*);
extern void sub_0806F4E8(Entity*);
extern void sub_0806F3E4(Entity*);

extern void (*const gUnk_080012C8[])(Entity*);
extern void (*const gUnk_080CD0F0[])(Entity*);
extern void (*const gUnk_080CD120[])(Entity*);
extern void (*const gUnk_080CD134[])(Entity*);
extern void (*const gUnk_080CD108[])(Entity*);
extern void (*const gUnk_080CD140[])(Entity*);

void BombPeahat(Entity* this) {
    s32 iVar1;
    u32 uVar2;

    if (((this->entityType).form == 2) && (iVar1 = sub_080012DC(this), iVar1)) {
        gUnk_080012C8[iVar1](this);
    } else {
        gUnk_080CD0F0[GetNextFunction(this)](this);
    }
}

void sub_0802A84C(Entity* this) {
    switch (this->entityType.form) {
        default:
            gUnk_080CD108[this->action](this);
            sub_0802AD54(this);
            return;
        case 2:
            gUnk_080CD120[this->action](this);
            sub_0802B048(this);
            return;
        case 3:
            gUnk_080CD134[this->action](this);
    }
}

void sub_0802A8AC(Entity *this) {
    this->field_0x80.HALF.HI = 0;
    if (this->entityType.form < 2) {
        InitializeAnimation(this, 0);
    }
}

void sub_0802A8C8(Entity* this)
{
  gUnk_080CD140[this->previousActionFlag](this);
}

void sub_0802A8E0(Entity *this)
{
  this->previousActionFlag = 1;
  this->filler[1] = 0x3c;
}

void sub_0802A8EC(Entity *this)
{
    sub_0806F4E8(this);
}

void sub_0802A8F4(Entity *this)
{
    sub_0806F3E4(this);
}

void sub_0802A8FC(Entity *this)
{
  if ((gLinkState.field_0x1c & 0xf) == 0) {
    this->currentHealth = gLinkState.field_0x1c & 0xf;
  }
}

void nullsub_143(Entity* this){}

void sub_0802A91C(Entity *this)
{
  this->currentHealth = 0;
}
