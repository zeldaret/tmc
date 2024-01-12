
/**
 * @file cuccoMinigame.c
 * @ingroup Objects
 *
 * @brief Cucco Minigame object
 */
#include "enemy.h"
#include "entity.h"
#include "fileselect.h"
#include "functions.h"
#include "item.h"
#include "npc.h"
#include "object.h"
#include "script.h"
#include "tiles.h"

typedef struct {
    Entity base;
    s16 timer;
    s16 currentCuccos;
    s16 targetCuccos;
    u16 unk6e;
    u8 returnedCuccoTypes[0x18];
} CuccoMinigameEntity;

typedef Entity* CuccoMinigameHeap[10];

u32 CuccoMinigame_GetLevel();

typedef struct {
    u16 time;
    u16 numCuccos;
} CuccoMinigameGoal;

const CuccoMinigameGoal goalData[10] = { { 25, 2 }, { 25, 3 }, { 30, 4 }, { 45, 5 }, { 50, 5 },
                                         { 45, 5 }, { 50, 6 }, { 60, 7 }, { 55, 2 }, { 55, 3 } };

static const u16 pCuccoMinigame_MinigameCuccoDefs[][30] = {
    { 0x0001, 0x02E9, 0x0318, 0x0001, 0x0280, 0x0380, 0x0002, 0x0277, 0x0314, 0x0001,
      0x0332, 0x0248, 0x0001, 0x0257, 0x028C, 0x0001, 0x0199, 0x031B, 0x0001, 0x0321,
      0x01B4, 0x0002, 0x02DF, 0x01D8, 0x0001, 0x03AD, 0x02DE, 0x0001, 0x0216, 0x01CC },
    { 0x0001, 0x02E9, 0x0318, 0x0001, 0x0280, 0x0380, 0x0002, 0x0277, 0x0314, 0x0001,
      0x0332, 0x0248, 0x0001, 0x0257, 0x028C, 0x0001, 0x0199, 0x031B, 0x0001, 0x0321,
      0x01B4, 0x0002, 0x02DF, 0x01D8, 0x0001, 0x03AD, 0x02DE, 0x0001, 0x0216, 0x01CC },
    { 0x0001, 0x02E9, 0x0318, 0x0001, 0x0280, 0x0380, 0x0002, 0x0277, 0x0314, 0x0001,
      0x0332, 0x0248, 0x0001, 0x0257, 0x028C, 0x0001, 0x0199, 0x031B, 0x0001, 0x0321,
      0x01B4, 0x0002, 0x02DF, 0x01D8, 0x0001, 0x03AD, 0x02DE, 0x0001, 0x0216, 0x01CC },
    {
        0x0002, 0x02F6, 0x0346, 0x0001, 0x0266, 0x033C, 0x0001, 0x0319, 0x0296, 0x0001,
        0x0284, 0x0284, 0x0002, 0x0216, 0x0284, 0x0001, 0x0142, 0x0330, 0x0002, 0x0179,
        0x039F, 0x0001, 0x03A6, 0x0280, 0x0001, 0x039A, 0x015D, 0x0001, 0x031E, 0x01E5,
    },
    { 0x0001, 0x0296, 0x0314, 0x0001, 0x02E6, 0x0231, 0x0001, 0x0254, 0x0290, 0x0001,
      0x01F8, 0x0325, 0x0001, 0x0185, 0x0367, 0x0001, 0x0320, 0x01D6, 0x0002, 0x01F8,
      0x0287, 0x0002, 0x029D, 0x01B1, 0x0002, 0x01F9, 0x022D, 0x0002, 0x0114, 0x0321 },
    { 0x0002, 0x02F6, 0x0346, 0x0001, 0x0266, 0x033C, 0x0001, 0x0319, 0x0296, 0x0001,
      0x0284, 0x0284, 0x0002, 0x0216, 0x0284, 0x0001, 0x0142, 0x0330, 0x0002, 0x0179,
      0x039F, 0x0002, 0x022D, 0x01CB, 0x0001, 0x039A, 0x015D, 0x0001, 0x031E, 0x01E5 },
    { 0x0001, 0x02E9, 0x0318, 0x0001, 0x0280, 0x0380, 0x0002, 0x0277, 0x0314, 0x0001,
      0x0332, 0x0248, 0x0001, 0x0257, 0x028C, 0x0001, 0x0199, 0x031B, 0x0001, 0x0321,
      0x01B4, 0x0002, 0x02DF, 0x01D8, 0x0001, 0x03AD, 0x02DE, 0x0001, 0x0216, 0x01CC },
    { 0x0001, 0x02E9, 0x0318, 0x0002, 0x0280, 0x0380, 0x0002, 0x0277, 0x0314, 0x0001,
      0x0332, 0x0248, 0x0001, 0x0257, 0x028C, 0x0001, 0x0199, 0x031B, 0x0001, 0x0321,
      0x01B4, 0x0002, 0x02DF, 0x01D8, 0x0002, 0x03AD, 0x02DE, 0x0001, 0x0216, 0x01CC },
    { 0x0001, 0x004D, 0x00F3, 0x0001, 0x011A, 0x0247, 0x0000, 0x0000, 0x0000, 0x0000,
      0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
      0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000 },
    { 0x0001, 0x0051, 0x0328, 0x0002, 0x0114, 0x0321, 0x0002, 0x0332, 0x0248, 0x0000,
      0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
      0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000 }
};

