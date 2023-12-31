/**
 * @file forestMinish.c
 * @ingroup NPCs
 *
 * @brief Forest Minish NPC
 */
#include "functions.h"
#include "item.h"
#include "kinstone.h"
#include "npc.h"
#include "object.h"
#include "playeritem.h"
#include "structures.h"
typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 fusionOffer;
    /*0x69*/ u8 animIndex;
    /*0x6a*/ u8 unused[22];
    /*0x80*/ u16 unk_80;
    /*0x82*/ u16 unk_82;
    /*0x84*/ ScriptExecutionContext* context;
} ForestMinishEntity;

const FrameStruct gUnk_08109C98[] = {
    { 36, 26 },  { 37, 26 },  { 38, 26 },  { 39, 155 }, { 40, 155 }, { 41, 155 }, { 42, 155 }, { 43, 152 },
    { 28, 152 }, { 29, 152 }, { 30, 153 }, { 31, 153 }, { 32, 153 }, { 33, 153 }, { 34, 26 },  { 35, 26 },
    { 36, 154 }, { 37, 154 }, { 38, 27 },  { 39, 27 },  { 40, 27 },  { 41, 27 },  { 42, 27 },  { 43, 152 },
    { 28, 152 }, { 29, 152 }, { 30, 152 }, { 31, 153 }, { 32, 153 }, { 33, 153 }, { 34, 154 }, { 35, 154 },
    { 36, 154 }, { 37, 154 }, { 38, 155 }, { 39, 155 }, { 40, 155 }, { 41, 155 }, { 42, 24 },  { 43, 24 },
    { 28, 24 },  { 29, 24 },  { 30, 24 },  { 31, 153 }, { 32, 153 }, { 33, 153 }, { 34, 153 }, { 35, 154 },
    { 36, 154 }, { 37, 154 }, { 38, 154 }, { 39, 155 }, { 40, 155 }, { 41, 155 }, { 42, 152 }, { 43, 152 },
    { 28, 152 }, { 29, 152 }, { 30, 25 },  { 31, 25 },  { 32, 25 },  { 33, 25 },  { 34, 25 },  { 35, 154 },
};
extern Script script_BombMinish;
extern Script script_BombMinishKinstone;
extern Script script_ForestMinish1;
extern Script script_ForestMinish2;
extern Script script_ForestMinish3;
extern Script script_ForestMinish4;
extern Script script_ForestMinish5;
extern Script script_ForestMinish6;
extern Script script_ForestMinish7;
extern Script script_ForestMinish8;
extern Script script_ForestMinish9;
extern Script script_ForestMinish10;
extern Script script_ForestMinish11;
extern Script script_ForestMinish12;
extern Script script_ForestMinish13;
extern Script script_ForestMinish14;
extern Script script_ForestMinish15;
extern Script script_ForestMinish16;
extern Script script_ForestMinish17;
extern Script script_ForestMinish18;
extern Script script_ForestMinish19;
extern Script script_ForestMinish20;
extern Script script_ForestMinish21;
Script* const gUnk_08109D18[] = {
    &script_BombMinish,     &script_BombMinishKinstone, &script_ForestMinish12, &script_ForestMinish13,
    &script_ForestMinish14, &script_ForestMinish15,     &script_ForestMinish16, &script_ForestMinish17,
    &script_ForestMinish18, &script_ForestMinish19,     &script_ForestMinish20, &script_ForestMinish21,
    &script_ForestMinish1,  &script_ForestMinish1,      &script_ForestMinish1,  &script_ForestMinish2,
    &script_ForestMinish3,  &script_ForestMinish1,      &script_ForestMinish1,  &script_ForestMinish1,
    &script_ForestMinish1,  &script_ForestMinish1,      &script_ForestMinish10, &script_ForestMinish4,
    &script_ForestMinish4,  &script_ForestMinish4,      &script_ForestMinish4,  &script_ForestMinish4,
    &script_ForestMinish4,  &script_ForestMinish4,      &script_ForestMinish4,  &script_ForestMinish4,
    &script_ForestMinish4,  &script_ForestMinish4,      &script_ForestMinish4,  &script_ForestMinish4,
    &script_ForestMinish11, &script_ForestMinish11,     &script_ForestMinish11, &script_ForestMinish5,
    &script_ForestMinish6,  &script_ForestMinish7,      &script_ForestMinish8,  &script_ForestMinish9,
};

