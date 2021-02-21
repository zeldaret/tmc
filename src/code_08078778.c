#include "global.h"
#include "entity.h"
#include "functions.h"

typedef struct {
    u8 unk[4];
    u32 unk2;
    u32 unk4;
} Unk_struct;

extern Unk_struct gUnk_03003DF0[];

void sub_08078778(Entity* ent) {
    sub_0807887C(ent, 1, 0);
}

void sub_08078784(Entity* ent, u32 arg1) {
    sub_0807887C(ent, 1, arg1);
}

void sub_08078790(Entity* ent, u32 arg1) {
    sub_0807887C(ent, 2, arg1);
}

void sub_0807879C(Entity* ent) {
    sub_0807887C(ent, 7, 0);
}

void sub_080787A8(Entity* ent, u32 arg1) {
    sub_0807887C(ent, 7, arg1);
}

void sub_080787B4(Entity* ent) {
    sub_0807887C(ent, 9, 0);
}

void sub_080787C0(Entity* ent) {
    sub_0807887C(ent, 10, 0);
}

void sub_080787CC(Entity* ent) {
    sub_0807887C(ent, 5, 0);
}

s32 sub_080787D8(Entity* ent) {
    s32 iVar1;

    iVar1 = sub_0807887C(ent, 8, 0);
    if (iVar1 >= 0) {
        gUnk_03003DF0[iVar1].unk[10] = 0xbe;
    }
    return iVar1;
}

s32 sub_08078800(Entity* ent) {
    s32 iVar1;

    iVar1 = sub_0807887C(ent, 6, 0);
    if (iVar1 >= 0) {
        gUnk_03003DF0[iVar1].unk[10] = 0xbe;
    }
    return iVar1;
}

s32 sub_08078828(Entity* ent) {
    s32 iVar1;

    iVar1 = sub_0807887C(ent, 3, 0);
    if (iVar1 >= 0) {
        gUnk_03003DF0[iVar1].unk[10] = 0xbe;
    }
    return iVar1;
}

void sub_08078850(u32 arg0, u32 arg1, u32 arg2, u32 arg3) {
    s32 iVar1;

    iVar1 = sub_08078904();
    if (iVar1 >= 0) {
        gUnk_03003DF0[iVar1].unk[8] = arg1;
        gUnk_03003DF0[iVar1].unk[10] = arg2;
        *(&gUnk_03003DF0[iVar1].unk4 + 1) = arg3;
    }
}
