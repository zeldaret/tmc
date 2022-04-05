#include "global.h"
#include "menu.h"
#include "sound.h"
#include "subtask.h"
#include "screen.h"
#include "item.h"
#include "common.h"
#include "game.h"
#include "main.h"
#include "save.h"
#include "itemMetaData.h"
#include "structures.h"
#include "functions.h"

extern void sub_080A4DB8(u32);

void sub_080A5128(void);
void sub_080A51D4(void);
bool32 sub_080A51F4(void);
void sub_080A5F48(u32, u32);

Subtask PauseMenu_Variant0;
Subtask PauseMenu_Variant1;
Subtask PauseMenu_Variant2;
Subtask PauseMenu_Variant3;
Subtask PauseMenu_Variant4;
Subtask PauseMenu_Variant5;
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
            gUnk_08128A38[gPauseMenuOptions.unk1].func();
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

struct_08127F94* sub_080A6A80(u32, u32);

extern u8 gUnk_02034492[];
void sub_0801E8D4(void);
u32 sub_0801DB94(void);
s32 sub_080A50A0(s32);

void PauseMenu_Variant0(void) {
    struct_08127F94* ptr;
    int r0, r1;

    sub_0801E8D4();
    sub_080A4D34();
    r1 = 4;
    do {
        gUnk_02034492[r1] = 0;
        r1++;
    } while (r1 <= 0xd);
    ptr = sub_080A6A80((u16)gRoomTransition.player_status.overworld_map_x,
                       (u16)gRoomTransition.player_status.overworld_map_y);
    gPauseMenuOptions.unk2[4] = ptr->_4;
    gPauseMenuOptions.unk2[5] = sub_0801DB94();
    if (IsItemEquipped(ITEM_LANTERN_ON) != 2) {
        r1 = 0x10;
    } else {
        r1 = 0xf;
    }
    gPauseMenuOptions.unk15 = r1;
    r0 = gUnk_08128A38[gPauseMenuOptions.unk1].unk1;
    r0 = sub_080A50A0(r0);
    gPauseMenuOptions.unk1 = r0;
    gPauseMenuOptions.unk14 = r0;
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
                    gPauseMenuOptions.unk14 = bVar5;
                    SoundReq(SFX_TEXTBOX_OPEN);
                    gMenu.field_0xc = NULL;
                    break;
            }
        }
    }
    bVar5 = sub_080A50A0(gPauseMenuOptions.unk14);
    if (gPauseMenuOptions.unk1 != bVar5) {
        gPauseMenuOptions.unk14 = bVar5;
        sub_080A51D4();
        if (bVar5 == 0xe) {
            sub_080A4E90(6);
        } else {
            sub_080A4E90(3);
            MemClear(&gBG0Buffer, 0x800);
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
    gPauseMenuOptions.unk1 = t = gPauseMenuOptions.unk14;
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

    switch (gPauseMenuOptions.unk1) {
        case 7:
        case 8:
            p[0].x = 0x60;
            p[0].y = 0x18;
            p[1].x = -0x10;
            p[1].y = 0x48;
            p[2].x = 0x100;
            p[2].y = 0x48;
            break;
        case 9:
        case 10:
        case 11:
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
    u32 i = gPauseMenuOptions.unk1;
    if (i < 0xe) {
        gPauseMenuOptions.unk2[i] = gMenu.field_0x3;
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

Subtask PauseMenu_ItemMenu_Draw;
Subtask PauseMenu_ItemMenu_Init;
Subtask PauseMenu_ItemMenu_Update;
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

void sub_080A6F6C(u32);
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
                    u32 t = !!(gInput.newKeys ^ 1);
                    ForceEquipItem(gPauseMenu.items[menuSlot], t);
                    SoundReq(SFX_TEXTBOX_SELECT);
                }
                break;
            default:
                switch (gInput.unk4) {
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
                    item = gSave.saved_status.field_0x24[item - 6];
                }
                break;
            case MENU_SLOT_SAVE_BUTTON:
                // ITEM_SKILL_FAST_SPIN, but that does not make any sense at all
                item = 0x73;
                break;
            default:
                break;
        }
        sub_080A6F6C(item + 0x400);
    }
}

u32 GetMenuSlotForItem(u32 item);
extern u8* gSpriteAnimations_322[];
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
            DrawDirect(sub_080A5384_draw_constant1, *gSpriteAnimations_322[item]);
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
        tmp = entry->type + ((gMain.ticks.HWORD & 0x10) != 0 ? 3 : 4);
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
    i = GetMenuSlotForItem(gSave.stats.itemButtons[0]);
    if (i < MENU_SLOT_COUNT) {
        entry = &gItemMenuTable[i];
        gOamCmd.x = entry->x;
        gOamCmd.y = entry->y;
        DrawDirect(sub_080A5384_draw_constant0, 3);
    }
    i = GetMenuSlotForItem(gSave.stats.itemButtons[1]);
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