void sub_080601D4(Entity*);
const Dialog gUnk_08109DC8[][4] = {
    {
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    },
    {
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    },
    {
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    },
    {
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    },
    {
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    },
    {
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    },
    {
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    },
    {
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    },
    {
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    },
    {
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    },
    {
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    },
    {
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    },
    {
        { KINSTONE_24,
          DIALOG_KINSTONE,
          DIALOG_CHECK_FLAG,
          1,
          { TEXT_INDEX(TEXT_MINISH, 0x4), TEXT_INDEX(TEXT_MINISH, 0x0) } },
        { KINSTONE_24,
          DIALOG_KINSTONE,
          DIALOG_CHECK_FLAG,
          1,
          { TEXT_INDEX(TEXT_MINISH, 0x4), TEXT_INDEX(TEXT_MINISH, 0x0) } },
        { KINSTONE_24,
          DIALOG_KINSTONE,
          DIALOG_CHECK_FLAG,
          1,
          { TEXT_INDEX(TEXT_MINISH, 0x4), TEXT_INDEX(TEXT_MINISH, 0x0) } },
        { KINSTONE_24,
          DIALOG_KINSTONE,
          DIALOG_CHECK_FLAG,
          1,
          { TEXT_INDEX(TEXT_MINISH, 0x4), TEXT_INDEX(TEXT_MINISH, 0x0) } },
    },
    {
        { KINSTONE_14,
          DIALOG_KINSTONE,
          DIALOG_CHECK_FLAG,
          1,
          { TEXT_INDEX(TEXT_MINISH, 0x9), TEXT_INDEX(TEXT_MINISH, 0x5) } },
        { KINSTONE_14,
          DIALOG_KINSTONE,
          DIALOG_CHECK_FLAG,
          1,
          { TEXT_INDEX(TEXT_MINISH, 0x9), TEXT_INDEX(TEXT_MINISH, 0x5) } },
        { KINSTONE_14,
          DIALOG_KINSTONE,
          DIALOG_CHECK_FLAG,
          1,
          { TEXT_INDEX(TEXT_MINISH, 0x9), TEXT_INDEX(TEXT_MINISH, 0x5) } },
        { KINSTONE_14,
          DIALOG_KINSTONE,
          DIALOG_CHECK_FLAG,
          1,
          { TEXT_INDEX(TEXT_MINISH, 0x9), TEXT_INDEX(TEXT_MINISH, 0x5) } },
    },
    {
#if defined(USA) || defined(DEMO_USA)
        { KINSTONE_3F,
          DIALOG_KINSTONE,
          DIALOG_CHECK_FLAG,
          1,
          { TEXT_INDEX(TEXT_MINISH, 0xe), TEXT_INDEX(TEXT_MINISH, 0xa) } },
        { KINSTONE_3F,
          DIALOG_KINSTONE,
          DIALOG_CHECK_FLAG,
          1,
          { TEXT_INDEX(TEXT_MINISH, 0xe), TEXT_INDEX(TEXT_MINISH, 0xa) } },
        { KINSTONE_3F,
          DIALOG_KINSTONE,
          DIALOG_CHECK_FLAG,
          1,
          { TEXT_INDEX(TEXT_MINISH, 0xe), TEXT_INDEX(TEXT_MINISH, 0xa) } },
        { KINSTONE_3F,
          DIALOG_KINSTONE,
          DIALOG_CHECK_FLAG,
          1,
          { TEXT_INDEX(TEXT_MINISH, 0xe), TEXT_INDEX(TEXT_MINISH, 0xa) } },
#else
        { KINSTONE_22,
          DIALOG_KINSTONE,
          DIALOG_CHECK_FLAG,
          1,
          { TEXT_INDEX(TEXT_MINISH, 0xe), TEXT_INDEX(TEXT_MINISH, 0xa) } },
        { KINSTONE_22,
          DIALOG_KINSTONE,
          DIALOG_CHECK_FLAG,
          1,
          { TEXT_INDEX(TEXT_MINISH, 0xe), TEXT_INDEX(TEXT_MINISH, 0xa) } },
        { KINSTONE_22,
          DIALOG_KINSTONE,
          DIALOG_CHECK_FLAG,
          1,
          { TEXT_INDEX(TEXT_MINISH, 0xe), TEXT_INDEX(TEXT_MINISH, 0xa) } },
        { KINSTONE_22,
          DIALOG_KINSTONE,
          DIALOG_CHECK_FLAG,
          1,
          { TEXT_INDEX(TEXT_MINISH, 0xe), TEXT_INDEX(TEXT_MINISH, 0xa) } },
#endif
    },
    {
        { KINSTONE_2E,
          DIALOG_KINSTONE,
          DIALOG_CHECK_FLAG,
          1,
          { TEXT_INDEX(TEXT_MINISH, 0x22), TEXT_INDEX(TEXT_MINISH, 0x1e) } },
        { KINSTONE_2E,
          DIALOG_KINSTONE,
          DIALOG_CHECK_FLAG,
          1,
          { TEXT_INDEX(TEXT_MINISH, 0x22), TEXT_INDEX(TEXT_MINISH, 0x1e) } },
        { KINSTONE_2E,
          DIALOG_KINSTONE,
          DIALOG_CHECK_FLAG,
          1,
          { TEXT_INDEX(TEXT_MINISH, 0x22), TEXT_INDEX(TEXT_MINISH, 0x1e) } },
        { KINSTONE_2E,
          DIALOG_KINSTONE,
          DIALOG_CHECK_FLAG,
          1,
          { TEXT_INDEX(TEXT_MINISH, 0x22), TEXT_INDEX(TEXT_MINISH, 0x1e) } },
    },
    {
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_ANSWER_HOUSE, 0x1) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_ANSWER_HOUSE, 0x1) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_ANSWER_HOUSE, 0x1) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_ANSWER_HOUSE, 0x1) } },
    },
    {
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_ANSWER_HOUSE, 0x25) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_ANSWER_HOUSE, 0x25) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_ANSWER_HOUSE, 0x25) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_ANSWER_HOUSE, 0x25) } },
    },
    {
        { KINSTONE_23,
          DIALOG_KINSTONE,
          DIALOG_CHECK_FLAG,
          1,
          { TEXT_INDEX(TEXT_MINISH, 0x13), TEXT_INDEX(TEXT_MINISH, 0xf) } },
        { KINSTONE_23,
          DIALOG_KINSTONE,
          DIALOG_CHECK_FLAG,
          1,
          { TEXT_INDEX(TEXT_MINISH, 0x13), TEXT_INDEX(TEXT_MINISH, 0xf) } },
        { KINSTONE_23,
          DIALOG_KINSTONE,
          DIALOG_CHECK_FLAG,
          1,
          { TEXT_INDEX(TEXT_MINISH, 0x13), TEXT_INDEX(TEXT_MINISH, 0xf) } },
        { KINSTONE_23,
          DIALOG_KINSTONE,
          DIALOG_CHECK_FLAG,
          1,
          { TEXT_INDEX(TEXT_MINISH, 0x13), TEXT_INDEX(TEXT_MINISH, 0xf) } },
    },
    {
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_ANSWER_HOUSE, 0x1a) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_ANSWER_HOUSE, 0x1a) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_ANSWER_HOUSE, 0x1a) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_ANSWER_HOUSE, 0x1a) } },
    },
    {
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_ANSWER_HOUSE, 0x15) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_ANSWER_HOUSE, 0x15) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_ANSWER_HOUSE, 0x15) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_ANSWER_HOUSE, 0x15) } },
    },
    {
        { 0, 0, DIALOG_CALL_FUNC, 0, { .func = sub_080601D4 } },
        { 0, 0, DIALOG_CALL_FUNC, 0, { .func = sub_080601D4 } },
        { 0, 0, DIALOG_CALL_FUNC, 0, { .func = sub_080601D4 } },
        { 0, 0, DIALOG_CALL_FUNC, 0, { .func = sub_080601D4 } },
    },
    {
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_BELARI, 0x22) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_FOREST_MINISH, 0x1) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_FOREST_MINISH, 0x2) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_FOREST_MINISH, 0x3) } },
    },
    {
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_BELARI, 0x22) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_BELARI, 0x23) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_BELARI, 0x24) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_FOREST_MINISH, 0x6) } },
    },
    {
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_BELARI, 0x22) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_FOREST_MINISH, 0xe) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_FOREST_MINISH, 0xe) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_FOREST_MINISH, 0xe) } },
    },
    {
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_BELARI, 0x22) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_FOREST_MINISH, 0x15) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_FOREST_MINISH, 0x15) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_FOREST_MINISH, 0x15) } },
    },
    {
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_BELARI, 0x22) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_FOREST_MINISH, 0x1a) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_FOREST_MINISH, 0x1a) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_FOREST_MINISH, 0x1a) } },
    },
    {
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_BELARI, 0x22) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_FOREST_MINISH, 0x1f) } },
        { ITEM_GREEN_SWORD,
          DIALOG_INVENTORY,
          DIALOG_CHECK_FLAG,
          1,
          { TEXT_INDEX(TEXT_FOREST_MINISH, 0x21), TEXT_INDEX(TEXT_FOREST_MINISH, 0x20) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_FOREST_MINISH, 0x21) } },
    },
    {
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_BELARI, 0x22) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_FOREST_MINISH, 0x24) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_FOREST_MINISH, 0x25) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_FOREST_MINISH, 0x25) } },
    },
    {
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_BELARI, 0x22) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_FOREST_MINISH, 0x29) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_FOREST_MINISH, 0x2a) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_FOREST_MINISH, 0x2b) } },
    },
    {
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_BELARI, 0x22) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_FOREST_MINISH, 0x2e) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_FOREST_MINISH, 0x2f) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_FOREST_MINISH, 0x2f) } },
    },
    {
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_BELARI, 0x22) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_FOREST_MINISH, 0x33) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_FOREST_MINISH, 0x34) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_FOREST_MINISH, 0x34) } },
    },
    {
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_BELARI, 0x22) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_FOREST_MINISH, 0x38) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_FOREST_MINISH, 0x39) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_FOREST_MINISH, 0x39) } },
    },
    {
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_BELARI, 0x22) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_BELARI, 0x22) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_BELARI, 0x22) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_BELARI, 0x22) } },
    },
    {
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_BELARI, 0x32) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_BELARI, 0x32) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_BELARI, 0x32) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_BELARI, 0x32) } },
    },
    {
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_FOREST_MINISH, 0x31) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_FOREST_MINISH, 0x31) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_FOREST_MINISH, 0x31) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_FOREST_MINISH, 0x31) } },
    },
    {
        { ITEM_FLIPPERS,
          DIALOG_INVENTORY,
          DIALOG_CHECK_FLAG,
          1,
          { TEXT_INDEX(TEXT_TOWN_MINISH2, 0x9), TEXT_INDEX(TEXT_TOWN_MINISH2, 0x3) } },
        { ITEM_FLIPPERS,
          DIALOG_INVENTORY,
          DIALOG_CHECK_FLAG,
          1,
          { TEXT_INDEX(TEXT_TOWN_MINISH2, 0x9), TEXT_INDEX(TEXT_TOWN_MINISH2, 0x3) } },
        { ITEM_FLIPPERS,
          DIALOG_INVENTORY,
          DIALOG_CHECK_FLAG,
          1,
          { TEXT_INDEX(TEXT_TOWN_MINISH2, 0x9), TEXT_INDEX(TEXT_TOWN_MINISH2, 0x3) } },
        { ITEM_FLIPPERS,
          DIALOG_INVENTORY,
          DIALOG_CHECK_FLAG,
          1,
          { TEXT_INDEX(TEXT_TOWN_MINISH2, 0x9), TEXT_INDEX(TEXT_TOWN_MINISH2, 0x3) } },
    },
    {
        { ITEM_FLIPPERS,
          DIALOG_INVENTORY,
          DIALOG_CHECK_FLAG,
          1,
          { TEXT_INDEX(TEXT_TOWN_MINISH2, 0xb), TEXT_INDEX(TEXT_TOWN_MINISH2, 0x5) } },
        { ITEM_FLIPPERS,
          DIALOG_INVENTORY,
          DIALOG_CHECK_FLAG,
          1,
          { TEXT_INDEX(TEXT_TOWN_MINISH2, 0xb), TEXT_INDEX(TEXT_TOWN_MINISH2, 0x5) } },
        { ITEM_FLIPPERS,
          DIALOG_INVENTORY,
          DIALOG_CHECK_FLAG,
          1,
          { TEXT_INDEX(TEXT_TOWN_MINISH2, 0xb), TEXT_INDEX(TEXT_TOWN_MINISH2, 0x5) } },
        { ITEM_FLIPPERS,
          DIALOG_INVENTORY,
          DIALOG_CHECK_FLAG,
          1,
          { TEXT_INDEX(TEXT_TOWN_MINISH2, 0xb), TEXT_INDEX(TEXT_TOWN_MINISH2, 0x5) } },
    },
    {
        { ITEM_FLIPPERS,
          DIALOG_INVENTORY,
          DIALOG_CHECK_FLAG,
          1,
          { TEXT_INDEX(TEXT_TOWN_MINISH2, 0xc), TEXT_INDEX(TEXT_TOWN_MINISH2, 0x6) } },
        { ITEM_FLIPPERS,
          DIALOG_INVENTORY,
          DIALOG_CHECK_FLAG,
          1,
          { TEXT_INDEX(TEXT_TOWN_MINISH2, 0xc), TEXT_INDEX(TEXT_TOWN_MINISH2, 0x6) } },
        { ITEM_FLIPPERS,
          DIALOG_INVENTORY,
          DIALOG_CHECK_FLAG,
          1,
          { TEXT_INDEX(TEXT_TOWN_MINISH2, 0xc), TEXT_INDEX(TEXT_TOWN_MINISH2, 0x6) } },
        { ITEM_FLIPPERS,
          DIALOG_INVENTORY,
          DIALOG_CHECK_FLAG,
          1,
          { TEXT_INDEX(TEXT_TOWN_MINISH2, 0xc), TEXT_INDEX(TEXT_TOWN_MINISH2, 0x6) } },
    },
    {
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    },
    {
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    },
    {
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    },
    {
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    },
    {
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
        { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    }
};

