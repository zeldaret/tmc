/**
 * @file kinstoneMenu.c
 * @ingroup Subtasks
 *
 * @brief Kinstone Menu Subtask
 */
#include "area.h"
#include "common.h"
#include "enemy.h"
#include "flags.h"
#include "functions.h"
#include "kinstone.h"
#include "main.h"
#include "menu.h"
#include "message.h"
#include "npc.h"
#include "object.h"
#include "room.h"
#include "roomid.h"
#include "save.h"
#include "screen.h"
#include "sound.h"
#include "subtask.h"
#include "ui.h"

extern u32 sub_08000E44(u32);
extern void sub_080A3B74(void);
extern u32 sub_080A3B48(void);
extern void sub_0805ECEC(u32, u32, u32, u32);
extern void NotifyFusersOnFusionDone(u32);
extern void RemoveKinstoneFromBag(u32);
extern WStruct* sub_0805F2C8(void);
extern void sub_0805F300(WStruct*);
extern u32 sub_0805F76C(u8*, WStruct*);

typedef struct {
    void* sourceAddress;
    void* destinationAddress;
    union {
        u32 word;
        struct {
            u16 low;
            u16 high;
        } half;
    } control;
} DMARegisters;

#define DMA3 ((volatile DMARegisters*)REG_ADDR_DMA3SAD)

extern const u32 gUnk_080CA06C[];
extern const u8 gGlobalGfxAndPalettes[];
extern u8 gTextGfxBuffer[];

u32 sub_080A44E0(WStruct*, u8*, u32);
u32 sub_080A4418(u32, u32);
u32 sub_080A43DC(u32);
u32 sub_080A43A8(u32);
void sub_080A42E0(u32, u32);
void KinstoneMenu_080A4054(void);
void KinstoneMenu_080A4468(void);
void KinstoneMenu_080A422C(void);
void KinstoneMenu_080A414C(void);
void KinstoneMenu_080A4080(void);
u32 KinstoneMenu_080A4494(void);
void KinstoneMenu_080A4528(void);

Subtask KinstoneMenu_Type0;
Subtask KinstoneMenu_Type1;
Subtask KinstoneMenu_Type2;
Subtask KinstoneMenu_Type3;
Subtask KinstoneMenu_Type4;
Subtask KinstoneMenu_Type5;

// Belongs to subtask2.c
const ScreenTransitionData gUnk_08128024[] = {
    { 1, { 0, 0, 0, 0 }, 0x98, 0xf8, 0, AREA_MT_CRENEL, ROOM_MT_CRENEL_CAVERN_OF_FLAMES_ENTRANCE, 1, 12, 4, 0 },
    { 1, { 0, 0, 0, 0 }, 0xf8, 0xf8, 0, AREA_VEIL_FALLS, ROOM_VEIL_FALLS_MAIN, 1, 12, 4, 0 },
    { 1, { 0, 0, 0, 0 }, 0x1e8, 0x1a8, 0, AREA_CLOUD_TOPS, ROOM_CLOUD_TOPS_CLOUD_TOPS, 1, 12, 4, 0 },
    { 1, { 0, 0, 0, 0 }, 0x278, 0x58, 0, AREA_HYRULE_TOWN, ROOM_HYRULE_TOWN_MAIN, 1, 12, 4, 0 },
    { 1, { 0, 0, 0, 0 }, 0xa8, 0x1b8, 0, AREA_LAKE_HYLIA, ROOM_LAKE_HYLIA_MAIN, 1, 12, 4, 0 },
    { 1, { 0, 0, 0, 0 }, 0x228, 0x398, 0, AREA_CASTOR_WILDS, ROOM_CASTOR_WILDS_MAIN, 1, 12, 4, 0 },
    { 1, { 0, 0, 0, 0 }, 0x2c8, 0x128, 0, AREA_HYRULE_FIELD, ROOM_HYRULE_FIELD_SOUTH_HYRULE_FIELD, 1, 12, 4, 0 },
    { 1, { 0, 0, 0, 0 }, 0x128, 0x2a8, 0, AREA_MINISH_WOODS, ROOM_MINISH_WOODS_MAIN, 1, 12, 4, 0 },
};

u32 sub_080A3B48(void) {
    u32 index;
    for (index = 0; index <= 0x12; index++) {
        if (gSave.kinstoneAmounts[index] == 0) {
            break;
        }
    }
    return index;
}

