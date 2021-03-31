#ifndef TEXTBOX_H
#define TEXTBOX_H

#include "global.h"
#include "entity.h"
#include "structures.h"

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
    u32 field_0x14;
    u32 field_0x18;
    u32 field_0x1c;
} TextBox;
extern TextBox gTextBox;

typedef struct {
    TextBox textBox;
    u8 _20;
    u8 _21;
    u16 _22;
    u16 _24;
    u16 _26;
    u8 _28[0x4];
    void* _2c;
    u8 _30[0x20];
    WStruct _50;
    char playerName[0xa];
    u8 _66[0x10];
    u8 _76;
    u8 _77[0x11];
    u8 _88;
    u8 state;
    u8 _8a;
    u8 _8b;
    u8 _8c;
    u8 _8d;
    u8 _8e;
    u8 _8f;
    u8 _90;
    u8 _91;
    s8 _92;
    u8 _93;
    u8 _94;
    u8 _95;
    u8 _96;
    u8 _97;
    union {
        u32 word;
        struct {
            u8 b0;
            u8 b1;
            u8 b2;
            s8 sizeScale;
        } bytes;
    } _98;
    u8 _9c;
    u8 _9d;
    u16 _9e;
    u16 _a0;
    u16 _a2;
    u16 _a4;
    u16 _a6;
} CurrentTextBox;
extern CurrentTextBox gCurrentTextBox;
static_assert(sizeof(CurrentTextBox) == 0xa8);

/**
 * @brief Initialize the message system.
 */
void MessageInitialize(void);

/**
 * @brief Show a message on screen.
 *
 * @param index u32 Message index
 */
void ShowTextbox(u32 index);

/**
 * @brief Show a message at screen posiiton.
 *
 * @param index u32 Message index
 * @param x u32 Screen x
 * @param y u32 Screen y
 */
void TextboxAtPosition(u32 index, u32 x, u32 y);

/**
 * @brief Show a message that attempts not to obscure the entity.
 *
 * @param index u32 Message index
 * @param entity Entity* Your important entity
 */
void TextboxNoOverlap(u32 index, Entity* entity);

/**
 * @brief Show a message that attempts not to obscure the camera target.
 *
 * @param index u32 Message index
 */
void TextboxNoOverlapFollow(u32 index);

#endif
