#include "global.h"
#include "menu.h"
#include "game.h"
#include "subtask.h"
#include "save.h"
#include "screen.h"
#include "common.h"
#include "fileselect.h"
#include "flags.h"
#include "functions.h"
#include "main.h"
#include "message.h"
#include "ui.h"
#include "kinstone.h"
#include "itemMetaData.h"
#include "item.h"

#ifdef EU
#define DRAW_DIRECT_SPRITE_INDEX 0x1fa
#else
#define DRAW_DIRECT_SPRITE_INDEX 0x1fb
#endif

extern u8 gUnk_08128D38[];
extern u8 gUnk_08128D43[];
extern u16 gUnk_02017830[];
extern u8 gUnk_080C9C6C[];
extern u8 gUnk_020350F0[];
extern u8 gUnk_08128C00[];
extern Frame* gSpriteAnimations_322[];
extern u32 gUnk_085C4620[];
extern u16* gMoreSpritePtrs[];
extern Screen gUnk_03001020;
extern u8 gUnk_02024090[];
extern u8 gUnk_03000420[];
extern u16 gUnk_02017AA0[];

void sub_080A5CFC(u32, void*, u32);
void sub_080A6FB4(u32, u32);
void sub_080A66D0();
void sub_080A5D1C();
void sub_080A70AC(const KeyButtonLayout* layout);
u32 sub_080A6F40();
void sub_080A67C4(u32);
void sub_080A68D4();
s32 sub_080A69E0();
void sub_080A6EE0(u32 param_1);
struct_08127F94* sub_080A6A80(u32 param_1, u32 param_2);
void sub_080A698C(u32 param_1, u32 param_2, u32 param_3, u32 param_4);
void sub_080A6438();
void sub_080A5F48(u32, u32);
void sub_080A6F6C(u32);

extern void DrawDungeonMap(u32 floor, struct_02019EE0* data, u32 size);
extern void LoadDungeonMap(void);

void DrawDungeonFeatures(u32, void*, u32);

extern void (*const gUnk_08128D58[])(void);

extern KeyButtonLayout gUnk_08128D60;

extern void (*const gUnk_08128DB0[])(void);
void sub_080A617C(void);
void sub_080A7040(u32);

extern u8 gUnk_08128DB8[];
extern u8 gUnk_08128E80[];
extern KeyButtonLayout gUnk_08128DBC;

typedef struct {
    u8 frameIndex;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u16 unk4;
    u16 unk6;
} sturct_gUnk_08128F58;

extern sturct_gUnk_08128F58 gUnk_08128F58[];

typedef struct {
    u8 unk0;
    u8 unk1;
    u16 unk2;
    u16 unk4;
    u16 unk6;
} struct_sub_080A698C;

extern void (*const gUnk_08128DCC[])(void);
void sub_080A6378(void);

extern void (*const gUnk_08128F24[])(void);
void sub_080A6E70(void);
void sub_080A6498(void);

void sub_080A4DB8(u32);
void sub_080A6290(void);
u32 sub_080A6D74(u32);

extern const ScreenTransitionData gUnk_08128024[];
void sub_080A71F4(ScreenTransitionData*);

extern void DeleteAllEntities(void);
extern void sub_0805E974(void);
extern bool32 sub_080A51F4(void);
extern u32 sub_0807CB24(u32, u32);
extern void sub_080A42E0(u32, u32);

extern void (*const gUnk_0812901C[])(void);

void sub_080A74F4(void);

extern void UpdateCarriedObject(void);

extern void (*const gSubtasks[])(void);

typedef struct {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 unk4;
    s8 unk5;
    u8 unk6;
    u8 unk7;
} struct_gUnk_08128E94;

extern const struct_gUnk_08128E94 gUnk_08128E94[];

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

typedef struct {
    u8 item;
    u8 unk1;
    u8 frameIndex;
    u8 unk3;
    u8 unk4;
    s8 unk5;
    u16 unk6;
} struct_gUnk_08128D70;

