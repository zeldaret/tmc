#include "global.h"
#include "entity.h"

typedef struct {
    void* field_0x0;
    void* entityCount;
    u8 freezeTime;
} EntityHandler;

extern void EnemyFunctionHandler(Entity*, void*);
extern void SetChildOffset(Entity*, u32, u32, u32);
extern void sub_0804AA30(Entity*, void*);
extern void sub_0804A9FC(Entity*, u32);
extern void sub_0804A720(Entity*);
extern void InitializeAnimation(Entity*, u32);
extern void sub_08044FF8(Entity*);
extern u32 Random(void);
extern void sub_08004274(Entity*);
extern u32 sub_0806FA04(u32, u32);
extern u32 sub_08049FA0(Entity*);
extern u32 sub_08049EE4(Entity*);
extern u32 sub_080AEF88(void);
extern Entity* CreateEnemy(u32, u32);

extern void (*gUnk_080D16BC[])(Entity*);
extern void (*gUnk_080D16A4[])(Entity*);

extern u8 gUnk_080D16D0;
extern EntityHandler gUnk_03003DB8;

void sub_08044F50(Entity* this)

{
    EnemyFunctionHandler(this, &gUnk_080D16A4);
    SetChildOffset(this, 0, 1, -12);
}

void sub_08044F70(Entity* this) {
    gUnk_080D16BC[this->action](this);
}

void sub_08044F88(Entity* this) {
    if ((this->currentHealth != 0) && (this->cutsceneBeh.HALF.LO != this->currentHealth)) {
        this->action = 4;
    } else {
        sub_0804AA30(this, &gUnk_080D16A4);
    }

    if (this->field_0x43 != 0) {
        sub_0804A9FC(this, 28);
    }
}

void nullsub_171() {
}

void sub_08044FC8(Entity* this) {
    this->action = 1;
    this->spriteSettings.b.ss0 = 1;
    this->nonPlanarMovement = 128;
    sub_0804A720(this);
    InitializeAnimation(this, 0);
    sub_08044FF8(this);
}

void sub_08044FF8(Entity* this) {
    u32 bVar1;

    this->action = 2;
    bVar1 = Random();
    this->parameter3 = (bVar1 & 31) + 30;
    this->cutsceneBeh.HALF.LO = this->currentHealth;
}

void sub_08045018(Entity* this) {
    u32 cVar1;
    u32 param3;
    u32 iVar3;
    u32 randValue;

    sub_08004274(this);
    param3 = this->parameter3 -= 1;
    if (param3 == 0) {
        this->action = 3;
        this->parameter3 = 1;
        if (0 < this->nonPlanarMovement) {
            this->parameter3 = sub_0806FA04(4096, this->nonPlanarMovement) >> 8;
        }
        iVar3 = sub_08049FA0(this);
        if ((iVar3 == 0) && (randValue = Random(), (randValue & 3) != 0)) {
            cVar1 = sub_08049EE4(this);
            this->direction = (cVar1 + 0xfc + (Random() & 8)) & 24;
            return;
        }
        this->direction = Random() & 24;
    }
}

void sub_08045088(Entity* this) {
    u8 bVar1;

    sub_080AEF88();
    sub_08004274(this);
    bVar1 = this->parameter3 -= 1;
    if (bVar1 == 0) {
        this->action = 1;
    }
}

#ifdef NON_MATCHING
void sub_080450A8(Entity* this)

{
    u8 bVar1;
    u32 uVar2;
    s32 iVar3;
    s32 iVar4;
    Entity* pEVar5;
    Entity** ppEVar6;
    s32 dividend;
    u32 uVar7;
    Entity* local_r6_72;
    u32 divisor;
    u8* pcVar8;
    Entity* local_2c[4];

    ppEVar6 = local_2c;
    bVar1 = (&gUnk_080D16D0)[(this->entityType).parameter1];
    divisor = (u32)bVar1;
    if ((int)gUnk_03003DB8.entityCount < (int)(72 - divisor)) {
        uVar7 = divisor;
        if (bVar1 != 0) {
            do {
                uVar2 = CreateEnemy(87, this->entityType.parameter1);
                *ppEVar6 = uVar2;
                ppEVar6 = ppEVar6 + 1;
                uVar7 = uVar7 - 1;
            } while (uVar7 != 0);
        }
        pcVar8 = "\x06";
        iVar4 = 0;
        if (bVar1 != 0) {
            do {
                local_r6_72 = local_2c[iVar4];
                dividend = iVar4 + 1;
                iVar3 = Div(dividend, divisor);
                local_r6_72->attachedEntity = local_2c[iVar3];
                iVar4 = Div(iVar4 + divisor + -1, divisor);
                local_r6_72->parent = local_2c[iVar4];
                (local_r6_72->entityType).parameter2 = 1;
                local_r6_72->height.WORD = 0;
                local_r6_72->hurtBlinkTime = 240;
                sub_08045178(this, local_r6_72, *pcVar8, pcVar8[1]);
                pcVar8 = pcVar8 + 2;
                iVar4 = dividend;
            } while (dividend < divisor);
        }
        pEVar5 = CreateFx(this, 2, 0);
        if (pEVar5 != NULL) {
            CopyPosition(this, pEVar5);
        }
        DeleteEnemy(this);
    }
}
#else
NAKED
void sub_080450A8(Entity* this) {
    asm(".include \"asm/non_matching/slime/sub_080450A8.inc\"");
}
#endif