typedef struct {
    u8 item;
    u8 subtype;
    u8 unk2;
    u8 unk3;
} CuccoMinigamePrizeData;

static const CuccoMinigamePrizeData prizeData[10] = { { ITEM_SHELLS, 10, 1, 0 },     { ITEM_SHELLS, 10, 1, 0 },
                                                      { ITEM_SHELLS, 20, 1, 0 },     { ITEM_SHELLS, 20, 1, 0 },
                                                      { ITEM_SHELLS, 30, 1, 0 },     { ITEM_SHELLS, 30, 1, 0 },
                                                      { ITEM_KINSTONE, 0x6E, 1, 0 }, { ITEM_KINSTONE, 0x6F, 1, 0 },
                                                      { ITEM_KINSTONE, 0x70, 1, 0 }, { ITEM_HEART_PIECE, 0, 1, 0 } };

static const u16 CuccoMinigame_Sounds[] = { SFX_VO_CUCCO5, SFX_VO_CUCCO_CALL };

static const u8 CuccoMinigameRupees[] = { 0, 10, 50, 0 };

void CuccoMinigame(CuccoMinigameEntity* this) {
    int index;
    u32 val;
    u8* puVar2;
    const CuccoMinigameGoal* ptr;

    if (super->action == 0) {
        super->action++;
        ptr = &goalData[CuccoMinigame_GetLevel()];
        this->timer = ptr->time * 60;
        this->currentCuccos = 0;
        this->targetCuccos = ptr->numCuccos;
        this->unk6e = 1;

        for (puVar2 = this->returnedCuccoTypes, val = 0, index = 9; index >= 0; index--) {
            *puVar2++ = val;
        }
        sub_0807DD64(super);
        sub_0806EC20(super);
    }
    ExecuteScriptAndHandleAnimation(super, NULL);
}

void sub_080A1270(CuccoMinigameEntity* this) {
    s32 numReturnedCuccos;
    FORCE_REGISTER(int index, r10);
    s8* returnedArray;

    Entity* pEnt;
    Entity** entArray;
    u16 cageX, cageY;
    s32 castedCageX, castedCageY;

    s32 one;
    FORCE_REGISTER(s16 minusOne, r5);

    numReturnedCuccos = 0;

    entArray = ((Entity**)super->myHeap);
    returnedArray = this->returnedCuccoTypes;

    cageX = (gRoomControls.origin_x + 0x360);
    cageY = (gRoomControls.origin_y + 0x350);
    castedCageX = (s16)cageX;
    castedCageY = (s16)cageY;
    index = 9;
    one = 1;
    minusOne = -one;
    do {
        pEnt = *entArray;
        if (*returnedArray == 0) { // this cucco not saved
            if (pEnt->next != NULL && pEnt != NULL) {
                if ((castedCageX <= pEnt->x.HALF.HI) && (castedCageY <= pEnt->y.HALF.HI)) {
                    returnedArray[0] = pEnt->type + one;
                    pEnt->type2 = 1;

                    numReturnedCuccos++;
                    SoundReq(CuccoMinigame_Sounds[pEnt->type]);
                }
            } else {
                *returnedArray = minusOne;
            }
        } else if (*returnedArray > 0) { // this cucco saved
            numReturnedCuccos++;
            if (pEnt->next != NULL && pEnt != NULL) {
                if (castedCageX + 4 > pEnt->x.HALF.HI) {
                    pEnt->x.HALF.HI = castedCageX + 4;
                }
                if (castedCageY + 4 > pEnt->y.HALF.HI) {
                    pEnt->y.HALF.HI = castedCageY + 4;
                }
            } else {
                *returnedArray = minusOne;
            }
        }
        index--, returnedArray++, entArray++;
    } while (index >= 0);

    this->currentCuccos = numReturnedCuccos;
    gPlayerState.field_0x27[0] = 0xff;
    if (--this->timer < 1) {
        SoundReq(SFX_CUCCO_MINIGAME_BELL);
        sub_08050384();
    } else {
        gActiveScriptInfo.commandSize = 0;
    }
}