extern const struct_gUnk_08128D70 gUnk_08128D70[];

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
                iVar5 += gSave.unk12B[i];
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
    u32 uVar4;
    struct_gUnk_08128C14* ptr;

    if (!sub_080A51F4()) {
        return;
    }
    gMenu.field_0xc = gUnk_08128C00;
    ptr = &gUnk_08128C14[gMenu.field_0x3];
    uVar2 = 0xff;
    switch (gInput.unk4) {
        case 0x40:
            uVar2 = ptr->unk0;
            break;
        case 0x80:
            uVar2 = ptr->unk1;
            break;
        case 0x20:
            uVar2 = ptr->unk2;
            break;
        case 0x10:
            uVar2 = ptr->unk3;
            break;
    }

    if (uVar2 != 0xff) {
        gMenu.field_0x3 = uVar2;
        SoundReq(SFX_TEXTBOX_CHOICE);
    } else if (gInput.newKeys == 1) {
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
                gUnk_0200AF00.buttonY[0] = 0x10;
            } else {
                gUnk_0200AF00.buttonY[0] = 0xfff0;
            }
            break;
        default:
            gUnk_0200AF00.buttonY[0] = 0xfff0;
            break;
    }

    uVar2 = gMenu.field_0x3;
    uVar4 = gGenericMenu.unk10.a[uVar2];
    if (uVar4 != 0) {
        switch (uVar2) {
            case 0:
                if (uVar4 != 0x3d) {
                    uVar4 = 0x67;
                }
                break;
            case 1:
                uVar4 = 99;
                break;
            case 2:
                uVar4 = 0x70;
                break;
            case 4:
                uVar4 = 0x74;
                break;
            case 5:
                uVar4 = 0x73;
        }
    }
    sub_080A6F6C(uVar4 + 0x400);
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
    if ((gMain.ticks.HWORD & 0x10) == 0) {
        frameIndex += 2;
    } else {
        frameIndex += 1;
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

void sub_080A5990(void) {
    extern void (*const gUnk_08128D14[])(void);
    gUnk_08128D14[gMenu.menuType]();
}

void sub_080A59AC(void) {
    gMenu.field_0x3 = 0;
    SetPopupState(0, 0);
    SetMenuType(1);
}

void sub_080A59C8(void) {
    u32 uVar2;
    u32 bVar3;

    if (!sub_080A51F4()) {
        return;
    }
    uVar2 = gMenu.field_0x3;
    bVar3 = FALSE;

    switch (gInput.newKeys) {
        case DPAD_UP:
            uVar2 = 0;
            break;
        case B_BUTTON:
            if (gMenu.field_0x3 == 0) {
                uVar2 = 1;
            } else {
                bVar3 = TRUE;
            }
            break;
        case DPAD_DOWN:
            uVar2 = 1;
            break;
        case A_BUTTON:
            bVar3 = TRUE;
            break;
    }

    if (bVar3) {
        gMenu.transitionTimer = 0xff;
        if (uVar2 == 0) {
            CreateDialogBox(8, 0);
            SetMenuType(2);
            SoundReq(SFX_TEXTBOX_SELECT);
        } else {
            SetMenuType(3);
            SoundReq(SFX_MENU_CANCEL);
        }
    } else if (gMenu.field_0x3 != uVar2) {
        gMenu.field_0x3 = uVar2;
        SetPopupState(0, uVar2);
        SoundReq(SFX_TEXTBOX_CHOICE);
    }
}

void sub_080A5A54(void) {
    switch (HandleSave(0)) {
        case SAVE_ERROR:
            CreateDialogBox(9, 0);
            gMenu.transitionTimer = 0x3c;
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
                gMenu.transitionTimer = 0xff;
            }
            break;
        case 0xff:
            if (gPauseMenuOptions.unk1 == 10) {
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

void sub_080A5AD8() {
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
            SetFade(7, 0x20);
            gMenu.transitionTimer = 0x3c;
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

void sub_080A5BF0(void) {
    extern void (*const gUnk_08128D30[])(void);
    u32 uVar1;
    u32 temp;

    gUnk_08128D30[gMenu.menuType]();
    sub_080A5D1C();
    temp = gMain.ticks.HWORD;
    if ((temp & 7) == 0) {
        uVar1 = *gUnk_02017830;
        MemCopy(gUnk_02017830 + 1, gUnk_02017830, 0xe);
        gUnk_02017830[7] = uVar1;
        gUsedPalettes |= 0x1000;
    }
}

void sub_080A5C44(u32 param_1, u32 param_2, u32 param_3) {
    s8* ptr;
    gMenu.field_0xc = gUnk_08128D38;
    sub_080A5CFC(gMenu.field_0x3, &gMenu, param_3);
    LoadGfxGroup(0x81);
    sub_080A6FB4(gArea.dungeon_idx, 1);
    SetMenuType(1);
    ptr = &gUnk_08128D43[(u32)gArea.dungeon_idx * 2];
    gScreen.bg1.xOffset += ptr[0];
    gScreen.bg1.yOffset += ptr[0];
}

void sub_080A5C9C(void) {
    s32 newChoice;
    u8* ptr;

    if (sub_080A51F4()) {
        ptr = &gUnk_080C9C6C[gArea.dungeon_idx * 4];
        newChoice = gMenu.field_0x3;
        switch (gInput.newKeys) {
            case DPAD_UP:
                if (newChoice > 0) {
                    newChoice--;
                }
                break;
            case DPAD_DOWN:
                if (*ptr - 1 > newChoice) {
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

ASM_FUNC("asm/non_matching/subtask2/sub_080A5D1C.inc", void sub_080A5D1C())

bool32 sub_080A5F24(void) {
    bool32 result = TRUE;
    if ((gArea.dungeon_idx == 6) && CheckLocalFlagByBank(0x8c0, 0x7b)) {
        result = 0;
    }
    return result;
}

void sub_080A5F48(u32 param_1, u32 param_2) {
    extern u32 gSprite_082E68F4[];
    u32 ammoCount;
    u32 tensDigit;
    u8* puVar2;
    u32 temp1;
    u16* temp2;
    u32 temp3;
    register u32 rem asm("r1");

    switch (param_1) {
        case 0x1c ... 0x1f:
            param_1 = (u32)gSave.saved_status.field_0x24[param_1 - 6];
            break;
    }

    temp1 = param_2 * 0x20 + 0x6010000;
    temp3 = gSpriteAnimations_322[param_1]->index;
    temp2 = &gMoreSpritePtrs[1][temp3 * 2];
    DmaSet(3, &gMoreSpritePtrs[2][temp2[1] * 0x10], temp1, 0x84000040);
    ammoCount = -1;

    switch (param_1) {
        case 7:
        case 8:
            ammoCount = gSave.stats.bombCount;
            break;
        case 9:
        case 10:
            ammoCount = gSave.stats.arrowCount;
            break;
    }

    if (-1 < (int)ammoCount) {
        tensDigit = Div(ammoCount, 10);
        param_1 = rem;
        if ((int)tensDigit >= 10) {
            tensDigit = 9;
        }
        DmaSet(3, gUnk_085C4620 + tensDigit * 0x8, temp1, 0x84000008);
        DmaSet(3, gUnk_085C4620 + (param_1 + 10) * 0x8, temp1 + 0x20, 0x84000008);
    }
}

void sub_080A6008(void) {
    gUnk_08128D58[gMenu.menuType]();
}

void sub_080A6024(void) {
    sub_080A70AC((KeyButtonLayout*)&gUnk_08128D60);
    sub_0801E738(0);
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
        uVar1 = gSave.unk118[0];
        while (uVar1 != 0) {
            gOamCmd.x = (uVar4 & 3) * 0x30 + 0x2b;
            gOamCmd.y = (uVar4 >> 2) * 0x24 + 0x34;
            uVar3 = gSave.unk12B[uVar2];
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
            uVar1 = gSave.unk118[uVar2];
        }
    }
}

void sub_080A60E0(void) {
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
    if ((gMain.ticks.HWORD & 0x20) != 0) {
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

void sub_080A6270(void) {
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
            if ((gSave.windcrests & (1 << gMenu.field_0x3)) != 0) {
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
    sub_080A6FB4(gMenu.field_0x3, 0);
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
        gOamCmd.x = gRoomTransition.player_status.overworld_map_x * 0xa0 / 0xf90 + 0x28;
        gOamCmd.y = (gRoomTransition.player_status.overworld_map_y << 7) / 0xc60 + 0xc;
        if ((gPlayerState.flags & 8) != 0) {
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
    sturct_gUnk_08128F58* pcVar2;
    u32 uVar3;

    gOamCmd._4 = 0x400;
    gOamCmd._6 = 0;
    gOamCmd._8 = 0;
    uVar1 = gSave.field_0x20 & gGenericMenu.unk10.h[0];
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
        if ((gSave.windcrests & (1 << i)) == 0) {
            gUnk_08128DE8_struct* ptr = &gUnk_08128DE8[i];
            gOamCmd.x = ptr->unk6;
            gOamCmd.y = ptr->unk7;
            DrawDirect(DRAW_DIRECT_SPRITE_INDEX, 0x28 + 3 * i);
        }
    }
    gScreen.controls.windowOutsideControl = 0x3d3f;
}

void Subtask_MapHint(void) {
    extern void (*const gUnk_08128E70[])(void);
    FlushSprites();
    gUnk_08128E70[gMenu.menuType]();
    if ((gGenericMenu.unk2c & 0x20) != 0) {
        sub_080A6438();
    }
    sub_080A6498();
    CopyOAM();
}

void sub_080A6534(void) {
    extern const u16 gUnk_08128F4C[];
    u32 val;
    sub_080A4D34();
    sub_080A4DB8(4);
    sub_080A6290();
    gScreen.lcd.displayControl = gScreen.lcd.displayControl & 0xf7ff;
    SetColor(0, gPaletteBuffer[0x51]);
    val = gUnk_08128F4C[gUI.field_0x3];
    gSave.field_0x20 |= val;
    gGenericMenu.unk10.h[1] = val & gGenericMenu.unk10.h[0];
    gGenericMenu.unk10.h[0] = 0;
    gMenu.transitionTimer = 0x3c;
    SetMenuType(1);
    SetFade(4, 8);
}

void sub_080A65AC(void) {
    if (!gFadeControl.active) {
        gGenericMenu.unk2c++;
        switch (gMenu.transitionTimer) {
            case 0x1e:
                gGenericMenu.unk10.h[0] = gGenericMenu.unk10.h[1];
                gGenericMenu.unk2c = 0x20;
                SoundReq(SFX_103);
            default:
                gMenu.transitionTimer--;
                break;
            case 0:
                switch (gInput.newKeys) {
                    case A_BUTTON:
                    case B_BUTTON:
                    case START_BUTTON:
                        Subtask_Exit();
                        break;
                }
                break;
        }
    }
}

void sub_080A6608(void) {
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
    sub_080A6FB4(gMenu.field_0x3, 0);
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
            if (CheckKinstoneFused(0xe)) {
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
    puVar2 = &gUnk_02017AA0[gUnk_03003DE4 * 0x500];

    for (i = 0; i <= 7; puVar2++, i++) {
        *puVar2 = 0x1e0a;
    }

    for (i = 8; i < (int)(ptr->unk5 + ptr->unk4); puVar2++, i++) {
        *puVar2 = 0x1e0b;
    }

    for (; i < 0xa0; puVar2++, i++) {
        *puVar2 = 0x1e0a;
    }

    sub_0805622C(&gUnk_02017AA0[gUnk_03003DE4 * 0x500], REG_ADDR_BG3CNT, 0xa2600001);
    gMenu.field_0xa = ptr->unk2 >> 1;
    MemClear(&gMapDataBottomSpecial, 0x400);
}

void sub_080A68D4(void) {
    u32 uVar1;
    int iVar6;
    sturct_gUnk_08128F58* pcVar4;
    u32 i;
    u32 uVar4;
    struct_080FE320* ptr;

    if ((gPlayerState.flags & PL_NO_CAP) != 0) {
        iVar6 = 101;
    } else {
        iVar6 = 100;
    }
    sub_080A698C(gRoomTransition.player_status.overworld_map_x, gRoomTransition.player_status.overworld_map_y,
                 DRAW_DIRECT_SPRITE_INDEX, iVar6 + 0x100);
    uVar1 = sub_080A6F40();
    uVar1 &= gSave.field_0x20;

    for (pcVar4 = gUnk_08128F58, i = 0; pcVar4->frameIndex != 0; i++, pcVar4++) {
        if (((1 << i) & uVar1) != 0) {
            sub_080A698C(pcVar4->unk4, pcVar4->unk6, DRAW_DIRECT_SPRITE_INDEX, pcVar4->unk3);
        }
    }

    for (i = 10; i <= 100; i++) {
        if (CheckKinstoneFused(i) && !sub_0801E810(i)) {
            uVar4 = gUnk_080C9CBC[i]._5[1];
            ptr = &gUnk_080FE320[gUnk_080C9CBC[i].evt_type];
            sub_080A698C(ptr->_c, ptr->_e, DRAW_DIRECT_SPRITE_INDEX, uVar4 + 100);
        }
    }
}

void sub_080A698C(u32 param_1, u32 param_2, u32 param_3, u32 param_4) {
    int iVar1;

    iVar1 = sub_080A69E0(param_1, param_2);
    if (0 < iVar1) {
        ((struct_sub_080A698C*)&gMapDataBottomSpecial)[gGenericMenu.unk2d].unk0 = param_4 >> 8;
        ((struct_sub_080A698C*)&gMapDataBottomSpecial)[gGenericMenu.unk2d].unk1 = param_4;
        ((struct_sub_080A698C*)&gMapDataBottomSpecial)[gGenericMenu.unk2d].unk2 = param_3;
        ((struct_sub_080A698C*)&gMapDataBottomSpecial)[gGenericMenu.unk2d].unk4 = iVar1;
        ((struct_sub_080A698C*)&gMapDataBottomSpecial)[gGenericMenu.unk2d].unk6 = iVar1 >> 0x10;
        gGenericMenu.unk2d++;
    }
}

s32 sub_080A69E0(u32 param_1, u32 param_2) {
    const struct_08127F94* pbVar1;
    int iVar3;

    if ((param_1 | param_2) == 0)
        return -1;

    pbVar1 = sub_080A6A80(param_1, param_2);
    if (pbVar1 == NULL)
        return -1;

    if (gMenu.field_0x3 != pbVar1->_4)
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

    param_1 = (s32)((param_1 - pbVar1->_0 * 0x10) * 100) / 0x23a;
    param_2 = (s32)((param_2 - pbVar1->_1 * 0x10) * 100) / 0x23a;
    return (param_2 << 0x10) | param_1;
}

struct_08127F94* sub_080A6A80(u32 param_1, u32 param_2) {
    struct_08127F94* pbVar1;
    param_1 >>= 4;
    param_2 >>= 4;

    for (pbVar1 = gUnk_08127F94; pbVar1->_0 != 0xff; pbVar1++) {
        if (pbVar1->_0 <= param_1 && pbVar1->_2 >= param_1 && pbVar1->_1 <= param_2 && pbVar1->_3 >= param_2) {
            return pbVar1;
        }
    }
    return NULL;
}

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
    struct_080C9CBC* ptr;
    struct_080FE320* ptr2;
    const struct_gUnk_08128E94* ptr3;

    sub_080A4D34();
    sub_080A4DB8(6);
    ptr = &gUnk_080C9CBC[gFuseInfo._3];
    ptr2 = &gUnk_080FE320[ptr->evt_type];
    bVar1 = ptr->_5[1];
    uVar3 = ptr2->_c;
    uVar4 = ptr2->_e;
    uVar2 = sub_080A6A80(uVar3, uVar4)->_4;
    gMenu.field_0x3 = uVar2;
    gGenericMenu.unk2b = 1;
    sub_080A67C4(uVar2);
    sub_080A6FB4(uVar2, 2);
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
    gMenu.transitionTimer = 0x1e;
    SetMenuType(1);
    SetFade(FADE_INSTANT, 8);
}

void sub_080A6C1C(void) {
    if (!gFadeControl.active) {
        switch (gMenu.transitionTimer) {
            case 0:
                sub_080A66D0();
                switch (gInput.newKeys) {
                    case 1:
                    case 2:
                    case 8:
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

void Subtask_FastTravel(void) {
    FlushSprites();
    gUnk_08128F24[gMenu.menuType]();
    if (gMenu.field_0x0 != 0) {
        sub_080A6E70();
    }
    sub_080A6498();
    CopyOAM();
}

void sub_080A6CA8(void) {
    sub_080A4D34();
    sub_080A4DB8(0xd);
    sub_080A6290();
    gMenu.field_0x3 = sub_080A6D74(0);
    SetMenuType(1);
    SetFade(FADE_INSTANT, 8);
}

void sub_080A6CD8(void) {
    u32 uVar1;
    u32 uVar2;

    if (gFadeControl.active) {
        return;
    }

    gMenu.field_0x0 = 1;
    uVar2 = 0;

    switch (gInput.newKeys) {
        case DPAD_LEFT:
        case DPAD_UP:
            uVar2 = -1;
            break;
        case DPAD_RIGHT:
        case DPAD_DOWN:
            uVar2 = 1;
            break;
        case A_BUTTON:
        case START_BUTTON:
            gMenu.field_0x0 = 2;
            SetMenuType(2);
            MessageFromTarget(0x704);
            break;
        case B_BUTTON:
            gMenu.field_0x0 = 3;
            SetMenuType(3);
            break;
    }

    if (uVar2) {
        uVar1 = sub_080A6D74(uVar2);
        if (uVar1 != gMenu.field_0x3) {
            gMenu.field_0x3 = uVar1;
            SoundReq(SFX_TEXTBOX_CHOICE);
        }
    }
}

u32 sub_080A6D74(u32 param_1) {
    u32 uVar1;
    u32 uVar2;
    u32 uVar3;

    uVar3 = gSave.windcrests >> 0x18;
    uVar2 = gMenu.field_0x3;
    if (param_1 == 0) {
        uVar2 = 0;
        if ((uVar3 & 1) == 0) {
            while (++uVar2 < 8 && ((1 << uVar2) & uVar3) == 0) {}
        }
    } else if (uVar3 != 0) {
        do {
            uVar2 = (uVar2 + param_1 + 8) & 7;
        } while ((1 << uVar2 & uVar3) == 0);
    }
    return uVar2 & 7;
}

void sub_080A6DD0(void) {
    u32 tmp;
    switch (sub_08056338()) {
#ifdef EU
        case 0:
            gMenu.field_0x0 = 2;
            break;
        case 1:
            gMenu.field_0x0 = 3;
            tmp = 1;
            break;
        default:
            return;
    }

    if (tmp) {
        SetMenuType(3);
    }
#else
        case 0:
            gMenu.field_0x0 = 2;
            tmp = 3;
            break;
        case 1:
            tmp = 1;
            break;
        default:
            return;
    }
    SetMenuType(tmp);
#endif
}

void sub_080A6DF8(void) {
    if (gMenu.field_0x0 == 2) {
        SetMenuType(4);
        SetFade(FADE_IN_OUT | FADE_INSTANT, 8);
    } else {
        ResetPlayerAnimationAndAction();
        sub_080042D0(&gPlayerEntity, (u32)gPlayerEntity.animIndex, gPlayerEntity.spriteIndex);
        Subtask_Exit();
        gPauseMenuOptions.disabled = 0;
        SoundReq(SFX_MENU_CANCEL);
    }
}

void sub_080A6E44(void) {
    if (gFadeControl.active == 0) {
        sub_080A71F4((ScreenTransitionData*)&gUnk_08128024[gMenu.field_0x3]);
    }
}

void sub_080A6E70(void) {
    u32 frameIndex;
    u32 i;

    gOamCmd._4 = 0;
    gOamCmd._6 = 0;
    gOamCmd._8 = 0x400;
    gGenericMenu.unk2c++;
    sub_080A6EE0(gMenu.field_0x3);
    if ((gGenericMenu.unk2c & 0x10) != 0) {
        frameIndex = 0x5d;
    } else {
        frameIndex = 0x5e;
    }

    DrawDirect(DRAW_DIRECT_SPRITE_INDEX, frameIndex);
    for (i = 0; i < 8; i++) {
        if ((gSave.windcrests & (1 << (i + 0x18))) != 0) {
            sub_080A6EE0(i);
            DrawDirect(DRAW_DIRECT_SPRITE_INDEX, 0x5c);
        }
    }
}

void sub_080A6EE0(u32 param_1) {
    u32 x;
    u32 y;
    RoomHeader* roomHeader;
    const ScreenTransitionData* ptr = &gUnk_08128024[param_1];

    x = (u16)ptr->playerXPos;
    y = (u16)ptr->playerYPos;
    roomHeader = &gAreaRoomHeaders[ptr->area][ptr->room];
    x += roomHeader->map_x;
    y += roomHeader->map_y;
    gOamCmd.x = (s32)(x * 0xa0) / 0xf90 + 0x28;
    gOamCmd.y = (s32)(y * 0xa0) / 0xf90 + 0xc;
}

u32 sub_080A6F40(void) {
    extern u8 gUnk_08128F38[];
    int iVar1;
    u8* pcVar2;
    u32 uVar3;
    u32 uVar4;

    for (uVar3 = 0, pcVar2 = gUnk_08128F38, uVar4 = 0; *pcVar2 != 0; uVar3++, pcVar2 += 2) {
        uVar4 |= sub_0807CB24(*pcVar2, pcVar2[1]) << uVar3;
    }
    return ~uVar4;
}

void sub_080A6F6C(u32 param_1) {
    extern Font gUnk_08128FA8;
    if (gGenericMenu.unk2e.HWORD != param_1) {
        gGenericMenu.unk2e.HWORD = param_1;
        MemClear(gUnk_020350F0, 0x100);
        if ((param_1 & 0xff) != 0) {
            sub_0805F46C(param_1, &gUnk_08128FA8);
        }
        gScreen.bg0.updated = 1;
    }
    gScreen.bg0.yOffset = 2;
}

void sub_080A6FB4(u32 param_1, u32 param_2) {
    extern u16 gUnk_08128FF0[];
    extern Font gUnk_08128FD8;
    extern Font gUnk_08128FC0;
    u32 uVar1;
    Font* font;

    uVar1 = 0;
    switch (param_2) {
        case 0:
            if ((gSave.windcrests & (1 << param_1)) == 0)
                break;
        case 2:
            uVar1 = gUnk_08127F94[param_1]._6;
            font = &gUnk_08128FC0;
            break;
        case 1:
            uVar1 = gUnk_08128FF0[param_1];
            font = &gUnk_08128FD8;
            break;
    }

    if (gGenericMenu.unk2e.HWORD != uVar1) {
        gGenericMenu.unk2e.HWORD = uVar1;
        MemClear(&gUnk_020350F0, 0x100);
        if ((uVar1 & 0xff) != 0) {
            sub_0805F46C(uVar1, font);
        }
        gScreen.bg0.updated = 1;
    }
    gScreen.bg0.yOffset = 2;
}

void sub_080A7040(u32 param_1) {
    extern Font gUnk_08129004;
    extern u8 gUnk_02022130[];
    if (gGenericMenu.unk2e.HWORD != param_1) {
        gGenericMenu.unk2e.HWORD = param_1;
        MemClear(gUnk_02022130, 0x300);
        MemCopy(gUnk_02022130 - 0x200, (void*)0x600e000, 0x800);
        if (GetInventoryValue(gUnk_08128D70[param_1].item) != 0) {
            sub_0805F46C(gUnk_08128D70[param_1].unk6, &gUnk_08129004);
        }
        gScreen.bg1.yOffset = 3;
        gScreen.bg1.updated = 1;
    }
}

void sub_080A70AC(const KeyButtonLayout* layout) {
    MemClear(&gUnk_0200AF00.elements, 0x300);
    gUnk_0200AF00.unk_13 = 0x7f;
    gUnk_0200AF00.unk_14 = 0x7f;
    gUnk_0200AF00.buttonX[0] = layout->aButtonX;
    gUnk_0200AF00.buttonY[0] = (s8)layout->aButtonY;
    gUnk_0200AF00.unk_30[0] = layout->aButtonText;
    gUnk_0200AF00.buttonX[1] = layout->bButtonX;
    gUnk_0200AF00.buttonY[1] = (s8)layout->bButtonY;
    gUnk_0200AF00.unk_30[1] = layout->bButtonText;
    gUnk_0200AF00.buttonX[2] = layout->rButtonX;
    gUnk_0200AF00.buttonY[2] = (s8)layout->rButtonY;
    gUnk_0200AF00.unk_32 = layout->rButtonText;
    layout++;
    do {
        CreateUIElement(layout->aButtonX, layout->aButtonY);
        layout = (KeyButtonLayout*)&layout->aButtonText;
    } while ((s8)layout->aButtonX != -1);
}

void SetMenuType(u32 menuType) {
    gMenu.menuType = menuType;
    gMenu.overlayType = 0;
    gMenu.storyPanelIndex = 0;
}

void ResetUI(void) {
    MemClear(&gUI, sizeof(gUI));
}

void MenuFadeIn(u32 param_1, u32 param_2) {
    if (gUI.nextToLoad == 0) {
        MemClear(&gUI, sizeof(gUI));
        gUI.lastState = param_1;
        gUI.field_0x3 = param_2;
        gUI.pauseFadeIn = gMain.substate;
    } else {
        gUI.state = param_1;
        gUI.field_0x5 = param_2;
        gUI.nextToLoad = 1;
    }
    gUI.field_0x6 = 0;
    gUI.fadeType = -1;
    gUI.fadeInTime = 0x20;
    gMain.substate = GAMEMAIN_SUBTASK;
    SetFade(FADE_IN_OUT | FADE_INSTANT, 0x20);
    gUnk_02018EB0.unk_0 = 0;
    gUnk_02018EB0.unk_1 = 0;
}

void sub_080A71A4(u32 param_1, u32 param_2, u32 param_3) {
    if (gUI.nextToLoad == 0) {
        gUI.unk_e = param_3;
    } else {
        gUI.unk_f = param_3;
    }
    MenuFadeIn(param_1, param_2);
}

void sub_080A71C4(u32 param_1, u32 param_2, u32 fadeType, u32 param_4) {
    MenuFadeIn(param_1, param_2);
    gUI.fadeType = fadeType;
    gUI.fadeInTime = param_4;
}

void Subtask_Exit(void) {
    gUI.nextToLoad = 3;
    SetFade(FADE_IN_OUT | FADE_INSTANT, 0x20);
}

void sub_080A71F4(ScreenTransitionData* exitTransition) {
    if (exitTransition != NULL) {
        DoExitTransition(exitTransition);
    }
    DeleteAllEntities();
    sub_0805E974();
    DeleteAllEntities();
    gMain.state = GAMETASK_INIT;
    gMain.substate = GAMEMAIN_INITROOM;
}

void GameMain_Subtask(void) {
    if (gUI.nextToLoad < 3) {
        if (gUI.state != 0) {
            gUI.field_0x3 = gUI.field_0x5;
            gUI.lastState = gUI.state;
            gUI.state = 0;
        }
    }
    gUnk_0812901C[gUI.nextToLoad]();
}

void Subtask_FadeIn(void) {
    if (!gFadeControl.active) {
        MemCopy(&gScreen, &gUnk_03001020, sizeof(Screen));
        MemCopy(gPaletteBuffer, gUnk_02024090, 0x400);
        MemCopy(&gGFXSlots, &gUI.gfxSlotList, sizeof(GfxSlotList));
        MemCopy(gPaletteList, gUI.palettes, sizeof(gUI.palettes));
        MemCopy(&gRoomControls, &gUI.roomControls, sizeof(RoomControls));
        MemCopy(gUnk_03000420, gUI.unk_2a8, sizeof(gUI.unk_2a8));
        MemCopy(&gActiveScriptInfo, &gUI.activeScriptInfo, sizeof(ActiveScriptInfo));
        sub_0805E958();
        gUI.unk_d = gRoomTransition.field_0x2c[2];
        gUI.controlMode = gPlayerState.controlMode;
        gUI.currentRoomProperties = gCurrentRoomProperties;
        gUI.mapBottomBgControlPtr = gMapBottom.bgControlPtr;
        gUI.mapTopBgControlPtr = gMapTop.bgControlPtr;
        gUI.nextToLoad = 1;
    }
}

void Subtask_Init(void) {
    if (gFadeControl.active == 0) {
        DeleteAllEntities();
        MemClear(&gMenu, sizeof(FigurineMenu));
        MemClear(&gRoomControls, 0x38);
        MemClear(gOAMControls.unk, 0x100);
        MemClear(&gActiveScriptInfo, sizeof(gActiveScriptInfo));
        gActiveScriptInfo.fadeSpeed = 8;
        DispReset(1);
        MessageInitialize();
        ResetPalettes();
        ResetPaletteTable(0);
        gGFXSlots.unk0 = 1;
        gUI.nextToLoad = 2;
        gRoomTransition.field_0x2c[3] = 1;
    }
}

void Subtask_FadeOut(void) {
    if (!gFadeControl.active) {
        DeleteAllEntities();
        sub_0805E974();
        gCurrentRoomProperties = gUI.currentRoomProperties;
        gPlayerState.controlMode = gUI.controlMode;
        gMapBottom.bgControlPtr = gUI.mapBottomBgControlPtr;
        gMapTop.bgControlPtr = gUI.mapTopBgControlPtr;
        MemCopy(&gUI.activeScriptInfo, &gActiveScriptInfo, sizeof(ActiveScriptInfo));
        MemCopy(gUI.unk_2a8, gUnk_03000420, sizeof(gUI.unk_2a8));
        MemCopy(gUI.palettes, gPaletteList, sizeof(gUI.palettes));
        MemCopy(&gUI.gfxSlotList, &gGFXSlots, sizeof(gGFXSlots));
        MemCopy(&gUI.roomControls, &gRoomControls, sizeof(RoomControls));
        MemCopy(&gUnk_03001020, &gScreen, sizeof(Screen));
        gArea.localFlagOffset = GetFlagBankOffset(gRoomControls.area);
        gArea.pCurrentRoomInfo = GetCurrentRoomInfo();
        RestoreGameTask(gUI.field_0x6);
        sub_0801D000(gUI.unk_d != 0);
        sub_080A74F4();
        if (gUI.fadeType != 0xffff) {
            SetFade(gUI.fadeType, gUI.fadeInTime);
        } else {
            SetFadeInverted(gUI.fadeInTime);
        }
        gUI.nextToLoad = 4;
        gRoomTransition.field_0x2c[3] = 0;
    }
}

void Subtask_Die(void) {
    sub_080A74F4();
    if (gFadeControl.active == 0) {
        gMain.substate = gUI.pauseFadeIn;
        gUI.nextToLoad = gFadeControl.active;
        gUI.lastState = gFadeControl.active;
        ResetSystemPriority();
    }
}

void sub_080A74F4(void) {
    SetInitializationPriority();
    gMain.pad = 0;
    FlushSprites();
    UpdateEntities();
    UpdateManagers();
    DrawUI();
    DrawUIElements();
    UpdateCarriedObject();
    DrawEntities();
    CopyOAM();
}

void Subtask_Update(void) {
    gSubtasks[gUI.lastState]();
}
