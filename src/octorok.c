#include "global.h"
#include "entity.h"

extern void EnemyFunctionHandler();
extern void SetChildOffset();
extern void sub_0804AA30();
extern void sub_0804A9FC();
extern void sub_0804A7D4();
extern void CreateDeathFx();
extern void sub_0801ECFC();
extern u32 sub_0806F520();
extern void sub_0806F4E8();
extern void sub_0806F3E4();
extern void InitializeAnimationAnimation();
extern void sub_0804A720();
extern u32 Random();
extern void sub_0801ED14();

extern void(*gOctorok[2]);
extern void (*gOctorokIdle[4])(Entity*);
extern void (*gUnk_080CA158[4])(Entity*);

extern u8 gUnk_080CA170[8];
// Main
void Octorok(Entity* ent) {
    EnemyFunctionHandler(ent, gOctorok);
    SetChildOffset(ent, 0, 1, -16);
}

// Idle
void sub_0801EAD0(Entity* ent) {
    gOctorokIdle[ent->action](ent);
}

// Touch player
void sub_0801EAE8(Entity* ent) {
    if (ent->field_0x43 != 0) {
        sub_0804A9FC(ent, 28);
    }
    sub_0804AA30(ent, gOctorok);
}

// Death
void sub_0801EB0C(Entity* ent) {
    if ((ent->entityType).form == 0) {
        sub_0804A7D4(ent);
    } else {
        CreateDeathFx(ent, 241, 0);
    }
}

void sub_0801EB2C(Entity* ent) {
    s32 iVar1;

    if ((ent->previousActionFlag < 3) && (iVar1 = sub_0806F520(ent), iVar1 == 0)) {
        sub_0801ECFC(ent);
        InitializeAnimation(ent, ent->animationState);
    } else {
        gUnk_080CA158[ent->previousActionFlag](ent);
    }
}

void sub_0801EB68(Entity* ent) {
    ent->previousActionFlag = 1;
    ent->filler[1] = 60;
}

void sub_0801EB74(Entity* ent) {
    sub_0806F4E8(ent);
}

void sub_0801EB7C(Entity* ent) {
    sub_0806F3E4(ent);
}

void sub_0801EB84(Entity* ent) {
    ent->flags = ent->flags & 127;
    InitializeAnimationAnimation(ent, 2);
}

void nullsub_3() {
}

void sub_0801EB9C(Entity* ent) {
    if ((ent->flags & 128) != 0) {
        ent->flags = ent->flags | 128;
        ent->field_0x3a = ent->field_0x3a & 251;
    } else {
        ent->currentHealth = 0;
    }
}

// Init
#ifdef NON_MATCHING
void sub_0801EBC8(Entity* ent) {
    sub_0804A720();
    ent->animationState = (ent->entityType).form == 2 ? (ent->entityType).form : Random() & 3;
    ent->filler[0] = 18;
    sub_0801ECFC(ent);
    InitializeAnimation(ent, ent->animationState);
}
#else
NAKED
void sub_0801EBC8(Entity* ent) {
    asm(".include \"asm/octorok/sub_0801EBC8.inc\"");
}
#endif

void sub_0801EBF4(Entity* ent) {
    u32 uVar2;

    if (--ent->actionDelay == 0) {
        ent->action = 2;
        uVar2 = Random();
        ent->actionDelay = gUnk_080CA170[uVar2 & 3];
        sub_0801ED14(ent);
    }
    GetNextFrame(ent);
}
