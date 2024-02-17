/**
 * @file pauseMenu.c
 * @ingroup Subtasks
 *
 * @brief Pause Menu Subtask
 */
#include "pauseMenu.h"

#include "common.h"
#include "functions.h"
#include "game.h"
#include "item.h"
#include "itemMetaData.h"
#include "kinstone.h"
#include "main.h"
#include "menu.h"
#include "message.h"
#include "save.h"
#include "screen.h"
#include "sound.h"
#include "structures.h"
#include "subtask.h"
#include "ui.h"

extern void sub_080A4DB8(u32);

void sub_080A5128(void);
void sub_080A51D4(void);
bool32 sub_080A51F4(void);
void sub_080A5F48(u32, u32);

void Subtask_PauseMenu(void) {
    static Subtask* const pauseMenu_Variants[] = {
        PauseMenu_Variant0, PauseMenu_Variant1, PauseMenu_Variant2,
        PauseMenu_Variant3, PauseMenu_Variant4, PauseMenu_Variant5,
    };

    if (gPauseMenuOptions.unk11 == 6) {
        SetBgmVolume(0x100);
        Subtask_Exit();
    } else {
        FlushSprites();
        pauseMenu_Variants[gPauseMenuOptions.unk11]();
        sub_080A5128();
        UpdateUIElements();
        DrawUIElements();
        if (gPauseMenuOptions.unk11 != 4) {
            gUnk_08128A38[gPauseMenuOptions.screen].func();
        }
        CopyOAM();
        {
            u32 t = gPauseMenuOptions.unk16;
            u32 t2 = (t != 0) ? 0xe46 : 0;
            gScreen.controls.layerFXControl = t2;
            gScreen.controls.alphaBlend = (t << 8) | (0x10 - t);
        }
    }
}

extern u8 gUnk_02034492[];
void UpdateVisibleFusionMapMarkers(void);
s32 sub_080A50A0(s32);

void PauseMenu_Variant0(void) {
    const OverworldLocation* location;
    int r0, r1;

    UpdateVisibleFusionMapMarkers();
    sub_080A4D34();
    r1 = 4;
    do {
        gUnk_02034492[r1] = 0;
        r1++;
    } while (r1 <= 0xd);
    location = GetOverworldLocation((u16)gRoomTransition.player_status.overworld_map_x,
                                    (u16)gRoomTransition.player_status.overworld_map_y);
    gPauseMenuOptions.unk2[4] = location->windcrestId;
    gPauseMenuOptions.unk2[5] = sub_0801DB94();
    if (IsItemEquipped(ITEM_LANTERN_ON) != EQUIP_SLOT_NONE) {
        r1 = 0x10;
    } else {
        r1 = 0xf;
    }
    gPauseMenuOptions.unk15 = r1;
    r0 = gUnk_08128A38[gPauseMenuOptions.screen].unk1;
    r0 = sub_080A50A0(r0);
    gPauseMenuOptions.screen = r0;
    gPauseMenuOptions.screen2 = r0;
    sub_080A4DB8(r0);
    SetFade(FADE_INSTANT, 0x20);
    sub_080A4E90(1);
}

void PauseMenu_Variant1(void) {
    if (gFadeControl.active == 0) {
        sub_080A4E90(2);
    }
}

void PauseMenu_Variant2(void) {
    int iVar1;
    u32 uVar2;
    int iVar4;
    s32 bVar5;

    if (sub_080A51F4() && (gMenu.field_0xc != NULL)) {
        iVar1 = -1;
        switch (gInput.newKeys) {
            case START_BUTTON:
                iVar1 = 0;
                break;
            case L_BUTTON:
                iVar1 = 1;
                break;
            case R_BUTTON:
                iVar1 = 2;
                break;
            case B_BUTTON:
                iVar1 = 3;
                break;
        }
        if (iVar1 >= 0) {
            switch (bVar5 = gMenu.field_0xc[iVar1]) {
                case 0:
                    break;
                case 4 ... 6:
                case 0xf:
                    uVar2 = GetInventoryValue(ITEM_MAP);
                    if (uVar2 == 0) {
                        iVar4 = 1;
                        if (iVar1 == 1) {
                            iVar4 = 2;
                        }
                        bVar5 = gMenu.field_0xc[iVar4];
                    }
                default:
                    gPauseMenuOptions.screen2 = bVar5;
                    SoundReq(SFX_TEXTBOX_OPEN);
                    gMenu.field_0xc = NULL;
                    break;
            }
        }
    }
    bVar5 = sub_080A50A0(gPauseMenuOptions.screen2);
    if (gPauseMenuOptions.screen != bVar5) {
        gPauseMenuOptions.screen2 = bVar5;
        sub_080A51D4();
        if (bVar5 == 0xe) {
            sub_080A4E90(6);
        } else {
            sub_080A4E90(3);
            MemClear(&gBG0Buffer, sizeof(gBG0Buffer));
            gScreen.bg0.updated = 1;
        }
    }
}

s32 sub_080A50A0(s32 param_1) {
    s32 iVar1;

    if (param_1 == 0xf) {
        iVar1 = AreaHasMap();
        param_1 = 4;
        if (iVar1 != 0) {
            param_1 = 5;
        }
    }
    return param_1;
}

void PauseMenu_Variant3(void) {
    s32 iVar1;

    iVar1 = gPauseMenuOptions.unk16 + 2;
    if (0x10 < iVar1) {
        gScreen.lcd.displayControl &= 0xf8ff;
        sub_080A4E90(4);
        iVar1 = 0x10;
    }
    gPauseMenuOptions.unk16 = iVar1;
}

void PauseMenu_Variant4(void) {
    u32 t;
    gPauseMenuOptions.unk16 = 0x10;
    gPauseMenuOptions.screen = t = gPauseMenuOptions.screen2;
    sub_080A4DB8(t);
    sub_080A4E90(5);
}

void PauseMenu_Variant5(void) {
    s32 iVar1;

    iVar1 = gPauseMenuOptions.unk16 - 2;
    if (iVar1 < 0) {
        sub_080A4E90(2);
        iVar1 = 0;
    }
    gPauseMenuOptions.unk16 = iVar1;
}