const SpriteLoadData gUnk_0810A348[] = {
    { 48, 31, 4 },
    { 8240, 31, 4 },
    { 0, 0, 0 },
};
const u16 gUnk_0810A354[] = {
    TEXT_INDEX(TEXT_MINISH, 0x14),
    TEXT_INDEX(TEXT_MINISH, 0x18),
    TEXT_INDEX(TEXT_ANSWER_HOUSE, 0x26),
};
const u16 gUnk_0810A35A[] = {
    TEXT_INDEX(TEXT_UNK_WISE, 0x1),
    TEXT_INDEX(TEXT_UNK_WISE, 0x2),
    TEXT_INDEX(TEXT_UNK_WISE, 0x3),
    TEXT_INDEX(TEXT_UNK_WISE, 0x4),
};
const u16 gUnk_0810A362[] = {
    TEXT_INDEX(TEXT_BELARI, 0x2),
    TEXT_INDEX(TEXT_BELARI, 0x3),
    TEXT_INDEX(TEXT_BELARI, 0x9),
    TEXT_INDEX(TEXT_BELARI, 0x8),
};

static void sub_080600F0(ForestMinishEntity* this);
extern void sub_08060158(ForestMinishEntity* this);

void ForestMinish(ForestMinishEntity* this) {
    switch (super->action) {
        case 0:
            if (LoadExtraSpriteData(super, gUnk_0810A348)) {
                super->action = 1;
                super->spriteSettings.draw = TRUE;
                this->animIndex = super->animationState = super->timer << 1;
                super->timer = 0;
                SetEntityPriority(super, PRIO_MESSAGE);
                StartCutscene(super, (u16*)gUnk_08109D18[super->type2]);
                InitScriptForNPC(super);
            }
            break;
        case 1:
            if (super->interactType == INTERACTION_FUSE) {
                super->action = 2;
                super->interactType = INTERACTION_NONE;
                InitializeNPCFusion(super);
            } else {
                ExecuteScriptForEntity(super, NULL);
                HandleEntity0x82Actions(super);
                if (super->frameDuration != 0xf0) {
                    sub_080600F0(this);
                }
            }
            break;
        case 2:
            if (UpdateFuseInteraction(super)) {
                super->action = 1;
            }
    }
}

