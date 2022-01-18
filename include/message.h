#ifndef MESSAGE_H
#define MESSAGE_H

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
    u32 field_0xc;
    u32 field_0x10;
    u32 field_0x14;
    u32 field_0x18;
    u32 field_0x1c;
} Message;
extern Message gMessage;

typedef struct {
    u8 flags;
    u8 code;      // first byte read
    u16 param;    // second byte read
    u16 extended; // ascii adjusted for jp chars
    u16 _6;
    u16 textIndex;
    void* _c;
    u8 buf[32];
} Token;

typedef struct {
    Message message;
    Token curToken;
    WStruct _50;
    char player_name[10];
    u8 _66[0x10];
    u8 _76;
    u8 _77[0x11];
    u8 msgStatus;
    u8 renderStatus;
    u8 newlineDelay;
    u8 _8b;
    u8 _8c;
    u8 _8d;
    u8 _8e;
    u8 _8f;
    u8 _90;
    u8 _91;
    s8 typeSpeed;
    u8 _93;
    u8 _94;
    u8 delay;
    u8 _96;
    u8 _97;
    union {
        u32 word;
        struct {
            u8 lineNo;
            u8 b1;
            u8 b2;
            s8 sizeScale;
        } bytes;
    } _98;
    u8 _9c;
    u8 updateDraw;
    u16 beginTiles[4];
    u16 _a6;
} TextRender;
extern TextRender gTextRender;
static_assert(sizeof(TextRender) == 0xa8);

/**
 * @brief Initialize the message system.
 */
void MessageInitialize(void);

/**
 * @brief Update the message system.
 *
 */
void MessageMain(void);

/**
 * @brief Show a message on screen.
 *
 * @param index u32 Message index
 */
void MessageRequest(u32 index);

/**
 * @brief Show a message at screen posiiton.
 *
 * @param index u32 Message index
 * @param x u32 Screen x
 * @param y u32 Screen y
 */
void MessageAtPos(u32 index, u32 x, u32 y);

/**
 * @brief Show a message that attempts not to obscure the entity.
 *
 * @param index u32 Message index
 * @param entity Entity* Your important entity
 */
void MessageNoOverlap(u32 index, Entity* entity);

/**
 * @brief Show a message that attempts not to obscure the camera target.
 *
 * @param index u32 Message index
 */
void MessageFromTarget(u32 index);

/**
 * @brief Display message at y position.
 *
 * @param index u32 Message index
 * @param y u32 Screen y
 */
void MessageAtHeight(u32 index, u32 y);

/**
 * @brief Close message.
 */
void MessageClose(void);

void DispMessageFrame(u16*, s32, s32, u32);

#endif // MESSAGE_H