void sub_080A5128(void) {
    int r5, t;
    struct {
        int x;
        int y;
    } p[3];

    switch (gPauseMenuOptions.screen) {
        case PauseMenuScreen_7:
        case PauseMenuScreen_8:
            p[0].x = 0x60;
            p[0].y = 0x18;
            p[1].x = -0x10;
            p[1].y = 0x48;
            p[2].x = 0x100;
            p[2].y = 0x48;
            break;
        case PauseMenuScreen_9:
        case PauseMenuScreen_10:
        case PauseMenuScreen_11:
            return;
        default:
            p[0].x = 0x40;
            p[0].y = 0x10 - (gPauseMenuOptions.unk16 << 1);
            t = (gPauseMenuOptions.unk16 / 3);
            p[1].x = 0x10 - t;
            p[1].y = 0x48;
            p[2].x = 0xe0 + t;
            p[2].y = 0x48;
            break;
    }
    gOamCmd._4 = 0;
    gOamCmd._6 = 0;
    gOamCmd._8 = 0x400;
    gOamCmd.x = p[0].x;
    gOamCmd.y = p[0].y;
#ifdef EU
    r5 = 0x1fa;
#else
    r5 = 0x1fb;
#endif
    DrawDirect(r5, 0);
    gOamCmd.x = p[1].x;
    gOamCmd.y = p[1].y;
    DrawDirect(r5, 1);
    gOamCmd.x = p[2].x;
    gOamCmd.y = p[2].y;
    DrawDirect(r5, 2);
}

void sub_080A51D4(void) {
    u32 i = gPauseMenuOptions.screen;
    if (i < 0xe) {
        gPauseMenuOptions.unk2[i] = gMenu.field_0x3; // TODO cursor?
    }
}

bool32 sub_080A51F4(void) {
    bool32 retval = TRUE;
    if (gFadeControl.active != 0)
        retval = FALSE;
    if (gPauseMenuOptions.unk11 != 2)
        retval = FALSE;
    return retval;
}

typedef struct {
    u8 up;
    u8 down;
    u8 left;
    u8 right;
    u8 type;
    u8 unk0;
    u8 x;
    u8 y;
} ItemMenuTableEntry;

void PauseMenu_ItemMenu(void) {
    static Subtask* const pauseMenu_Types[] = { PauseMenu_ItemMenu_Init, PauseMenu_ItemMenu_Update };

    pauseMenu_Types[gMenu.menuType]();
    PauseMenu_ItemMenu_Draw();
}

void PauseMenu_ItemMenu_Init(void) {
    static const KeyButtonLayout gUnk_08128B50 = {
        0xd0u,
        0x10u,
        0u,
        0xb8u,
        0x10u,
        0u,
        0xffu,
        0xd8u,
        0u,
        {
            0x3u,
            0u,
            0x4u,
            0u,
            0u,
            0u,
            0x1u,
            0u,
            0xffu,
            0u,
            0u,
        },
    };

    u32 uVar1;
    u32 i;
    u32 item;

    gMenu.field_0xc = NULL;
    sub_080A70AC((KeyButtonLayout*)&gUnk_08128B50);
    for (item = ITEM_SMITH_SWORD; item < ITEM_BOTTLE_EMPTY; item++) {
        uVar1 = GetInventoryValue(item);
        if ((uVar1 == 1) && (i = gItemMetaData[item].menuSlot, i <= MENU_SLOT_SAVE_BUTTON_JP)) {
            switch (item) {
                case ITEM_LANTERN_OFF:
                case ITEM_LANTERN_ON:
                    item = gPauseMenuOptions.unk15;
                    break;
                default:
                    break;
            }
            gPauseMenu.items[i] = item;
            sub_080A5F48(item, i * 8 + 0x360);
        }
    }
    SetMenuType(1);
}

const ItemMenuTableEntry gItemMenuTable[] = {
    [MENU_SLOT_SWORD] = { MENU_SLOT_BOTTLE0, MENU_SLOT_SHIELD, MENU_SLOT_BOOMERANG, MENU_SLOT_GUST_JAR, 0x01, 0x0c,
                          0x42, 0x33 },
    [MENU_SLOT_GUST_JAR] = { MENU_SLOT_BOTTLE1, MENU_SLOT_MOLE_MITTS, MENU_SLOT_SWORD, MENU_SLOT_CANE, 0x01, 0x10, 0x66,
                             0x33 },
    [MENU_SLOT_CANE] = { MENU_SLOT_BOTTLE3, MENU_SLOT_LANTERN, MENU_SLOT_GUST_JAR, MENU_SLOT_BOOMERANG, 0x01, 0x14,
                         0x8a, 0x33 },
    [MENU_SLOT_BOOMERANG] = { MENU_SLOT_SAVE_BUTTON, MENU_SLOT_BOMBS, MENU_SLOT_CANE, MENU_SLOT_SWORD, 0x01, 0x15, 0xae,
                              0x33 },
    [MENU_SLOT_SHIELD] = { MENU_SLOT_SWORD, MENU_SLOT_PEGASUS_BOOTS, MENU_SLOT_BOMBS, MENU_SLOT_MOLE_MITTS, 0x01, 0x16,
                           0x42, 0x4b },
    [MENU_SLOT_MOLE_MITTS] = { MENU_SLOT_GUST_JAR, MENU_SLOT_ROCS_CAPE, MENU_SLOT_SHIELD, MENU_SLOT_LANTERN, 0x01, 0x17,
                               0x66, 0x4b },
    [MENU_SLOT_LANTERN] = { MENU_SLOT_CANE, MENU_SLOT_OCARINA, MENU_SLOT_MOLE_MITTS, MENU_SLOT_BOMBS, 0x01, 0x00, 0x8a,
                            0x4b },
    [MENU_SLOT_BOMBS] = { MENU_SLOT_BOOMERANG, MENU_SLOT_BOW, MENU_SLOT_LANTERN, MENU_SLOT_SHIELD, 0x01, 0x00, 0xae,
                          0x4b },
    [MENU_SLOT_PEGASUS_BOOTS] = { MENU_SLOT_SHIELD, MENU_SLOT_BOTTLE0, MENU_SLOT_BOW, MENU_SLOT_ROCS_CAPE, 0x01, 0x00,
                                  0x42, 0x63 },
    [MENU_SLOT_ROCS_CAPE] = { MENU_SLOT_MOLE_MITTS, MENU_SLOT_BOTTLE1, MENU_SLOT_PEGASUS_BOOTS, MENU_SLOT_OCARINA, 0x01,
                              0x00, 0x66, 0x63 },
    [MENU_SLOT_OCARINA] = { MENU_SLOT_LANTERN, MENU_SLOT_BOTTLE3, MENU_SLOT_ROCS_CAPE, MENU_SLOT_BOW, 0x01, 0x00, 0x8a,
                            0x63 },
    [MENU_SLOT_BOW] = { MENU_SLOT_BOMBS, MENU_SLOT_SAVE_BUTTON, MENU_SLOT_OCARINA, MENU_SLOT_PEGASUS_BOOTS, 0x01, 0x00,
                        0xae, 0x63 },
    [MENU_SLOT_BOTTLE0] = { MENU_SLOT_PEGASUS_BOOTS, MENU_SLOT_SWORD, MENU_SLOT_SAVE_BUTTON, MENU_SLOT_BOTTLE1, 0x01,
                            0x00, 0x42, 0x7b },
    [MENU_SLOT_BOTTLE1] = { MENU_SLOT_ROCS_CAPE, MENU_SLOT_GUST_JAR, MENU_SLOT_BOTTLE0, MENU_SLOT_BOTTLE2, 0x01, 0x00,
                            0x5a, 0x7b },
    [MENU_SLOT_BOTTLE2] = { MENU_SLOT_ROCS_CAPE, MENU_SLOT_GUST_JAR, MENU_SLOT_BOTTLE1, MENU_SLOT_BOTTLE3, 0x01, 0x00,
                            0x72, 0x7b },
    [MENU_SLOT_BOTTLE3] = { MENU_SLOT_OCARINA, MENU_SLOT_CANE, MENU_SLOT_BOTTLE2, MENU_SLOT_SAVE_BUTTON, 0x01, 0x00,
                            0x8a, 0x7b },
    [MENU_SLOT_SAVE_BUTTON] = { MENU_SLOT_BOW, MENU_SLOT_BOOMERANG, MENU_SLOT_BOTTLE3, MENU_SLOT_BOTTLE0, 0x03, 0x00,
                                0xb5, 0x75 },
    [MENU_SLOT_SAVE_BUTTON_JP] = { MENU_SLOT_BOW, MENU_SLOT_BOOMERANG, MENU_SLOT_BOTTLE3, MENU_SLOT_BOTTLE0, 0x05, 0x00,
                                   0xb5, 0x75 },
};