void CuccoMinigame_Cleanup(CuccoMinigameEntity* this) {
    Entity** puVar1;
    s8* pcVar2;
    int index;

    pcVar2 = this->returnedCuccoTypes;
    puVar1 = super->myHeap;

    for (index = 9; index >= 0; index--, pcVar2++, puVar1++) {
        Entity* pEnt = *puVar1;
        if (*pcVar2 >= 0 && pEnt != NULL) {
            DeleteEntityAny(pEnt);
        }
    }
}

void CuccoMinigame_Results(CuccoMinigameEntity* this, ScriptExecutionContext* context) {
    if (this->currentCuccos >= this->targetCuccos) {
        MessageFromTarget(TEXT_INDEX(TEXT_ANJU, 0xc));
        context->condition = 1;
    } else {
        MessageFromTarget(TEXT_INDEX(TEXT_ANJU, 0x5));
        context->condition = 0;
    }
}

void CuccoMinigame_WinItem(CuccoMinigameEntity* this) {
    bool32 skipItem;
    const CuccoMinigamePrizeData* prize = &prizeData[CuccoMinigame_GetLevel()];

    skipItem = 0;
    switch (prize->item) {
        case ITEM_SHELLS:
            if (gSave.stats.hasAllFigurines) {
                skipItem = 1;
            }
            break;
        case ITEM_KINSTONE:
            if (gSave.kinstones.didAllFusions) {
                skipItem = 1;
            }
            break;
        case ITEM_HEART_PIECE:
            if (!CheckGlobalFlag(ANJU_HEART)) {
                SetGlobalFlag(ANJU_HEART);
                break;
            }
            skipItem = 1;
            break;
    }

    if (!skipItem) {
        InitItemGetSequence(prize->item, prize->subtype, 0);
    } else {
        this->unk6e = 2;
    }
}

void CuccoMinigame_WinRupees(CuccoMinigameEntity* this) {
    s8* cuccoTypes;
    int index;
    s32 rupees;
    const u8* rupeeValues;

    CuccoMinigame_GetLevel(); // Rupees previously dependent on level?
    cuccoTypes = this->returnedCuccoTypes;
    rupees = 0;
    rupeeValues = CuccoMinigameRupees;

    for (index = 9; index >= 0; index--) { // Only first 10 count?
        // Weird register addition
        // rupeeValues[*cuccoTypes] translates to add r0,r3,r0 but should be add r0,r3
        u32 temp = *cuccoTypes;
        temp += (int)rupeeValues;
        rupees += *(u8*)temp;
        cuccoTypes++;
    }
    ModRupees(rupees);
    MessageNoOverlap(TEXT_INDEX(TEXT_ANJU, 0x7), super);
    gMessage.rupees = (u16)rupees;
}

void CuccoMinigame_AdvanceLevel(void) {
    int level;

    level = CuccoMinigame_GetLevel();
    level++;
    if (level > 9) {
        level = 9;
    }

    if (level & 1) {
        SetGlobalFlag(ANJU_LV_BIT0);
    } else {
        ClearGlobalFlag(ANJU_LV_BIT0);
    }

    if (level & 2) {
        SetGlobalFlag(ANJU_LV_BIT1);
    } else {
        ClearGlobalFlag(ANJU_LV_BIT1);
    }

    if (level & 4) {
        SetGlobalFlag(ANJU_LV_BIT2);
    } else {
        ClearGlobalFlag(ANJU_LV_BIT2);
    }

    if (level & 8) {
        SetGlobalFlag(ANJU_LV_BIT3);
    } else {
        ClearGlobalFlag(ANJU_LV_BIT3);
    }
}

