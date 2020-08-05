#include "global.h"
#include "entity.h"
#include "functions.h"
#include "room.h"

typedef struct {
    u16 field_0x0;
    u16 field_0x2;
    u8 field_0x4;
    u8 field_0x5;
    u8 field_0x6;
    u8 field_0x7;
} struct_030010EC;

extern void (*const gUnk_081223A8[])(Entity*);

extern struct_030010EC gUnk_030010EC[];
extern BoundingBox gUnk_080FD310;

void Minecart(Entity* this) {
    gUnk_081223A8[this->action](this);
    this->bitfield = 0;
}

void sub_080916EC(Entity* this) {
    struct_030010EC* unk = &gUnk_030010EC[this->actionDelay];

    *(struct_030010EC**)&this->cutsceneBeh.HWORD = unk;
    if ((gRoomControls.roomID != unk->field_0x4) || (gLinkState.flags.all & 0x1000) != 0) {
        DeleteThisEntity();
    }
    this->x.HALF.HI = gRoomControls.roomOriginX + ((unk->field_0x0 & 0x3f) << 4) + 8;
    this->y.HALF.HI = gRoomControls.roomOriginY + ((unk->field_0x0 & 0xfc << 4) >> 2) + 8;
    this->animationState = unk->field_0x5;
    this->entityType.parameter = unk->field_0x6;
    this->action = 1;
    this->boundingBox = &gUnk_080FD310;
    this->flags |= 0x80;
    this->damageType = 1;
    this->field_0x3c = 0x47;
    this->field_0x40 = 0x44;
    this->flags2 = 0x80;
    this->direction = this->animationState << 3;
    this->nonPlanarMovement = 0x700;
    this->spritePriority.b1 = 3;
    InitAnimationForceUpdate(this, this->entityType.parameter + 4 + this->animationState);
    SetTile(0x4022, COORD_TO_TILE(this), this->collisionLayer);
}

void sub_080917DC(Entity* this) {

    if ((this->bitfield & 0x7f) == 0x1d) {
        this->field_0x20 = 0x2a000;
        this->action = 7;
        InitAnimationForceUpdate(this, this->entityType.parameter + 4 + this->animationState);
        PlaySFX(0x13b);
    } else {
        if (sub_0800445C(this) != 0) {
            if (((gLinkState.flags.all & 0x40080) == 0) && (gLinkState.field_0x1c == 0) &&
                (gLinkState.heldObject == 0) && (gLinkState.jumpStatus == 0)) {
                this->actionDelay++;
            } else {
                this->actionDelay = 0;
            }
        } else {
            this->actionDelay = 0;
        }
        if ((this->entityType).parameter == 0) {
            if (8 < this->actionDelay) {
                this->action = this->action + 1;
                gLinkState.jumpStatus = 0x81;
                gLinkState.flags.all |= 0x4000000;
                gLinkEntity.field_0x20 = 0x20000;
                gLinkEntity.nonPlanarMovement = 0x100;
                gLinkEntity.flags &= 0x7f;
                ResetLink();
                sub_0807A108();
                PlaySFX(0x7c);
            }
        } else {
            this->actionDelay = 0;
        }
    }
}

void sub_080918A4(Entity *this)
{
  if (sub_080041A0(this, &gLinkEntity, 2, 2) != 0) {
    gLinkEntity.x.HALF.HI = this->x.HALF.HI;
    gLinkEntity.y.HALF.HI = this->y.HALF.HI;
    if (gLinkEntity.height.HALF.HI > -0x10) {
      if ((s32)gLinkEntity.field_0x20 > -1) {
        return;
      }
      gLinkEntity.animationState = this->animationState << 1;
      gLinkState.flags.all = (gLinkState.flags.all ^ 0x4000000) | 0x1000;
      this->action++;
      this->field_0xf = 1;
      this->flags |= 0x20;
      this->damageType = 0x97;
      this->field_0x3c = (gLinkEntity.field_0x3c + 1) | 0x20;
      this->flags2 = gLinkEntity.flags2;
      this->field_0x40 = 0x18;
      this->field_0x44 = 8;
      sub_0801766C(this);
      sub_0807BA8C(COORD_TO_TILE(this), this->collisionLayer);
      PlaySFX(0x137);
    }
  }
  else {
    gLinkEntity.direction = GetFacingDirection(&gLinkEntity, this);
  }
  if (gLinkEntity.field_0x20 < 0) {
    gLinkEntity.spritePriority.b0 = this->spritePriority.b0 - 1;
  }
}

