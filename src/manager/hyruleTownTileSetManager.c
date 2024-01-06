/**
 * @file hyruleTownTileSetManager.c
 * @ingroup Managers
 *
 * @brief Swap tileSet data in hyrule town depending on the position.
 */
#include "manager/hyruleTownTileSetManager.h"
#include "area.h"
#include "asm.h"
#include "flags.h"
#include "functions.h"
#include "main.h"
#include "room.h"
#include "tiles.h"

void sub_08059A58(HyruleTownTileSetManager*);
void sub_08059A2C(HyruleTownTileSetManager*);

static const u16 gUnk_08108398[] = { 0x0, 0x0, 0x0, 0x3f0, 0x200, 0x1, 0x0, 0x280, 0x3f0, 0x140, 0xff };
static const u16 gUnk_081083AE[] = { 0x2, 0x0, 0x0, 0x180, 0x3c0, 0x3, 0x280, 0x0, 0x170, 0x3c0, 0xff };
static const u16 gUnk_081083C4[] = { 0x5, 0x130, 0x1b0, 0x190, 0x140, 0x4, 0x0, 0x0, 0x3f0, 0x3c0, 0xff };
static const u16 gUnk_081083DA[] = { 0x0, 0x0, 0x0, 0x190, 0x1d0, 0x1, 0x0, 0x2a0, 0x190, 0x120, 0xff, 0xff };
static const u16 gUnk_081083F2[] = { 0x5, 0x0, 0x1b0, 0x190, 0x140, 0x4, 0x0, 0x0, 0x190, 0x3c0, 0xff };

void sub_08059CC0(u32, u32);
void sub_08059B18(void);

bool32 sub_08059C8C(HyruleTownTileSetManager*, u32, u8*, const u16*);

extern u32 gUnk_086E8460;

typedef struct {
    u32 field_0x0;
    u32 field_0x4;
    u32 field_0x8;
    u32 field_0xc;
} Unknown;

static const Unknown gUnk_08108408[] = {
#ifdef EU
    { 0x139860, 0x6000000, 0x13f860, 0x6008000 }, { 0x13c860, 0x6000000, 0x142860, 0x6008000 },
    { 0x13a860, 0x6001000, 0x140860, 0x6009000 }, { 0x13d860, 0x6001000, 0x143860, 0x6009000 },
    { 0x13b860, 0x6002000, 0x141860, 0x600a000 }, { 0x13e860, 0x6002000, 0x144860, 0x600a000 }
#else
    { 0x1395e0, 0x6000000, 0x13f5e0, 0x6008000 }, { 0x13c5e0, 0x6000000, 0x1425e0, 0x6008000 },
    { 0x13a5e0, 0x6001000, 0x1405e0, 0x6009000 }, { 0x13d5e0, 0x6001000, 0x1435e0, 0x6009000 },
    { 0x13b5e0, 0x6002000, 0x1415e0, 0x600a000 }, { 0x13e5e0, 0x6002000, 0x1445e0, 0x600a000 }
#endif
};
static const Unknown gUnk_08108468[] = {
#ifdef EU
    { 0x146060, 0x6000000, 0x14c060, 0x6008000 }, { 0x149060, 0x6000000, 0x14f060, 0x6008000 },
    { 0x147060, 0x6001000, 0x14d060, 0x6009000 }, { 0x14a060, 0x6001000, 0x150060, 0x6009000 },
    { 0x148060, 0x6002000, 0x14e060, 0x600a000 }, { 0x14b060, 0x6002000, 0x151060, 0x600a000 },
#else
    { 0x145de0, 0x6000000, 0x14bde0, 0x6008000 }, { 0x148de0, 0x6000000, 0x14ede0, 0x6008000 },
    { 0x146de0, 0x6001000, 0x14cde0, 0x6009000 }, { 0x149de0, 0x6001000, 0x14fde0, 0x6009000 },
    { 0x147de0, 0x6002000, 0x14dde0, 0x600a000 }, { 0x14ade0, 0x6002000, 0x150de0, 0x600a000 },
#endif
};
extern const u8 gGlobalGfxAndPalettes[];

void HyruleTownTileSetManager_Main(HyruleTownTileSetManager* this) {
    if (super->action == 0) {
        super->action = 1;
        this->field_0x22 = 0xff;
        this->field_0x21 = 0xff;
        this->field_0x20 = 0xff;
        RegisterTransitionManager(this, sub_08059A2C, NULL);
        SetEntityPriority((Entity*)this, PRIO_PLAYER_EVENT);
    }
    sub_08059A58(this);
}

void sub_08059A2C(HyruleTownTileSetManager* this) {
    gRoomVars.graphicsGroups[2] = 0xff;
    gRoomVars.graphicsGroups[1] = 0xff;
    gRoomVars.graphicsGroups[0] = 0xff;
    this->field_0x22 = 0xff;
    this->field_0x21 = 0xff;
    this->field_0x20 = 0xff;
    sub_08059A58(this);
}

