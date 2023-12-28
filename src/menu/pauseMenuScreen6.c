/**
 * @file pauseMenuScreen6.c
 *
 * @brief Pause Menu Screen 6
 */
#include "common.h"
#include "fileselect.h"
#include "flags.h"
#include "functions.h"
#include "kinstone.h"
#include "main.h"
#include "menu.h"
#include "pauseMenu.h"
#include "save.h"
#include "screen.h"

typedef struct {
    u8 unk0;
    u8 unk1;
    u16 unk2;
    u16 unk4;
    u16 unk6;
} struct_sub_080A698C;

extern u8 gUnk_08128E80[];

extern u16 gUnk_02017AA0[];

void sub_080A68D4();

void PauseMenu_Screen_6(void) {
    extern void (*const gUnk_08128E78[])(void);
    const struct_gUnk_08128E94* ptr;
    gUnk_08128E78[gMenu.menuType]();
    ptr = &gUnk_08128E94[gMenu.field_0x3];
    gScreen.bg1.yOffset = -ptr->unk5;
    gScreen.bg2.yOffset = gMenu.field_0xa - (s8)ptr->unk6;
    sub_080A66D0();
}

void sub_080A6650(void) {
    extern u8 gUnk_08128E84[];
    u32 temp;
    sub_080A70AC((KeyButtonLayout*)gUnk_08128E84);
    temp = gPauseMenuOptions.unk2[4];
    gMenu.field_0x3 = temp;
    sub_080A67C4(temp);
    sub_080A68D4();
    SetMenuType(1);
}

void sub_080A667C(void) {
    u32 uVar1;
    u32 uVar2;
    const struct_gUnk_08128E94* ptr;

    gMenu.field_0xc = gUnk_08128E80;
    ptr = &gUnk_08128E94[gMenu.field_0x3];
    uVar2 = gMenu.field_0xa;
    switch (gInput.heldKeys) {
        case DPAD_UP:
            if (uVar2 != 0) {
                uVar2 -= 2;
            }
            break;
        case DPAD_DOWN:
            uVar1 = ptr->unk2;
            if (uVar1 > uVar2) {
                uVar2 += 2;
            }
            if (uVar1 < uVar2) {
                uVar2 = uVar1;
            }
            break;
    }

    gMenu.field_0xa = uVar2;
    ShowAreaName(gMenu.field_0x3, 0);
}

void sub_080A66D0(void) {
    u32 bVar2;
    u32 bVar3;
    u8 bVar4;
    u32 uVar5;
    u32 uVar8;
    struct_sub_080A698C* ptr;
    const struct_gUnk_08128E94* ptr2;

    gOamCmd._4 = 0;
    gOamCmd._6 = 0;
    gOamCmd.x = 0x78;
    ptr2 = &gUnk_08128E94[gMenu.field_0x3];
    gGenericMenu.unk2c++;
    if (gGenericMenu.unk2b != 1 && ((gGenericMenu.unk2c & 0x10) != 0)) {
        gOamCmd._8 = 0x800;
        if (gMenu.field_0xa != 0) {
            gOamCmd.y = 0xc;
            DrawDirect(DRAW_DIRECT_SPRITE_INDEX, 0x71);
        }
        if (ptr2->unk2 > gMenu.field_0xa) {
            gOamCmd.y = 0x84;
            DrawDirect(DRAW_DIRECT_SPRITE_INDEX, 0x72);
        }
    }
    bVar2 = ptr2->unk7;
    bVar3 = ptr2->unk3;
    uVar5 = gMenu.field_0xa;
    gOamCmd._4 = 0;
    gOamCmd._6 = 0;
    gOamCmd._8 = 0xc00;
    bVar4 = gGenericMenu.unk2c & 0x20;

    for (ptr = (struct_sub_080A698C*)&gMapDataBottomSpecial; ptr->unk2 != 0; ptr++) {
        uVar8 = 0;
        if (ptr->unk0 == 1) {
            if (bVar4 != 0) {
                uVar8 = 1;
            }
        } else if (bVar4 == 0) {
            uVar8 = 1;
        }

        if (uVar8 != 0) {
            gOamCmd.x = ptr->unk4 + bVar2;
            gOamCmd.y = ptr->unk6 + bVar3 - uVar5;
            DrawDirect(ptr->unk2, ptr->unk1);
        }
    }
}

