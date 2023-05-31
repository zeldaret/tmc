/**
 * @file subtaskLocalMapHint.c
 * @ingroup Subtasks
 *
 * @brief Local Map Hint Subtask
 */
#include "menu.h"
#include "subtask.h"
#include "kinstone.h"
#include "functions.h"
#include "screen.h"
#include "sound.h"
#include "common.h"

void Subtask_LocalMapHint() {
    extern void (*const gUnk_08128F1C[])(void);
    const struct_gUnk_08128E94* ptr;
    FlushSprites();
    gUnk_08128F1C[gMenu.menuType]();
    ptr = &gUnk_08128E94[gMenu.field_0x3];
    gScreen.bg1.yOffset = -ptr->unk5;
    gScreen.bg2.yOffset = gMenu.field_0xa - (s8)ptr->unk6;
    CopyOAM();
}

void sub_080A6B04(void) {
    u32 bVar1;
    u32 uVar2;
    u32 uVar3;
    u32 uVar4;
    int uVar6;
    u32 uVar7;
    const KinstoneWorldEvent* ptr;
    const WorldEvent* ptr2;
    const struct_gUnk_08128E94* ptr3;

    sub_080A4D34();
    sub_080A4DB8(6);
    ptr = &gKinstoneWorldEvents[gFuseInfo.kinstoneId];
    ptr2 = &gWorldEvents[ptr->worldEventId];
    bVar1 = ptr->mapMarkerIcon;
    uVar3 = ptr2->_c;
    uVar4 = ptr2->_e;
    uVar2 = GetOverworldLocation(uVar3, uVar4)->windcrestId;
    gMenu.field_0x3 = uVar2;
    gGenericMenu.unk2b = 1;
    sub_080A67C4(uVar2);
    ShowAreaName(uVar2, 2);
    SetColor(0, 0x475f);
    SetColor(0x5f, 0x475f);
    MemFill16(0x5001, &gBG3Buffer, sizeof(gBG3Buffer));
    if ((gPlayerState.flags & PL_NO_CAP) != 0) {
        uVar7 = 101;
    } else {
        uVar7 = 100;
    }
    sub_080A698C(gRoomTransition.player_status.overworld_map_x, gRoomTransition.player_status.overworld_map_y,
                 DRAW_DIRECT_SPRITE_INDEX, uVar7 + 0x100);
    sub_080A698C(uVar3, uVar4, DRAW_DIRECT_SPRITE_INDEX, bVar1 + 100);
    uVar4 = sub_080A69E0(uVar3, uVar4) >> 0x10;
    ptr3 = &gUnk_08128E94[gMenu.field_0x3];
    gMenu.field_0xa = 0;
    if (ptr3->unk2 != 0) {
        uVar6 = uVar4 - 0x3c;
        if (uVar6 > 0) {
            if (ptr3->unk2 < uVar6) {
                uVar6 = ptr3->unk2;
            }
            gMenu.field_0xa = uVar6;
        }
    }
    gMenu.transitionTimer = 30;
    SetMenuType(1);
    SetFade(FADE_INSTANT, 8);
}

void sub_080A6C1C(void) {
    if (!gFadeControl.active) {
        switch (gMenu.transitionTimer) {
            case 0:
                sub_080A66D0();
                switch (gInput.newKeys) {
                    case A_BUTTON:
                    case B_BUTTON:
                    case START_BUTTON:
                        Subtask_Exit();
                        break;
                }
                return;
            case 1:
                SoundReq(SFX_103);
                break;
        }
        gMenu.transitionTimer--;
    }
}