void ForestMinish_MakeInteractable(ForestMinishEntity* this) {
    this->fusionOffer = GetFusionToOffer(super);
    AddInteractableWhenBigFuser(super, this->fusionOffer);
}

void ForestMinish_Head(Entity* this) {
    u32 pbVar1;

    pbVar1 = this->frame;
    if (this->frame != 0xff) {
        pbVar1 &= -0x81;
    }
    if ((this->frameSpriteSettings & 1) == 0) {
        pbVar1 = 0xff;
    }
    SetExtraSpriteFrame(this, 0, pbVar1);
    SetExtraSpriteFrame(this, 1, this->frameIndex);
    SetSpriteSubEntryOffsetData1(this, 1, 0);
    sub_0807000C(this);
}

static void sub_080600F0(ForestMinishEntity* this) {
    u32 uVar1;
    u32 uVar2;

    uVar2 = this->unk_80;
    if (this->unk_80 < 8) {
        if ((this->unk_82 & 1) != 0) {
            uVar2 = (uVar2 & 0xfc) + (super->subtimer >> 1);
        } else {
            uVar2 = (uVar2 & 0xfc) + (super->animationState >> 1);
            super->subtimer = super->animationState;
        }
    }
    if (uVar2 != super->animIndex) {
        InitAnimationForceUpdate(super, uVar2);
    }
    if ((this->unk_82 & 4) != 0) {
        uVar1 = 2;
    } else {
        uVar1 = 1;
    }
    sub_080042BA(super, uVar1);
}

