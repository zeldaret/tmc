/**
 * @file syrup.c
 * @ingroup NPCs
 *
 * @brief Syrup NPC
 */
#include "functions.h"
#include "npc.h"
#include "object.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused[26];
    /*0x82*/ u16 unk_82;
} SyrupEntity;

static const SpriteLoadData gUnk_081121B4[] = {
    { 0xc2, 0x46, 0x4 },
    { 0x44c2, 0x46, 0x4 },
    { 0x54c3, 0x46, 0x4 },
    { 0x70c2, 0x46, 0x4 },
};
static const SpriteLoadData gUnk_081121C4[] = {
    { 0xc2, 0x46, 0x4 },
    { 0x44c2, 0x46, 0x4 },
    { 0x54c4, 0x46, 0x4 },
    { 0x70c2, 0x46, 0x4 },
};

void sub_0806A26C(Entity*);
void sub_0806A1F8(SyrupEntity*);
void sub_0806A234(SyrupEntity*);

void Syrup(SyrupEntity* this) {
    static void (*const actionFuncs[])(SyrupEntity*) = {
        sub_0806A1F8,
        sub_0806A234,
    };
    actionFuncs[super->action](this);
    sub_0806ED78(super);
}

void sub_0806A1F8(SyrupEntity* this) {
    const SpriteLoadData* paVar2;

    super->type == 0 ? (paVar2 = gUnk_081121B4) : (paVar2 = gUnk_081121C4);

    if (LoadExtraSpriteData(super, paVar2)) {
        super->action = 1;
        SetEntityPriority(super, PRIO_MESSAGE);
        InitScriptForNPC(super);
        InitializeAnimation(super, 0);
    }
}

void sub_0806A234(SyrupEntity* this) {
    ExecuteScriptAndHandleAnimation(super, NULL);
    if ((this->unk_82 & 4) != 0) {
        if ((gRoomTransition.frameCount & 7) == 0) {
            sub_0806A26C(super);
        }
        sub_080042BA(super, 2);
    }
}

void sub_0806A26C(Entity* this) {
    static const s8 gUnk_081121DC[] = { -1, -2, -3, 0, 1, 2, 3, 0 };
    u8 unk;
    const s8* ptr;
    u32 uVar2, uVar1;
    Entity* pEVar1;
    pEVar1 = CreateObject(SPECIAL_FX, FX_SLOW_SMOKE_SMALL, 0);
    if (pEVar1 != NULL) {
        PositionEntityOnTop(this, pEVar1);
        uVar2 = uVar1 = Random();
        ptr = gUnk_081121DC;
        pEVar1->spriteOffsetX = ptr[uVar2 & 7];
        uVar1 /= 256;
        uVar1 &= 7;
        pEVar1->spriteOffsetY = ptr[uVar1] - 8;
    }
}

static const u8 gUnk_081121E4[] = { 0x0, 0x5, 0x0, 0x5, 0x1, 0x6, 0x1, 0x6, 0x2, 0x7, 0x2, 0x7, 0x3, 0x8, 0x3, 0x8,
                                    0x4, 0x9, 0x4, 0x9, 0x3, 0x8, 0x3, 0x8, 0x2, 0x7, 0x2, 0x7, 0x1, 0x6, 0x1, 0x6 };

static const u8 gUnk_08112204[] = { 0, 1, 0, 0 };

void Syrup_Head(Entity* param_1) {
    u32 bVar1;
    u8 bVar2;
    u32 uVar3;
    u32 tmp1;
    u32 tmp2;

    bVar1 = (param_1->frameSpriteSettings) & 1;
    bVar2 = param_1->frame;
    tmp1 = bVar2 >> 4 & 7;
    tmp2 = (bVar2 & 7);
    uVar3 = (u32)(param_1->animationState >> 1);
    SetExtraSpriteFrame(param_1, 0, gUnk_081121E4[uVar3 + (u32)param_1->frameIndex * 4] + 0x10);
    sub_0806FF48(param_1, 0, gUnk_08112204[uVar3]);
    SetExtraSpriteFrame(param_1, 1, tmp1);
    SetExtraSpriteFrame(param_1, 2, tmp2 + 0x1c);
    SetExtraSpriteFrame(param_1, 3, bVar1 + 0x1a);
    SetSpriteSubEntryOffsetData1(param_1, 1, 0);
    SetSpriteSubEntryOffsetData2(param_1, 1, 3);
    sub_0807000C(param_1);
}
