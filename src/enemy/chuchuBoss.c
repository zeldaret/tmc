#include "enemy.h"
#include "entity.h"
#include "functions.h"

void sub_08027870(Entity*);

extern void (*const gUnk_080CC19C[])(Entity*);
extern void (*const gUnk_080CC1B0[])(Entity*);
extern const u8 gUnk_080CC1B8[];
extern void (*const gUnk_080CC1C8[])(Entity*);
extern void (*const gUnk_080CC1DC[])(Entity*);
extern void (*const gUnk_080CC20C[])(Entity*);
extern const u8 gUnk_080CC234[];
extern const u8 gUnk_080CC24F[];
extern void (*const gUnk_080CC258[])(Entity*);
extern void (*const gUnk_080CC264[])(Entity*);
extern void (*const gUnk_080CC26C[])(Entity*);
extern const u8 gUnk_080CC278[];
extern const u16 gUnk_080CC27C[];
extern const u16 gUnk_080CC29C[];
extern const u16 gUnk_080CC2BC[];
extern const s8 gUnk_080CC2DC[];

void ChuchuBoss(Entity* this) {
    gUnk_080CC19C[GetNextFunction(this)]((Entity*)this);
}

void sub_08025CBC(Entity* this) {
    sub_08001324(this);
    if (this->type == 0) {
        sub_08027870(this);
    }
}

void sub_08025DC0(Entity*);
void sub_08025CD4(Entity*);
void sub_08025DD8(Entity*);
void sub_08026060(Entity*);
void sub_08026110(Entity*);
void sub_080272D4(Entity*);
void sub_0802720C(Entity*);
void sub_08026090(Entity*);
void sub_0802626C(Entity*);
void sub_08026580(Entity*);
void sub_08026634(Entity*);
void sub_08026750(Entity*);
void sub_0802686C(Entity*);
void sub_080268C8(Entity*);
void sub_0802694C(Entity*);
void sub_08026C40(Entity*);
void sub_08026E1C(Entity*);
void sub_08026FA4(Entity*);
void sub_08027064(Entity*);
void sub_08026F1C(Entity*);
void sub_080262A8(Entity*);
void sub_08026328(Entity*);
void sub_08026358(Entity*);
void sub_080263B4(Entity*);
void sub_08026414(Entity*);
void sub_0802647C(Entity*);
void sub_080264AC(Entity*);
void sub_080264D4(Entity*);
void sub_0802650C(Entity*);
void sub_0802653C(Entity*);
void sub_08026774(Entity*);
void sub_080267D0(Entity*);
void sub_08026808(Entity*);
void sub_080268EC(Entity*);
void sub_08026914(Entity*);
void sub_08026968(Entity*);
void sub_080269CC(Entity*);
void sub_08026BE8(Entity*);

// clang-format off
void (*const gUnk_080CC19C[])(Entity*) = {
    sub_08025DC0,
    sub_08025DC0,
    sub_08025CBC,
    sub_08025CD4,
    sub_08001242,
};

void (*const gUnk_080CC1B0[])(Entity*) = {
    sub_08025DD8,
    sub_08026060,
};

const u8 gUnk_080CC1B8[] = {
    0, 4,
    0, 0,
    0, 4,
    0, 0,
    1, 4,
    0, 0,
    2, 4,
    0, 0,
};

void (*const gUnk_080CC1C8[])(Entity*) = {
    sub_08026110,
    sub_080272D4,
    sub_0802720C,
    sub_0802720C,
    sub_08026090,
};

void (*const gUnk_080CC1DC[])(Entity*) = {
    sub_0802626C,
    sub_08026580,
    sub_08026634,
    sub_08026750,
    sub_0802686C,
    sub_080268C8,
    sub_0802694C,
    sub_08026C40,
    sub_08026E1C,
    sub_08026FA4,
    sub_08027064,
    sub_08026F1C,
};

void (*const gUnk_080CC20C[])(Entity*) = {
    sub_080262A8,
    sub_08026328,
    sub_08026358,
    sub_080263B4,
    sub_08026414,
    sub_0802647C,
    sub_080264AC,
    sub_080264D4,
    sub_0802650C,
    sub_0802653C,
};

const u8 gUnk_080CC234[] = {
    0x3C, 0x1E, 0x1E, 0x1E,
    0x1E, 0x0F, 0x0F, 0x0F,
    0x04, 0x04, 0x04, 0x04,
    0x04, 0x04, 0x0A, 0x0A,
    0x0A, 0x0F, 0x0F, 0x0F,
    0x1E, 0x1E, 0x2D, 0x0A,
    0x5A, 0x1E, 0xFF,
};

const u8 gUnk_080CC24F[] = {
    2, 2, 4, 4,
    4, 6, 6, 8,
};

void (*const gUnk_080CC258[])(Entity*) = {
    sub_08026774,
    sub_080267D0,
    sub_08026808,
};

void (*const gUnk_080CC264[])(Entity*) = {
    sub_080268EC,
    sub_08026914,
};

void (*const gUnk_080CC26C[])(Entity*) = {
    sub_08026968,
    sub_080269CC,
    sub_08026BE8,
};

const u8 gUnk_080CC278[] = {
    150, 180, 210, 250,
};

const u16 gUnk_080CC27C[] = {
     0x80,  0x8, 0x100,  0x6,
     0x80, 0x18, 0x100,  0x8,
    0x180,  0x6, 0x100, 0x10,
      0x0,  0x0,  0xA0, 0x18,
};

const u16 gUnk_080CC29C[] = {
     0x80, 0x8, 0x100,  0x4,
     0x80, 0xC,  0x80,  0x6,
    0x200, 0x6, 0x100,  0xC,
      0x0, 0x0,  0xA0, 0x14,
};

const u16 gUnk_080CC2BC[] = {
     0x80, 0x8, 0x100,  0x0,
     0x60, 0x2,  0x80,  0x2,
    0x200, 0x6, 0x100,  0x8,
      0x0, 0x0,  0xA0, 0x10,
};


const s8 gUnk_080CC2DC[] = {
    -7, -9, -7,
};
// clang-format on