void sub_0806014C(ForestMinishEntity* this) {
    super->timer = 0;
    sub_08060158(this);
}

void sub_08060158(ForestMinishEntity* this) {
    int index;
    const FrameStruct* idx3;
    u8 tmp1, tmp2;

    if (super->timer) {
        super->timer--;
    } else {
        super->timer = 2;
        index = GetFacingDirectionInRectRadius(super, 0x20, 0x20);
        if (index < 0) {
            int state = this->animIndex;
            super->animationState = state;
            index = state * 4;
        }

        idx3 = gUnk_08109C98 + (super->animationState / 2) * 0x10 + (index >> 1);
        tmp1 = idx3->frame;
        tmp2 = idx3->frameIndex;

        if (tmp2 & 0x80) {
            super->animationState = GetAnimationStateForDirection8(index);
        }
        tmp2 &= ~0x80;
        super->frame = tmp1;
        super->frameIndex = tmp2;
        super->frameSpriteSettings = 1;
        super->animIndex = 0;
        super->frameDuration = 0xf0;
    }
}

void sub_080601D4(Entity* this) {
    u32 uVar2;

    if (CheckGlobalFlag(LV3_CLEAR) == 0) {
        uVar2 = 2;
    } else if (CheckKinstoneFused(KINSTONE_17)) {
        uVar2 = 1;
    } else {
        uVar2 = 0;
    }
    MessageNoOverlap(gUnk_0810A354[uVar2], this);
}

