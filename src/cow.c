#include "global.h"
#include "entity.h"

extern void sub_0806ED78(Entity*);
extern void sub_0806920C(Entity*);
extern void sub_080042B8(Entity*);
extern u32 sub_0805ACC0(Entity*);
extern u32 sub_0801E99C(Entity*);
extern void sub_0806924C(Entity*);
extern void sub_080AEF88(Entity*);
extern void (*gUnk_08111914[1])(Entity*);
extern void LoadAnimation();
extern u32 Random();

void sub_08068F98(Entity* ent) {
    gUnk_08111914[ent->action](ent);
    sub_0806ED78(ent);
    sub_0806920C(ent);
}

void sub_08068FC0(Entity* ent) {
    u32 r2;

    ent->action = 1;
    ent->animationState = ent->entityType.parameter2;
    ent->nonPlanarMovement = 0x40;
   
    ent->field_0x6c = 0xFF;
    
    r2 = sub_0805ACC0(ent);
    if (r2 == 0) {
        u16 x, y;

        x = ent->x.HALF.HI;
        ent->field_0x68 = x;

        y = ent->y.HALF.HI;
        ent->field_0x6a = y;
    } else {
        ent->field_0x68 = r2 >> 0x10;
        ent->field_0x6a = r2;
    }
    ent->field_0x6b = sub_0801E99C(ent);

    LoadAnimation(ent, ent->animationState + 4);
}

void sub_08069018(Entity* ent) {
    u32 var0;

    if (ent->previousActionFlag == 0) {
        ent->previousActionFlag++;
        ent->field_0xf = (Random() & 0x3F) + 0x3C;
        LoadAnimation(ent, ent->animationState);
    }

    sub_080042B8(ent);
    var0 = --ent->field_0xf;
    var0 = (var0 << 24) >> 24;
    if (var0 == 0) {
        if (ent->parameter3 == 0) {
          ent->action = 2;
        } else {
          ent->action = 3;
        }
        ent->previousActionFlag = var0;
    }
    
    sub_0806924C(ent);
}

void sub_08069068(Entity* ent) {
  u32 var0;

  if (ent->previousActionFlag == 0) {
    u32 anim;

    ent->previousActionFlag++;

    anim = (Random() & 2) - 1;
    anim = (anim + ent->animationState) & 3;
    ent->animationState = anim;
    ent->direction = anim <<= 3;

    ent->field_0xf = (Random() & 0x3F) + 0x3C;
    LoadAnimation(ent, ent->animationState + 4);
  }

  sub_080AEF88(ent);
  sub_080042B8(ent);

  {
    s32 x = ent->x.HALF.HI;
    s16* x2 = &ent->field_0x68; 
    x -= *x2;
    if (x > 16) {
      ent->x.HALF.HI = *x2 + 16;
      ent->field_0xf = 1;
    }
    if (x < -16) {
      ent->x.HALF.HI = *x2 - 16;
      ent->field_0xf = 1;
    }
  }
  {
    s32 y = ent->y.HALF.HI;
    s16* y2 = &ent->field_0x6a; 
    y -= *y2;
    if (y > 16) {
      ent->y.HALF.HI = *y2 + 16;
      ent->field_0xf = 1;
    }
    if (y < -16) {
      ent->y.HALF.HI = *y2 - 16;
      ent->field_0xf = 1;
    }
  }

  var0 = --ent->field_0xf;
  var0 = (var0 << 24) >> 24;
  if (var0 == 0) {
    ent->action = 3;
    ent->previousActionFlag = var0;
  }

  sub_0806924C(ent);
}
