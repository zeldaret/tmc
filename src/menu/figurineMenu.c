/**
 * @file figurineMenu.c
 * @ingroup Subtasks
 *
 * @brief Figurine Menu Subtask
 */
#include "figurineMenu.h"

#include "common.h"
#include "flags.h"
#include "functions.h"
#include "game.h"
#include "main.h"
#include "menu.h"
#include "message.h"
#include "object.h"
#include "pauseMenu.h"
#include "save.h"
#include "screen.h"
#include "sound.h"
#include "subtask.h"
#include "subtask2.h"
#include "ui.h"

void sub_080A4DA8(u32);
void sub_080A4B44(void);
void FigurineMenu_080A4978(void);
u32 sub_080A4CBC(u32);
void sub_080A4BA0(u32, u32);
void sub_080A4DB8(u32);

const KeyButtonLayout gUnk_0812813C = {
    0xffu,
    0xd8u,
    0u,
    0xd0u,
    0x10u,
    0xeu,
    0xffu,
    0xd8u,
    0u,
    {
        0xau,
        0u,
        0x1u,
        0x1u,
        0xffu,
        0u,
        0u,
    },
};

extern u8 gUnk_020344A0[8];

extern const struct_08128AD8 gUnk_08128AD8[];

Subtask FigurineMenu0_Type0;
Subtask FigurineMenu0_Type1;
Subtask FigurineMenu0_Type2;
Subtask FigurineMenu0_ViewFigurineAfterDrawing;
Subtask FigurineMenu1_Type0;
Subtask FigurineMenu1_ViewAllFigurines;
Subtask FigurineMenu1_Type2;
Subtask FigurineMenu1_ExitMenu;

void Subtask_FigurineMenu(void) {
    static Subtask* const figurineMenu1_Types[] = {
        FigurineMenu0_Type0,
        FigurineMenu0_Type1,
        FigurineMenu0_Type2,
        FigurineMenu0_ViewFigurineAfterDrawing,
    };
    static Subtask* const figurineMenu0_Types[] = {
        FigurineMenu1_Type0,
        FigurineMenu1_ViewAllFigurines,
        FigurineMenu1_Type2,
        FigurineMenu1_ExitMenu,
    };
#if !(defined(DEMO_USA) || defined(DEMO_JP))
    FlushSprites();
    if (gUI.field_0x3 == 0xff) {
        figurineMenu0_Types[gMenu.menuType]();
    } else {
        figurineMenu1_Types[gMenu.menuType]();
    }
    UpdateEntities();
    UpdateUIElements();
    DrawUIElements();
    DrawEntities();
    FigurineMenu_080A4978();
    CopyOAM();
    sub_080A4B44();
#endif
}

void FigurineMenu_080A4608(void) {
    s32 iVar2, r1, maxFigurines;

    SetBgmVolume(0x80);
    sub_080A4DA8(3);
    SetColor(0, gPaletteBuffer[251]);
    SetColor(0x15c, gPaletteBuffer[211]);
    MemClear(&gBG0Buffer, sizeof(gBG0Buffer));
    MemClear(&gBG3Buffer, sizeof(gBG3Buffer));
    gScreen.controls.window0HorizontalDimensions = DISPLAY_WIDTH;
    gScreen.controls.window0VerticalDimensions = 0x7898;
    gScreen.controls.windowInsideControl = 0x1f;
    gScreen.controls.windowOutsideControl = 0x1d;
    gScreen.bg1.updated = 1;
    for (iVar2 = 0; iVar2 < 0x10; iVar2++) {
        gFigurineMenu.unk10.a[iVar2] = 0xee;
    }

    r1 = gUI.field_0x3;
    maxFigurines = !gSave.saw_staffroll ? 130 : 136;
    if (maxFigurines < r1) {
        r1 = 1;
    }
    gFigurineMenu.figure_idx = r1;
    SetFade(FADE_INSTANT, 8);
}

void FigurineMenu_ExitMenu(void) {
    SetBgmVolume(0x100);
    SoundReq(SFX_MENU_CANCEL);
    ClearRoomFlag(2);
    Subtask_Exit();
}

void FigurineMenu0_Type0(void) {
    FigurineMenu_080A4608();
    SetMenuType(1);
}