void PauseMenu_ItemMenu_Update(void) {
    static const u8 gUnk_08128BF4[] = { 14, 15, 2, 0 };
    u32 item;
    u32 menuSlot;
    const ItemMenuTableEntry* entry;

    if (sub_080A51F4()) {
        gMenu.field_0xc = (u8*)gUnk_08128BF4;
        menuSlot = gMenu.field_0x3;

        entry = &gItemMenuTable[menuSlot];
        switch (gInput.newKeys) {
            case A_BUTTON:
                if (menuSlot == MENU_SLOT_SAVE_BUTTON) {
#if defined(DEMO_USA) || defined(DEMO_JP)
                    SoundReq(SFX_MENU_ERROR);
#else
                    sub_080A4E84(0xb);
                    SoundReq(SFX_TEXTBOX_SELECT);
#endif
                    break;
                }
            case B_BUTTON:
                if (gPauseMenu.items[menuSlot] != 0) {
                    u32 slot = !!(gInput.newKeys ^ A_BUTTON);
                    ForceEquipItem(gPauseMenu.items[menuSlot], slot);
                    SoundReq(SFX_TEXTBOX_SELECT);
                }
                break;
            default:
                switch (gInput.menuScrollKeys) {
                    case DPAD_UP:
                        menuSlot = entry->up;
                        break;
                    case DPAD_DOWN:
                        menuSlot = entry->down;
                        break;
                    case DPAD_LEFT:
                        menuSlot = entry->left;
                        break;
                    case DPAD_RIGHT:
                        menuSlot = entry->right;
                        break;
                }
                break;
        }
        if (gMenu.field_0x3 != menuSlot) {
            gMenu.field_0x3 = menuSlot;
            SoundReq(SFX_TEXTBOX_CHOICE);
        }
        item = gPauseMenu.items[menuSlot];
        switch (menuSlot) {
            case MENU_SLOT_BOTTLE0:
            case MENU_SLOT_BOTTLE1:
            case MENU_SLOT_BOTTLE2:
            case MENU_SLOT_BOTTLE3:
                if (item != 0) {
                    item = gSave.stats.bottles[item - ITEM_BOTTLE1];
                }
                break;
            case MENU_SLOT_SAVE_BUTTON:
                // ITEM_SKILL_FAST_SPIN, but that does not make any sense at all
                // it is just a text index for the text in the message box for the save button
                item = 0x73;
                break;
            default:
                break;
        }
        sub_080A6F6C(TEXT_INDEX(TEXT_ITEMS, 0) + item);
    }
}

u32 GetMenuSlotForItem(u32 item);

extern Frame* gSpriteAnimations_322[];

#ifdef EU
#define sub_080A5384_draw_constant0 0x1fa
#define sub_080A5384_draw_constant1 0x141
#else
#define sub_080A5384_draw_constant0 0x1fb
#define sub_080A5384_draw_constant1 0x142
#endif
void PauseMenu_ItemMenu_Draw(void) {
    u32 tmp;
    u32 i;
    s32 color;
    const ItemMenuTableEntry* entry;

    gOamCmd._4 = 0x400;
    gOamCmd._6 = 0;
    gOamCmd._8 = 0;
    for (i = 0; i < MENU_SLOT_COUNT; i++) {
        u32 item;
        if (gPauseMenu.items[i] != 0) {
            entry = &gItemMenuTable[i];
            gOamCmd.x = entry->x;
            gOamCmd.y = entry->y;
            item = gPauseMenu.items[i];
            switch (item) {
                case ITEM_BOTTLE1:
                case ITEM_BOTTLE2:
                case ITEM_BOTTLE3:
                case ITEM_BOTTLE4:
                    item = gSave.stats.bottles[item - ITEM_BOTTLE1];
                    break;
                default:
                    break;
            }
            color = 3;
            switch (item) {
                case ITEM_BOMBS:
                case ITEM_REMOTE_BOMBS:
                    if (gBombBagSizes[gSave.stats.bombBagType] <= gSave.stats.bombCount) {
                        color = 4;
                    }
                    break;
                case ITEM_BOW:
                case ITEM_LIGHT_ARROW:
                    if (gQuiverSizes[gSave.stats.quiverType] <= gSave.stats.arrowCount) {
                        color = 4;
                    }
                    break;
                default:
                    break;
            }
            gOamCmd._8 = 0x800 | color << 0xc | ((i * 8) + 0x360);
            DrawDirect(sub_080A5384_draw_constant1, gSpriteAnimations_322[item]->index);
        }
    }
    gOamCmd._8 = 0x800;
    {
        u32 slot = gMenu.field_0x3;
        if ((slot == MENU_SLOT_SAVE_BUTTON) && (gSaveHeader->language != 0)) {
            slot = MENU_SLOT_SAVE_BUTTON_JP;
        }
        entry = &gItemMenuTable[slot];
        gOamCmd.x = entry->x;
        gOamCmd.y = entry->y;
        tmp = entry->type + ((gMain.ticks & 0x10) != 0 ? 3 : 4);
        DrawDirect(sub_080A5384_draw_constant0, tmp);
    }
    {
        u32 slot;
        if (gSaveHeader->language != 0) {
            slot = MENU_SLOT_SAVE_BUTTON;
        } else {
            slot = MENU_SLOT_SAVE_BUTTON_JP;
        }
        entry = &gItemMenuTable[slot];
        gOamCmd.x = entry->x;
        gOamCmd.y = entry->y;
        gOamCmd._8 = 0x800;
        DrawDirect(sub_080A5384_draw_constant0, 0x22);
    }
    i = GetMenuSlotForItem(gSave.stats.equipped[SLOT_A]);
    if (i < MENU_SLOT_COUNT) {
        entry = &gItemMenuTable[i];
        gOamCmd.x = entry->x;
        gOamCmd.y = entry->y;
        DrawDirect(sub_080A5384_draw_constant0, 3);
    }
    i = GetMenuSlotForItem(gSave.stats.equipped[SLOT_B]);
    if (i < MENU_SLOT_COUNT) {
        entry = &gItemMenuTable[i];
        gOamCmd.x = entry->x;
        gOamCmd.y = entry->y;
        DrawDirect(sub_080A5384_draw_constant0, 3);
    }
}

