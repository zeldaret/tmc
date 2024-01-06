#ifndef MESSAGE_H
#define MESSAGE_H

#include "global.h"
#include "entity.h"
#include "structures.h"

#define MESSAGE_ACTIVE 0x7f

typedef struct {
    u8 state;
    u8 unk;
    u8 textSpeed;
    u8 unk3; // HI?
    u8 textWindowWidth;
    u8 textWindowHeight;
    u8 textWindowPosX;
    u8 textWindowPosY;
    u16 textIndex;
    u16 unk2; // HI?
    u32 flags;
    u32 rupees;     // item price, shells, minigame timer
    u32 field_0x14; // number of cuccos
    u32 field_0x18; // unused
    u32 field_0x1c; // unused
} Message;
extern Message gMessage;

typedef struct {
    u8 unk00 : 1;
    u8 unk01 : 4;
    u8 unk05 : 2;
    u8 unk06 : 1;
    u8 code;      // first byte read
    u16 param;    // second byte read
    u16 extended; // ascii adjusted for jp chars
    u16 _6;
    u16 textIndex;
    void* _c;
    const u8* buf[8];
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

void sub_08057044(u32, struct_020227E8*, u32);

typedef enum {
    TEXT_SAVE,
    TEXT_CREDITS,
    TEXT_NAMES,
    TEXT_NEWSLETTER,
    TEXT_ITEMS,
    TEXT_ITEM_GET,
    TEXT_LOCATIONS,
    TEXT_WINDCRESTS,
    TEXT_FIGURINE_NAMES,
    TEXT_FIGURINE_DESCRIPTIONS,
    TEXT_EMPTY,
    TEXT_EZLO,
    TEXT_EZLO2,
    TEXT_MINISH,
    TEXT_KINSTONE,
    TEXT_PICORI,
    TEXT_PROLOGUE,
    TEXT_FINDING_EZLO,
    TEXT_MINISH2,
    TEXT_VAATI,
    TEXT_GUSTAF,
    TEXT_PANEL_TUTORIAL,
    TEXT_VAATI2,
    TEXT_GUSTAF2,
    TEXT_EMPTY2,
    TEXT_EMPTY3,
    TEXT_FARMERS,
    TEXT_CARPENTERS,
    TEXT_EZLO_ELEMENTS_DONE,
    TEXT_GORONS,
    TEXT_EMPTY4,
    TEXT_BELARI,
    TEXT_LON_LON,
    TEXT_FOREST_MINISH,
    TEXT_EZLO_PORTAL,
    TEXT_PERCY,
    TEXT_BREAK_VAATI_CURSE,
    TEXT_FESTIVAL,
    TEXT_EMPTY5,
    TEXT_TREASURE_GUARDIAN,
    TEXT_DAMPE,
    TEXT_BUSINESS_SCRUB,
    TEXT_EMPTY6,
    TEXT_PICOLYTE,
    TEXT_STOCKWELL,
    TEXT_SYRUP,
    TEXT_ITEM_PRICES,
    TEXT_WIND_TRIBE,
    TEXT_ANJU,
    TEXT_GORMAN_ORACLES,
    TEXT_SMITH,
    TEXT_PHONOGRAPH,
    TEXT_TOWN,
    TEXT_TOWN2,
    TEXT_TOWN3,
    TEXT_TOWN4,
    TEXT_TOWN5,
    TEXT_TOWN6,
    TEXT_TOWN7,
    TEXT_MILK,
    TEXT_BAKERY,
    TEXT_SIMON,
    TEXT_SCHOOL,
    TEXT_TINGLE,
    TEXT_POST,
    TEXT_MUTOH,
    TEXT_BURLOV,
    TEXT_CARLOV,
    TEXT_REM,
    TEXT_HAPPY_HEARTH,
    TEXT_BLADE_MASTERS,
    TEXT_ANSWER_HOUSE,
    TEXT_UNK_WISE,
    TEXT_LIBRARY,
    TEXT_TOWN_MINISH1,
    TEXT_TOWN_MINISH2,
    TEXT_HAGEN,
    TEXT_DR_LEFT,
    TEXT_TOWN8,
    TEXT_CAFE,
} TextCategory;

#define TEXT_INDEX(category, index) ((category << 8) | index)

#endif // MESSAGE_H