void FigurineMenu0_Type1(void) {
    if (gFadeControl.active == 0) {
        CreateObject(OBJECT_A2, gUnk_080FC3E4[gFigurineMenu.figure_idx].type, 0);
        SetMenuType(2);
    }
}

void FigurineMenu0_Type2(void) {
    u32 bVar1;
    Sound sound;

    if (gMenu.field_0x0 != 0) {
        gFigurineMenu.unk20++;
        switch (gFigurineMenu.unk20) {
            case 0x40:
                gFigurineMenu.duplicate = WriteBit(gSave.figurines, gFigurineMenu.figure_idx);
                gMenu.column_idx = 1;
            default:
                bVar1 = gFigurineMenu.unk20 >> 2;
                if (0x10 < bVar1) {
                    bVar1 = 0x20 - bVar1;
                }
                gScreen.controls.layerBrightness = bVar1;
                gScreen.controls.layerFXControl = 0xbf;
                break;
            case 0x80:
                gScreen.controls.layerBrightness = 0;
                gScreen.controls.layerFXControl = 0;
                gScreen.lcd.displayControl |= 0x2000;
                SetMenuType(3);
                sub_080A70AC((KeyButtonLayout*)&gUnk_0812813C);
                gMenu.column_idx = 0x15;
                if (!gFigurineMenu.duplicate) {
                    sound = SFX_ITEM_GET;
                } else {
                    sound = SFX_MENU_ERROR;
                }
                SoundReq(sound);
                return;
        }
    }
}

void FigurineMenu0_ViewFigurineAfterDrawing(void) {
    s32 infoY;
    s32 t;

    infoY = gFigurineMenu.unk1f;
    switch (gInput.menuScrollKeys) {
        case B_BUTTON:
        case START_BUTTON:
            FigurineMenu_ExitMenu();
            break;
        case DPAD_RIGHT:
            infoY += 8;
            break;
        case DPAD_LEFT:
            infoY -= 8;
            break;
    }
    t = gFigurineMenu.unk1e;
    if (infoY < 0) {
        infoY = 0;
    }
    if (t < infoY) {
        infoY = t;
    }
    gFigurineMenu.unk1f = infoY;
    gScreen.bg1.yOffset = infoY - 112;
}

void FigurineMenu1_Type0(void) {
    FigurineMenu_080A4608();
    gScreen.lcd.displayControl |= 0x2000;
    sub_080A70AC(&gUnk_0812813C);
    gMenu.column_idx = 0xff;
    SetMenuType(1);
}

void FigurineMenu1_ViewAllFigurines(void) {
    int prevFigurineIndex, maxFigurines, figurineIndex, infoY;

    if (gFadeControl.active)
        return;

    infoY = gFigurineMenu.unk1f;
    figurineIndex = gFigurineMenu.figure_idx;
    switch (gInput.menuScrollKeys) {
        case B_BUTTON:
        case START_BUTTON:
            SetMenuType(3);
            break;
        case L_BUTTON:
            figurineIndex -= 5;
            break;
        case R_BUTTON:
            figurineIndex += 5;
            break;
        case DPAD_UP:
            figurineIndex--;
            break;
        case DPAD_DOWN:
            figurineIndex++;
            break;
        case DPAD_RIGHT:
            infoY += 8;
            break;
        case DPAD_LEFT:
            infoY -= 8;
            break;
        case A_BUTTON:
            break;
    }
    maxFigurines = !gSave.saw_staffroll ? 130 : 136;
    if (figurineIndex <= 0) {
        figurineIndex = 1;
    }
    if (maxFigurines < figurineIndex) {
        figurineIndex = maxFigurines;
    }
    prevFigurineIndex = gFigurineMenu.figure_idx;
    if (prevFigurineIndex != figurineIndex) {
        gFigurineMenu.figure_idx = figurineIndex;
        SoundReq(SFX_TEXTBOX_CHOICE);
        SetMenuType(2);
        infoY = 0;
    }
    prevFigurineIndex = gFigurineMenu.unk1e;
    if (infoY < 0) {
        infoY = 0;
    }
    if (prevFigurineIndex < infoY) {
        infoY = prevFigurineIndex;
    }
    gFigurineMenu.unk1f = infoY;
    gScreen.bg1.yOffset = infoY - 112;
}