void sub_080A3B74(void) {
    gKinstoneMenu.unk2f = 0;
}

void Subtask_KinstoneMenu(void) {
    static Subtask* const kinstoneMenuTypes[] = {
        KinstoneMenu_Type0, KinstoneMenu_Type1, KinstoneMenu_Type2,
        KinstoneMenu_Type3, KinstoneMenu_Type4, KinstoneMenu_Type5,
    };
#if !(defined(DEMO_USA) || defined(DEMO_JP))
    gRoomTransition.entity_update_type = 2;
    FlushSprites();
    kinstoneMenuTypes[gMenu.menuType]();
    sub_080A3B74();
    KinstoneMenu_080A4054();
    UpdateUIElements();
    DrawUIElements();
    UpdateEntities();
    DrawEntities();
    CopyOAM();
    gRoomTransition.entity_update_type = 0;
#endif
}

const u8 gUnk_081280DC[] = {
    0xd8u, 0xeu, 0xdu, 0xc4u, 0x1au, 0xeu, 0xffu, 0xd8u, 0u, 0x9u, 0u, 0u, 0x1u, 0xau, 0u, 0x1u, 0x1u, 0xffu,
};

void KinstoneMenu_Type0(void) {
    s32 iVar1;
    s32 iVar2;

    gMenu.column_idx = 1;
    gKinstoneMenu.unk2a = 0;
    sub_080A4D34();
    LoadPaletteGroup(0xcb);
    LoadGfxGroup(0x75);

    iVar1 = KinstoneMenu_080A4494();
    iVar2 = iVar1 + 7;
    if (iVar2 < 0) {
        iVar2 += 0x7;
    }

    iVar1 = (iVar2 >> 3) - 6;
    iVar1 = max(iVar1, 0);
    iVar1 = min(iVar1, 6);

    LoadGfxGroup(iVar1 + 0x76);
    gScreen.lcd.displayControl |= 0x1e00;
    gScreen.bg1.control = 0x1c01;
    gScreen.bg2.control = 0x1d02;
    gScreen.bg3.control = 0x1e0b;
    gScreen.bg1.updated = 1;
    gScreen.bg2.updated = 1;
    gScreen.bg3.updated = 1;
    KinstoneMenu_080A4528();
    sub_080A4398();
    AddKinstoneToBag(KINSTONE_NONE);
    sub_080A70AC((void*)gUnk_081280DC);
    SetMenuType(1);
    SetFade(FADE_BLACK_WHITE | FADE_INSTANT, 8);
}

const u8 gUnk_081280EE[] = {
    0x5u, 0x7u, 0xau, 0xeu, 0x13u, 0x1au,
};

void KinstoneMenu_Type1(void) {
    s32 tmp1, tmp2, tmp3, tmp4;
    GenericMenu* menu;
    if (gFadeControl.active) {
        return;
    }
    menu = &gGenericMenu;
    menu->base.column_idx = 2;
    tmp2 = menu->unk28 << 0x10;
    tmp1 = tmp2 - menu->unk10.i;
    if ((tmp1 < 0 ? -tmp1 : tmp1) <= 0x1ffdu) {
        menu->unk10.i = tmp2;
    } else {
        menu->base.column_idx = 1;
        tmp2 = sub_08000E44(tmp1);
        tmp3 = tmp1 / 0x20000;
        if (tmp3 < 0)
            tmp3 = -tmp3;
        if (tmp3 > 5) {
            tmp3 = 5;
        }
        menu->unk10.i += gUnk_081280EE[tmp3] * 0x666 * tmp2;
    }
    if (menu->unk29 != menu->unk10.i / 0x10000) {
        menu->unk29 = menu->unk10.i / 0x10000;
        SoundReq(SFX_TEXTBOX_CHOICE);
    }
    if ((gInput.newKeys & (L_BUTTON | START_BUTTON | B_BUTTON)) != 0) {
        SetMenuType(2);
        SoundReq(SFX_MENU_CANCEL);
        return;
    }
    tmp3 = menu->unk28;
    switch (gInput.unk4) {
        case DPAD_LEFT:
        case DPAD_UP:
            tmp3--;
            break;
        case DPAD_RIGHT:
        case DPAD_DOWN:
            tmp3++;
            break;
        case A_BUTTON:
            if (gMenu.column_idx == 2) {
                tmp3 = gGenericMenu.unk10.i / 0x10000;
                gGenericMenu.unk2a = gSave.kinstoneTypes[tmp3];
                SetMenuType(3);
            }
            break;
    }
    tmp4 = sub_080A3B48();
    if (tmp4 <= tmp3) {
        tmp3 = tmp4 - 1;
    }
    if (tmp4 < 2) {
        tmp3 = 0;
    }
    if (tmp3 < 0) {
        tmp3 = 0;
    }
    if (menu->unk28 != tmp3) {
        menu->unk28 = tmp3;
    }
}

