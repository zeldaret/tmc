#ifndef TEXTBOX_H
#define TEXTBOX_H

#include "global.h"
#include "entity.h"

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
    u16 field_0xc;
    u16 field_0xe;
    u32 field_0x10;
} TextBox;
extern TextBox gTextBox;

typedef struct {
    u8 _0;
    u8 _1;
    u8 _2;
    u8 _3[5];
    u16 _8;
    u8 _b[0x16];
    u8 _20;
    u8 _21;
    u8 _22[0xa];
    void* _2c;
    u8 _30[0x23];
    u8 _53;
    u16 _54;
    u8 _56[0x2];
    void* _58;
    u8 _5c;
    u8 _5d;
    u8 _5e[24];
    u8 _76;
    u8 _77[0x11];
    u8 _88;
    u8 _89;
    u8 _8a;
    u8 _8b[0xe];
    u8 _99;
    u8 _9a;
    u8 _9b;
    u8 _9c;
    u8 _9d;
    u8 _9e[0xa];
} struct_02022780;
extern struct_02022780 gUnk_02022780;
static_assert(sizeof(struct_02022780) == 0xa8);

void MessageInitialize(void);
void ShowTextbox(u32 index);
void TextboxAtPosition(u32 index, u32 x, u32 y);
void TextboxNoOverlap(u32 index, Entity* ent);
void TextboxNoOverlapFollow(u32 index);

#endif
