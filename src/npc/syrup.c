#include "global.h"
#include "entity.h"
#include "npc.h"
#include "script.h"
#include "functions.h"

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
        sub_0805E3A0(this, 2);
        sub_0807DD50(this);
        InitializeAnimation(this, 0);
    }
}

void sub_0806A234(Entity* this) {
    sub_0807DD94(this, 0);
    if ((this->field_0x82.HWORD & 4) != 0) {
        if ((gScreenTransition.frameCount & 7) == 0) {
            sub_0806A26C(this);
        }
        sub_080042BA(this, 2);
    }
}

#ifdef NON_MATCHING
void sub_0806A26C(Entity* this) {
    u8 unk;
    u32 uVar2;
    Entity* pEVar1;
    pEVar1 = CreateObject(SPECIAL_FX, 0x2f, 0);
    if (pEVar1 != NULL) {
        PositionEntityOnTop(this, pEVar1);
        if (uVar2 = Random(), uVar2) {
            unk = -unk; // wtf?!
        }
        pEVar1->spriteOffsetX = gUnk_081121D4[uVar2 & 7];
        pEVar1->spriteOffsetY = gUnk_081121D4[(uVar2 / 256) & 7] - 8;
    }
}
#else
NAKED
void sub_0806A26C(Entity* this) {
    asm(".include \"asm/non_matching/syrup/sub_0806A26C.inc\"");
}
#endif
