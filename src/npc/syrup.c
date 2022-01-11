#include "npc.h"
#include "functions.h"
#include "object.h"

extern void (*gUnk_081121D4[])(Entity*);

extern SpriteLoadData gUnk_081121C4;
extern SpriteLoadData gUnk_081121B4;

extern void sub_0806A26C(Entity*);

void Syrup(Entity* this) {
    gUnk_081121D4[this->action](this);
    sub_0806ED78(this);
}

void sub_0806A1F8(Entity* this) {
    u32 iVar1;
    SpriteLoadData* paVar2;

    this->type == 0 ? (paVar2 = &gUnk_081121B4) : (paVar2 = &gUnk_081121C4);

    iVar1 = LoadExtraSpriteData(this, paVar2);
    if (iVar1) {
        this->action = 1;
        SetDefaultPriority(this, PRIO_MESSAGE);
        sub_0807DD50(this);
        InitializeAnimation(this, 0);
    }
}

void sub_0806A234(Entity* this) {
    sub_0807DD94(this, 0);
    if ((this->field_0x82.HWORD & 4) != 0) {
        if ((gRoomTransition.frameCount & 7) == 0) {
            sub_0806A26C(this);
        }
        sub_080042BA(this, 2);
    }
}

extern u8 gUnk_081121DC[];

void sub_0806A26C(Entity* this) {
    u8 unk;
    u8* ptr;
    u32 uVar2, uVar1;
    Entity* pEVar1;
    pEVar1 = CreateObject(SPECIAL_FX, 0x2f, 0);
    if (pEVar1 != NULL) {
        PositionEntityOnTop(this, pEVar1);
        uVar2 = uVar1 = Random();
        ptr = gUnk_081121DC;
        pEVar1->spriteOffsetX = (u8)ptr[uVar2 & 7];
        uVar1 /= 256;
        uVar1 &= 7;
        pEVar1->spriteOffsetY = (u8)ptr[uVar1] - 8;
    }
}

ASM_FUNC("asm/non_matching/syrup/Syrup_Head.inc", void Syrup_Head(Entity* this))
