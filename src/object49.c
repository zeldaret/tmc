#include "global.h"
#include "entity.h"

extern u32 Random(void);
extern void sub_0808F2B0(Entity*);
extern u32 sub_08003FC4(Entity*, u32);
void sub_0808F14C(Entity*);
extern void PlaySFX(u32);
extern void sub_0806FCF4(Entity*, u32, u32, u32);
extern void sub_0808F244(Entity*);

extern void (*const gUnk_08121E5C[])(Entity*);
extern void (*const gUnk_08121E88[])(Entity*);
extern void (*const gUnk_08121E98[])(Entity*);

void Object49(Entity* this) {
    gUnk_08121E5C[this->entityType.form](this);
}

void sub_0808F0B8(Entity* this) {
    gUnk_08121E88[this->action](this);
}

void sub_0808F0D0(Entity* this) {
    u32 offsetX;
    u32 offsetY;
    Entity* ent;
    u32 uVar3;

    ent = CreateObjectWithParent(this, 0x49, 2, 0);
    this->attachedEntity = ent;
    if (ent == NULL) {
        DeleteThisEntity();
    }
    this->action = 1;
    this->height.HALF.HI = -0xc0;
    offsetX = Random() % 64;
    if ((Random() & 1) != 0) {
        offsetX = -offsetX;
    }
    this->x.HALF.HI = this->parent->x.HALF.HI + offsetX;
    offsetY = Random() % 32;
    if ((Random() & 1) != 0) {
        offsetY = -offsetY;
    }
    this->y.HALF.HI = this->parent->y.HALF.HI + offsetY;
    *(u32*)&this->field_0x74 = 0x240;
    *(u32*)&this->field_0x78 = 0x140;
    InitializeAnimation(this, 3);
    sub_0808F14C(this);
}

void sub_0808F14C(Entity* this) {
    sub_0808F2B0(this);
    if (sub_08003FC4(this, 0x2000) == 0) {
        this->action++;
        PlaySFX(0x84);
    }
}

void sub_0808F170(Entity *this)
{
  *(u32 *)&this->field_0x74 -= 0x20;
  *(u32 *)&this->field_0x78 += 0x20;
  sub_0806FCF4(this, *(u32 *)&this->field_0x78, 8, 2);
  if (*(u32 *)&this->field_0x78 > 0x1ff) {
    this->action++;
  }
  sub_0808F2B0(this);
}

void sub_0808F1A4(Entity *this)
{
  *(u32 *)&this->field_0x78 += 0x10;
  *(u32 *)&this->field_0x74 += 0x10;
  sub_0806FCF4(this, *(u32 *)&this->field_0x78, 8, 2);
  if (*(u32 *)&this->field_0x78 > 0x3ff) {
    this->attachedEntity->action = 0xff;
    DeleteThisEntity();
  }
  else {
    sub_0808F2B0(this);
  }
}

void sub_0808F1E0(Entity *this)
{
    gUnk_08121E98[this->action](this);
}

void sub_0808F1F8(Entity *this)
{
  u8 bVar1;
  
  this->spriteOrder.b0 = 3;
  this->action++;
  this->spriteOrder.b3 = this->parent->spriteOrder.b3;
  this->spriteOrientation.b2 = this->parent->spriteOrientation.b2;
  this->ticks.b0 = 7;
  InitializeAnimation(this, 1);
  sub_0808F244(this);
}