u32 GetMenuSlotForItem(u32 item) {
    u32 i;

    if (item != 0) {
        for (i = 0; i < MENU_SLOT_COUNT; i++) {
            if (item == gPauseMenu.items[i])
                return i;
        }
    }
    return MENU_SLOT_SAVE_BUTTON_JP;
}

Subtask sub_080A5594;
Subtask sub_080A56A0;
void PauseMenu2(void) {
    static Subtask* const pauseMenu2_Types[] = {
        sub_080A5594,
        sub_080A56A0,
    };
    pauseMenu2_Types[gMenu.menuType]();
    sub_080A57F4();
}

//// TODO Moved here from subtask2.c
// Probably could split the different screens of the pause menu.
#include "fileselect.h"
#include "flags.h"

extern u8 gUnk_08128C00[];
extern u16 gUnk_02017830[];
extern u8 gUnk_08128D38[];
extern u8 gUnk_08128D43[];
extern u16* gMoreSpritePtrs[];
extern u32 gUnk_085C4620[];
extern void (*const gUnk_08128D58[])(void);
extern KeyButtonLayout gUnk_08128D60;

void DrawDungeonMapActually();
void sub_080A5CFC(u32, void*, u32);
void DrawDungeonFeatures(u32, void*, u32);
extern void DrawDungeonMap(u32 floor, struct_02019EE0* data, u32 size);
extern void LoadDungeonMap(void);
bool32 sub_080A5F24(void);
extern void sub_080A42E0(u32, u32);
extern void (*const gUnk_08128DB0[])(void);
void sub_080A617C(void);
void sub_080A7040(u32);

extern u8 gUnk_08128DB8[];
extern KeyButtonLayout gUnk_08128DBC;

extern void (*const gUnk_08128DCC[])(void);
void sub_080A6378(void);
void sub_080A6438();

typedef struct {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 unk4;
    u8 unk5;
    u8 unk6;
    u8 unk7;
} struct_gUnk_08128C14;
extern struct_gUnk_08128C14 gUnk_08128C14[];
extern struct_gUnk_08128C14 gUnk_08128C94[];

typedef struct {
    u8 unk00 : 5;
    u8 unk05 : 5;
    u8 unk10 : 6;
} PACKED gUnk_08128DE8_struct_2;

typedef struct {
    gUnk_08128DE8_struct_2 unk0;
    gUnk_08128DE8_struct_2 unk2;
    u8 unk4;
    u8 unk5;
    u8 unk6;
    u8 unk7;
} gUnk_08128DE8_struct;
extern gUnk_08128DE8_struct gUnk_08128DE8[];

void sub_080A5594(void) {
    extern KeyButtonLayout gUnk_08128C04;
    int iVar1;
    u32 uVar2;
    u32 skillCount;
    u32 item;
    int iVar5;
    u32 i;
    u32 uVar7;

    gMenu.field_0xc = gUnk_08128C00;
    sub_080A70AC(&gUnk_08128C04);
    uVar7 = 6;

    for (item = ITEM_QST_SWORD; item <= ITEM_FLIPPERS; item++) {
        if (GetInventoryValue(item) == 1) {
            uVar2 = gItemMetaData[item].menuSlot;
            if (uVar2 == 3 && gGenericMenu.unk10.a[3] != 0) {
                uVar2 = 99;
            }
            if (uVar2 != 99) {
                if (uVar2 == 1) {
                    uVar2 = uVar7;
                    if (uVar2 < 8) {
                        uVar7 = uVar2 + 1;
                    }
                }
                gGenericMenu.unk10.a[uVar2] = item;
                sub_080A5F48(item, uVar2 * 8 + 0x380);
            }
        }
    }
    if (GetInventoryValue(ITEM_QST_TINGLE_TROPHY) == 0) {
        iVar5 = 0;
        if (GetInventoryValue(ITEM_KINSTONE_BAG) != 0) {
            for (i = 0; i < 0x13; i++) {
                iVar5 += gSave.kinstones.amounts[i];
            }

            if (iVar5 >= 0x50) {
                iVar5 = 4;
            } else if (iVar5 >= 0x28) {
                iVar5 = 3;
            } else if (iVar5 >= 10) {
                iVar5 = 2;
            } else {
                iVar5 = 1;
            }
        }
        gGenericMenu.unk10.a[0] = iVar5;
    }
    gGenericMenu.unk10.a[1] = gSave.stats.heartPieces + 1;
    skillCount = 0;

    for (i = ITEM_SKILL_SPIN_ATTACK; i <= ITEM_SKILL_PERIL_BEAM; i++) {
        if (GetInventoryValue(i) != 0) {
            skillCount++;
        }
    }
    gGenericMenu.unk10.a[2] = skillCount;
    if (GetInventoryValue(ITEM_QST_CARLOV_MEDAL) == 0 && GetInventoryValue(ITEM_SHELLS) != 0) {
        gGenericMenu.unk10.a[3] = ITEM_SHELLS;
    }
    gGenericMenu.unk14 = 1;
    gGenericMenu.unk15 = 1;
    SetMenuType(1);
}