void KinstoneMenu_Type2(void) {
    const KinstoneWorldEvent* ptr;
    if (gMenu.column_idx == 6) {
        gFuseInfo.fusionState = FUSION_STATE_6;
        ptr = &gKinstoneWorldEvents[gFuseInfo.kinstoneId];
        if (ptr->subtask != 0) {
            MenuFadeIn(ptr->subtask, ptr->worldEventId);
        } else {
            Subtask_Exit();
        }
    } else {
        gFuseInfo.fusionState = FUSION_STATE_5;
        Subtask_Exit();
    }
}

Subtask KinstoneMenu_Type3_Overlay0;
Subtask KinstoneMenu_Type3_Overlay1;
Subtask KinstoneMenu_Type3_Overlay2;
void KinstoneMenu_Type3(void) {
    static Subtask* const kinstoneMenu_Type3_overlays[] = {
        KinstoneMenu_Type3_Overlay0,
        KinstoneMenu_Type3_Overlay1,
        KinstoneMenu_Type3_Overlay2,
    };
    gMenu.column_idx = 3;
    kinstoneMenu_Type3_overlays[gMenu.overlayType]();
}

void KinstoneMenu_Type3_Overlay0(void) {
    gKinstoneMenu.unk18 = 0;
    gKinstoneMenu.unk2c += 2;
    if (0x45 < gKinstoneMenu.unk2c) {
        gKinstoneMenu.unk2c = 0x46;
        gMenu.overlayType = 1;
    }
}

void KinstoneMenu_Type3_Overlay1(void) {
    u32 temp = gKinstoneWorldEvents[gKinstoneMenu.unk2a].shape;
    if (temp != gKinstoneWorldEvents[gFuseInfo.kinstoneId].shape) {
        SoundReq(SFX_ITEM_SHIELD_BOUNCE);
        SetMenuType(4);
    } else {
        gMenu.overlayType = 2;
        gMenu.transitionTimer = 20;
        gScreen.lcd.displayControl |= 0x2000;
        gScreen.controls.window0HorizontalDimensions = 0x6887;
        gScreen.controls.window0VerticalDimensions = 0x405f;
        gScreen.controls.windowInsideControl = 0x3f;
        gScreen.controls.windowOutsideControl = 0x1f;
        gScreen.controls.layerFXControl = 0x3f90;
        gScreen.controls.layerBrightness = 0;
        SoundReq(SFX_FA);
    }
}

void KinstoneMenu_Type3_Overlay2(void) {
    if (++gScreen.controls.layerBrightness > 14) {
        gScreen.controls.layerBrightness = 0;
        gScreen.lcd.displayControl &= 0xdfff;
        SetMenuType(5);
    }
}

void KinstoneMenu_Type4(void) {
    gMenu.column_idx = 4;
    gKinstoneMenu.unk2c -= 3;
    gKinstoneMenu.unk18 += 0x100;
    if (gKinstoneMenu.unk2c < 0) {
        gKinstoneMenu.unk18 = 0;
        gKinstoneMenu.unk2c = 0;
        SetMenuType(1);
        SoundReq(SFX_MENU_ERROR);
    }
}

Subtask KinstoneMenu_Type5_Overlay0;
Subtask KinstoneMenu_Type5_Overlay1;
Subtask KinstoneMenu_Type5_Overlay2;
Subtask KinstoneMenu_Type5_Overlay3;
void KinstoneMenu_Type5(void) {
    static Subtask* const kinstoneMenu_Type5_Overlays[] = {
        KinstoneMenu_Type5_Overlay0,
        KinstoneMenu_Type5_Overlay1,
        KinstoneMenu_Type5_Overlay2,
        KinstoneMenu_Type5_Overlay3,
    };
    kinstoneMenu_Type5_Overlays[gMenu.overlayType]();
}

