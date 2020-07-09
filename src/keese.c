#include "global.h"
#include "entity.h"
#include "enemy.h"
#include "link.h"

extern void sub_0804AA30(Entity*, void *);
extern u32 sub_0806F520(Entity*);
extern void sub_0806F4E8(Entity*);
extern u32 sub_0806F3E4(Entity*);
extern void sub_0804A7D4(Entity*);
extern void sub_0804A720(Entity*);
extern u32 Random();
extern void sub_08021EF0(Entity*);
extern void sub_080AEFB4(Entity*);
extern void sub_08021F24(Entity*);
extern u32 sub_0806FCB8(Entity*, s32, s32, u32);

extern void (*gUnk_080CB69C[])(Entity*);
extern void (*gUnk_080CB6B4[])(Entity*);
extern void (*gUnk_080CB6C4[])(Entity*);

extern u8 gUnk_080CB6D0[];
extern u16 gUnk_080CB6D6[];


extern u8 gUnk_080CB6D0[];

void Keese(Entity *this)
{
    gUnk_080CB69C[GetNextFunction(this)](this);
}

void sub_08021D80(Entity *this)
{
    gUnk_080CB6B4[this->action](this);
}

void sub_08021d98(Entity *this)
{
  sub_0804AA30(this, &gUnk_080CB69C);
}

void sub_08021DA8(Entity *this)
{
  if (sub_0806F520(this)) {
    gUnk_080CB6C4[this->previousActionFlag](this);
  }
}

void sub_08021DCC(Entity *this)
{
  this->previousActionFlag = 2;
}

void sub_08021DD4(Entity *this)
{
  sub_0806F4E8(this);
}

void sub_08021DDC(Entity *this)
{
  if (sub_0806F3E4(this)) {
    sub_0804A7D4(this);
  }
}

void sub_08021DF0(Entity *this)
{
  
  sub_0804A720(this);
  if ((this->entityType).form != 0) {
    this->spritePriority.b1 = 1;
    this->height.HALF.HI = -0x10;
  }
  this->direction = Random() & 0x1f;
  this->filler[0] = 1;
  this->spritePriority.b0 = 3;
  this->collisionLayer = 3;
  UpdateSpriteForCollisionLayer(this);
  sub_08021EF0(this);
}

void sub_08021E4C(Entity *this)
{
  if (this->field_0x78.HWORD != 0) {
    this->field_0x78.HWORD--;
  }
  if (this->field_0x7a != 0) {
    (this->field_0x7a)--;
  }
  GetNextFrame(this);
  if ((this->frames.b.f3) != 0) {
    sub_08021F24(this);
  }
  else {
    sub_080AEFB4(this);
  }
  this->spriteOffsetY = gUnk_080CB6D0[this->frames.all];
}

void sub_08021EA4(Entity *this)
{
  if (--this->actionDelay == 0) {
    sub_08021EF0(this);
  }
}

void sub_08021EBC(Entity *this)
{
    s32 iVar1;
    
    if (this->actionDelay != 0) {
        this->actionDelay--;
    }
    else {
        iVar1 = sub_0806FCB8(this, gLinkEntity.x.HALF.HI, gLinkEntity.y.HALF.HI, 0x70);
        if (iVar1 != 0) {
            sub_08021EF0(this);
        }
    }
}

void sub_08021EF0(Entity *this)
{
  u32 uVar1;
  
  this->action = 1;
  this->field_0x78.HWORD = gUnk_080CB6D6[Random() & 0xf];
  this->field_0x7a = 0x3c;
  InitializeAnimation(this, 0);
}
