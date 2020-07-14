#include "global.h"
#include "room.h"
#include "entity.h"
#include "textbox.h"

void sub_0801D630();
void ShowTextbox();
void TextboxAtPosition();

extern u32 gUnk_02022780;
extern u32 gUnk_02036A40;
extern u32 gUnk_02036A38;
extern u32 gUnk_02000040;

void sub_08056360(void)

{
    if ((gTextBox.doTextBox & 127) != 0) {
        gTextBox.doTextBox = 136;
    }
    return;
}

void TextboxNoOverlapFollow(u32 index)

{
    if (gRoomControls.cameraTarget != NULL) {
        TextboxNoOverlap(index, gRoomControls.cameraTarget);
    } else {
        ShowTextbox(index);
    }
    return;
}

void TextboxNoOverlap(u32 index, Entity* ent)

{
    s16 y;
    s16 h;

    ShowTextbox(index);

    y = ent->y.HALF.HI;
    h = ent->height.HALF.HI;

    if (88 < ((y + h) - gRoomControls.roomScrollY)) {
        gTextBox.textWindowPosY = 1;
    }
    return;
}

void sub_080563C8(u32 param_1, u32 param_2) {
    TextboxAtPosition(param_1, 1, param_2);
    return;
}

void TextboxAtPosition(u32 index, u32 x, u32 y) {
    ShowTextbox(index);
    gTextBox.textWindowPosX = x;
    gTextBox.textWindowPosY = y;
    return;
}

void ShowTextbox(u32 index, u32 param_2, u32* dest) {
    sub_0801D630(&gTextBox, 32, dest);
    gTextBox.textIndex = index;
    gTextBox.textSpeed = 99;
    gTextBox.textWindowWidth = 26;
    gTextBox.textWindowHeight = 4;
    gTextBox.textWindowPosX = 1;
    gTextBox.textWindowPosY = 12;
    gTextBox.doTextBox = 1;
    return;
}

void sub_08056418(void) {

    sub_0801D630(&gTextBox, 32);
    sub_0801D630(&gUnk_02022780, 168);
    sub_0801D630(&gUnk_02036A40, 8);
    sub_0801D630(&gUnk_02036A38, 8);
    sub_0801D630(&gUnk_02000040, 4);
    return;
}