void sub_080A56A0(void) {
    int iVar1;
    u32 uVar2;
    u32 item;
    struct_gUnk_08128C14* ptr;

    if (!sub_080A51F4()) {
        return;
    }
    gMenu.field_0xc = gUnk_08128C00;
    ptr = &gUnk_08128C14[gMenu.field_0x3];
    uVar2 = 0xff;
    switch (gInput.menuScrollKeys) {
        case DPAD_UP:
            uVar2 = ptr->unk0;
            break;
        case DPAD_DOWN:
            uVar2 = ptr->unk1;
            break;
        case DPAD_LEFT:
            uVar2 = ptr->unk2;
            break;
        case DPAD_RIGHT:
            uVar2 = ptr->unk3;
            break;
    }

    if (uVar2 != 0xff) {
        gMenu.field_0x3 = uVar2;
        SoundReq(SFX_TEXTBOX_CHOICE);
    } else if (gInput.newKeys == A_BUTTON) {
        uVar2 = gMenu.field_0x3;
        iVar1 = 0;
        switch (uVar2) {
            case 0:
            case 2:
                if (gGenericMenu.unk10.a[uVar2] != 0) {
                    iVar1 = 8;
                    if (uVar2 == 0) {
                        iVar1 = 7;
                    }
                }
                break;
#if !defined(DEMO_USA) && !defined(DEMO_JP)
            case 4:
                iVar1 = 9;
                break;
            case 5:
                iVar1 = 10;
                break;
#else
            case 4:
                SoundReq(SFX_MENU_ERROR);
                break;
            case 5:
                SoundReq(SFX_MENU_ERROR);
                break;
#endif
        }
        if (iVar1 != 0) {
            sub_080A4E84(iVar1);
            SoundReq(SFX_TEXTBOX_SELECT);
        }
    }
    switch (gMenu.field_0x3) {
        case 0:
        case 2:
            if (gGenericMenu.unk10.a[gMenu.field_0x3] != 0) {
                gHUD.buttonY[0] = 0x10;
            } else {
                gHUD.buttonY[0] = 0xfff0;
            }
            break;
        default:
            gHUD.buttonY[0] = 0xfff0;
            break;
    }

    uVar2 = gMenu.field_0x3;
    item = gGenericMenu.unk10.a[uVar2];
    if (item != 0) {
        switch (uVar2) {
            case 0:
                if (item != 0x3d) {
                    item = 0x67;
                }
                break;
            case 1:
                item = 99;
                break;
            case 2:
                item = 0x70;
                break;
            case 4:
                item = 0x74;
                break;
            case 5:
                item = 0x73;
        }
    }
    sub_080A6F6C(TEXT_INDEX(TEXT_ITEMS, 0) + item);
}

void sub_080A57F4(void) {
    u32 bVar1;
    u32 spriteIndex;
    int frameIndex;
    u32 uVar5;
    struct_gUnk_08128C14* pbVar6;
    u32 index;
    int shells;
    struct_gUnk_08128C14* puVar8;
    struct_gUnk_08128C14* puVar10;

    gOamCmd._4 = 0x400;
    gOamCmd._6 = 0;
    if (gSaveHeader->language == 0) {
        puVar8 = gUnk_08128C14;
    } else {
        puVar8 = gUnk_08128C94;
    }
    puVar10 = &puVar8[gMenu.field_0x3];
    gOamCmd._8 = 0x800;
    gOamCmd.x = puVar10->unk6;
    gOamCmd.y = puVar10->unk7;
    frameIndex = puVar10->unk4 + 9;
    if ((gMain.ticks & 0x10) == 0) {
        frameIndex += 2;
    } else {
        frameIndex++;
    }
    DrawDirect(DRAW_DIRECT_SPRITE_INDEX, frameIndex);

    for (index = 0, pbVar6 = (struct_gUnk_08128C14*)((u8*)puVar8 + 5); index < 0x10; pbVar6++, index++) {
        uVar5 = gGenericMenu.unk10.a[index];
        if (uVar5 != 0) {
            puVar10 = &puVar8[index];
            gOamCmd.x = pbVar6->unk1;
            bVar1 = pbVar6->unk2;
            gOamCmd.y = bVar1;
            gOamCmd._8 = 0xe800;
            if (uVar5 < 0x34) {
                if (index == 2) {
                    uVar5 = pbVar6->unk0 + 10;
                    spriteIndex = DRAW_DIRECT_SPRITE_INDEX;
                } else {
                    uVar5 = gGenericMenu.unk10.a[index] + 9;
                    uVar5 += puVar10->unk5;
                    spriteIndex = DRAW_DIRECT_SPRITE_INDEX;
                }
            } else {
                gOamCmd._8 = index * 8 + 0xeb80;
                switch (uVar5) {
                    case 0x3e:
                        gOamCmd.y = bVar1 + 8;
                        break;
                    case 0x3d:
                        gOamCmd.y = bVar1 + 0xd;
                        break;
                }

                uVar5 = gSpriteAnimations_322[uVar5]->index;
#ifdef EU
                spriteIndex = 0x141;
#else
                spriteIndex = 0x142;
#endif
            }
            DrawDirect(spriteIndex, uVar5);
        }
    }

    if (gGenericMenu.unk10.a[2] != 0) {
        gOamCmd._8 = gGenericMenu.unk10.a[2] + 0x800;
        puVar10 = puVar8 + 2;
        gOamCmd.x = puVar10->unk6 + 9;
        gOamCmd.y = puVar10->unk7 + 7;
        DrawDirect(0, 1);
    }

    if (gGenericMenu.unk10.a[3] == 0x3f) {
        puVar10 = puVar8 + 3;
        gOamCmd.x = puVar10->unk6 + 8;
        gOamCmd.y = puVar10->unk7 + 8;
        shells = gSave.stats.shells;

        for (index = 0; index < 3; index++) {
            gOamCmd._8 = shells % 10 + 0x800;
            DrawDirect(0, 1);
            shells /= 10;
            gOamCmd.x -= 8;
        }
    }
}

void PauseMenu_Screen_10(void) {
    extern void (*const gUnk_08128D14[])(void);
    gUnk_08128D14[gMenu.menuType]();
}

void sub_080A59AC(void) {
    gMenu.field_0x3 = 0;
    SetPopupState(0, 0);
    SetMenuType(1);
}

void sub_080A59C8(void) {
    u32 cursor_position;
    u32 select_option;

    if (!sub_080A51F4()) {
        return;
    }
    cursor_position = gMenu.field_0x3;
    select_option = FALSE;

    switch (gInput.newKeys) {
        case DPAD_UP:
            cursor_position = 0;
            break;
        case B_BUTTON:
            if (gMenu.field_0x3 == 0) {
                cursor_position = 1;
            } else {
                select_option = TRUE;
            }
            break;
        case DPAD_DOWN:
            cursor_position = 1;
            break;
        case A_BUTTON:
            select_option = TRUE;
            break;
    }

    if (select_option) {
        gMenu.transitionTimer = 255;
        if (cursor_position == 0) {
            CreateDialogBox(8, 0);
            SetMenuType(2);
            SoundReq(SFX_TEXTBOX_SELECT);
        } else {
            SetMenuType(3);
            SoundReq(SFX_MENU_CANCEL);
        }
    } else if (gMenu.field_0x3 != cursor_position) {
        gMenu.field_0x3 = cursor_position;
        SetPopupState(0, cursor_position);
        SoundReq(SFX_TEXTBOX_CHOICE);
    }
}

