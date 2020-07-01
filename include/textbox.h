#ifndef TEXTBOX_H
#define TEXTBOX_H

#include "global.h"

typedef struct {
    u8 doTextBox;
    u8 unk;
    u8 textSpeed;
    u8 unk3; // HI?
    u8 textWindowWidth;
    u8 textWindowHeight;
    u8 textWindowPosX;
    u8 textWindowPosY;
    u16 textIndex;
    u16 unk2; // HI?
} TextBox;

extern TextBox gTextBox;

void TextboxNoOverlap(u32 index, Entity* ent);

void extern TextboxNoOverlapFollow(u32 index);
#endif