void FigurineMenu1_Type2(void) {
    SetMenuType(1);
}

void FigurineMenu1_ExitMenu(void) {
    FigurineMenu_ExitMenu();
}

u32 FigurineMenu_isFigurineOwned(s32 figurineIndex) {
    s32 maxFigurines;
    u32 hasFigurine;

    hasFigurine = 0;
    maxFigurines = !gSave.saw_staffroll ? 130 : 136;
    if ((0 < figurineIndex) || (maxFigurines >= figurineIndex)) {
        if (ReadBit(gSave.figurines, figurineIndex)) {
            hasFigurine = 1;
        }
    }
    return hasFigurine;
}

typedef struct {
    u8* pal;
    u8* gfx;
    int size;
    int zero;
} Figurine;

extern const Figurine gFigurines[];

#ifdef EU
#define sub_080A4978_draw_constant 0x1fb
#else
#define sub_080A4978_draw_constant 0x1fc
#endif
void FigurineMenu_080A4978(void) {
    int r0, maxFigurines, r4, r6;

    gOamCmd._4 = 0;
    gOamCmd._6 = 0;
    gOamCmd._8 = 0x800;
    gOamCmd.x = 0x9c;
    gOamCmd.y = 0x48;
    DrawDirect(sub_080A4978_draw_constant, 0);
    maxFigurines = !gSave.saw_staffroll ? 130 : 136;
    if ((gMenu.column_idx & 2) != 0) {
        if (maxFigurines >= (gFigurineMenu.figure_idx)) {
            gOamCmd.x = 0xe8;
            r0 = (0x5000 / maxFigurines) * (gFigurineMenu.figure_idx - 1);
            if (r0 < 0) {
                r0 += 0xff;
            }
            r0 >>= 8;
            r0 += 0x20;
            gOamCmd.y = r0;
            DrawDirect(sub_080A4978_draw_constant, 1);
            r0 = gMain.ticks & 0x10;
            r4 = (r0) ? 4 : 2;
            gOamCmd.x = 0xe8;
            gOamCmd.y = 0x1a;
            DrawDirect(sub_080A4978_draw_constant, r4);
            gOamCmd.x = 0xe8;
            gOamCmd.y = 0x76;
            DrawDirect(sub_080A4978_draw_constant, r4 + 1);
        }
    }
    if (gMain.ticks & 0x10) {
        if (gMenu.column_idx & 0x10) {
            if (gFigurineMenu.unk1e) {
                gOamCmd.y = 0x10;
                if (gFigurineMenu.unk1f > 0) {
                    gOamCmd.x = 6;
                    gOamCmd.y = 0x9c;
                    DrawDirect(sub_080A4978_draw_constant, 6);
                }
                if (gFigurineMenu.unk1e > gFigurineMenu.unk1f) {
                    gOamCmd.x = 0xea;
                    gOamCmd.y = 0x9c;
                    DrawDirect(sub_080A4978_draw_constant, 7);
                }
            }
        }
    }
    if (gSaveHeader->language) {
        if (gMenu.column_idx & 0x4) {
            gOamCmd.y = 0x10;
            r4 = gFigurineMenu.figure_idx;
            for (r6 = 2; r6 >= 0; r6--) {
                gOamCmd.x = 0x5d + (r6 * 7);
                gOamCmd._8 = ((r4 % 10) << 1) | 0x9e0;
                DrawDirect(0, 9);
                r4 = r4 / 10;
            }
        }
    }
    if (gMenu.column_idx & 1) {
        if (FigurineMenu_isFigurineOwned(gFigurineMenu.figure_idx)) {
            gOamCmd.x = 0x2c;
            gOamCmd.y = 0x48;
            gOamCmd._8 = 0xd4 << 7;
            DrawDirect(sub_080A4978_draw_constant - 4, gFigurineMenu.figure_idx - 1);
            if (gFigurineMenu.unk1d != gFigurineMenu.figure_idx) {
                const Figurine* fig;
                u8* gfx;
                gFigurineMenu.unk1d = gFigurineMenu.figure_idx;
                fig = &gFigurines[gFigurineMenu.figure_idx];
                LoadPalettes(fig->pal, 0x16, 9);
                gfx = fig->gfx;
                if (fig->size < 0) {
                    LZ77UnCompVram(gfx, (void*)0x6014000);
                } else {
                    LoadResourceAsync(gfx, 0x6014000, fig->size);
                }
            }
        }
    }
}