void sub_080A5A54(void) {
    switch (HandleSave(0)) {
        case SAVE_ERROR:
            CreateDialogBox(9, 0);
            gMenu.transitionTimer = 60;
            // fallthrough
        case SAVE_OK:
            SetMenuType(3);
            break;
        case SAVE_BUSY:
            break;
    }
}

void sub_080A5A90(void) {
    u32 uVar1;

    switch (gMenu.transitionTimer) {
        case 0:
            if ((gInput.newKeys & (START_BUTTON | B_BUTTON | A_BUTTON)) != 0) {
                gMenu.transitionTimer = 255;
            }
            break;
        case 0xff:
            if (gPauseMenuOptions.screen == 10) {
                uVar1 = 2;
            } else {
                uVar1 = 1;
            }
            sub_080A4E84(uVar1);
            break;
        default:
            gMenu.transitionTimer--;
            break;
    }
}

void PauseMenu_Screen_9() {
    extern void (*const gUnk_08128D24[])(void);
    gUnk_08128D24[gMenu.menuType]();
}

void sub_080A5AF4(void) {
    gMenu.field_0x3 = 0;
    SetPopupState(2, 0);
#ifndef EU
    if (gSaveHeader->language == 0) {
        gScreen.bg1.yOffset = -4;
    } else {
        gScreen.bg1.yOffset = 0;
    }
#endif
    SetMenuType(1);
}

void sub_080A5B34(void) {
    bool32 bVar1;
    u32 uVar3;

    if (!sub_080A51F4()) {
        return;
    }
    uVar3 = gMenu.field_0x3;
    bVar1 = FALSE;
    switch (gInput.newKeys) {
        case DPAD_LEFT:
            uVar3 = 0;
            break;
        case B_BUTTON:
            if (gMenu.field_0x3 != 0) {
                bVar1 = TRUE;
            } else {
                uVar3 = 1;
            }
            break;
        case DPAD_RIGHT:
            uVar3 = 1;
            break;
        case A_BUTTON:
            bVar1 = TRUE;
            break;
    }
    if (gMenu.field_0x3 != uVar3) {
        gMenu.field_0x3 = uVar3;
        SetPopupState(2, uVar3);
        SoundReq(SFX_TEXTBOX_CHOICE);
    }
    if (bVar1) {
        if (uVar3 == 0) {
            SetFade(FADE_IN_OUT | FADE_BLACK_WHITE | FADE_INSTANT, 0x20);
            gMenu.transitionTimer = 60;
            SetMenuType(2);
        } else {
            SoundReq(SFX_MENU_CANCEL);
            sub_080A4E84(2);
        }
    }
}

void sub_080A5BB8(void) {
    Main* m;
    if (!gFadeControl.active) {
        sub_08050384();
        m = &gMain;
        *(vu8*)&m->sleepStatus; // force a read
        m->sleepStatus = SLEEP;
        SetFade(FADE_BLACK_WHITE | FADE_INSTANT, 8);
        sub_080A4E84(2);
        gPauseMenuOptions.unk16 = 16;
    }
}

void PauseMenu_Screen_5(void) {
    extern void (*const gUnk_08128D30[])(void);
    u32 paletteColor;
    u32 ticks;

    gUnk_08128D30[gMenu.menuType]();
    DrawDungeonMapActually();
    ticks = gMain.ticks;
    // TODO gUnk_02017830 is gPaletteBuffer[200]
    if ((ticks & 7) == 0) {
        // Rotate these 8 palette colors.
        paletteColor = *gUnk_02017830;
        MemCopy(gUnk_02017830 + 1, gUnk_02017830, 7 * 2);
        gUnk_02017830[7] = paletteColor;
        gUsedPalettes |= 1 << 12;
    }
}

void sub_080A5C44(u32 param_1, u32 param_2, u32 param_3) {
    s8* ptr;
    gMenu.field_0xc = gUnk_08128D38;
    sub_080A5CFC(gMenu.field_0x3, &gMenu, param_3);
    LoadGfxGroup(0x81);
    ShowAreaName(gArea.dungeon_idx, 1);
    SetMenuType(1);
    ptr = &gUnk_08128D43[(u32)gArea.dungeon_idx * 2];
    gScreen.bg1.xOffset += ptr[0];
    gScreen.bg1.yOffset += ptr[0];
}

void sub_080A5C9C(void) {
    s32 newChoice;
    const DungeonFloorMetadata* floorMetadata;

    if (sub_080A51F4()) {
        floorMetadata = &gDungeonFloorMetadatas[gArea.dungeon_idx];
        newChoice = gMenu.field_0x3;
        switch (gInput.newKeys) {
            case DPAD_UP:
                if (newChoice > 0) {
                    newChoice--;
                }
                break;
            case DPAD_DOWN:
                if (floorMetadata->numFloors - 1 > newChoice) {
                    newChoice++;
                }
                break;
        }
        if (gMenu.field_0x3 != newChoice) {
            gMenu.field_0x3 = newChoice;
            sub_080A5CFC(newChoice, &gMenu, newChoice);
            SoundReq(SFX_TEXTBOX_CHOICE);
        }
    }
}

void sub_080A5CFC(u32 menuType, void* param_2, u32 param_3) {
    DrawDungeonFeatures(menuType, param_2, param_3);
    LoadDungeonMap();
    DrawDungeonMap(menuType, &gMapDataBottomSpecial, 0x400);
}

#ifdef EU
#define SUB_080A5D1C_SPRITE_INDEX 0x143
#else
#define SUB_080A5D1C_SPRITE_INDEX 0x144
#endif

