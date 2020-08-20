#include "global.h"
#include "entity.h"
#include "player.h"
#include "structures.h"

extern void (*gUnk_081140D4[])(Entity*);

extern u16 gUnk_081140CC[];
extern void sub_0805E3A0(Entity*, u32);
extern void sub_0806D0B0(Entity*);
extern void sub_0807DD64(Entity*);
extern void sub_0807DDAC(Entity*, u32);
extern void sub_0807DDE4(Entity*);
extern u32 Random(void);
extern void PlaySFX(u32);
extern void sub_0806D02C(Entity*);
extern Entity* FindEntityInListByForm(u32, u32, u32, u32, u32);

void BigGoron(Entity* this) {
    gUnk_081140D4[this->entityType.form](this);
}

void sub_0806CF30(Entity* this) {
    if (this->action == 0) {
        this->action = 1;
        this->previousActionFlag = 1;
        this->field_0x68.HWORD = this->x.HALF.HI;
        sub_0805E3A0(this, 2);
        sub_0806D0B0(this);
        sub_0807DD64(this);
    } else {
        sub_0807DDAC(this, 0);
        sub_0807DDE4(this);
    }

    switch (this->previousActionFlag) {
        case 0:
        case 1:
            if (gScreenTransition.frameCount % 4 == 0) {
                if (gPlayerEntity.x.HALF.HI < this->x.HALF.HI && this->field_0x68.HWORD - 32 < this->x.HALF.HI) {
                    this->x.HALF.HI--;
                }
                if (gPlayerEntity.x.HALF.HI > this->x.HALF.HI && this->field_0x68.HWORD + 32 > this->x.HALF.HI) {
                    this->x.HALF.HI++;
                }
            }
            break;
        case 2:
            if (--this->actionDelay == 0) {
                u32 uVar2 = Random();
                PlaySFX(gUnk_081140CC[uVar2 % 4]);
                this->actionDelay = ((u8)uVar2 & 7) * 16;
                this->actionDelay += 128;
            }
            break;
        case 3:
            break;
    }
    sub_0806D02C(this);
}

void sub_0806D00C(Entity* this) {
    Entity* pEVar1;

    pEVar1 = FindEntityInListByForm(7, 76, 7, 0, 0);
    if (pEVar1 != NULL) {
        this->parent = pEVar1;
    }
}
