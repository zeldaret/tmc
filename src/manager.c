#include "manager.h"

// TODO: change all manager arguments to be Entity* and cast to specific type later.
void (*const gManagerFunctions[])() = {
    NULL,          Manager1,     Manager2,          sub_080576C0, sub_08057854, sub_08057AD0,    sub_08057CB4,
    Manager7_Main, sub_08057ED0, sub_080581D8,      sub_08058380, sub_080585F0, sub_0805884C,    sub_08058DD0,
    sub_08058E60,  sub_08058ECC, sub_08059570,      sub_080599B8, sub_080599EC, sub_08059DAC,    sub_08059E58,
    sub_0805A280,  sub_0805AB4C, sub_0805AD48,      sub_0805ADD8, sub_0805AF60, sub_0805B030,    sub_0805B3B4,
    sub_0805B53C,  sub_0805B5C8, Manager1E_Handler, sub_0805B6F4, sub_0805B7A0, sub_0805B820,    sub_0805B8EC,
    sub_0805BC74,  sub_0805BF18, sub_0805C61C,      sub_0805C6B8, Manager27,    Manager28_Entry, sub_0805CB90,
    sub_0805CFC0,  sub_0805D014, sub_0805D174,      sub_0805D1FC, sub_0805D250, sub_0805D3C8,    Manager30_Main,
    sub_0805D630,  sub_0805D7A4, sub_0805DAE8,      sub_0805DB94, sub_0805DC84, sub_0805DDB4,    sub_0805DE38,
    sub_0805E0A8,  sub_0805E0FC
};