void KinstoneMenu_Type5_Overlay0(void) {
    gMenu.column_idx = 5;
    WriteBit(gSave.fusedKinstones, gFuseInfo.kinstoneId);
    if (++gSave.fusedKinstoneCount > 99) {
        gSave.didAllFusions = 1;
    }
    KinstoneMenu_080A4468();
    SoundReq(SFX_TASK_COMPLETE);
    MessageAtHeight(TEXT_INDEX(TEXT_WINDCRESTS, 0x2), 0xe);
    gMenu.overlayType = 1;
    gMenu.transitionTimer = 120;
}

void KinstoneMenu_Type5_Overlay1(void) {
    if ((gMessage.doTextBox & 0x7f) == 0) {
        gMenu.overlayType = 2;
        SoundReq(SFX_147);
    }
}

void KinstoneMenu_Type5_Overlay2(void) {
    gMenu.transitionTimer--;
    if (gMenu.transitionTimer != 0) {
        gKinstoneMenu.unk18 += gKinstoneMenu.unk1a;
        gKinstoneMenu.unk1a += 0x20;
    } else {
        gMenu.column_idx = 6;
        gMenu.overlayType = 3;
        gMenu.transitionTimer = 79;
        CreateObject(KINSTONE_SPARK, 1, 0);
        SoundReq(SFX_1CA);
    }
}

void KinstoneMenu_Type5_Overlay3(void) {
    // TODO figure out why in some place s16 is needed and u16 in others
    if (--(s16)gMenu.transitionTimer < 0) {
        SetMenuType(2);
    }
}

// something kinstone related, maybe inventory
typedef struct {
    u8 unk_00[1];
    u8 unk_01;
    u8 unk_02[2];
} struct_02019EE0;
extern struct_02019EE0 gMapDataBottomSpecial[16];

void KinstoneMenu_080A4054(void) {
    u32 uVar2;
    KinstoneMenu_080A422C();
    KinstoneMenu_080A414C();
    KinstoneMenu_080A4080();
    for (uVar2 = 0; uVar2 < 0x10; uVar2++) {
        if (gMapDataBottomSpecial[uVar2].unk_01 != 0) {
            gMapDataBottomSpecial[uVar2].unk_01--;
        }
    }
}

void KinstoneMenu_080A4080(void) {
    static const u8 gUnk_08128110[] = {
        0u, 0u, 0u, 0u, 0u, 0u, 0u, 0x1u, 0x1u, 0x1u, 0x2u, 0x2u, 0x3u, 0x2u, 0x3u, 0x2u,
    };

    u32 uVar1;
    s32 iVar2;
    s32 iVar3;
    const u8* temp;

    u32 t;

    gOamCmd._4 = 0;
    gOamCmd._6 = 0;
    gOamCmd.y = 0x10 - gKinstoneMenu.unk2f;
    gOamCmd.x = 0x40;
    gOamCmd._8 = 0x400;
#ifdef EU
    DrawDirect(0x1fa, 0);
#else
    DrawDirect(0x1fb, 0);
#endif
    gOamCmd.y = 0x94;
    gOamCmd.x = 0x50;
    gOamCmd._8 = 0x480;
#ifdef EU
    t = 0x1f9;
#else
    t = 0x1fa;
#endif
    DrawDirect(t, 0);
    gOamCmd.x = 0xb8;
    gOamCmd._8 = 0x4a0;
    DrawDirect(t, 1);
    uVar1 = gMain.ticks >> 2 & 0xe;
    temp = &gUnk_08128110[uVar1];
    gOamCmd.x = 10 - temp[0];
    gOamCmd._8 = 0x4e0;
    iVar2 = sub_080A3B48() - 1;
    if (0 < iVar2) {
        iVar3 = gKinstoneMenu.unk10.WORD;
        if (iVar3 < 0) {
            iVar3 = gKinstoneMenu.unk10.WORD + 0xffff;
        }
        if (iVar3 >> 0x10 != iVar2) {
            gOamCmd.y = temp[1] + 0x77;
            DrawDirect(t, 3);
        }
        if (iVar3 >> 0x10 != 0) {
            gOamCmd.y = 0x27 - temp[1];
            DrawDirect(t, 2);
        }
    }
}

