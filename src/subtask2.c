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

extern u8 gUnk_08128D38[];
extern u8 gUnk_08128D43[];
extern u16 gUnk_02017830[];
extern u8 gUnk_080C9C6C[];
extern u8 gUnk_020350F0[];

void sub_080A5CFC(u32, void*, u32);
void sub_080A6FB4(u32, u32);
void sub_080A66D0();
void sub_080A5D1C();
void sub_080A70AC(const KeyButtonLayout* layout);
u32 sub_080A6F40();
void sub_080A67C4(u32);
void sub_080A68D4();
u32 sub_080A69E0();
void sub_080A6EE0(u32 param_1);

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
extern u8 gUnk_08128F58[];
extern KeyButtonLayout gUnk_08128DBC;

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

extern void (*const gUnk_0812901C[])(void);

void sub_080A74F4(void);

extern void DrawUI(void);
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
} gUnk_08128DE8_struct;
extern gUnk_08128DE8_struct gUnk_08128DE8[];

typedef struct {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 unk4;
    s8 unk5;
    u16 unk6;
} struct_gUnk_08128D70;

extern const struct_gUnk_08128D70 gUnk_08128D70[];

ASM_FUNC("asm/non_matching/subtask2/sub_080A5594.inc", void sub_080A5594())

ASM_FUNC("asm/non_matching/subtask2/sub_080A56A0.inc", void sub_080A56A0())

ASM_FUNC("asm/non_matching/subtask2/sub_080A57F4.inc", void sub_080A57F4())

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
        SetFade(6, 8);
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

ASM_FUNC("asm/non_matching/subtask2/sub_080A5F48.inc", void sub_080A5F48())

void sub_080A6008(void) {
    gUnk_08128D58[gMenu.menuType]();
}

void sub_080A6024(void) {
    sub_080A70AC((KeyButtonLayout*)&gUnk_08128D60);
    sub_0801E738(0);
    sub_080A4398();
    SetMenuType(1);
}

ASM_FUNC("asm/non_matching/subtask2/sub_080A6044.inc", void sub_080A6044())

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

ASM_FUNC("asm/non_matching/subtask2/sub_080A617C.inc", void sub_080A617C())

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

ASM_FUNC("asm/non_matching/subtask2/sub_080A62E0.inc", void sub_080A62E0())

ASM_FUNC("asm/non_matching/subtask2/sub_080A6378.inc", void sub_080A6378())

