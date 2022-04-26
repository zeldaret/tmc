#define NENT_DEPRECATED
#include "entity.h"
#include "script.h"
#include "npc.h"
#include "fileselect.h"
#include "functions.h"
#include "object.h"
#include "enemy.h"

typedef struct {
    Entity base;
    s16 unk68;
    s16 unk6a;
    s16 unk6c;
    u16 unk6e;
    u8 unk70[0x18];
} ObjectB9Entity;

typedef Entity* ObjectB9Heap[10];

u32 sub_080A1514();

const u16 gUnk_08124C20[] = {
    25, 0x2, 25, 0x3, 30, 0x4, 45, 0x5, 50, 0x5, 45, 0x5, 50, 0x6, 60, 0x7, 55, 0x2, 55, 0x3,
};

static const u16 pObjectB9_MinigameCuccoDefs[][30] = {
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

static const u8 gUnk_08124EA0[] = { 0x3F, 0x0A, 0x01, 0x00, 0x3F, 0x0A, 0x01, 0x00, 0x3F, 0x14, 0x01, 0x00, 0x3F, 0x14,
                                    0x01, 0x00, 0x3F, 0x1E, 0x01, 0x00, 0x3F, 0x1E, 0x01, 0x00, 0x5C, 0x6E, 0x01, 0x00,
                                    0x5C, 0x6F, 0x01, 0x00, 0x5C, 0x70, 0x01, 0x00, 0x63, 0x00, 0x01, 0x00 };

static const u16 CuccoMinigame_Sounds[] = { SFX_VO_CUCCO5, SFX_VO_CUCCO_CALL };

static const u8 CuccoMinigameRupees[] = { 0, 10, 50, 0 };

void ObjectB9(ObjectB9Entity* this) {
    int index;
    u32 val;
    u8* puVar2;
    const u16* ptr;

    if (super->action == 0) {
        super->action++;
        ptr = gUnk_08124C20 + sub_080A1514() * 2;
        this->unk68 = ptr[0] * 0x3c;
        this->unk6a = 0;
        this->unk6c = ptr[1];
        this->unk6e = 1;

        for (puVar2 = this->unk70, val = 0, index = 9; index >= 0; index--) {
            *puVar2++ = val;
        }
        sub_0807DD64(super);
        sub_0806EC20(super);
    }
    sub_0807DD94(super, 0);
}

NONMATCH("asm/non_matching/objectB9/sub_080A1270.inc", void sub_080A1270(ObjectB9Entity* this)) {
    s32 iVar1;
    int iVar2;
    s32 iVar4;
    s32 sVar6;
    int iVar7;
    s8* ptr;
    s32 val;
    Entity* pEnt;
    Entity** entArray;

    sVar6 = 0;
    entArray = ((Entity**)super->myHeap);
    ptr = this->unk70;
    iVar1 = (gRoomControls.origin_x + 0x360);
    iVar4 = (gRoomControls.origin_y + 0x350);
    iVar1 = (iVar1 << 16) >> 16;
    iVar4 = (iVar4 << 16) >> 16;
    val = -1;

    for (iVar7 = 0; iVar7 < 9; iVar7++) {
        pEnt = entArray[iVar7];
        if (((s8*)ptr)[iVar7] == 0) {
            if (pEnt->next != NULL && pEnt != NULL) {
                if ((iVar1 <= pEnt->x.HALF.HI) && (iVar4 <= pEnt->y.HALF.HI)) {
                    ptr[iVar7] = pEnt->type + 1;
                    pEnt->type2 = 1;
                    sVar6++;
                    SoundReq(CuccoMinigame_Sounds[pEnt->type]);
                }
            } else {
                ((s8*)ptr)[iVar7] = val;
            }
        } else if (0 < (s8)ptr[iVar7]) {
            sVar6++;
            if (pEnt->next != NULL && pEnt != NULL) {
                iVar2 = iVar1 + 4;
                if (iVar2 > pEnt->x.HALF.HI) {
                    pEnt->x.HALF.HI = iVar2;
                }
                iVar2 = iVar4 + 4;
                if (iVar2 > pEnt->y.HALF.HI) {
                    pEnt->y.HALF.HI = iVar2;
                }
            } else {
                ((s8*)ptr)[iVar7] = val;
            }
        }
    }

    this->unk6a = sVar6;
    gPlayerState.field_0x27[0] = 0xff;
    if (--this->unk68 < 1) {
        SoundReq(SFX_CUCCO_MINIGAME_BELL);
        sub_08050384();
    } else {
        gActiveScriptInfo.commandSize = 0;
    }
}
END_NONMATCH

void CuccoMinigame_Cleanup(ObjectB9Entity* this) {
    Entity** puVar1;
    s8* pcVar2;
    int index;

    pcVar2 = this->unk70;
    puVar1 = super->myHeap;

    for (index = 9; index >= 0; index--, pcVar2++, puVar1++) {
        Entity* pEnt = *puVar1;
        if (*pcVar2 >= 0 && pEnt != NULL) {
            DeleteEntityAny(pEnt);
        }
    }
}

void sub_080A13B4(ObjectB9Entity* this, ScriptExecutionContext* context) {
    if (this->unk6a >= this->unk6c) {
        MessageFromTarget(TEXT_INDEX(TEXT_ANJU, 0xc));
        context->condition = 1;
    } else {
        MessageFromTarget(TEXT_INDEX(TEXT_ANJU, 0x5));
        context->condition = 0;
    }
}

void sub_080A13E8(ObjectB9Entity* this) {
    bool32 bVar2;
    const u8* ptr = &gUnk_08124EA0[sub_080A1514() * 4];

    bVar2 = 0;
    switch (ptr[0]) {
        case 0x3f:
            if (gSave.stats.hasAllFigurines) {
                bVar2 = 1;
            }
            break;
        case 0x5c:
            if (gSave.didAllFusions) {
                bVar2 = 1;
            }
            break;
        case 0x63:
            if (!CheckGlobalFlag(0x4f)) {
                SetGlobalFlag(0x4f);
                break;
            }
            bVar2 = 1;
            break;
    }

    if (!bVar2) {
        InitItemGetSequence(ptr[0], ptr[1], 0);
    } else {
        this->unk6e = 2;
    }
}

void sub_080A1460(ObjectB9Entity* this) {
    s8* pcVar1;
    int iVar2;
    s32 rupees;
    const u8* ptr;

    sub_080A1514();
    pcVar1 = this->unk70;
    rupees = 0;
    ptr = CuccoMinigameRupees;

    for (iVar2 = 9; iVar2 >= 0; iVar2--) {
        // Weird register addition
        // ptr[*pcVar1] translates to add r0,r3,r0 but should be add r0,r3
        u32 temp = *pcVar1;
        temp += (int)ptr;
        rupees += *(u8*)temp;
        pcVar1++;
    }
    ModRupees(rupees);
    MessageNoOverlap(TEXT_INDEX(TEXT_ANJU, 0x7), super);
    gMessage.rupees = (u16)rupees;
}

void sub_080A14A8(void) {
    int iVar1;

    iVar1 = sub_080A1514();
    iVar1++;
    if (iVar1 > 9) {
        iVar1 = 9;
    }

    if (iVar1 & 1) {
        SetGlobalFlag(0x4b);
    } else {
        ClearGlobalFlag(0x4b);
    }

    if (iVar1 & 2) {
        SetGlobalFlag(0x4c);
    } else {
        ClearGlobalFlag(0x4c);
    }

    if (iVar1 & 4) {
        SetGlobalFlag(0x4d);
    } else {
        ClearGlobalFlag(0x4d);
    }

    if (iVar1 & 8) {
        SetGlobalFlag(0x4e);
    } else {
        ClearGlobalFlag(0x4e);
    }
}

u32 sub_080A1514(void) {
    u32 rv = 0;

    if (CheckGlobalFlag(0x4b)) {
        rv = 1;
    }

    if (CheckGlobalFlag(0x4c)) {
        rv |= 2;
    }

    if (CheckGlobalFlag(0x4d)) {
        rv |= 4;
    }

    if (CheckGlobalFlag(0x4e)) {
        rv |= 8;
    }
    return rv;
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
        pEnt->myHeap = (u32*)zMalloc(sizeof(ObjectB9Heap));
        if (pEnt->myHeap == NULL) {
            DeleteEntityAny(pEnt);
        } else {
            *(ScriptExecutionContext**)&((GenericEntity*)pEnt)->cutsceneBeh =
                (ScriptExecutionContext*)StartCutscene(pEnt, (u16*)context->intVariable);
            pCuccoMinigameDef = pObjectB9_MinigameCuccoDefs[sub_080A1514()];
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

void sub_080A1608(void) {
    u16 messageIndex;
    const u16* ptr;

    messageIndex = TEXT_INDEX(TEXT_ANJU, 0x2);
    if (CheckRoomFlag(1)) {
        messageIndex = TEXT_INDEX(TEXT_ANJU, 0x6);
    }
    MessageFromTarget(messageIndex);
    gMessage.textWindowPosX = 1;
    gMessage.textWindowPosY = 0;
    ptr = &gUnk_08124C20[sub_080A1514() * 2];
    gMessage.rupees = ptr[0];
    gMessage.field_0x14 = ptr[1];
}

void sub_080A1648(void) {
    SetTileType(0x407f, 0xd36, 1);
    SetTileType(0x407f, 0xd37, 1);
    SetTileType(0x407f, 0xd38, 1);
    SetTileType(0x407e, 0xd75, 1);
    SetTileType(0x407e, 0xe75, 1);
}

void sub_080A169C(void) {
    RestorePrevTileEntity(0xd36, 1);
    RestorePrevTileEntity(0xd37, 1);
    RestorePrevTileEntity(0xd38, 1);
    RestorePrevTileEntity(0xd75, 1);
    RestorePrevTileEntity(0xe75, 1);
}
