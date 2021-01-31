#include "global.h"
#include "room.h"
#include "entity.h"
#include "textbox.h"
#include "structures.h"

void _DmaZero();
void ShowTextbox();
void TextboxAtPosition();

extern u32 gUnk_02022780;
extern u32 gUnk_02036A40;
extern u32 gUnk_02036A38;

s32 sub_08056338(void) {
    s32 result;

    result = -1;
    if (((gTextBox.doTextBox & 0x7f) == 0) && (gUnk_02000040.unk_00 == 3))
        result = gUnk_02000040.unk_01;
    return result;
}

void sub_08056360(void) {
    if ((gTextBox.doTextBox & 0x7f) != 0) {
        gTextBox.doTextBox = 0x80 | 0x8;
    }
}

void TextboxNoOverlapFollow(u32 index) {
    if (gRoomControls.cameraTarget != NULL) {
        TextboxNoOverlap(index, gRoomControls.cameraTarget);
    } else {
        ShowTextbox(index);
    }
}

void TextboxNoOverlap(u32 index, Entity* ent) {
    s16 y;
    s16 h;

    ShowTextbox(index);

    y = ent->y.HALF.HI;
    h = ent->height.HALF.HI;

    if (((y + h) - gRoomControls.roomScrollY) > 0x58) {
        gTextBox.textWindowPosY = 1;
    }
}

void sub_080563C8(u32 param_1, u32 param_2) {
    TextboxAtPosition(param_1, 1, param_2);
}

void TextboxAtPosition(u32 index, u32 x, u32 y) {
    ShowTextbox(index);
    gTextBox.textWindowPosX = x;
    gTextBox.textWindowPosY = y;
}

void ShowTextbox(u32 index, u32 param_2, u32* dest) {
    _DmaZero(&gTextBox, 32, dest);
    gTextBox.textIndex = index;
    gTextBox.textSpeed = 99;
    gTextBox.textWindowWidth = 26;
    gTextBox.textWindowHeight = 4;
    gTextBox.textWindowPosX = 1;
    gTextBox.textWindowPosY = 12;
    gTextBox.doTextBox = 1;
}

void sub_08056418(void) {
    _DmaZero(&gTextBox, 32);
    _DmaZero(&gUnk_02022780, 168);
    _DmaZero(&gUnk_02036A40, 8);
    _DmaZero(&gUnk_02036A38, 8);
    _DmaZero(&gUnk_02000040, 4);
}