void sub_08060208(Entity* this) {
    ShowNPCDialogue(this, gUnk_08109DC8[this->type2]);
}

void sub_0806021C(Entity* this) {
    u32 uVar2 = 0;

    if (GetInventoryValue(ITEM_JABBERNUT)) {
        uVar2 = 1;
    }

    if (GetInventoryValue(ITEM_EARTH_ELEMENT)) {
        uVar2 = 2;
    }

    if (GetInventoryValue(ITEM_MOLE_MITTS)) {
        uVar2 = 3;
    }
    ShowNPCDialogue(this, &gUnk_08109DC8[this->type2][uVar2]);
}

void sub_0806025C(Entity* this) {
    ShowNPCDialogue(this, gUnk_08109DC8[this->type2]);
}

void sub_08060270(Entity* this) {
    u32 index;

    if (GetInventoryValue(ITEM_FLIPPERS) == 0) {
        index = 1;
        if (CheckGlobalFlag(MIZUKAKI_START) == 0) {
            index = 0;
            SetGlobalFlag(MIZUKAKI_START);
        }
    } else {
        index = 3;
        if (CheckLocalFlag(0x76) == 0) {
            index = 2;
            SetLocalFlag(0x76);
        }
    }
    MessageNoOverlap(gUnk_0810A35A[index], this);
}

