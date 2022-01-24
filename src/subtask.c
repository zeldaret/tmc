#include "global.h"
#include "menu.h"
#include "screen.h"
#include "common.h"
#include "subtask.h"
#include "sound.h"
#include "save.h"
#include "kinstone.h"
#include "game.h"
#include "message.h"
#include "object.h"
#include "main.h"
#include "npc.h"
#include "enemy.h"
#include "item.h"
#include "itemMenuTable.h"
#include "functions.h"
#include "structures.h"

extern const u8 gGlobalGfxAndPalettes[];
typedef struct {
    u8 filler0[0x1];
    u8 unk1;
    u8 charColor;
    u8 bgColor;
    u16 unk4;
    u16 unk6;
    u8* unk8;
} struct_02036540;

void sub_080A42E0(u32, u32);
void sub_0805ECEC(u32, u32, u32, u32);
u32 sub_080A43A8(u32);
u32 sub_080A4418(u32, u32);
u32 sub_080A43DC(u32);
u32 sub_080A44E0(struct_02036540*, u8*, u32);
struct_02036540* sub_0805F2C8(void);
void FigurineMenu_080A4978(void);
void sub_080A4B44(void);
void sub_080A4DA8(u32);
u32 sub_080A4CBC(u32);
void sub_080A4DB8(u32);
void sub_08056250(void);
void sub_080A5128(void);
u32 sub_080A51F4(void);
void sub_080A51D4(void);
void sub_080A5F48(u32, u32);

extern u8 gUnk_02002C81[];

extern u8 gTextGfxBuffer[];

extern const KeyButtonLayout gUnk_08128B50;
extern const u8 gUnk_080FD5B4[];

void Subtask_PauseMenu(void) {
    extern const void (*const gUnk_08128B30[])(void);

    if (gUnk_02034490.unk11 == 6) {
        SetBgmVolume(0x100);
        Subtask_Exit();
    } else {
        FlushSprites();
        gUnk_08128B30[gUnk_02034490.unk11]();
        sub_080A5128();
        sub_0801C1D4();
        DrawOAMCmd();
        if (gUnk_02034490.unk11 != 4) {
            gUnk_08128A38[gUnk_02034490.unk1].func();
        }
        CopyOAM();
        {
            u32 t = gUnk_02034490.unk16;
            u32 t2 = (t != 0) ? 0xe46 : 0;
            gScreen.controls.layerFXControl = t2;
            gScreen.controls.alphaBlend = (t << 8) | (0x10 - t);
        }
    }
}

typedef struct {
    u8 _0;
    u8 _1;
    u8 _2;
    u8 _3;
    u8 _4;
    u16 _6;
} struct_08127F94;
struct_08127F94* sub_080A6A80(u32, u32);

extern u8 gUnk_02034492[];
void sub_0801E8D4(void);
u32 sub_0801DB94(void);
s32 sub_080A50A0(s32);

void sub_080A4F28(void) {
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
    gUnk_02034490.unk2[4] = ptr->_4;
    gUnk_02034490.unk2[5] = sub_0801DB94();
    if (IsItemEquipped(ITEM_LANTERN_ON) != 2) {
        r1 = 0x10;
    } else {
        r1 = 0xf;
    }
    gUnk_02034490.unk15 = r1;
    r0 = gUnk_08128A38[gUnk_02034490.unk1].unk1;
    r0 = sub_080A50A0(r0);
    gUnk_02034490.unk1 = r0;
    gUnk_02034490.unk14 = r0;
    sub_080A4DB8(r0);
    SetFade(4, 0x20);
    sub_080A4E90(1);
}

void sub_080A4FA0(void) {
    if (gFadeControl.active == 0) {
        sub_080A4E90(2);
    }
}

