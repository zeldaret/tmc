#include "manager.h"

// TODO: change all manager arguments to be Entity* and cast to specific type later.
void (*const gManagerFunctions[])() = {
    NULL,           Manager1_Main,  Manager2_Main,  Manager3_Main,  Manager4_Main,  Manager5_Main,  Manager6_Main,
    Manager7_Main,  Manager8_Main,  Manager9_Main,  ManagerA_Main,  ManagerB_Main,  ManagerC_Main,  ManagerD_Main,
    ManagerE_Main,  ManagerF_Main,  Manager10_Main, Manager11_Main, Manager12_Main, Manager13_Main, Manager14_Main,
    Manager15_Main, Manager16_Main, Manager17_Main, Manager18_Main, Manager19_Main, Manager1A_Main, Manager1B_Main,
    Manager1C_Main, Manager1D_Main, Manager1E_Main, Manager1F_Main, Manager20_Main, Manager21_Main, Manager22_Main,
    Manager23_Main, Manager24_Main, Manager25_Main, Manager26_Main, Manager27_Main, Manager28_Main, Manager29_Main,
    Manager2A_Main, Manager2B_Main, Manager2C_Main, Manager2D_Main, Manager2E_Main, Manager2F_Main, Manager30_Main,
    Manager31_Main, Manager32_Main, Manager33_Main, Manager34_Main, Manager35_Main, Manager36_Main, Manager37_Main,
    Manager38_Main, Manager39_Main
};