// Actually draw the sprites for the dungeon map.
void DrawDungeonMapActually(void) {
    extern u8 gUnk_08128D3C[];
    u32 bVar1;
    int frameIndex;
    u32 uVar4;
    u32 uVar6;
    u32 index;
    u8* puVar8;
    const DungeonFloorMetadata* pbVar9;

    pbVar9 = &gDungeonFloorMetadatas[gArea.dungeon_idx];
    bVar1 = gUnk_08128D3C[pbVar9->numFloors];
    uVar4 = sub_0801DB94();
    gOamCmd._4 = 0x400;
    gOamCmd._6 = 0;
    gOamCmd._8 = 0;
    gOamCmd.x = 0x34;
    gOamCmd.y = bVar1 + gMenu.field_0x3 * 0xc;
    DrawDirect(DRAW_DIRECT_SPRITE_INDEX, (gMain.ticks & 0x10) == 0 ? 0x75 : 0x74);
    gOamCmd.x = 0x20;
    gOamCmd.y = bVar1 + uVar4 * 0xc;
    DrawDirect(DRAW_DIRECT_SPRITE_INDEX, (gMain.ticks & 0x20) != 0 ? 0x78 : 0x79);
    gOamCmd.y = 0x7e;
    gOamCmd._8 = 0x4380;
    if (HasDungeonMap()) {
        gOamCmd.x = 0x18;
        frameIndex = gSpriteAnimations_322[0x50]->index;
        DrawDirect(SUB_080A5D1C_SPRITE_INDEX, frameIndex);
    }
    if (HasDungeonBigKey()) {
        gOamCmd.x = 0x2e;
        frameIndex = gSpriteAnimations_322[0x52]->index;
        DrawDirect(SUB_080A5D1C_SPRITE_INDEX, frameIndex);
    }
    if (HasDungeonCompass()) {
        gOamCmd.x = 0x45;
        gOamCmd._8 = 0x380;
        frameIndex = gSpriteAnimations_322[0x51]->index;
        DrawDirect(SUB_080A5D1C_SPRITE_INDEX, frameIndex);
        if (sub_080A5F24()) {
            gOamCmd._8 = 0;
            gOamCmd.x = 0x46;
            gOamCmd.y = bVar1 + (pbVar9->highestFloor - pbVar9->unk_2) * 0xc;
            if ((gMain.ticks & 0x20) != 0) {
                uVar6 = 0x7a;
            } else {
                uVar6 = 0x7b;
            }
            DrawDirect(DRAW_DIRECT_SPRITE_INDEX, uVar6);
        }
    }
    gOamCmd._8 = 0;
    gOamCmd.x = 0x34;
    gOamCmd.y = bVar1;
    frameIndex = pbVar9->highestFloor + 0x82;

    // Floor number sprites?
    for (index = 0; index < pbVar9->numFloors; index++) {
        DrawDirect(DRAW_DIRECT_SPRITE_INDEX, frameIndex);
        frameIndex--;
        gOamCmd.y = gOamCmd.y + 0xc;
    }

    puVar8 = (u8*)&gMapDataBottomSpecial;
    while (*puVar8 != 0) {
        switch (*puVar8) {
            case 1:
                frameIndex = 0x7d;
                if (uVar4 != gMenu.field_0x3) {
                    frameIndex = 0x7e;
                }
                break;
            case 2:
                frameIndex = 0x80;
                break;
            case 3:
                frameIndex = 0x81;
                break;
            case 4:
                if (sub_080A5F24()) {
                    frameIndex = 0x7f;
                    break;
                }
            default:
                frameIndex = 0xff;
                break;
        }

        gOamCmd.x = puVar8[1] + 0x50 - gScreen.bg1.xOffset;
        gOamCmd.y = puVar8[2] + 0x10 - gScreen.bg1.yOffset;
        DrawDirect(DRAW_DIRECT_SPRITE_INDEX, frameIndex);
        puVar8 += 3;
    }
}

bool32 sub_080A5F24(void) {
    bool32 result = TRUE;
    if ((gArea.dungeon_idx == 6) && CheckLocalFlagByBank(FLAG_BANK_10, 0x7b)) {
        result = 0;
    }
    return result;
}

void sub_080A5F48(Item item, u32 offset) {
    s32 ammoCount;
    s32 onesDigit;
    s32 tensDigit;
    void* dest;
    u16* temp2;
    u32 index;
    union SplitDWord divRem;

    switch (item) {
        case ITEM_BOTTLE1:
        case ITEM_BOTTLE2:
        case ITEM_BOTTLE3:
        case ITEM_BOTTLE4:
            item = gSave.stats.bottles[item - ITEM_BOTTLE1];
    }

    dest = OBJ_VRAM0 + (offset * 0x20);
    index = gSpriteAnimations_322[item]->index;
    temp2 = &gMoreSpritePtrs[1][index * 2];
    DmaCopy32(3, &gMoreSpritePtrs[2][temp2[1] * 0x10], dest, 0x40 * 4);

    ammoCount = -1;
    switch (item) {
        case 7:
        case 8:
            ammoCount = gSave.stats.bombCount;
            break;
        case 9:
        case 10:
            ammoCount = gSave.stats.arrowCount;
            break;
    }

    if (ammoCount < 0)
        return;

    divRem = DivAndMod(ammoCount, 10);
    onesDigit = divRem.HALF.HI;
    tensDigit = divRem.HALF.LO;

    if (tensDigit >= 10)
        tensDigit = 9;

    DmaCopy32(3, gUnk_085C4620 + tensDigit * 0x8, dest, 0x8 * 4);
    DmaCopy32(3, gUnk_085C4620 + (onesDigit + 10) * 0x8, dest + 0x20, 0x8 * 4);
}

void PauseMenu_Screen_7(void) {
    gUnk_08128D58[gMenu.menuType]();
}

void sub_080A6024(void) {
    sub_080A70AC((KeyButtonLayout*)&gUnk_08128D60);
    AddKinstoneToBag(KINSTONE_NONE);
    sub_080A4398();
    SetMenuType(1);
}

void sub_080A6044(void) {
    extern u8 gUnk_08128D51[];
    u32 uVar1;
    u32 uVar2;
    u32 uVar4;
    u32 uVar3;

    if (sub_080A51F4() != 0) {
        gMenu.field_0xc = gUnk_08128D51;
        gOamCmd._4 = 0;
        gOamCmd._6 = 0;
        uVar4 = 0;
        uVar2 = 0;
        uVar1 = gSave.kinstones.types[0];
        while (uVar1 != 0) {
            gOamCmd.x = (uVar4 & 3) * 0x30 + 0x2b;
            gOamCmd.y = (uVar4 >> 2) * 0x24 + 0x34;
            uVar3 = gSave.kinstones.amounts[uVar2];
            gMenu.column_idx = 0;
            sub_080A42E0(uVar1, uVar3);
            uVar4++;
            if (10 < uVar4) {
                return;
            }
            uVar2++;
            if (0x11 < uVar2) {
                return;
            }
            uVar1 = gSave.kinstones.types[uVar2];
        }
    }
}

void PauseMenu_Screen_8(void) {
    gUnk_08128DB0[gMenu.menuType]();
    sub_080A617C();
    sub_080A7040(gMenu.field_0x3);
}

void sub_080A6108(void) {
    gMenu.field_0xc = (u8*)gUnk_08128DB8;
    sub_080A70AC((KeyButtonLayout*)&gUnk_08128DBC);
    SetMenuType(1);
}

void sub_080A612C(void) {
    u32 newChoice;
    int iVar3;

    if (sub_080A51F4()) {
        newChoice = gMenu.field_0x3;
        switch (gInput.newKeys) {
            case DPAD_LEFT:
                newChoice--;
                break;
            case DPAD_RIGHT:
                newChoice++;
                break;
        }
        iVar3 = newChoice + 8;
        newChoice = iVar3 / 8;
        newChoice = iVar3 - newChoice * 8;
        if (gMenu.field_0x3 != newChoice) {
            gMenu.field_0x3 = newChoice;
            SoundReq(SFX_TEXTBOX_CHOICE);
        }
    }
}