u32 CuccoMinigame_GetLevel(void) {
    u32 level = 0;

    if (CheckGlobalFlag(ANJU_LV_BIT0)) {
        level = 1;
    }

    if (CheckGlobalFlag(ANJU_LV_BIT1)) {
        level |= 2;
    }

    if (CheckGlobalFlag(ANJU_LV_BIT2)) {
        level |= 4;
    }

    if (CheckGlobalFlag(ANJU_LV_BIT3)) {
        level |= 8;
    }
    return level;
}

void CuccoMinigame_Init(Entity* this, ScriptExecutionContext* context) {
    Entity* pEnt;
    const short* pCuccoMinigameDef;
    int index;
    Entity** ppEVar5;
    RoomControls* room;

    context->condition = 0;
    pEnt = CreateObject(CUCCO_MINIGAME, 0, 0);
    if (pEnt != NULL) {
        pEnt->myHeap = (u32*)zMalloc(sizeof(CuccoMinigameHeap));
        if (pEnt->myHeap == NULL) {
            DeleteEntityAny(pEnt);
        } else {
            *(ScriptExecutionContext**)&((GenericEntity*)pEnt)->cutsceneBeh =
                (ScriptExecutionContext*)StartCutscene(pEnt, (u16*)context->intVariable);
            pCuccoMinigameDef = pCuccoMinigame_MinigameCuccoDefs[CuccoMinigame_GetLevel()];
            ppEVar5 = (Entity**)pEnt->myHeap;
            room = &gRoomControls;
            for (index = 9; index >= 0; index--, pCuccoMinigameDef += 3) {
                if (pCuccoMinigameDef[0] < 1) {
                    pEnt = NULL;
                } else {
                    pEnt = (Entity*)CreateEnemy(CUCCO_AGGR, pCuccoMinigameDef[0] - 1);
                    if (pEnt != NULL) {
                        pEnt->x.HALF.HI = room->origin_x + pCuccoMinigameDef[1];
                        pEnt->y.HALF.HI = room->origin_y + pCuccoMinigameDef[2];
                        pEnt->collisionLayer = 1;
                    }
                }
                *ppEVar5++ = pEnt;
            }
            context->condition = 1;
        }
    }
}

void CuccoMinigame_TellObjective(void) {
    u16 messageIndex;
    const CuccoMinigameGoal* ptr;

    messageIndex = TEXT_INDEX(TEXT_ANJU, 0x2);
    if (CheckRoomFlag(1)) {
        messageIndex = TEXT_INDEX(TEXT_ANJU, 0x6);
    }
    MessageFromTarget(messageIndex);
    gMessage.textWindowPosX = 1;
    gMessage.textWindowPosY = 0;
    ptr = &goalData[CuccoMinigame_GetLevel()];
    gMessage.rupees = ptr->time;
    gMessage.field_0x14 = ptr->numCuccos;
}

void sub_080A1648(void) {
    SetTileType(SPECIAL_TILE_127, TILE_POS(54, 52), LAYER_BOTTOM);
    SetTileType(SPECIAL_TILE_127, TILE_POS(55, 52), LAYER_BOTTOM);
    SetTileType(SPECIAL_TILE_127, TILE_POS(56, 52), LAYER_BOTTOM);
    SetTileType(SPECIAL_TILE_126, TILE_POS(53, 53), LAYER_BOTTOM);
    SetTileType(SPECIAL_TILE_126, TILE_POS(53, 57), LAYER_BOTTOM);
}

void sub_080A169C(void) {
    RestorePrevTileEntity(TILE_POS(54, 52), LAYER_BOTTOM);
    RestorePrevTileEntity(TILE_POS(55, 52), LAYER_BOTTOM);
    RestorePrevTileEntity(TILE_POS(56, 52), LAYER_BOTTOM);
    RestorePrevTileEntity(TILE_POS(53, 53), LAYER_BOTTOM);
    RestorePrevTileEntity(TILE_POS(53, 57), LAYER_BOTTOM);
}
