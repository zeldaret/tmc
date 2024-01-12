/**
 * @file minishVillageTileSetManager.c
 * @ingroup Managers
 *
 * @brief Swap tileSet data in minish village depending on the position
 */
#include "manager/minishVillageTileSetManager.h"
#include "asm.h"
#include "common.h"
#include "functions.h"
#include "main.h"

void sub_08057E30(void*);
bool32 sub_08057E40(MinishVillageTileSetManager*);
void sub_08057E7C(u32);

extern const u8 gGlobalGfxAndPalettes[];

const u16 gUnk_08108050[0x2A] = {
#ifdef EU
    0,     0,     0x20, 0xE0,  0xE0,  1,     0x28,  0x1C8, 0x60,  0x80,  2,
    0x188, 0x278, 0xE0, 0xA0,  3,     0x310, 0x178, 0xC0,  0x150, 3,     0x340,
#else
    0,     0,     0x20, 0xE0,  0xE0,  1,     0,     0x1D0, 0x80,  0x60,  2,
    0x170, 0x278, 0xF8, 0xA0,  3,     0x310, 0x178, 0xC0,  0x150, 3,     0x340,
#endif
    0x2C8, 0x60,  0x90, 4,     0x1D0, 0,     0x200, 0xE0,  1,     0x108, 0x188,
    0xD0,  0x80,  2,    0x1E8, 0x338, 0x50,  0xC0,  0xFF,  0
};

const u32 gUnk_081080A4[0x50] = {
#ifdef EU
    0x109860, 0x6000000, 0x10a860, 0x6001000, 0x10b860, 0x6002000, 0x10c860, 0x6003000, 0x10d860, 0x6008000,
    0x10e860, 0x6009000, 0x10f860, 0x600a000, 0x110860, 0x600b000, 0x111860, 0x6000000, 0x112860, 0x6001000,
    0x113860, 0x6002000, 0x114860, 0x6003000, 0x115860, 0x6008000, 0x116860, 0x6009000, 0x117860, 0x600a000,
    0x118860, 0x600b000, 0x119860, 0x6000000, 0x11a860, 0x6001000, 0x11b860, 0x6002000, 0x11c860, 0x6003000,
    0x11d860, 0x6008000, 0x11e860, 0x6009000, 0x11f860, 0x600a000, 0x120860, 0x600b000, 0x121860, 0x6000000,
    0x122860, 0x6001000, 0x123860, 0x6002000, 0x124860, 0x6003000, 0x125860, 0x6008000, 0x126860, 0x6009000,
    0x127860, 0x600a000, 0x128860, 0x600b000, 0x129860, 0x6000000, 0x12a860, 0x6001000, 0x12b860, 0x6002000,
    0x12c860, 0x6003000, 0x12d860, 0x6008000, 0x12e860, 0x6009000, 0x12f860, 0x600a000, 0x130860, 0x600b000
#else
    0x001095E0, 0x06000000, 0x0010A5E0, 0x06001000, 0x0010B5E0, 0x06002000, 0x0010C5E0, 0x06003000, 0x0010D5E0,
    0x06008000, 0x0010E5E0, 0x06009000, 0x0010F5E0, 0x0600A000, 0x001105E0, 0x0600B000, 0x001115E0, 0x06000000,
    0x001125E0, 0x06001000, 0x001135E0, 0x06002000, 0x001145E0, 0x06003000, 0x001155E0, 0x06008000, 0x001165E0,
    0x06009000, 0x001175E0, 0x0600A000, 0x001185E0, 0x0600B000, 0x001195E0, 0x06000000, 0x0011A5E0, 0x06001000,
    0x0011B5E0, 0x06002000, 0x0011C5E0, 0x06003000, 0x0011D5E0, 0x06008000, 0x0011E5E0, 0x06009000, 0x0011F5E0,
    0x0600A000, 0x001205E0, 0x0600B000, 0x001215E0, 0x06000000, 0x001225E0, 0x06001000, 0x001235E0, 0x06002000,
    0x001245E0, 0x06003000, 0x001255E0, 0x06008000, 0x001265E0, 0x06009000, 0x001275E0, 0x0600A000, 0x001285E0,
    0x0600B000, 0x001295E0, 0x06000000, 0x0012A5E0, 0x06001000, 0x0012B5E0, 0x06002000, 0x0012C5E0, 0x06003000,
    0x0012D5E0, 0x06008000, 0x0012E5E0, 0x06009000, 0x0012F5E0, 0x0600A000, 0x001305E0, 0x0600B000
#endif
};

