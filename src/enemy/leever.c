#include "global.h"
#include "entity.h"
#include "enemy.h"
#include "functions.h"

extern void SetChildOffset(Entity*, s32, s32, s32);
extern void sub_0804A9FC(Entity*, u32);
extern void sub_0804AA30(Entity*, void (*const func[])(Entity*));
extern void sub_0804A7D4(Entity*);
extern Entity* CreateDeathFx(Entity*, u32, u32);
extern void sub_0804A720(Entity*);
bool32 sub_0801FE68(Entity*, s32);
extern void sub_0801FED4(Entity*);
extern u32 sub_080002D4(s32, s32, u32);
extern u32 sub_080002BC(s32, s32, u32);
extern u32 sub_08049FDC(Entity*, u32);
bool32 sub_0801FDE4(Entity*, s32, s32);

extern void (*const gUnk_080CA49C[])(Entity*);
extern void (*const gUnk_080CA4B4[])(Entity*);
extern Entity* gUnk_020000B0;
extern u8 gUnk_080CA4C8[];
extern u16 gUnk_080CA4CA[];
extern s16 gSineTable[];
void Leever(Entity *this)
{
  EnemyFunctionHandler(this, gUnk_080CA49C);
  SetChildOffset(this, 0, 1, -0x10);
}

void sub_0801FC28(Entity *this)
{
  gUnk_080CA4B4[this->action](this);
}

void sub_0801FC40(Entity *this)
{
  if (this->bitfield == 0x80) {
    if (this->action == 3) {
      this->field_0x74 = 1;
    }
  }
  else {
    if (this->field_0x43 != 0) {
      sub_0804A9FC(this, 0x1c);
    }
  }
  sub_0804AA30(this, gUnk_080CA49C);
}

void sub_0801FC7C(Entity *this)
{
  if ((this->entityType).form == 0) {
    sub_0804A7D4(this);
  }
  else {
    CreateDeathFx(this, 0xf1, 0);
  }
}

void sub_0801FC9C(Entity *this)
{  
  sub_0804A720(this);
  this->action = 1;
  this->actionDelay = Random();
}

void sub_0801FCB0(Entity *this)
{
  if (--this->actionDelay == 0) {
    if (sub_0801FE68(this, Random() & 0x1f) != 0) {
      this->action = 2;
      this->spriteSettings.b.draw = TRUE;
      this->direction = (GetFacingDirection(this, gUnk_020000B0) + gUnk_080CA4C8[Random() & 1]) & 0x1f;
      InitializeAnimation(this, 0);
      UpdateSpriteForCollisionLayer(this);
    }
    else {
      this->actionDelay = (Random() & 0x18) + 8;
    }
  }
}

void sub_0801FD2C(Entity *this)
{
  
  GetNextFrame(this);

  if (this->frames.b.f3 != 0) {
    this->action = 3;
    if (this->entityType.form == 0) {
      this->field_0x74 = 0xb4;
    }
    else {
      this->field_0x74 = 0x6e;
    }
    InitializeAnimation(this,2);
  }
  else if (this->frames.b.f0 != 0) {
      this->frames.all &= 0xfe;
      this->flags |= 0x80;
    }
}

void sub_0801FD80(Entity *this)
{
  
  sub_0801FED4(this);
  GetNextFrame(this);

  if (--this->field_0x74 == 0) {
    this->action = 4;
    this->flags &= 0x7f;
    InitializeAnimation(this, 1);
  }
}

void sub_0801FDB4(Entity *this)
{
  sub_0801FED4(this);
  GetNextFrame(this);
  if ((this->frames.b.f3) != 0) {
    this->action = 1;
    this->actionDelay = 0xf0;
    this->spriteSettings.b.draw = FALSE;
  }
}

u32 sub_0801FDE4(Entity *ent, s32 x, s32 y)
{
    u32 uVar3;
    u16 *puVar4;
    
    if (sub_080002D4(x, y, gUnk_020000B0->collisionLayer) != 0) {
        return 0;
    } else {
        uVar3 = sub_080002BC(x, y, gUnk_020000B0->collisionLayer);
        for (puVar4 = gUnk_080CA4CA; *puVar4 != (u16)-1;) {
            if (*puVar4++ == uVar3) {
                ent->x.HALF.HI = (x & 0xfff0) + 8;
                ent->y.HALF.HI = (y & 0xfff0) + 8;
                ent->collisionLayer = gUnk_020000B0->collisionLayer;
                return 1;
            }
        }
        return 0;
    }
}

bool32 sub_0801FE68(Entity *ent, s32 arg2)
{
  s32 sin, cos;
  s32 x, y;
  u32 i;


  if (sub_08049FDC(ent, 1) == 0) {
    return 0;
  }
  else {
    x = gUnk_020000B0->x.WORD;
    y = gUnk_020000B0->y.WORD;
    sin = gSineTable[arg2 * 8] << 11;
    cos = gSineTable[arg2 * 8 + 0x40] << 11;
    for (i = 0; i < 8; i++) {
      x += sin;
      y += -cos;
      if (sub_0801FDE4(ent, x >> 0x10, y >> 0x10) == 0) {
          return 0;
      }
    }
    return 1;
  }
}

#if NON_MATCHING
void sub_0801FED4(Entity *this)
{
  s16 sVar2;
  
  if (sub_08049FDC(this, 1) == 0) {
    this->field_0x74 = 1;
  }
  sVar2 = (this->frames.all & 0xf) * 0x20;
  this->nonPlanarMovement = sVar2;
  if (this->entityType.form == 0) {
      this->field_0xf++;
    if ((this->field_0xf & 0xf) == 0) {
      sub_08004596(this, sub_0800132C(this, gUnk_020000B0));
    }
  }
  else {
    this->nonPlanarMovement = sVar2 + 0x40;
    this->field_0xf++;
    if ((this->field_0xf & 0x7) == 0) {
      sub_08004596(this, sub_0800132C(this, gUnk_020000B0));
    }
  }
  sub_080AEF88(this);
}
#else
NAKED
void sub_0801FED4(Entity *this) {
    asm(".include \"asm/non_matching/leever/sub_0801FED4.inc\"");
}
#endif