#if 0

typedef struct {
    u8 field_0x0;
    u8 field_0x1;
} struct_081223C8;

extern struct_081223C8 gUnk_081223C8[];

extern u32 gUnk_081223D8[];

void sub_080919AC(Entity *this)
{
  u32 iVar2;
  u32 uVar3;
  u32 uVar4;
  struct_081223C8* temp;

  gRoomControls.unk5 = 7;
  if ((gLinkState.flags.all & 0x1000) == 0) {
    this->action = 1;
  }
  else {
    if ((gLinkEntity.frames.all & 0xf) == 0) {
      this->flags = this->flags & 0x7f;
      CopyPosition(this,&gLinkEntity);
      if ((gLinkEntity.frames.all & 0xf0) == 0x10) {
        this->spriteOffsetY = 1;
      }
      else {
        this->spriteOffsetY = 0;
      }
    }
    else {
      this->flags = this->flags | 0x80;
      gLinkEntity.nonPlanarMovement = 0;
      sub_0806F69C(this);
      CopyPosition(this,&gLinkEntity);
      gLinkEntity.spritePriority.b0 = this->spritePriority.b0 - 1;
      if (!sub_08091DDC(this)) {
        if ((gScreenTransition.field_0x0 & 0xf) == 0) {
          PlaySFX(0x138);
        }

        if (--this->field_0xf == 0xff) {
          PlaySFX(0x7b);
          this->field_0xf = 0x3c;
        }
        uVar3 = sub_03005800(this, gUnk_081223C8[this->animationState].field_0x0, gUnk_081223C8[this->animationState].field_0x1);
        iVar2 = sub_08007DD6(uVar3, gUnk_081223D8[this->animationState]);
        if (iVar2 == 0) {
          this->direction = this->direction ^ 0x10;
          this->animationState = this->animationState ^ 2;
        }
        else {
            switch(uVar3) {
            case 100:
              this->flags = this->flags & 0xdf;
              this->damageType = 1;
              this->field_0x3c = 0x47;
              this->field_0x40 = 0x44;
              this->flags2 = 0x80;
              this->action = 6;
              sub_08017744(this);
              gLinkState.jumpStatus = 0x41;
              gLinkState.flags.all = (gLinkState.flags.all ^ 0x1000) | 0x4000000;
              gLinkEntity.field_0x20 = 0x20000;
              gLinkEntity.nonPlanarMovement = 0x200;
              gLinkEntity.animationState = this->animationState << 1;
              gLinkEntity.direction = this->direction;
              gLinkEntity.flags |= 0x80;
              sub_08004168(this);
              InitAnimationForceUpdate(this, this->animationState + 0xc);
              PlaySFX(0x78);
              PlaySFX(0x139);
              return;
            case 0x67:
            case 0x68:
            case 0x69:
            case 0x6a:
            case 0x6c:
            case 0x6d:
            case 0x6e:
            case 0x6f:
              if (uVar3 == sub_080002B8()) {
                sub_08091C0C(this);
                gLinkEntity.animationState *= 2;
                return;
              }
            }
        }
        gLinkEntity.animationState *= 2;
        if (this->animIndex == this->animationState) {
          UpdateAnimationSingleFrame(this);
        }
        else {
          InitAnimationForceUpdate(this, this->animationState);
        }
      }
    }
  }
}
#else
NAKED
void sub_080919AC(Entity *this) {
    asm(".include \"asm/non_matching/minecart/sub_080919AC.inc\"");
}
#endif