void KinstoneMenu_080A414C(void) {
    s32 uVar1;
    s32 iVar2;
    s32 uVar3;
    s32 tmp1;
    s32 tmp2;
    s32 tmp3;
    s32 tmp4;
    const s16* ptr;
    OAMCommand* OamCmd;
    u16 tmp5;

    s32 i;

    gOamCmd._4 = 0;
    gOamCmd._6 = 0;
    tmp3 = (s32)(gKinstoneMenu.unk10.HALF_U.LO);
    tmp2 = 0xb21;
    tmp5 = (tmp3 / tmp2);
    i = -3;
    tmp1 = 0xff;
    OamCmd = &gOamCmd;
    ptr = gSineTable;
    uVar1 = -tmp5 - 0x45;
    while (i < 4) {
        OamCmd->y = ((ptr[uVar1 & tmp1] * 0x44) / 0x100) + 0x4f;
        OamCmd->x = ((ptr[((uVar1 & tmp1) + 0x40) & tmp1] * 0x42) / 0x100) - 0x10;
        iVar2 = gKinstoneMenu.unk10.WORD / 0x10000 + i;
        if (iVar2 >= 0) {
            uVar3 = gSave.unk12B[iVar2];
            if (i == 0) {
                switch (gMenu.column_idx) {
                    case 3:
                    case 4:
                        uVar3--;
                        break;
                    default:
                        break;
                }
            }
            if (uVar3 > 0) {
                sub_080A42E0(gSave.unk118[iVar2], uVar3);
            }
        }
        uVar1 += 0x17;
        i++;
    }
}

void KinstoneMenu_080A422C(void) {
    static const s8 gUnk_08128120[] = {
        16,  18,  19,  22,  25,  34,  64,  123, -64, -34, -25, -22, -19, -18,
        -16, -18, -19, -22, -25, -34, -64, 123, 64,  34,  25,  22,  19,  0,
    };

    s32 uVar2;
    s32 t, t2;
    u16 t3;

    uVar2 = gKinstoneMenu.unk18 / 256;
    uVar2 %= 27;
    t3 = uVar2;
    sub_0805ECEC(0, gUnk_08128120[t3] << 4, 0x100, 0);
    gOamCmd._4 = 0x100;
    gOamCmd._6 = 0;
    gOamCmd.y = 0x4f;
    t = gKinstoneMenu.unk2a;
    t2 = 0x180;
    switch (gMenu.column_idx) {
        case 5:
            gOamCmd.x = 0x78;
            sub_080A42E0(t, 0xff);
            break;
        case 3:
        case 4:
            gOamCmd.x = gKinstoneMenu.unk2c + 0x32;
            sub_080A42E0(t, 0);
            t2 = 0x8a - (gKinstoneMenu.unk2c * 0x12 / 0x46);
            break;
        case 6:
            break;
        default:
            t2 = 0x8a;
            break;
    }

    gOamCmd.x = t2;
    sub_080A42E0(gFuseInfo.kinstoneId, 0);
}

void sub_080A42E0(u32 kinstoneId, u32 param_2) {
    u8 uVar1;
    s32 sVar2;
    s32 sVar3;
    s32 iVar4;

    const KinstoneWorldEvent* ptr = &gKinstoneWorldEvents[kinstoneId];

    if (param_2 == 0xff) {
        uVar1 = ptr->gfxOffsetFull;
    } else {
        uVar1 = ptr->gfxOffsetPiece;
    }
    iVar4 = sub_080A43A8(uVar1);
    if ((param_2 != 0) && (param_2 != 0xff)) {
        int index = iVar4 * 4;
        if (param_2 != gMapDataBottomSpecial[iVar4].unk_02[0]) {
            gMapDataBottomSpecial[iVar4].unk_02[0] = param_2;
            sub_0801C2F0(iVar4 * 2 + 0x2e0, param_2);
        }
        gOamCmd._8 = (s16)(iVar4 * 2) + 0x3ae0;
        sVar2 = gOamCmd.x;
        sVar3 = gOamCmd.y;
        if (gMenu.column_idx == 0) {
            gOamCmd.x += 0x10;
            gOamCmd.y += 9;
        } else {
            gOamCmd.x += 8;
            gOamCmd.y += 10;
        }
        DrawDirect(0, 5);
        gOamCmd.x = sVar2;
        gOamCmd.y = sVar3;
    }
    {
        int t;
        t = ptr->objPalette;
        t <<= 0xc;
        t |= 0x800;
        t |= (iVar4 << 4) + 0x300;
        gOamCmd._8 = t;
    }
    DrawDirect(0, 3);
}

