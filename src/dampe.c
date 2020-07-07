#include "global.h"
#include "entity.h"
#include "link.h"
#include "room.h"

extern void sub_0805E3A0(Entity*, u32);
extern void sub_0807DD50(Entity*);
extern void sub_080045C4(Entity*, Entity*);
extern void InitAnimationForceUpdate(Entity*, u32);
extern u32 sub_0806F5A4(void);
extern void sub_0806F118(Entity*);
extern void sub_0807DD94(Entity*, u32);
extern void UpdateAnimationSingleFrame(Entity*);
extern u32 UpdateFuseInteraction(Entity*);
extern u32 sub_0801E99C(void);
extern void sub_08078784(Entity*, u32);
extern u32 CheckLocalFlag(u32);
extern void SetLocalFlag(u32);
extern u32 GetInventoryValue(u32);
extern void TextboxNoOverlap(u16, Entity*);
extern void SetTileType(u32, u32, u32);

extern u16 gUnk_08113344[];
extern u16 gUnk_0811334A[];

typedef struct {
    u8 filler[18];
    u32 unk;
} struct_0806BE84;

void Dampe(Entity* this) {

    switch (this->action) {
        case 0:
            this->action = 1;
            this->spriteSettings.b.ss0 = 1;
            sub_0805E3A0(this, 2);
            sub_0807DD50(this);
            return;
        case 1:
            if (this->interactType == 2) {
                this->action = 2;
                this->interactType = 0;
                sub_080045C4(this, &gLinkEntity);
                InitAnimationForceUpdate(this, sub_0806F5A4() + 4);
                sub_0806F118(this);
            } else {
                sub_0807DD94(this, 0);
            }
            return;
        case 2:
            UpdateAnimationSingleFrame(this);
            if (UpdateFuseInteraction(this)) {
                this->action = 1;
            }
        default:
    }
}

void sub_0806BE3C(Entity *this)
{
  this->field_0x68 = sub_0801E99C();
  sub_08078784(this, this->field_0x68);
}

void Dampe_Fusion(Entity *this)
{
  if (this->action == 0) {
    this->action++;
    this->spriteSettings.b.ss0 = 1;
    InitAnimationForceUpdate(this, 2);
  }
  else {
    UpdateAnimationSingleFrame(this);
  }
}

void sub_0806BE84(Entity *this, struct_0806BE84* r1)
{
  u32 iVar3;
  
  r1->unk = 0;
  iVar3 = 1;
  if (!CheckLocalFlag(0x69)) {
    iVar3 = 0;
    SetLocalFlag(0x69);
    r1->unk = 1;
  }
  // Graveyard key
  if (2 <= GetInventoryValue(0x3C)) {
    iVar3 = 2;
  }
  TextboxNoOverlap(gUnk_08113344[iVar3], this);
}

void sub_0806BEC8(Entity *this, struct_0806BE84* r1)
{
    u32 uVar1;
  u32 iVar2;
  
  iVar2 = 0;
  r1->unk = 0;
  uVar1 = GetInventoryValue(0x3C);
    if (uVar1 == 1) {
    iVar2 = 1;
    r1->unk = 1;
  }
  else {
    if (1 < uVar1) {
      iVar2 = 2;
    }
  }

  TextboxNoOverlap(gUnk_0811334A[iVar2], this);
}

void sub_0806BEFC(void)
{
  SetTileType(0x17E, 0x58E, 1);
  SetTileType(0x17F, 0x58F, 1);
  SetTileType(0x180, 0x5cE, 1);
  SetTileType(0x181, 0x5cF, 1);
}

void sub_0806BF44(Entity *this, struct_0806BE84 *r1)
{
  r1->unk = 0;
  if (((this->x.HALF.HI - gRoomControls.roomScrollX) + 0x10U < 0x110) &&
     ((this->y.HALF.HI - gRoomControls.roomScrollY) + 0x18U < 0xd0)) {
    r1->unk = 1;
  }
}
