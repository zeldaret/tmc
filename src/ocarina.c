#include "global.h"
#include "item.h"
#include "entity.h"
#include "link.h"

extern void _call_via_r2();
extern void sub_08077E78(ItemBehavior*, u32);
extern void PlaySFX(u32);
extern void sub_08078F60(void);
extern void sub_08077D38(ItemBehavior*, u32);
extern void sub_0805E544(void);
extern void UpdateItemAnim(ItemBehavior*);
extern void CreateBird(void);
extern void UnfreezeTime(void);

extern Entity gLinkEntity;
extern LinkState gLinkState;
extern void (*gOcarinaStates[4])(ItemBehavior*, u32);
extern u8 gUnk_02034490;

void Ocarina(ItemBehavior* pItemBeh, u32 inputFlags)

{
    // u32 *ocarinaStates = &gOcarinaStates;
    //_call_via_r2(pItemBeh, inputFlags,(ocarinaStates)[pItemBeh->stateID]);
    gOcarinaStates[pItemBeh->stateID](pItemBeh, inputFlags);
    gLinkEntity.field_0x7a = gLinkEntity.field_0x7a + 1;
}

void OcarinaUse(ItemBehavior* itemBeh, s32 inputFlags) {
    u32 bVar1;
    u32 var;

    if (gLinkState.linkAction == 24) {
        sub_08077E78(itemBeh, inputFlags);
    } else {
        itemBeh->unk4 |= 15;
        gLinkEntity.animationState = 4;
        var = gLinkEntity.spriteSettings.raw & ~0x40;
        gLinkEntity.spriteSettings.raw &= var;

        gLinkEntity.flags &= 127;
        gLinkEntity.field_0x7a = 2;
        gLinkState.flags.all |= 0x10000000;
        gLinkState.filler8[0] = 255;
        gUnk_02034490 = 1;
        bVar1 = (8 >> inputFlags);
        gLinkState.unk3 |= bVar1;
        gLinkState.keepFacing |= bVar1;
        sub_08078F60();
        sub_08077D38(itemBeh, inputFlags);
        PlaySFX(534);
        sub_0805E544();
    }
}
