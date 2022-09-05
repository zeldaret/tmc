#include "figurineMenu.h"
#include "pauseMenu.h"
#include "subtask.h"
#include "subtask2.h"

// This data also belongs in figurine_menu.c, but the data/gfx/figurines.s are inbetween.
// TODO convert them to c code as well.

// clang-format off

// Pause menu screens
const struct_08128A38 gUnk_08128A38[] = {
    [PauseMenuScreen_0] = { 0, 1, PauseMenu_Variant0 },
    [PauseMenuScreen_1] = { 0, 1, PauseMenu_ItemMenu },
    [PauseMenuScreen_2] = { 1, 2, PauseMenu2 },
    [PauseMenuScreen_3] = { 8, 2, PauseMenu_Variant0 },
    [PauseMenuScreen_4] = { 2, 15, PauseMenu_Screen_4 },
    [PauseMenuScreen_5] = { 3, 15, PauseMenu_Screen_5 },
    [PauseMenuScreen_6] = { 4, 15, PauseMenu_Screen_6 },
    [PauseMenuScreen_7] = { 5, 2, PauseMenu_Screen_7 },
    [PauseMenuScreen_8] = { 6, 2, PauseMenu_Screen_8 },
    [PauseMenuScreen_9] = { 9, 2, PauseMenu_Screen_9 },
    [PauseMenuScreen_10] = { 10, 2, PauseMenu_Screen_10 },
    [PauseMenuScreen_11] = { 10, 1, PauseMenu_Screen_10 },
    [PauseMenuScreen_12] = { 2, 15, PauseMenu_Variant0 },
    [PauseMenuScreen_13] = { 7, 15, PauseMenu_Variant0 },
    [PauseMenuScreen_14] = { 0, 1, PauseMenu_Variant0 },
    [PauseMenuScreen_15] = { 0, 1, PauseMenu_Variant0 },
    [PauseMenuScreen_16] = { 0, 1, PauseMenu_Variant0 },
    [PauseMenuScreen_17] = { 0, 1, PauseMenu_Variant0 },
    [PauseMenuScreen_18] = { 0, 1, PauseMenu_Variant0 },
    [PauseMenuScreen_19] = { 0, 1, PauseMenu_Variant0 },
};


// TODO extract the bg controls
const struct_08128AD8 gUnk_08128AD8[] = {
    { 182, 90, 1024, 7173, 7427 },
    { 183, 91, 1024, 7173, 7427 },
    { 185, 94, 34304, 7171, 7435 },
    { 184, 92, 1536, 7170, 7427 },
    { 185, 129, 1536, 7178, 7427 },
    { 204, 125, 1024, 7171, 7427 },
    { 205, 126, 1536, 7170, 7427 },
    { 185, 93, 34304, 7171, 7435 },
    { 206, 89, 3840, 7170, 7427 },
#ifdef EU
    { 0, 128, 1536, 7170, 7431 },
    { 0, 127, 1536, 7170, 7431 },
#else
    { 207, 128, 1536, 7170, 7431 },
    { 207, 127, 1536, 7170, 7431 },
#endif
};

// clang-format on