void sub_080602BC(Entity* this) {
    u32 index;

    if (GetInventoryValue(ITEM_SKILL_SPIN_ATTACK) != 0) {
        index = (Random() & 1) + 2;
    } else {
        if (gSave.stats.bombCount < gBombBagSizes[gSave.stats.bombBagType]) {
            index = 1;
        } else {
            index = 0;
        }
    }
    MessageNoOverlap(gUnk_0810A362[index], this);
}

void script_ModBombs(Entity* this, ScriptExecutionContext* context) {
    ModBombs(context->intVariable);
}

void sub_08060318(void) {
    Entity* ent;
    int i;

    for (i = 2; i >= 0; i--) {
        ent = FindEntityByID(PLAYER_ITEM, PLAYER_ITEM_BOMB, 2);
        if (ent != NULL) {
            CreateDust(ent);
            DeleteEntity(ent);
        }
    }
}

void sub_08060340(void) {
    gSave.drug_kill_count = gSave.enemies_killed;
}

u32 sub_08060354(void) {
    s32 iVar2;

    iVar2 = gSave.enemies_killed - gSave.drug_kill_count;
    if (CheckGlobalFlag(DRUG_1) == 0) {
        if (4 < iVar2) {
            return 0x8444;
        }
    } else {
        if (CheckGlobalFlag(DRUG_2) == 0) {
            if (iVar2 > 9) {
                return 0x8444;
            }
        } else {
            if (CheckGlobalFlag(DRUG_3) == 0) {
                if (iVar2 > 14) {
                    return 0x8444;
                }
            }
        }
    }
    return 0;
}

void ForestMinish_Fusion(Entity* this) {
    if (this->action == 0) {
        if (LoadExtraSpriteData(this, gUnk_0810A348)) {
            this->action++;
            this->spriteSettings.draw = TRUE;
            SetEntityPriority(this, PRIO_MESSAGE);
            InitializeAnimation(this, 6);
        }
    } else {
        GetNextFrame(this);
    }
}