void sub_080A4FB8(void) {
    int iVar1;
    u32 uVar2;
    int iVar4;
    s32 bVar5;

    if ((sub_080A51F4() != 0) && (gMenu.field_0xc != NULL)) {
        iVar1 = -1;
        switch (gInput.newKeys) {
            case 8:
                iVar1 = 0;
                break;
            case 0x200:
                iVar1 = 1;
                break;
            case 0x100:
                iVar1 = 2;
                break;
            case 0x2:
                iVar1 = 3;
                break;
        }
        if (iVar1 >= 0) {
            switch (bVar5 = gMenu.field_0xc[iVar1]) {
                case 0:
                    break;
                case 4 ... 6:
                case 0xf:
                    uVar2 = GetInventoryValue(0x47);
                    if (uVar2 == 0) {
                        iVar4 = 1;
                        if (iVar1 == 1) {
                            iVar4 = 2;
                        }
                        bVar5 = gMenu.field_0xc[iVar4];
                    }
                default:
                    gUnk_02034490.unk14 = bVar5;
                    SoundReq(SFX_TEXTBOX_OPEN);
                    gMenu.field_0xc = NULL;
                    break;
            }
        }
    }
    bVar5 = sub_080A50A0(gUnk_02034490.unk14);
    if (gUnk_02034490.unk1 != bVar5) {
        gUnk_02034490.unk14 = bVar5;
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

void sub_080A50B8(void) {
    s32 iVar1;

    iVar1 = gUnk_02034490.unk16 + 2;
    if (0x10 < iVar1) {
        gScreen.lcd.displayControl &= 0xf8ff;
        sub_080A4E90(4);
        iVar1 = 0x10;
    }
    gUnk_02034490.unk16 = iVar1;
}

void sub_080A50E8(void) {
    u32 t;
    gUnk_02034490.unk16 = 0x10;
    gUnk_02034490.unk1 = t = gUnk_02034490.unk14;
    sub_080A4DB8(t);
    sub_080A4E90(5);
}

void sub_080A5108(void) {
    s32 iVar1;

    iVar1 = gUnk_02034490.unk16 - 2;
    if (iVar1 < 0) {
        sub_080A4E90(2);
        iVar1 = 0;
    }
    gUnk_02034490.unk16 = iVar1;
}

void sub_080A5128(void) {
    int r5, t;
    struct {
        int x;
        int y;
    } p[3];

    switch (gUnk_02034490.unk1) {
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
            p[0].y = 0x10 - (gUnk_02034490.unk16 << 1);
            t = (gUnk_02034490.unk16 / 3);
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
    r5 = 0xfd << 1;
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
    u32 i = gUnk_02034490.unk1;
    if (i < 0xe) {
        gUnk_02034490.unk2[i] = gMenu.field_0x3;
    }
}

u32 sub_080A51F4(void) {
    u32 retval = 1;
    if (gFadeControl.active != 0)
        retval = 0;
    if (gUnk_02034490.unk11 != 2)
        retval = 0;
    return retval;
}

void sub_080A5384(void);
void sub_080A5218(void) {
    extern void (*const gUnk_08128B48[])(void);

    gUnk_08128B48[gMenu.menuType]();
    sub_080A5384();
}

void sub_080A5238(void) {
    u32 uVar1;
    u32 uVar2;
    u32 uVar3;

    gMenu.field_0xc = NULL;
    sub_080A70AC((KeyButtonLayout*)&gUnk_08128B50);
    for (uVar3 = 1; uVar3 < 0x20; uVar3++) {
        uVar1 = GetInventoryValue(uVar3);
        if ((uVar1 == 1) && (uVar2 = gUnk_080FD5B4[uVar3 * 8], uVar2 < 0x12)) {
            switch (uVar3) {
                case 0xf:
                case 0x10:
                    uVar3 = gUnk_02034490.unk15;
                    break;
                default:
                    break;
            }
            gGenericMenu.unk10.a[uVar2] = uVar3;
            sub_080A5F48(uVar3, uVar2 * 8 + 0x360);
        }
    }
    sub_080A7114(1);
}

extern const u8 gUnk_08128BF4[];
void sub_080A6F6C(u32);
void sub_080A529C(void) {
    s32 iVar1;
    u32 uVar2;
    u32 uVar3;
    const ItemMenuTableEntry* entry;

    if (sub_080A51F4()) {
        gMenu.field_0xc = (u8*)gUnk_08128BF4;
        uVar3 = gMenu.field_0x3;

        entry = &gItemMenuTable[uVar3];
        switch (gInput.newKeys) {
            case 1:
                if (uVar3 == 0x10) {
#if defined(DEMO_USA) || defined(DEMO_JP)
                    SoundReq(SFX_MENU_ERROR);
#else
                    sub_080A4E84(0xb);
                    SoundReq(SFX_TEXTBOX_SELECT);
#endif
                    break;
                }
            case 2:
                if (gGenericMenu.unk10.a[uVar3] != 0) {
                    u32 t = !!(gInput.newKeys ^ 1);
                    ForceEquipItem(gGenericMenu.unk10.a[uVar3], t);
                    SoundReq(SFX_TEXTBOX_SELECT);
                }
                break;
            default:
                switch (gInput.unk4) {
                    case DPAD_UP:
                        uVar3 = entry->up;
                        break;
                    case DPAD_DOWN:
                        uVar3 = entry->down;
                        break;
                    case DPAD_LEFT:
                        uVar3 = entry->left;
                        break;
                    case DPAD_RIGHT:
                        uVar3 = entry->right;
                        break;
                }
                break;
        }
        if (gMenu.field_0x3 != uVar3) {
            gMenu.field_0x3 = uVar3;
            SoundReq(SFX_TEXTBOX_CHOICE);
        }
        uVar2 = gGenericMenu.unk10.a[uVar3];
        switch (uVar3) {
            case 0xc:
            case 0xd:
            case 0xe:
            case 0xf:
                if (uVar2 != 0) {
                    uVar2 = gSave.saved_status.field_0x24[uVar2 - 6];
                }
                break;
            case 0x10:
                uVar2 = 0x73;
                break;
            default:
                break;
        }
        sub_080A6F6C(uVar2 + 0x400);
    }
}

u32 sub_080A554C(u32);
extern u8* gSpriteAnimations_322[];
#ifdef EU
#define sub_080A5384_draw_constant0 0x1fa
#define sub_080A5384_draw_constant1 0x141
#else
#define sub_080A5384_draw_constant0 0x1fb
#define sub_080A5384_draw_constant1 0x142
#endif
void sub_080A5384(void) {
    u32 tmp;
    u32 uVar3;
    s32 iVar2;
    const ItemMenuTableEntry* entry;

    gOamCmd._4 = 0x400;
    gOamCmd._6 = 0;
    gOamCmd._8 = 0;
    for (uVar3 = 0; uVar3 < 0x11; uVar3++) {
        u32 item;
        if (gGenericMenu.unk10.a[uVar3] != 0) {
            entry = &gItemMenuTable[uVar3];
            gOamCmd.x = entry->x;
            gOamCmd.y = entry->y;
            item = gGenericMenu.unk10.a[uVar3];
            switch (item) {
                case 0x1c ... 0x1f:
                    item = gSave.stats.bottles[item - 0x1c];
                    break;
            }
            iVar2 = 3;
            switch (item) {
                case 7:
                case 8:
                    if (gBombBagSizes[gSave.stats.bombBagType] <= gSave.stats.bombCount) {
                        iVar2 = 4;
                    }
                    break;
                case 9:
                case 10:
                    if (gQuiverSizes[gSave.stats.quiverType] <= gSave.stats.arrowCount) {
                        iVar2 = 4;
                    }
                    break;
            }
            gOamCmd._8 = 0x800 | iVar2 << 0xc | ((uVar3 * 8) + 0x360);
            DrawDirect(sub_080A5384_draw_constant1, *gSpriteAnimations_322[item]);
        }
    }
    gOamCmd._8 = 0x800;
    {
        u32 uVar3 = gMenu.field_0x3;
        if ((uVar3 == 0x10) && (gSaveHeader->language != 0)) {
            uVar3 = 0x11;
        }
        entry = &gItemMenuTable[uVar3];
    }
    gOamCmd.x = entry->x;
    gOamCmd.y = entry->y;
    tmp = entry->type + ((gMain.ticks.HWORD & 0x10) != 0 ? 3 : 4);
    DrawDirect(sub_080A5384_draw_constant0, tmp);
    {
        u32 uVar3;
        if (gSaveHeader->language != 0) {
            uVar3 = 0x10;
        } else {
            uVar3 = 0x11;
        }
        entry = &gItemMenuTable[uVar3];
    }
    gOamCmd.x = entry->x;
    gOamCmd.y = entry->y;
    gOamCmd._8 = 0x800;
    DrawDirect(sub_080A5384_draw_constant0, 0x22);
    {
        uVar3 = sub_080A554C(gSave.stats.itemButtons[0]);
        if (uVar3 < 0x11) {
            entry = &gItemMenuTable[uVar3];
            gOamCmd.x = entry->x;
            gOamCmd.y = entry->y;
            DrawDirect(sub_080A5384_draw_constant0, 3);
        }
    }
    {
        uVar3 = sub_080A554C(gSave.stats.itemButtons[1]);
        if (uVar3 < 0x11) {
            entry = &gItemMenuTable[uVar3];
            gOamCmd.x = entry->x;
            gOamCmd.y = entry->y;
            DrawDirect(sub_080A5384_draw_constant0, 3);
        }
    }
}

extern void (*const gUnk_08128BF8[])(void);

extern u8 gUnk_02000090;

u32 sub_080A554C(u32 arg0) {
    u32 i;

    if (arg0 != 0) {
        for (i = 0; i < 17; i++) {
            if (arg0 == gGenericMenu.unk10.a[i])
                return i;
        }
    }
    return 17;
}

void sub_080A5574(void) {
    gUnk_08128BF8[gMenu.menuType]();
    sub_080A57F4();
}