void sub_080A67C4(u32 param_1) {
    u16* puVar2;
    int i;
    int iVar4;
    s32 room;
    const struct_gUnk_08128E94* ptr;

    LoadPaletteGroup(param_1 + 0xba);
    iVar4 = param_1 + 0x5f;
    switch (param_1) {
        case 0x9:
            if (CheckGlobalFlag(TATEKAKE_HOUSE)) {
                iVar4 = 0x70;
            }
            break;
        case 0xb:
            if (CheckKinstoneFused(KINSTONE_E)) {
                iVar4 = 0x71;
            }
            break;
        case 0xe:
            if (gUI.roomControls.area == 8) {
                room = gUI.roomControls.room;
                iVar4 = (u8)(room % 3) + 0x72;
            }
            break;
    }

    LoadGfxGroup(iVar4);
    ptr = &gUnk_08128E94[param_1];
    puVar2 = &gUnk_02017AA0[gUnk_03003DE4[0] * 0x500];

    for (i = 0; i <= 7; puVar2++, i++) {
        *puVar2 = 0x1e0a;
    }

    for (i = 8; i < (int)(ptr->unk5 + ptr->unk4); puVar2++, i++) {
        *puVar2 = 0x1e0b;
    }

    for (; i < 0xa0; puVar2++, i++) {
        *puVar2 = 0x1e0a;
    }

    SetVBlankDMA((u16*)&gUnk_02017AA0[gUnk_03003DE4[0] * 0x500], (u16*)REG_ADDR_BG3CNT,
                 ((DMA_ENABLE | DMA_START_HBLANK | DMA_16BIT | DMA_REPEAT | DMA_SRC_INC | DMA_DEST_RELOAD) << 16) +
                     0x1);
    gMenu.field_0xa = ptr->unk2 >> 1;
    MemClear(&gMapDataBottomSpecial, 0x400);
}

void sub_080A68D4(void) {
    u32 uVar1;
    int iVar6;
    struct_gUnk_08128F58* pcVar4;
    u32 i;
    u32 uVar4;
    const WorldEvent* ptr;

    if ((gPlayerState.flags & PL_NO_CAP) != 0) {
        iVar6 = 101;
    } else {
        iVar6 = 100;
    }
    sub_080A698C(gRoomTransition.player_status.overworld_map_x, gRoomTransition.player_status.overworld_map_y,
                 DRAW_DIRECT_SPRITE_INDEX, iVar6 + 0x100);
    uVar1 = sub_080A6F40();
    uVar1 &= gSave.map_hints;

    for (pcVar4 = gUnk_08128F58, i = 0; pcVar4->frameIndex != 0; i++, pcVar4++) {
        if (((1 << i) & uVar1) != 0) {
            sub_080A698C(pcVar4->unk4, pcVar4->unk6, DRAW_DIRECT_SPRITE_INDEX, pcVar4->unk3);
        }
    }

    for (i = 10; i <= 100; i++) {
        if (CheckKinstoneFused(i) && !CheckFusionMapMarkerDisabled(i)) {
            uVar4 = gKinstoneWorldEvents[i].mapMarkerIcon;
            ptr = &gWorldEvents[gKinstoneWorldEvents[i].worldEventId];
            sub_080A698C(ptr->_c, ptr->_e, DRAW_DIRECT_SPRITE_INDEX, uVar4 + 100);
        }
    }
}

void sub_080A698C(u32 param_1, u32 param_2, u32 param_3, u32 param_4) {
    int iVar1;

    iVar1 = sub_080A69E0(param_1, param_2);
    if (iVar1 > 0) {
        ((struct_sub_080A698C*)&gMapDataBottomSpecial)[gGenericMenu.unk2d].unk0 = param_4 >> 8;
        ((struct_sub_080A698C*)&gMapDataBottomSpecial)[gGenericMenu.unk2d].unk1 = param_4;
        ((struct_sub_080A698C*)&gMapDataBottomSpecial)[gGenericMenu.unk2d].unk2 = param_3;
        ((struct_sub_080A698C*)&gMapDataBottomSpecial)[gGenericMenu.unk2d].unk4 = iVar1;
        ((struct_sub_080A698C*)&gMapDataBottomSpecial)[gGenericMenu.unk2d].unk6 = iVar1 >> 0x10;
        gGenericMenu.unk2d++;
    }
}

s32 sub_080A69E0(u32 param_1, u32 param_2) {
    const OverworldLocation* location;
    int iVar3;

    if ((param_1 | param_2) == 0)
        return -1;

    location = GetOverworldLocation(param_1, param_2);
    if (location == NULL)
        return -1;

    if (gMenu.field_0x3 != location->windcrestId)
        return -1;

    switch (gMenu.field_0x3) {
        case 4:
        case 7:
            if (gMenu.field_0x3 == 4) {
                iVar3 = 9;
            } else {
                iVar3 = 7;
            }
            param_2 -= gAreaRoomHeaders[iVar3]->map_y;
            break;
            break;
        case 15:
            param_1 -= 0x108;
            break;
    }

    param_1 = (s32)((param_1 - location->minX * 0x10) * 100) / 0x23a;
    param_2 = (s32)((param_2 - location->minY * 0x10) * 100) / 0x23a;
    return (param_2 << 0x10) | param_1;
}

const OverworldLocation* GetOverworldLocation(u32 x, u32 y) {
    const OverworldLocation* location;
    x >>= 4;
    y >>= 4;

    for (location = gOverworldLocations; location->minX != 0xff; location++) {
        if (location->minX <= x && location->maxX >= x && location->minY <= y && location->maxY >= y) {
            return location;
        }
    }
    return NULL;
}
