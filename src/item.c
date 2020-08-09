#include "global.h"
#include "entity.h"
#include "item.h"


// TODO - How does this relate to PlayerItemFunctions? Is this just a lookup table?
void (*const gItemFunctions[])(ItemBehavior*, u32) = {
    DebugItem,
    Sword,
    Sword,
    Sword,
    Sword,
    Sword,
    Sword,
    Bomb,
    Bomb,
    Bow,
    Bow,
    sub_08075D14,
    sub_08075D14,
    Shield,
    Shield,
    Lantern,
    Lantern,
    GustJar,
    PacciCane,
    MoleMitts,
    RocsCape,
    sub_08076800,
    DebugItem,
    Ocarina,
    DebugItem,
    DebugItem,
    DebugItem,
    TryPickupObject,
    JarEmpty,
    JarEmpty,
    JarEmpty,
    JarEmpty,
};

extern void sub_08077E78(ItemBehavior*, u32);
extern void PlaySFX(u32);
extern void sub_08078F60(void);
extern void sub_08077D38(ItemBehavior*, u32);
extern void sub_0805E544(void);
extern void UpdateItemAnim(ItemBehavior*);
extern void CreateBird(void);
extern void UnfreezeTime(void);
extern void sub_0806F948(Entity*);
extern void sub_08077BB8(ItemBehavior*);
extern void CreatePlayerBomb(ItemBehavior*, u32);
extern u32 sub_08077EFC();

extern void (*const gOcarinaStates[4])(ItemBehavior*, u32);
extern void (*const gUnk_0811BDE0[])(ItemBehavior* beh, u32);
extern void (*const gUnk_0811BDE8[])(ItemBehavior* beh, u32);
extern void (*const gUnk_0811BDF4[])(ItemBehavior* beh, u32);

extern u8 gUnk_02034490;
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
    gUnk_02034490 = 1;
    bVar1 = (8 >> arg1);
    gPlayerState.field_0xa |= bVar1;
    gPlayerState.keepFacing |= bVar1;
    sub_08078F60();
    sub_08077D38(beh, arg1);
    PlaySFX(0x216);
    sub_0805E544();
  }
}
#endif

void PacciCane(ItemBehavior* beh, u32 arg1) {
    gUnk_0811BDE0[beh->stateID](beh, arg1);
}

void sub_08076C98(ItemBehavior* beh, u32 arg1) {
    beh->field_0x5[4] |= 0xf;
    sub_08077D38(beh, arg1);
    sub_0806F948(&gPlayerEntity);
    sub_08077BB8(beh);
}

void sub_08076CBC(ItemBehavior* beh, u32 arg1) {
    if ((beh->field_0x5[9] & 0x80) != 0) {
        sub_08077E78(beh, arg1);
    } else {
        if ((beh->field_0x5[9] & 0x40) != 0) {
            CreatePlayerBomb(beh, 0x12);
        }
        UpdateItemAnim(beh);
    }
}

void Shield(ItemBehavior* beh, u32 arg1) {
    gUnk_0811BDE8[beh->stateID](beh, arg1);
}

void sub_08076D04(ItemBehavior* beh, u32 arg1) {
    gPlayerState.field_0x3[0] = 0x81;
    beh->field_0x5[4] = 2;
    sub_0806F948(&gPlayerEntity);
    sub_08077D38(beh, arg1);
    sub_08077BB8(beh);
}

void sub_08076D34(ItemBehavior* beh, u32 arg1) {
    if (sub_08077EFC() != 0) {
        gPlayerState.field_0x3[0] |= 1;
        UpdateItemAnim(beh);
        if (beh->field_0x5[9] != 0) {
            beh->stateID++;
            beh->field_0xf = 0;
            gPlayerState.field_0xa &= ~(u8)(8 >> arg1);
            PlaySFX(0x15d);
        }
    } else {
        gPlayerState.field_0x3[0] = 0;
        sub_08077E78(beh, arg1);
    }
}

void sub_08076D94(ItemBehavior *beh, u32 arg1)
{
  if (sub_08077EFC(beh)) {
    gPlayerState.field_0x3[0] |= 1;
    UpdateItemAnim(beh);
  }
  else {
    gPlayerState.field_0x3[0] = 0;
    sub_08077E78(beh, arg1);
  }
}

void GustJar(ItemBehavior *beh, u32 arg1)
{
    gPlayerState.field_0xa8[0] = 3;
    gUnk_0811BDF4[beh->stateID](beh, arg1);
}