void sub_080A4398(void) {
    MemClear(&gMapDataBottomSpecial, sizeof(gMapDataBottomSpecial));
}

u32 sub_080A43A8(u32 param_1) {
    u32 uVar1;

    uVar1 = sub_080A43DC(param_1);
    if (0xf < uVar1) {
        uVar1 &= 0xf;
        sub_080A4418(param_1, uVar1 * 0x10 + 0x300);
    }
    { int index = uVar1 * 4; }
    gMapDataBottomSpecial[uVar1].unk_00[0] = param_1;
    gMapDataBottomSpecial[uVar1].unk_01 = 2;
    return uVar1;
}

u32 sub_080A43DC(u32 unk1) {
    u32 i;
    for (i = 0; i < 16; i++) {
        if (unk1 == gMapDataBottomSpecial[i].unk_00[0]) {
            return i;
        }
    }
    for (i = 0; i < 16; i++) {
        if (gMapDataBottomSpecial[i].unk_01 == 0) {
            return i + 0x10;
        }
    }
    return 0;
}

u32 sub_080A4418(u32 param_1, u32 param_2) {
    void* src;
    u32 t, t2;
    void* dest;

    dest = (void*)(param_2 * 0x20 + 0x6010000);
    t = gUnk_080CA06C[param_1];
    t2 = t & 0x80000000;
    src = (void*)&gGlobalGfxAndPalettes[~t2 & t];
    if (t2) {
        LZ77UnCompVram(src, dest);
    } else {
        DMA3->sourceAddress = src;
        DMA3->destinationAddress = dest;
        DMA3->control.word = ((DMA_ENABLE | DMA_START_NOW | DMA_32BIT | DMA_SRC_INC | DMA_DEST_INC) << 16) + 0x80;
        return DMA3->control.word;
    }
}

void KinstoneMenu_080A4468(void) {
    gPossibleInteraction.kinstoneId = KINSTONE_NONE;
    gPossibleInteraction.currentObject->kinstoneId = KINSTONE_NONE;
    NotifyFusersOnFusionDone(gFuseInfo.kinstoneId);
    RemoveKinstoneFromBag(gKinstoneMenu.unk2a);
}

u32 KinstoneMenu_080A4494(void) {
    WStruct* psVar1;
    u8* r1;
    u32 ret;

    psVar1 = sub_0805F2C8();
    if (psVar1 != NULL) {
        psVar1->unk8 = gTextGfxBuffer;
        psVar1->charColor = 0;
        psVar1->bgColor = 5;
        psVar1->unk1 = 0;
        sub_080A44E0(psVar1, gSave.name, 0x80);
#if NON_MATCHING
        ret = sub_080A44E0(psVar1, GetFuserId(gFuseInfo.entity) >> 0x20, 0xa0);
#else
        GetFuserId(gFuseInfo.entity);
        asm("" : "=r"(r1));
        ret = sub_080A44E0(psVar1, r1, 0xa0);
#endif
        sub_0805F300(psVar1);
    }
    return ret;
}

u32 sub_080A44E0(WStruct* param_1, u8* param_2, u32 param_3) {
    u32 uVar1;
    u32 size;

    param_1->unk6 = 0;
    param_1->unk4 = 0x60;
    size = 0x300;
    MemClear(param_1->unk8, size);
    uVar1 = sub_0805F76C(param_2, param_1);
    MemCopy(param_1->unk8, (void*)(param_3 * 0x20 + 0x6010000), size);
    return uVar1;
}

void KinstoneMenu_080A4528(void) {
    Entity* entity;

    if (gFuseInfo.entity->kind == NPC) {
        entity = CreateNPC(gFuseInfo.entity->id, gFuseInfo.entity->type, gFuseInfo.entity->type2);
    } else {
        if (gFuseInfo.entity->kind != ENEMY) {
            return;
        }
        entity = CreateEnemy(gFuseInfo.entity->id, gFuseInfo.entity->type);
    }
    if (entity != NULL) {
        if (entity->kind == NPC) {
            NPCInit(entity);
            entity->subtimer = entity->id;
            entity->id = 0x56;
        } else {
            EnemyInit(entity);
            entity->subtimer = entity->id;
            entity->id = 0x66;
        }
        entity->x.HALF.HI = 0xcc;
        entity->y.HALF.HI = 0x60;
        entity->spritePriority.b1 = 2;
        entity->spriteSettings.draw = 1;
        entity->hitbox = NULL;
    }
}