void sub_08059A58(HyruleTownTileSetManager* this) {
    if (gRoomControls.area != AREA_FESTIVAL_TOWN) {
        if (sub_08059C8C(this, 0, &this->field_0x20, gUnk_08108398) != 0) {
            sub_08059CC0(0, (u32)this->field_0x20);
        }
        if (sub_08059C8C(this, 1, &this->field_0x21, gUnk_081083AE) != 0) {
            sub_08059CC0(1, this->field_0x21);
            if (this->field_0x21 == 2) {
                sub_08059B18();
            }
        }
        if (sub_08059C8C(this, 2, &this->field_0x22, gUnk_081083C4) != 0) {
            sub_08059CC0(2, (u32)this->field_0x22);
        }
    } else {
        if (sub_08059C8C(this, 0, &this->field_0x20, gUnk_081083DA) != 0) {
            sub_08059CC0(0, (u32)this->field_0x20);
        }
        if (sub_08059C8C(this, 2, &this->field_0x22, gUnk_081083F2) != 0) {
            sub_08059CC0(2, (u32)this->field_0x22);
        }
    }
}

#define COMMON(tmp2, tmp1) (((tmp2) >> 4 & 0x3f) | (((tmp1) + 0x188U) >> 4 & 0x3f) << 6)
void sub_08059B18(void) {
    u32 loopVar;
    u32 innerLoopVar;

    if (CheckGlobalFlag(TATEKAKE_HOUSE) != 0) {
        for (loopVar = 0; loopVar < 4; ++loopVar) {
            for (innerLoopVar = 0; innerLoopVar < 4; ++innerLoopVar) {
                SetTileByIndex(loopVar * 0x10 + TILE_TYPE_1195 + innerLoopVar,
                               COMMON(0x28 + 0x10 * innerLoopVar, loopVar * 0x10), 1);
            }
        }

        for (loopVar = 0; loopVar < 3; ++loopVar) {
            for (innerLoopVar = 0; innerLoopVar < 4; ++innerLoopVar) {
                SetTileByIndex(loopVar * 0x10 + TILE_TYPE_1088 + innerLoopVar,
                               COMMON(0x28 + 0x10 * innerLoopVar, loopVar * 0x10), 2);
            }
        }
        SetTileByIndex(TILE_TYPE_214, TILE_POS(2, 23), LAYER_TOP);
        SetTileByIndex(TILE_TYPE_215, TILE_POS(3, 23), LAYER_TOP);
        LoadResourceAsync(&gUnk_086E8460, 0x6001800, 0x800);
    } else {
        if (CheckGlobalFlag(TATEKAKE_TOCHU) != 0) {
            for (loopVar = 0; loopVar < 5; ++loopVar) {
                for (innerLoopVar = 0; innerLoopVar < 4; ++innerLoopVar) {
                    SetTileByIndex(loopVar * 0x10 + TILE_TYPE_1190 + innerLoopVar,
                                   COMMON(0x28 + 0x10 * innerLoopVar, loopVar * 0x10), 1);
                }
            }
            SetTileByIndex(TILE_TYPE_1092, TILE_POS(2, 24), LAYER_TOP);
            SetTileByIndex(TILE_TYPE_1093, TILE_POS(5, 24), LAYER_TOP);
            SetTileByIndex(TILE_TYPE_1108, TILE_POS(2, 25), LAYER_TOP);
            SetTileByIndex(TILE_TYPE_1109, TILE_POS(5, 25), LAYER_TOP);
        }
    }
}

bool32 sub_08059C8C(HyruleTownTileSetManager* this, u32 param_2, u8* param_3, const u16* param_4) {
    bool32 bVar2;

    *param_3 = CheckRegionsOnScreen(param_4);
    if ((*param_3 != 0xff) && (gRoomVars.graphicsGroups[param_2] != *param_3)) {
        gRoomVars.graphicsGroups[param_2] = *param_3;
        return TRUE;
    } else {
        return FALSE;
    }
}

void sub_08059CC0(u32 param_1, u32 param_2) {
    const Unknown* unknown;

    gRoomVars.graphicsGroups[param_1] = param_2;
    if (gRoomControls.area != AREA_FESTIVAL_TOWN) {
        unknown = &gUnk_08108408[param_2];
    } else {
        unknown = &gUnk_08108468[param_2];
    }
    LoadResourceAsync((void*)&gGlobalGfxAndPalettes + unknown->field_0x0, unknown->field_0x4, 0x1000);
    LoadResourceAsync((void*)&gGlobalGfxAndPalettes + unknown->field_0x8, unknown->field_0xc, 0x1000);
}

void TryLoadPrologueHyruleTown(void) {
    u32 tmp;

    if (gRoomControls.area != AREA_FESTIVAL_TOWN) {
        tmp = CheckRegionsOnScreen(gUnk_08108398);
        if (tmp != 0xff) {
            sub_08059CC0(0, tmp);
        }
        tmp = CheckRegionsOnScreen(gUnk_081083AE);
        if ((tmp != 0xff) && (sub_08059CC0(1, tmp), tmp == 2)) {
            sub_08059B18();
        }
        tmp = CheckRegionsOnScreen(gUnk_081083C4);
        if (tmp != 0xff) {
            sub_08059CC0(2, tmp);
        }
    } else {
        tmp = CheckRegionsOnScreen(gUnk_081083DA);
        if (tmp != 0xff) {
            sub_08059CC0(0, tmp);
        }
        tmp = CheckRegionsOnScreen(gUnk_081083F2);
        if (tmp != 0xff) {
            sub_08059CC0(2, tmp);
        }
    }
}