const u8 gUnk_081081E4[] = { 0x16, 0x17, 0x17, 0x18, 0x18 };

#ifdef EU
void MinishVillageTileSetManager_Main(MinishVillageTileSetManager* this) {
    u32 tmp;
    const u32* tmp2;
    s32 tmp3;
    if (super->action == 0) {
        super->action = 1;
        super->timer = 8;
        this->unk_20 = 0xFF;

        RegisterTransitionManager(this, sub_08057E30, 0);
    }
    if (gRoomControls.reload_flags)
        return;

    if (sub_08057E40(this)) {
        tmp = (u32)gRoomVars.graphicsGroups[0];
        if (this->unk_20 != tmp) {
            this->unk_20 = tmp;
            super->timer = 0;
        }
    }

    tmp2 = &gUnk_081080A4[tmp << 4];
    tmp3 = super->timer;
    if (tmp3 == 0) {
        gPauseMenuOptions.disabled = 1;
        LoadResourceAsync(&gGlobalGfxAndPalettes[tmp2[0]], tmp2[1], 0x1000);
        LoadPaletteGroup(gUnk_081081E4[tmp]);
        super->timer++;
    } else {
        switch (tmp3) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
                LoadResourceAsync(&gGlobalGfxAndPalettes[tmp2[(super->timer << 1)]], tmp2[(super->timer << 1) + 1],
                                  0x1000);
                super->timer++;
                gPauseMenuOptions.disabled = 0;
            case 8:
                break;
        }
    }
}
#else
void MinishVillageTileSetManager_Main(MinishVillageTileSetManager* this) {
    u32 tmp;
    const u32* tmp2;
    if (super->action == 0) {
        super->action = 1;
        super->timer = 8;
        this->unk_20 = 0xFF;

        SetEntityPriority((Entity*)this, PRIO_PLAYER_EVENT);
        RegisterTransitionManager(this, sub_08057E30, 0);
    }
    if (sub_08057E40(this)) {
        tmp = (u32)gRoomVars.graphicsGroups[0];
        if (this->unk_20 != tmp) {
            this->unk_20 = tmp;
            super->timer = 0;
        }
    }
    if (gRoomControls.reload_flags)
        return;
#ifndef JP
    tmp = this->unk_20;
#endif
    tmp2 = &gUnk_081080A4[tmp << 4];
    switch (super->timer) {
        case 0:
            gPauseMenuOptions.disabled = 1;
            LoadResourceAsync(&gGlobalGfxAndPalettes[tmp2[0]], tmp2[1], 0x1000);
            LoadPaletteGroup(gUnk_081081E4[tmp]);
            super->timer++;
            break;
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
            LoadResourceAsync(&gGlobalGfxAndPalettes[tmp2[(super->timer << 1)]], tmp2[(super->timer << 1) + 1], 0x1000);
            super->timer++;
            break;
        case 8:
            gPauseMenuOptions.disabled = 0;
            super->timer++;
            break;
    }
}
#endif

void sub_08057E30(void* this) {
    sub_08057E7C(gRoomVars.graphicsGroups[0]);
}

bool32 sub_08057E40(MinishVillageTileSetManager* this) {
    u32 tmp = CheckRegionsOnScreen(gUnk_08108050);
    if (tmp != 0xFF) {
        gRoomVars.graphicsGroups[0] = tmp;
        return TRUE;
    } else {
        return FALSE;
    }
}

void sub_08057E64(void) {
    u32 tmp = CheckRegionsOnScreen(gUnk_08108050);
    if (tmp != 0xFF) {
        sub_08057E7C(tmp);
    }
}

void sub_08057E7C(u32 unk1) {
    u32 tmp;
    const u32* tmp2;

#ifndef EU
    if (unk1 > 4)
        return;
#endif

    LoadPaletteGroup(gUnk_081081E4[unk1]);
    tmp2 = &gUnk_081080A4[unk1 << 4];
    for (tmp = 0; tmp < 8; tmp++, tmp2 += 2) {
        DmaCopy32(3, &gGlobalGfxAndPalettes[tmp2[0]], tmp2[1], 0x400 * 4);
    }
    gRoomVars.graphicsGroups[0] = unk1;
}