void sub_080A617C(void) {
    u32 frameIndex;
    u32 i;
    const struct_gUnk_08128D70* ptr;

    gOamCmd._4 = 0;
    gOamCmd._6 = 0;
    gOamCmd._8 = 0xc00;
    gOamCmd.y = 0x2f;
    gOamCmd.x = gMenu.field_0x3 * 0x1b + 0x1a;
    if ((gMain.ticks & 0x20) != 0) {
        frameIndex = 8;
    } else {
        frameIndex = 9;
    }
    DrawDirect(DRAW_DIRECT_SPRITE_INDEX + 1, frameIndex);
    ptr = &gUnk_08128D70[gMenu.field_0x3];
    if (GetInventoryValue(ptr->item) != 0) {
        gOamCmd._8 = 0xc00;
        gOamCmd.x = 0xcc;
        gOamCmd.y = 0x88;
        DrawDirect(DRAW_DIRECT_SPRITE_INDEX + 1, 0xb);
        gOamCmd.x = 0x30;
        gOamCmd.y = 0x6c;
        gOamCmd._8 = ptr->unk1 << 0xc | 0xd80;
        DrawDirect(DRAW_DIRECT_SPRITE_INDEX + 1, ptr->frameIndex);
        gOamCmd._8 = ptr->unk1 << 0xc | 0xc00;
        gOamCmd.x = 0x78;
        gOamCmd.y = 0x68;
        DrawDirect(DRAW_DIRECT_SPRITE_INDEX + 1, 0xc);
    }
    gOamCmd.y = 0x2f;

    for (i = 0; i < 8; i++) {
        ptr = &gUnk_08128D70[i];
        if (GetInventoryValue(ptr->item) != 0) {
            gOamCmd._8 = ptr->unk1 << 0xc | 0xc00;
            gOamCmd.x = 0x18 + 0x1b * i;
            DrawDirect(DRAW_DIRECT_SPRITE_INDEX + 1, 10);
        }
    }
}

void PauseMenu_Screen_4(void) {
    gUnk_08128DCC[gMenu.menuType]();
    sub_080A6378();
}

extern u8 gUnk_08128DD8[];
extern u8 gUnk_08128DD4[];

void sub_080A6290(void) {
    sub_080A70AC((KeyButtonLayout*)gUnk_08128DD8);
    gMenu.field_0xc = gUnk_08128DD4;
    LoadGfxGroup(0x81);
    gScreen.bg1.yOffset = -4;
    gScreen.bg2.yOffset = -4;
    gSave.windcrests = gSave.windcrests | 0x10780;
    gGenericMenu.unk10.h[0] = sub_080A6F40();
    gMenu.menuType = 1;
}

void sub_080A62E0(void) {
    u32 uVar1;
    int windcrest;
    gUnk_08128DE8_struct* ptr;

    if (!sub_080A51F4()) {
        return;
    }
    ptr = &gUnk_08128DE8[gMenu.field_0x3];
    windcrest = -1;

    switch (gInput.newKeys) {
        case A_BUTTON:
            if (IS_BIT_SET(gSave.windcrests, gMenu.field_0x3)) {
                SoundReq(SFX_TEXTBOX_SELECT);
                sub_080A4E84(6);
                windcrest = -1;
            }
            break;
        case DPAD_UP:
            windcrest = ptr->unk0.unk00;
            break;
        case DPAD_DOWN:
            windcrest = ptr->unk0.unk05;
            break;
        case DPAD_LEFT:
            windcrest = ptr->unk2.unk00;
            break;
        case DPAD_RIGHT:
            windcrest = ptr->unk2.unk05;
            break;
    }

    if (-1 < windcrest) {
        gMenu.field_0x3 = windcrest;
        SoundReq(SFX_TEXTBOX_CHOICE);
    }
    ShowAreaName(gMenu.field_0x3, 0);
}

void sub_080A6378(void) {
    u32 frameIndex;
    gUnk_08128DE8_struct* ptr;

    gGenericMenu.unk2c++;
    if ((gGenericMenu.unk2c & 0x20) != 0) {
        sub_080A6438();
    }
    gOamCmd._4 = 0x400;
    gOamCmd._6 = 0;
    gOamCmd._8 = 0x7000;
    if ((gGenericMenu.unk2c & 0x20) == 0) {
        gOamCmd.x = gRoomTransition.player_status.overworld_map_x * DISPLAY_HEIGHT / 0xf90 + 0x28;
        gOamCmd.y = (gRoomTransition.player_status.overworld_map_y << 7) / 0xc60 + 0xc;
        if ((gPlayerState.flags & PL_NO_CAP) != 0) {
            frameIndex = 0x5a;
        } else {
            frameIndex = 0x59;
        }
        DrawDirect(DRAW_DIRECT_SPRITE_INDEX, frameIndex);
    }
    ptr = &gUnk_08128DE8[gMenu.field_0x3];
    gOamCmd.x = ptr->unk6;
    gOamCmd.y = ptr->unk7;
    frameIndex = gMenu.field_0x3 * 3 + 0x26 + (((gGenericMenu.unk2c >> 4) & 1) == 0);
    DrawDirect(DRAW_DIRECT_SPRITE_INDEX, frameIndex);
    sub_080A6498();
}

void sub_080A6438(void) {
    u32 uVar1;
    struct_gUnk_08128F58* pcVar2;
    u32 uVar3;

    gOamCmd._4 = 0x400;
    gOamCmd._6 = 0;
    gOamCmd._8 = 0;
    uVar1 = gSave.map_hints & gGenericMenu.unk10.h[0];
    for (pcVar2 = gUnk_08128F58, uVar3 = 0; pcVar2->frameIndex != 0; uVar3++, pcVar2++) {
        if ((1 << uVar3 & uVar1) != 0) {
            gOamCmd.x = pcVar2->unk1;
            gOamCmd.y = pcVar2->unk2;
            DrawDirect(DRAW_DIRECT_SPRITE_INDEX, pcVar2->frameIndex);
        }
    }
}

void sub_080A6498(void) {
    u32 i;

    gOamCmd._4 = 0x800;
    gOamCmd._6 = 0;
    gOamCmd._8 = 0;
    for (i = 0; i <= 0x10; i++) {
        if (!IS_BIT_SET(gSave.windcrests, i)) {
            gUnk_08128DE8_struct* ptr = &gUnk_08128DE8[i];
            gOamCmd.x = ptr->unk6;
            gOamCmd.y = ptr->unk7;
            DrawDirect(DRAW_DIRECT_SPRITE_INDEX, 0x28 + 3 * i);
        }
    }
    gScreen.controls.windowOutsideControl = 0x3d3f;
}