void sub_080A4B44(void) {
    u32 uVar1;

    uVar1 = gFigurineMenu.figure_idx;
    if ((gMenu.column_idx & 0x10) != 0) {
        gFigurineMenu.unk1e = sub_080A4CBC(uVar1);
    }
    if ((gMenu.column_idx & 4) != 0) {
        sub_080A4BA0(uVar1, 2);
    }
    if ((gMenu.column_idx & 8) != 0) {
        sub_080A4BA0(uVar1 - 2, 0);
        sub_080A4BA0(uVar1 - 1, 1);
        sub_080A4BA0(uVar1 + 1, 3);
        sub_080A4BA0(uVar1 + 2, 4);
    }
}

typedef struct {
    u16* unk0;
    u32 unk4;
    u8 filler8[8];
    u16 unk10;
    u8 filler12[2];
    u8 unk14;
} struct_0812816C;
static_assert(sizeof(struct_0812816C) == 0x18);
const struct_0812816C gUnk_0812816C = {
    (u16*)0x02001b40,
    0x0600a000,
    { 0u, 0xdu, 0u, 0x2u, 0u, 0u, 0u, 0u },
    0xf100,
    {
        0x88u,
        0u,
    },
    0x4u,
};

typedef struct {
    u32 unk0;
    u32 unk4;
    u8 unk8;
    u8 unk9;
} struct_08128184;
static_assert(sizeof(struct_08128184) == 0xc);
const struct_08128184 gUnk_08128184 = {
    0x01061504,
    0x073a1404,
    0xffu,
    0xffu,
};

extern struct_020227E8 gUnk_020227E8[];
extern void ShowTextBox(u32, const struct_0812816C*);

void sub_080A4BA0(u32 arg1, u32 arg2) {
    int r0, r5, r6;
    int maxFigurines;

    struct_0812816C s0;
    u8 buffer[0x30];
    struct_08128184 s2;

    r5 = arg1;
    r6 = arg2;
    MemClear(buffer, sizeof(buffer));
    MemCopy(&gUnk_0812816C, &s0, sizeof(gUnk_0812816C));
    MemCopy(&gUnk_08128184, &s2, sizeof(gUnk_08128184));
    s0.unk4 += (arg2 * 3) << 9;
    s0.unk10 += (arg2 * 3) << 4;
    s0.unk0 += arg2 << 6;
    if (arg2 == 2) {
        s0.unk14 = arg2;
    }

    maxFigurines = !gSave.saw_staffroll ? 130 : 136;

    if (r5 <= 0 || maxFigurines < r5) {
        r5 = -1;
    } else {
        sub_08057044(r5, gUnk_020227E8, 0x303030);
        if (FigurineMenu_isFigurineOwned(r5) == 0) {
            r5 += 0x8000;
        } else {
            r5 += 0x800;
        }
    }

    if (gFigurineMenu.unk10.h[r6] != r5) {
        gFigurineMenu.unk10.h[r6] = r5;
        r0 = 0xf00b;
        if (r6 == 2)
            r0 -= 7;
        MemFill16(r0, s0.unk0, 0x80);
        if (r5 > 0) {
            if (r5 > 0x7fff) {
                r5 = 0x889;
            }
            r0 = r5;
            if (r5 < 0) {
                r0 += 0xff;
            }
            s2.unk8 = r0 >> 8;
            s2.unk9 = r5;
            s0.unk0 += 0xb;
            if (gSaveHeader->language == 0) {
                ShowTextBox((u32)&s2, &s0);
            } else {
                ShowTextBox(r5, &s0);
            }
        }
        gScreen.bg3.updated = 1;
    }
}

