#include "global.h"
#include "entity.h"

typedef struct {
    /*0x00*/ u8 filler[0x2C];
    /*0x2C*/ u8 unk;
} struct_030010A0;

extern void sub_0806ED78(Entity*);
extern void sub_08068BEC(Entity*, u32);
extern void sub_08078778(Entity*);
extern void InitializeAnimation(Entity*, u32);
extern s32 sub_0806ED9C(Entity*, u32, u32);
extern s32 sub_0806F078(Entity*, s32);
extern void sub_08004274(Entity*);
extern void TextboxNoOverlapFollow(u32);
extern void sub_0801D2B4(Entity*, u32);
extern void sub_0806FD3C(Entity*);
extern u32 sub_0801E99C(Entity*);
extern void sub_08078784(Entity*, u8);
extern void sub_0807DD50(Entity*);
extern void sub_080045C4(Entity*, Entity*);
extern u32 sub_0806F5A4(void);
extern void InitAnimationForceUpdate(Entity*, u32);
extern void sub_0806F118(Entity*);
extern void sub_0807DD94(Entity*, u32);
extern u32 UpdateFuseInteraction();

extern void (*gUnk_081115C0[])(Entity*);
extern void (*gUnk_081115D0[])(Entity*);

extern struct_030010A0 gUnk_030010A0;
extern u16 gUnk_081115DC[];
extern Entity gLinkEntity;

void sub_080689C0(Entity *this)
{
  
  if ((this->flags & 2) != 0) {
    gUnk_081115D0[this->action](this);
  }
  else {
    gUnk_081115C0[this->action](this);
    sub_0806ED78(this);
  }
  if ((this->frames.all & 1) != 0) {
    this->frames.all &= 0xfe;
    sub_08068BEC(this, 0);
  }
}

void sub_08068A1C(Entity *this)
{
  u8 bVar1;
  int offset;
  
  (this->entityType).parameter2 = (this->entityType).parameter1;
  if (gUnk_030010A0.unk != 0) {
    offset = 6;
    bVar1 = 3;

  }
  else {
    sub_08078778(this);
    offset = 2;
    bVar1 = 1;
  }
  this->action = bVar1;
  InitializeAnimation(this, offset);
}

void sub_08068A4C(Entity *this)
{
  s32 uVar1;
  s32 iVar2;
  
  uVar1 = sub_0806ED9C(this, 0x28, 0x28);
  if (uVar1 < 0) {
    uVar1 = 2;
  }
  else {
    if (this->field_0xf == 0) {
      this->field_0xf = 0x10;
    }
    else {
      this->field_0xf--;
      uVar1 = (u32)this->field_0x58;
    }
  }
  iVar2 = sub_0806F078(this,uVar1);
  if (iVar2 == 0) {
      sub_08004274(this);
  }
  if (this->interactType != 0) {
    this->interactType = 0;
    this->action = 2;
    TextboxNoOverlapFollow(0);
  }
}

void sub_08068AA4(Entity *this)
{
  u8 bVar1;
  
  this->action = 1;
  if (this->entityType.parameter1 != 0) {
    this->entityType.parameter2++;
    this->entityType.parameter2 &= 7;
    if (this->entityType.parameter2 == 0) {
      this->entityType.parameter2 += 1;
    }
    sub_0801D2B4(this, gUnk_081115DC[this->entityType.parameter2]);
  }
}

void sub_08068ADC(Entity *this)
{
  if (gUnk_030010A0.unk == 2) {
      sub_08004274(this);
  }
  sub_0806FD3C(this);
}

void sub_08068AFC(Entity *this)
{  
  this->action = 1;
  this->spriteSettings.b.ss0 = 1;
  *(u8*)&this->field_0x68 = sub_0801E99C(this);
  sub_08078784(this, *(u8*)&this->field_0x68);
  sub_0807DD50(this);
}

void FUN_08068b2c(Entity *this)
{
  u32 uVar1;
  
  if (this->interactType == '\x02') {
    this->action = 2;
    this->interactType = '\0';
    sub_080045C4(this,&gLinkEntity);
    uVar1 = sub_0806F5A4();
    InitAnimationForceUpdate(this, uVar1);
    sub_0806F118(this);
  }
  else {
    sub_0807DD94(this, 0);
  }
}

void sub_08068B70(Entity *this)
{
  if (UpdateFuseInteraction()) {
    this->action = 1;
  }
}
