#include "global.h"
#include "entity.h"
#include "link.h"

extern void DeleteThisEntity();
extern void sub_08078CD0(Entity*);
extern void sub_08018FA0(Entity*);
extern void sub_0801766C(Entity*);
extern void sub_08018F6C(Entity*);

extern void (*const gUnk_080B3DD0[])(Entity*);

extern BoundingBox gUnk_080B3E18;
extern u8 gUnk_080B3DE0[];
extern BoundingBox* gUnk_080B3DE8[];

void Item11(Entity *this)
{
  if (this->currentHealth) {
    this->hurtBlinkTime = 0;
    gUnk_080B3DD0[this->action](this);
  }
  else {
    DeleteThisEntity();
  }
}

void sub_08018CBC(Entity *this)
{
  u32 PVar1;
  u8 uVar2;
  Entity *pEVar3;
  
  *(u32 *)&this->cutsceneBeh = this->x.WORD = gLinkEntity.x.WORD;
  *(u32 *)&this->field_0x80 = this->y.WORD = gLinkEntity.y.WORD;
  uVar2 = this->animationState = gLinkEntity.animationState & 0xe;
  this->direction = (u8)(uVar2 << 2);
  this->nonPlanarMovement = 0x400;
  this->damageType = 0x96;
  this->field_0x3c = (gLinkEntity.field_0x3c + 1) | 0x80;
  this->flags2 = gLinkEntity.flags2;
  pEVar3 = this->attachedEntity;
  if (pEVar3 != NULL) {
    this->action = 1;
    this->flags = this->flags & 0x7f;
    this->actionDelay = 0x56;
    this->field_0x40 = 0x1c;
    this->field_0x44 = 6;
    this->boundingBox = &gUnk_080B3E18;
    this->attachedEntity->spriteOffsetX = 0;
    this->attachedEntity->spriteSettings.b.draw = 0;
  }
  else {
    if (gLinkState.field_0x1c == 0) {
      DeleteThisEntity();
    }
    this->action = 2;
    this->spriteSettings.b.draw = 1;
    this->spriteTileSize = 0xa6;
    this->palette = 0x33;
    this->spriteVramOffset = 0;
    (this->entityType).form = gLinkState.filler9[0] - 1;
    this->actionDelay = gUnk_080B3DE0[(this->entityType).form * 2];
    this->field_0x44 = gUnk_080B3DE0[(this->entityType).form * 2 + 1];
    this->field_0x40 = 0x1b;
    this->boundingBox = gUnk_080B3DE8[(this->entityType).form];
    (u32 *)gLinkEntity.field_0x70 = this;
    sub_08078CD0(&gLinkEntity);
    (u32 *)gLinkEntity.field_0x70 = pEVar3;
    InitializeAnimation(this, (this->entityType).form + 10);
    sub_08018FA0(this);
  }
  sub_0801766C(this);
}

void sub_08018DE8(Entity *this)
{
    u8 bVar1;
    
    bVar1 = this->attachedEntity->field_0x3a & 4;
    if (bVar1 == 0) {
        gLinkState.field_0x1c = bVar1;
        DeleteThisEntity();
    }
    switch (gLinkState.field_0x1c) {
        case 0:
            sub_08018F6C(this);
            break;
        case 5:
            this->attachedEntity->previousActionFlag = 4;
            this->flags = this->flags | 0x80;
            this->action = 2;
            this->ticks.b0 = 2;
            this->attachedEntity->spriteSettings.b.draw = 1;
            sub_08018FA0(this);
            break;
    }
    sub_08078CD0(&gLinkEntity);
}