void sub_080A6438(void) {
    u32 uVar1;
    u8* pcVar2;
    u32 uVar3;

    gOamCmd._4 = 0x400;
    gOamCmd._6 = 0;
    gOamCmd._8 = 0;
    uVar1 = gSave.field_0x20 & gGenericMenu.unk10.h[0];
    for (pcVar2 = gUnk_08128F58, uVar3 = 0; *pcVar2 != 0; uVar3++, pcVar2 += 8) {
        if ((1 << uVar3 & uVar1) != 0) {
            gOamCmd.x = pcVar2[1];
            gOamCmd.y = pcVar2[2];
#ifdef EU
            DrawDirect(0x1fa, *pcVar2);
#else
            DrawDirect(0x1fb, *pcVar2);
#endif
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
#ifdef EU
            DrawDirect(0x1fa, 0x28 + 3 * i);
#else
            DrawDirect(0x1fb, 0x28 + 3 * i);
#endif
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

ASM_FUNC("asm/non_matching/subtask2/sub_080A65AC.inc", void sub_080A65AC())

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

ASM_FUNC("asm/non_matching/subtask2/sub_080A66D0.inc", void sub_080A66D0())

ASM_FUNC("asm/non_matching/subtask2/sub_080A67C4.inc", void sub_080A67C4(u32 param_1))

ASM_FUNC("asm/non_matching/subtask2/sub_080A68D4.inc", void sub_080A68D4())

typedef struct {
    u8 unk0;
    u8 unk1;
    u16 unk2;
    u16 unk4;
    u16 unk6;
} struct_sub_080A698C;

void sub_080A698C(u32 param_1, u32 param_2, u32 param_3, u32 param_4) {
    int iVar1;

    iVar1 = sub_080A69E0();
    if (0 < iVar1) {
        ((struct_sub_080A698C*)&gMapDataBottomSpecial)[gGenericMenu.unk2d].unk0 = param_4 >> 8;
        ((struct_sub_080A698C*)&gMapDataBottomSpecial)[gGenericMenu.unk2d].unk1 = param_4;
        ((struct_sub_080A698C*)&gMapDataBottomSpecial)[gGenericMenu.unk2d].unk2 = param_3;
        ((struct_sub_080A698C*)&gMapDataBottomSpecial)[gGenericMenu.unk2d].unk4 = iVar1;
        ((struct_sub_080A698C*)&gMapDataBottomSpecial)[gGenericMenu.unk2d].unk6 = iVar1 >> 0x10;
        gGenericMenu.unk2d++;
    }
}

ASM_FUNC("asm/non_matching/subtask2/sub_080A69E0.inc", u32 sub_080A69E0())

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

ASM_FUNC("asm/non_matching/subtask2/sub_080A6B04.inc", void sub_080A6B04())

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
    SetFade(4, 8);
}

ASM_FUNC("asm/non_matching/subtask2/sub_080A6CD8.inc", void sub_080A6CD8())

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
        SetFade(5, 8);
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
    u32 uVar1;
    u32 i;

    gOamCmd._4 = 0;
    gOamCmd._6 = 0;
    gOamCmd._8 = 0x400;
    gGenericMenu.unk2c++;
    sub_080A6EE0(gMenu.field_0x3);
    if ((gGenericMenu.unk2c & 0x10) != 0) {
        uVar1 = 0x5d;
    } else {
        uVar1 = 0x5e;
    }

#ifdef EU
    DrawDirect(0x1fa, uVar1);
#else
    DrawDirect(0x1fb, uVar1);
#endif
    for (i = 0; i < 8; i++) {
        if ((gSave.windcrests & (1 << (i + 0x18))) != 0) {
            sub_080A6EE0(i);
#ifdef EU
            DrawDirect(0x1fa, 0x5c);
#else
            DrawDirect(0x1fb, 0x5c);
#endif
        }
    }
}

ASM_FUNC("asm/non_matching/subtask2/sub_080A6EE0.inc", void sub_080A6EE0(u32 param_1))

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

ASM_FUNC("asm/non_matching/subtask2/sub_080A6FB4.inc", void sub_080A6FB4(u32 a, u32 b))

void sub_080A7040(u32 param_1) {
    extern Font gUnk_08129004;
    extern u8 gUnk_02022130[];
    if (gGenericMenu.unk2e.HWORD != param_1) {
        gGenericMenu.unk2e.HWORD = param_1;
        MemClear(gUnk_02022130, 0x300);
        MemCopy(gUnk_02022130 - 0x200, (void*)0x600e000, 0x800);
        if (GetInventoryValue(gUnk_08128D70[param_1].unk0) != 0) {
            sub_0805F46C(gUnk_08128D70[param_1].unk6, &gUnk_08129004);
        }
        gScreen.bg1.yOffset = 3;
        gScreen.bg1.updated = 1;
    }
}

ASM_FUNC("asm/non_matching/subtask2/sub_080A70AC.inc", void sub_080A70AC(const KeyButtonLayout* layout))

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
    gUI.isLoading = -1;
    gUI.fadeInTime = 0x20;
    gMain.substate = GAMEMAIN_SUBTASK;
    SetFade(5, 0x20);
    gUnk_02018EB0.unk_0 = 0;
    gUnk_02018EB0.unk_1 = 0;
}

void sub_080A71A4(u32 param_1, u32 param_2, u32 param_3) {
    if (gUI.nextToLoad == 0) {
        gUI.fillerC[2] = param_3;
    } else {
        gUI.fillerC[3] = param_3;
    }
    MenuFadeIn(param_1, param_2);
}

void sub_080A71C4(u32 param_1, u32 param_2, u32 param_3, u32 param_4) {
    MenuFadeIn(param_1, param_2);
    gUI.isLoading = param_3;
    gUI.fadeInTime = param_4;
}

void Subtask_Exit(void) {
    gUI.nextToLoad = 3;
    SetFade(5, 0x20);
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

ASM_FUNC("asm/non_matching/subtask2/Subtask_FadeIn.inc", void Subtask_FadeIn())

void Subtask_Init(void) {
    if (gFadeControl.active == 0) {
        DeleteAllEntities();
        MemClear(&gMenu, 0x30);
        MemClear(&gRoomControls, 0x38);
        MemClear(gOAMControls.unk, 0x100);
        MemClear(&gActiveScriptInfo, 0xc);
        gActiveScriptInfo.unk_08 = 8;
        DispReset(1);
        MessageInitialize();
        ResetPalettes();
        ResetPaletteTable(0);
        gGFXSlots.unk0 = 1;
        gUI.nextToLoad = 2;
        gRoomTransition.field_0x2c[3] = 1;
    }
}

ASM_FUNC("asm/non_matching/subtask2/Subtask_FadeOut.inc", void Subtask_FadeOut())

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