const struct_0812816C gUnk_08128190 = {
    (u16*)0x02021f72,
    0x06004000,
    {
        0u,
        0xdu,
        0u,
        0x2u,
        0u,
        0u,
        0u,
        0u,
    },
    0xc200,
    {
        0xe0u,
        0u,
    },
    0x5u,
};

u32 sub_080A4CBC(u32 figurineIndex) {
    s32 ownsFigurine;
    const u16* psVar2;
    u32 uVar3;

    if (gFigurineMenu.unk1a != figurineIndex) {
        gFigurineMenu.unk1a = figurineIndex;
        MemClear(&gBG1Buffer, sizeof(gBG1Buffer));
        MemCopy(&gBG1Buffer, (void*)0x600e000, sizeof(gBG1Buffer));
        ownsFigurine = FigurineMenu_isFigurineOwned(figurineIndex);
        if (ownsFigurine != 0) {
            ShowTextBox(figurineIndex + 0x900, &gUnk_08128190);
        }
        gScreen.bg1.updated = 1;
    }
    psVar2 = gUnk_08128190.unk0 + 0x80;

    for (uVar3 = 0; uVar3 < 0x14; uVar3++) {
        if (*psVar2 == 0)
            break;
        psVar2 += 0x20;
    }
    return uVar3 << 3;
}

void sub_080A4D34(void) {
    s32 iVar1;

    LoadGfxGroups();
    LoadPaletteGroup(0xb5);
    if (gSave.stats.health <= 8) {
        iVar1 = 2;
    } else {
        s32 missingHealth = gSave.stats.maxHealth - gSave.stats.health;
        if (missingHealth < 9) {
            iVar1 = 0;
        } else {
            iVar1 = 1;
        }
    }
    LoadGfxGroup(iVar1 + 0x56);
    gScreen.bg3.xOffset = 0;
    gScreen.bg3.yOffset = 0;
    gScreen.bg3.control = 0x1e0b;
    gScreen.bg3.updated = 1;
}

void InitPauseMenu(void) {
    MemClear(gUnk_020344A0, sizeof(gUnk_020344A0));
    MenuFadeIn(1, 0);
    SetBgmVolume(0x80);
}

void sub_080A4DA8(u32 param_1) {
    sub_080A4D34();
    sub_080A4DB8(param_1);
}

// Render screen?
void sub_080A4DB8(u32 param_1) {
    const struct_08128AD8* ptr;

    DisableVBlankDMA();
    MemClear(&gBG0Buffer, sizeof(gBG0Buffer));
    MemClear(&gBG1Buffer, sizeof(gBG1Buffer));
    MemClear(&gBG2Buffer, sizeof(gBG2Buffer));
    MemClear(gHUD.elements, sizeof(gHUD.elements));
    MemClear(&gFigurineMenu, sizeof(gFigurineMenu));
    gFigurineMenu.unk2e = -1;
    gMenu.field_0x3 = gPauseMenuOptions.unk2[param_1];
    ptr = &gUnk_08128AD8[gUnk_08128A38[param_1].unk0];
    gScreen.lcd.displayControl = ptr->unk2 | 0x1940;
    gScreen.bg0.xOffset = 0;
    gScreen.bg0.yOffset = 0;
    gScreen.bg0.updated = 1;
    gScreen.bg1.xOffset = 0;
    gScreen.bg1.yOffset = 0;
    gScreen.bg1.control = ptr->bg1Control;
    gScreen.bg1.updated = 1;
    gScreen.bg2.xOffset = 0;
    gScreen.bg2.yOffset = 0;
    gScreen.bg2.control = ptr->bg2Control;
    gScreen.bg2.updated = 1;
    gScreen.bg3.xOffset = 0;
    gScreen.bg3.yOffset = 0;
    gScreen.bg3.control = 0x1e0b;
    if (ptr->paletteGroup != 0) {
        LoadPaletteGroup(ptr->paletteGroup);
    }
    if (ptr->gfxGroup != 0) {
        LoadGfxGroup(ptr->gfxGroup);
    }
}

void sub_080A4E84(u8 param_1) {
    gPauseMenuOptions.screen2 = param_1;
}

void sub_080A4E90(u8 param_1) {
    gPauseMenuOptions.unk11 = param_1;
    gPauseMenuOptions.unk12 = 0;
}
