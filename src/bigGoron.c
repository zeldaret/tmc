#include "global.h"
#include "entity.h"
#include "functions.h"
#include "link.h"

extern void (*gUnk_081140D4[])(Entity*);

extern u16 gUnk_081140CC[];
extern u32 gUnk_030010A0;

void sub_0806CF18(Entity* this) {
    gUnk_081140D4[this->entityType.parameter1](this);
}

#ifdef NON_MATCHING
void sub_0806CF30(Entity* this) {
    u8 bVar1;
    u32 uVar2;
    int iVar3;

    if (this->action == 0) {
        this->action = 1;
        this->previousActionFlag = 1;
        this->field_0x68 = (this->x).HALF.HI;
        sub_0805E3A0(this, 2);
        sub_0806D0B0(this);
        sub_0807DD64(this);
    } else {
        sub_0807DDAC(this, 0);
        sub_0807DDE4(this);
    }
    if (this->previousActionFlag != 2) {

        if (this->previousActionFlag < 3) {
            if ((gUnk_030010A0 & 3) == 0) {
                iVar3 = this->x.HALF.HI;
                if (gLinkEntity.x.HALF.HI < iVar3) {
                    if ((this->field_0x68 - 32) < iVar3) {
                        this->x.HALF.HI = -1;
                    }
                }
                if (this->x.HALF.HI > gLinkEntity.x.HALF.HI) {
                    if (this->x.HALF.HI < (this->field_0x68 + 32)) {
                        this->x.HALF.HI += 1;
                    }
                }
            }
        }
    } else {
        bVar1 = this->parameter3 -= 1;
        if (bVar1 == 0) {
            uVar2 = Random();
            PlaySFX(gUnk_081140CC[uVar2 & 3]);
            this->parameter3 = ((u8)uVar2 & 7) * 10 + 128;
        }
    }
    sub_0806D02C(this);
}
#else
NAKED
void sub_0806CF30(Entity* this) {
    asm(".include \"asm/non_matching/bigGoron/sub_0806CF30.inc\"");
}
#endif

void sub_0806D00C(Entity* this) {
    Entity* pEVar1;

    pEVar1 = sub_0805EB2C(7, 76, 7, 0, 0);
    if (pEVar1 != NULL) {
        this->parent = pEVar1;
    }
}
