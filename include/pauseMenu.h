#ifndef PAUSEMENU_H
#define PAUSEMENU_H

#include "subtask.h"

Subtask PauseMenu_Variant0;
Subtask PauseMenu_Variant1;
Subtask PauseMenu_Variant2;
Subtask PauseMenu_Variant3;
Subtask PauseMenu_Variant4;
Subtask PauseMenu_Variant5;

Subtask PauseMenu_ItemMenu;
Subtask PauseMenu_ItemMenu_Draw;
Subtask PauseMenu_ItemMenu_Init;
Subtask PauseMenu_ItemMenu_Update;

Subtask PauseMenu2;

typedef enum {
    PauseMenuScreen_0,
    PauseMenuScreen_1, // Items
    PauseMenuScreen_2, // Quest Status
    PauseMenuScreen_3,
    PauseMenuScreen_4, // Map
    PauseMenuScreen_5,
    PauseMenuScreen_6, // Map Detail
    PauseMenuScreen_7, // Kinstone Pieces
    PauseMenuScreen_8, // Sword Techniques
    PauseMenuScreen_9,
    PauseMenuScreen_10,
    PauseMenuScreen_11,
    PauseMenuScreen_12,
    PauseMenuScreen_13,
    PauseMenuScreen_14,
    PauseMenuScreen_15,
    PauseMenuScreen_16,
    PauseMenuScreen_17,
    PauseMenuScreen_18,
    PauseMenuScreen_19,
} PauseMenuScreen;

#endif // PAUSEMENU_H
