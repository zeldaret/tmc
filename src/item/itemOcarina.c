#include "item.h"

extern void (*const gOcarinaStates[4])(ItemBehavior*, u32);

extern void sub_08078F60(void);
extern void sub_0805E544(void);


#if 0
void Ocarina(ItemBehavior* beh, u32 inputFlags) {
    gOcarinaStates[beh->stateID](beh, inputFlags);
    gPlayerEntity.field_0x7a++;
}

void OcarinaUse(ItemBehavior *beh, u32 arg1)
{
  u32 bVar1;
  
  if (gPlayerState.playerAction == 0x18) {
    PlayerChangeState(beh, arg1);
  }
  else {
    beh->field_0x5[4] = beh->field_0x5[4] | 0xf;
    gPlayerEntity.animationState = 4;
    gPlayerEntity.spriteSettings.b.flipX = 0;
    gPlayerEntity.flags &= 0x7f;
    gPlayerEntity.field_0x7a = 2;
    gPlayerState.flags.all |= 0x10000000;
    gPlayerState.field_0x27[0] = 0xff;
    gUnk_02034490[0] = 1;
    bVar1 = (8 >> arg1);
    gPlayerState.field_0xa |= bVar1;
    gPlayerState.keepFacing |= bVar1;
    sub_08078F60();
    sub_08077D38(beh, arg1);
    SoundReq(0x216);
    sub_0805E544();
  }
}
#endif
