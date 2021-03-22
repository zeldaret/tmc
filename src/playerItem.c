#include "global.h"
#include "functions.h"

extern void sub_080A7544();
extern void sub_0801B188();
extern void sub_0801B45C();
extern void sub_08018FCC();
extern void sub_080A2D74();
extern void sub_08054A40();
extern void sub_08056330();
extern void sub_080ADA30();
extern void sub_080704BC();
extern void sub_0801B898();
extern void CellOverwriteSet();
extern void SwordSpin();
extern void SwordBeam();
extern void sub_080ACBCC();
extern void Item11();
extern void sub_080700E8();
extern void sub_080ACF14();
extern void Item14();
extern void sub_080A306C();
extern void NulledItem();

void (*const gPlayerItemFunctions[])() = {
    DeleteEntity, sub_080A7544, sub_0801B188, sub_0801B45C,    sub_08018FCC, sub_080A2D74, sub_08054A40,
    sub_08056330, sub_080ADA30, sub_080704BC, DeleteEntity,    DeleteEntity, sub_0801B898, CellOverwriteSet,
    SwordSpin,    SwordBeam,    sub_080ACBCC, Item11,          sub_080700E8, sub_080ACF14, Item14,
    sub_080A306C, SwordBeam,    NulledItem,   CellOverwriteSet
};
