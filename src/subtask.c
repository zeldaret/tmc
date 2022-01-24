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

extern const u32 gUnk_080CA06C[];
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

u32 sub_08000E44(u32);
s32 sub_080A3B48(void);
void sub_080A4468(void);
void sub_080A422C(void);
void sub_080A414C(void);
void sub_080A4080(void);
void sub_080A42E0(u32, u32);
void sub_0805ECEC(u32, u32, u32, u32);
u32 sub_080A43A8(u32);
void sub_0801C2F0(u32, u32);
u32 sub_080A4418(u32, u32);
u32 sub_080A43DC(u32);
void sub_0801E6C8(u32);
void sub_0801E798(u32);
u32 sub_080A44E0(struct_02036540*, u8*, u32);
struct_02036540* sub_0805F2C8(void);
void sub_0805F300(struct_02036540*);
u32 sub_0805F76C(u8*, struct_02036540*);
void sub_080A4978(void);
void sub_080A4B44(void);
void sub_080A4DA8(u32);
u32 sub_080A4CBC(u32);
void sub_080A4BA0(u32, u32);
void sub_0805F46C(u32, const u16**);
void sub_080A4DB8(u32);
void sub_08056250(void);
void sub_080A5128(void);
u32 sub_080A51F4(void);
void sub_080A51D4(void);
void sub_080A5F48(u32, u32);

extern void (*const gUnk_081280C4[])(void);
extern const u8 gUnk_081280EE[];

typedef struct {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 unk4;
    u8 unk5;
    u8 unk6;
    u8 unk7;
} struct_080C9CBC;

extern const struct_080C9CBC gUnk_080C9CBC[];
extern void (*const gUnk_081280F4[])(void);

extern u8 gUnk_02002C81[];
typedef struct {
    u8 unk_00[1];
    u8 unk_01;
    u8 unk_02[2];
} struct_02019EE0;

extern struct_02019EE0 gUnk_02019EE0[];
extern s8 gUnk_08128120[];

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

extern u8 gTextGfxBuffer[];
extern u8 gUnk_02002AC0[];

extern const struct {
    u8 filler[7];
    u8 unk7;
} gUnk_080FC3E4[];

extern u32 gUnk_02002B0E;
extern const KeyButtonLayout gUnk_0812813C;
extern const u16* gUnk_08128190;
extern u8 gUnk_020344A0[8];
typedef struct {
    u8 unk0;
    u8 unk1;
    u16 unk2;
    u16 unk4;
    u16 unk6;
} struct_08128AD8;
extern const struct_08128AD8 gUnk_08128AD8[];

extern const struct {
    u8 unk0;
    u8 unk1;
    u8 filler[2];
    void (*func)(void);
} gUnk_08128A38[];

extern const KeyButtonLayout gUnk_08128B50;
extern const u8 gUnk_080FD5B4[];

void Subtask_KinstoneMenu(void) {
#if !(defined(DEMO_USA) || defined(DEMO_JP))
    gRoomTransition.player_status.field_0x24[8] = 2;
    FlushSprites();
    gUnk_081280C4[gMenu.menuType]();
    sub_080A3B74();
    sub_080A4054();
    sub_0801C1D4();
    DrawOAMCmd();
    UpdateEntities();
    DrawEntities();
    CopyOAM();
    gRoomTransition.player_status.field_0x24[8] = 0;
#endif
}

extern void gUnk_081280DC;

void sub_080A3BD0(void) {
    s32 iVar1;
    s32 iVar2;

    gMenu.column_idx = 1;
    gGenericMenu.unk2a = 0;
    sub_080A4D34();
    LoadPaletteGroup(0xcb);
    LoadGfxGroup(0x75);

    iVar1 = sub_080A4494();
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
    sub_080A4528();
    sub_080A4398();
    sub_0801E738(0);
    sub_080A70AC(&gUnk_081280DC);
    sub_080A7114(1);
    SetFade(6, 8);
}

NONMATCH("asm/non_matching/subtask/sub_080A3C6C.inc", void sub_080A3C6C(void)) {
    s32 tmp1, tmp2, tmp3, tmp4, tmp5;
    u8* ptr;
    GenericMenu* menu;
    if (gFadeControl.active) {
        return;
    }
    menu = &gGenericMenu;
    menu->base.column_idx = 2;
    tmp2 = menu->unk28 * 0x10000;
    tmp1 = tmp2 - menu->unk10.i;
    if ((tmp1 < 0 ? -tmp1 : tmp1) <= 0x1ffdu) {
        menu->unk10.i = tmp2;
    } else {
        menu->base.column_idx = 1;
        tmp2 = sub_08000E44(tmp1);
        tmp1 = tmp1 / 0x20000;
        if (tmp1 < 0)
            tmp1 = -tmp1;
        if (tmp1 > 5) {
            tmp1 = 5;
        }
        menu->unk10.i += gUnk_081280EE[tmp1] * 0x666 * tmp2;
    }
    if (menu->unk29 != menu->unk10.i / 0x10000) {
        menu->unk29 = menu->unk10.i / 0x10000;
        SoundReq(SFX_TEXTBOX_CHOICE);
    }
    if ((gInput.newKeys & 0x20a) != 0) {
        sub_080A7114(2);
        SoundReq(SFX_MENU_CANCEL);
        return;
    }
    tmp3 = menu->unk28;
    switch (gInput.unk4) {
        case 0x20:
        case 0x40:
            tmp3 -= 1;
            break;
        case 0x10:
        case 0x80:
            tmp3 += 1;
            break;
        case 1:
            if (gMenu.column_idx == 2) {
                tmp3 = gGenericMenu.unk10.i / 0x10000;
                gGenericMenu.unk2a = gSave.unk118[tmp3];
                sub_080A7114(3);
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
END_NONMATCH

void sub_080A3DB8(void) {
    const struct_080C9CBC* ptr;
    if (gMenu.column_idx == 6) {
        gFuseInfo._0 = 6;
        ptr = &gUnk_080C9CBC[gFuseInfo._3];
        if (ptr->unk3 != 0) {
            MenuFadeIn(ptr->unk3, ptr->unk4);
        } else {
            Subtask_Exit();
        }
    } else {
        gFuseInfo._0 = 5;
        Subtask_Exit();
    }
}

void sub_080A3E00(void) {
    gMenu.column_idx = 3;
    gUnk_081280F4[gMenu.overlayType]();
}

void sub_080A3E20(void) {
    gGenericMenu.unk18 = 0;
    gGenericMenu.unk2c += 2;
    if (0x45 < gGenericMenu.unk2c) {
        gGenericMenu.unk2c = 0x46;
        gMenu.overlayType = 1;
    }
}

void sub_080A3E48(void) {
    u32 temp = gUnk_080C9CBC[gGenericMenu.unk2a].unk5;
    if (temp != gUnk_080C9CBC[gFuseInfo._3].unk5) {
        SoundReq(SFX_ITEM_SHIELD_BOUNCE);
        sub_080A7114(4);
    } else {
        gMenu.overlayType = 2;
        gMenu.transitionTimer = 0x14;
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

void sub_080A3EDC(void) {
    if (++gScreen.controls.layerBrightness > 14) {
        gScreen.controls.layerBrightness = 0;
        gScreen.lcd.displayControl &= 0xdfff;
        sub_080A7114(5);
    }
}

void sub_080A3F10(void) {
    gMenu.column_idx = 4;
    gGenericMenu.unk2c -= 3;
    gGenericMenu.unk18 += 0x100;
    if (gGenericMenu.unk2c < 0) {
        gGenericMenu.unk18 = 0;
        gGenericMenu.unk2c = 0;
        sub_080A7114(1);
        SoundReq(SFX_MENU_ERROR);
    }
}

void sub_080A3F4C(void) {
    extern void (*const gUnk_08128100[])(void);
    gUnk_08128100[gMenu.overlayType]();
}

void sub_080A3F68(void) {
    gMenu.column_idx = 5;
    WriteBit((u32*)gUnk_02002C81, gFuseInfo._3);
    if (99 < ++gUnk_02002C81[-298]) {
        gUnk_02002C81[-299] = 1;
    }
    sub_080A4468();
    SoundReq(SFX_TASK_COMPLETE);
    MessageAtHeight(0x702, 0xe);
    gMenu.overlayType = 1;
    gMenu.transitionTimer = 0x78;
}

void sub_080A3FCC(void) {
    if ((gMessage.doTextBox & 0x7f) == 0) {
        gMenu.overlayType = 2;
        SoundReq(SFX_147);
    }
}

void sub_080A3FF4(void) {
    gMenu.transitionTimer -= 1;
    if (gMenu.transitionTimer != 0) {
        gGenericMenu.unk18 += gGenericMenu.unk1a.HWORD;
        gGenericMenu.unk1a.HWORD += 0x20;
    } else {
        gMenu.column_idx = 6;
        gMenu.overlayType = 3;
        gMenu.transitionTimer = 0x4f;
        CreateObject(OBJECT_B3, 1, 0);
        SoundReq(SFX_1CA);
    }
}

void sub_080A4038(void) {
    // TODO figure out why in some place s16 is needed and u16 in others
    if (--(s16)gMenu.transitionTimer < 0) {
        sub_080A7114(2);
    }
}

void sub_080A4054(void) {
    u32 uVar2;
    sub_080A422C();
    sub_080A414C();
    sub_080A4080();
    for (uVar2 = 0; uVar2 < 0x10; uVar2++) {
        if (gUnk_02019EE0[uVar2].unk_01 != 0) {
            gUnk_02019EE0[uVar2].unk_01 -= 1;
        }
    }
}

extern u8 gUnk_08128110[];
void sub_080A4080(void) {
    u32 uVar1;
    s32 iVar2;
    s32 iVar3;
    u8* temp;

    u32 t;

    gOamCmd._4 = 0;
    gOamCmd._6 = 0;
    gOamCmd.y = 0x10 - (s8)gGenericMenu.unk2e.HALF.HI;
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
    uVar1 = gMain.ticks.HWORD >> 2 & 0xe;
    temp = &gUnk_08128110[uVar1];
    gOamCmd.x = 10 - temp[0];
    gOamCmd._8 = 0x4e0;
    iVar2 = sub_080A3B48() - 1;
    if (0 < iVar2) {
        iVar3 = gGenericMenu.unk10.i;
        if (iVar3 < 0) {
            iVar3 = gGenericMenu.unk10.i + 0xffff;
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

NONMATCH("asm/non_matching/subtask/sub_080A414C.inc", void sub_080A414C(void)) {
    s32 uVar1;
    s32 iVar2;
    s32 uVar3;

    s32 i;

    gOamCmd._4 = 0;
    gOamCmd._6 = 0;
    uVar1 = gGenericMenu.unk10.h[0] / 0xb21;
    for (i = -3, uVar1 = -uVar1 - 0x45; i < 4; uVar1 += 0x17, i++) {
        gOamCmd.y = ((gSineTable[uVar1 & 0xff] * 0x44) / 0x100) + 0x4f;
        gOamCmd.x = ((gSineTable[(uVar1 + 0x40) & 0xff] * 0x42) / 0x100) - 0x10;
        iVar2 = gGenericMenu.unk10.i / 0x10000 + i;
        if (iVar2 >= 0) {
            uVar3 = gSave.unk12B[iVar2];
            if (i == 0) {
                switch (gMenu.column_idx) {
                    case 3:
                    case 4:
                        uVar3 -= 1;
                        break;
                    default:
                        break;
                }
            }
            if (0 < uVar3) {
                sub_080A42E0(gSave.unk118[iVar2], uVar3);
            }
        }
    }
}
END_NONMATCH

void sub_080A422C(void) {
    s32 uVar2;
    s32 t, t2;
    u16 t3;

    uVar2 = gGenericMenu.unk18 / 256;
    uVar2 %= 27;
    t3 = uVar2;
    sub_0805ECEC(0, gUnk_08128120[t3] << 4, 0x100, 0);
    gOamCmd._4 = 0x100;
    gOamCmd._6 = 0;
    gOamCmd.y = 0x4f;
    t = gGenericMenu.unk2a;
    t2 = 0x180;
    switch (gMenu.column_idx) {
        case 5:
            gOamCmd.x = 0x78;
            sub_080A42E0(t, 0xff);
            break;
        case 3:
        case 4:
            gOamCmd.x = gGenericMenu.unk2c + 0x32;
            sub_080A42E0(t, 0);
            t2 = 0x8a - (gGenericMenu.unk2c * 0x12 / 0x46);
            break;
        case 6:
            break;
        default:
            t2 = 0x8a;
            break;
    }

    gOamCmd.x = t2;
    sub_080A42E0(gFuseInfo._3, 0);
}

void sub_080A42E0(u32 param_1, u32 param_2) {
    u8 uVar1;
    s32 sVar2;
    s32 sVar3;
    s32 iVar4;

    const struct_080C9CBC* ptr = &gUnk_080C9CBC[param_1];

    if (param_2 == 0xff) {
        uVar1 = ptr->unk2;
    } else {
        uVar1 = ptr->unk1;
    }
    iVar4 = sub_080A43A8(uVar1);
    if ((param_2 != 0) && (param_2 != 0xff)) {
        int index = iVar4 * 4;
        if (param_2 != gUnk_02019EE0[iVar4].unk_02[0]) {
            gUnk_02019EE0[iVar4].unk_02[0] = param_2;
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
        t = ptr->unk0;
        t <<= 0xc;
        t |= 0x800;
        t |= (iVar4 << 4) + 0x300;
        gOamCmd._8 = t;
    }
    DrawDirect(0, 3);
}

void sub_080A4398(void) {
    MemClear(&gUnk_02019EE0, 0x40);
}

u32 sub_080A43A8(u32 param_1) {
    u32 uVar1;

    uVar1 = sub_080A43DC(param_1);
    if (0xf < uVar1) {
        uVar1 &= 0xf;
        sub_080A4418(param_1, uVar1 * 0x10 + 0x300);
    }
    { int index = uVar1 * 4; }
    gUnk_02019EE0[uVar1].unk_00[0] = param_1;
    gUnk_02019EE0[uVar1].unk_01 = 2;
    return uVar1;
}

u32 sub_080A43DC(u32 unk1) {
    u32 i;
    for (i = 0; i < 16; i++) {
        if (unk1 == gUnk_02019EE0[i].unk_00[0]) {
            return i;
        }
    }
    for (i = 0; i < 16; i++) {
        if (gUnk_02019EE0[i].unk_01 == 0) {
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
        DMA3->control.word = 0x84000080;
        return DMA3->control.word;
    }
}

void sub_080A4468(void) {
    gUnk_03003DF0[0].unk[2] = 0;
    gUnk_03003DF0[0].unk2[3] = 0;
    sub_0801E6C8(gFuseInfo._3);
    sub_0801E798(gGenericMenu.unk2a);
}

u32 sub_080A4494(void) {
    struct_02036540* psVar1;
    u8* r1;
    u32 ret;

    psVar1 = sub_0805F2C8();
    if (psVar1 != NULL) {
        psVar1->unk8 = gTextGfxBuffer;
        psVar1->charColor = 0;
        psVar1->bgColor = 5;
        psVar1->unk1 = 0;
        sub_080A44E0(psVar1, gUnk_02002AC0, 0x80);
#if NON_MATCHING
        ret = sub_080A44E0(psVar1, sub_08002632(gFuseInfo.ent) >> 0x20, 0xa0);
#else
        sub_08002632(gFuseInfo.ent);
        asm("" : "=r"(r1));
        ret = sub_080A44E0(psVar1, r1, 0xa0);
#endif
        sub_0805F300(psVar1);
    }
    return ret;
}

u32 sub_080A44E0(struct_02036540* param_1, u8* param_2, u32 param_3) {
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

void sub_080A4528(void) {
    Entity* entity;

    if (gFuseInfo.ent->kind == NPC) {
        entity = CreateNPC(gFuseInfo.ent->id, gFuseInfo.ent->type, gFuseInfo.ent->type2);
    } else {
        if (gFuseInfo.ent->kind != ENEMY) {
            return;
        }
        entity = CreateEnemy(gFuseInfo.ent->id, gFuseInfo.ent->type);
    }
    if (entity != NULL) {
        if (entity->kind == NPC) {
            NPCInit(entity);
            entity->field_0xf = entity->id;
            entity->id = 0x56;
        } else {
            EnemyInit(entity);
            entity->field_0xf = entity->id;
            entity->id = 0x66;
        }
        entity->x.HALF.HI = 0xcc;
        entity->y.HALF.HI = 0x60;
        entity->spritePriority.b1 = 2;
        entity->spriteSettings.draw = 1;
        entity->hitbox = NULL;
    }
}

extern void (*const gUnk_0812815C[])(void);
extern void (*const gUnk_0812814C[])(void);

void Subtask_FigurineMenu(void) {
#if !(defined(DEMO_USA) || defined(DEMO_JP))
    FlushSprites();
    if (gUnk_02032EC0.field_0x3 == 0xff) {
        gUnk_0812815C[gMenu.menuType]();
    } else {
        gUnk_0812814C[gMenu.menuType]();
    }
    UpdateEntities();
    sub_0801C1D4();
    DrawOAMCmd();
    DrawEntities();
    sub_080A4978();
    CopyOAM();
    sub_080A4B44();
#endif
}

void sub_080A4608(void) {
    s32 iVar2;

    SetBgmVolume(0x80);
    sub_080A4DA8(3);
    SetColor(0, gPaletteBuffer[0xfb]);
    SetColor(0x15c, gPaletteBuffer[0xd3]);
    MemClear(&gBG0Buffer, 0x800);
    MemClear(&gBG3Buffer, 0x1000);
    gScreen.controls.window0HorizontalDimensions = 0xf0;
    gScreen.controls.window0VerticalDimensions = 0x7898;
    gScreen.controls.windowInsideControl = 0x1f;
    gScreen.controls.windowOutsideControl = 0x1d;
    gScreen.bg1.updated = 1;
    for (iVar2 = 0; iVar2 < 0x10; iVar2++) {
        gGenericMenu.unk10.a[iVar2] = 0xee;
    }
    {
        int r0, r1, r2;

        r1 = gUnk_02032EC0.field_0x3;
        r0 = gSave.unk6;
        r2 = 0x88;
        if (r0 == 0) {
            r2 = 0x82;
        }
        if (r2 < r1) {
            r1 = 1;
        }
        gGenericMenu.unk1c = r1;
    }
    SetFade(4, 8);
}

void sub_080A46C0(void) {
    SetBgmVolume(0x100);
    SoundReq(SFX_MENU_CANCEL);
    ClearRoomFlag(2);
    Subtask_Exit();
}

void sub_080A46DC(void) {
    sub_080A4608();
    sub_080A7114(1);
}

void sub_080A46EC(void) {
    if (gFadeControl.active == 0) {
        CreateObject(0xa2, gUnk_080FC3E4[gGenericMenu.unk1c].unk7, 0);
        sub_080A7114(2);
    }
}

void sub_080A4720(void) {
    u32 bVar1;
    Sound sound;

    if (gMenu.field_0x0 != 0) {
        gGenericMenu.unk20 += 1;
        switch (gGenericMenu.unk20) {
            case 0x40:
                gGenericMenu.unk21 = WriteBit(&gUnk_02002B0E, gGenericMenu.unk1c);
                gMenu.column_idx = 1;
            default:
                bVar1 = gGenericMenu.unk20 >> 2;
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
                sub_080A7114(3);
                sub_080A70AC((KeyButtonLayout*)&gUnk_0812813C);
                gMenu.column_idx = 0x15;
                if (gGenericMenu.unk21 == 0) {
                    sound = SFX_109;
                } else {
                    sound = SFX_MENU_ERROR;
                }
                SoundReq(sound);
                return;
        }
    }
}

void sub_080A47D0(void) {
    s32 uVar1;
    s32 t;

    uVar1 = gGenericMenu.unk1f;
    switch (gInput.unk4) {
        case 2:
        case 8:
            sub_080A46C0();
            break;
        case 0x10:
            uVar1 += 8;
            break;
        case 0x20:
            uVar1 -= 8;
            break;
    }
    t = gGenericMenu.unk1e;
    if (uVar1 < 0) {
        uVar1 = 0;
    }
    if (t < uVar1) {
        uVar1 = t;
    }
    gGenericMenu.unk1f = uVar1;
    gScreen.bg1.yOffset = uVar1 - 0x70;
}

void sub_080A4830(void) {
    sub_080A4608();
    gScreen.lcd.displayControl |= 0x2000;
    sub_080A70AC(&gUnk_0812813C);
    gMenu.column_idx = 0xff;
    sub_080A7114(1);
}

void sub_080A4864(void) {
    int r0, r1, r2, r3, r4, r5, r6;

    if (gFadeControl.active)
        return;

    r5 = gGenericMenu.unk1f;
    r4 = gGenericMenu.unk1c;
    r1 = gInput.unk4;
    switch (gInput.unk4) {
        case 2:
        case 8:
            sub_080A7114(3);
            break;
        case 0x200:
            r4 -= 5;
            break;
        case 0x100:
            r4 += 5;
            break;
        case 0x40:
            r4--;
            break;
        case 0x80:
            r4++;
            break;
        case 0x10:
            r5 += 8;
            break;
        case 0x20:
            r5 -= 8;
            break;
        case 1:
            break;
    }
    r1 = (gSave.unk6 == 0) ? 0x82 : 0x88;
    if (r4 <= 0) {
        r4 = 1;
    }
    if (r1 < r4) {
        r4 = r1;
    }
    r0 = gGenericMenu.unk1c;
    if (r0 != r4) {
        gGenericMenu.unk1c = r4;
        SoundReq(SFX_TEXTBOX_CHOICE);
        sub_080A7114(2);
        r5 = 0;
    }
    r0 = gGenericMenu.unk1e;
    if (r5 < 0) {
        r5 = 0;
    }
    if (r0 < r5) {
        r5 = r0;
    }
    gGenericMenu.unk1f = r5;
    gScreen.bg1.yOffset = r5 - 0x70;
}

void sub_080A4934(void) {
    sub_080A7114(1);
}

void sub_080A4940(void) {
    sub_080A46C0();
}

u32 sub_080A4948(s32 param_1) {
    s32 iVar1;
    u32 uVar2;

    uVar2 = 0;
    iVar1 = gSave.unk6 == 0 ? 0x82 : 0x88;
    if ((0 < param_1) || (iVar1 >= param_1)) {
        if (ReadBit((u32*)&gSave.stats.filler4[4], param_1)) {
            uVar2 = 1;
        }
    }
    return uVar2;
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
void sub_080A4978(void) {
    int r0, r2, r4, r6;

    gOamCmd._4 = 0;
    gOamCmd._6 = 0;
    gOamCmd._8 = 0x800;
    gOamCmd.x = 0x9c;
    gOamCmd.y = 0x48;
    DrawDirect(sub_080A4978_draw_constant, 0);
    r2 = (gSave.unk6 == 0) ? 0x82 : 0x88;
    if ((gMenu.column_idx & 2) != 0) {
        if (r2 >= (gGenericMenu.unk1c)) {
            gOamCmd.x = 0xe8;
            r0 = (0x5000 / r2) * (gGenericMenu.unk1c - 1);
            if (r0 < 0) {
                r0 += 0xff;
            }
            r0 >>= 8;
            r0 += 0x20;
            gOamCmd.y = r0;
            DrawDirect(sub_080A4978_draw_constant, 1);
            r0 = gMain.ticks.HWORD & 0x10;
            r4 = (r0) ? 4 : 2;
            gOamCmd.x = 0xe8;
            gOamCmd.y = 0x1a;
            DrawDirect(sub_080A4978_draw_constant, r4);
            gOamCmd.x = 0xe8;
            gOamCmd.y = 0x76;
            DrawDirect(sub_080A4978_draw_constant, r4 + 1);
        }
    }
    if (gMain.ticks.HWORD & 0x10) {
        if (gMenu.column_idx & 0x10) {
            if (gGenericMenu.unk1e) {
                gOamCmd.y = 0x10;
                if (gGenericMenu.unk1f > 0) {
                    gOamCmd.x = 6;
                    gOamCmd.y = 0x9c;
                    DrawDirect(sub_080A4978_draw_constant, 6);
                }
                if (gGenericMenu.unk1e > gGenericMenu.unk1f) {
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
            r4 = gGenericMenu.unk1c;
            for (r6 = 2; r6 >= 0; r6--) {
                gOamCmd.x = 0x5d + (r6 * 7);
                gOamCmd._8 = ((r4 % 10) << 1) | 0x9e0;
                DrawDirect(0, 9);
                r4 = r4 / 10;
            }
        }
    }
    if (gMenu.column_idx & 1) {
        if (sub_080A4948(gGenericMenu.unk1c)) {
            gOamCmd.x = 0x2c;
            gOamCmd.y = 0x48;
            gOamCmd._8 = 0xd4 << 7;
            DrawDirect(sub_080A4978_draw_constant - 4, gGenericMenu.unk1c - 1);
            if (gGenericMenu.unk1d != gGenericMenu.unk1c) {
                const Figurine* fig;
                u8* gfx;
                gGenericMenu.unk1d = gGenericMenu.unk1c;
                fig = &gFigurines[gGenericMenu.unk1c];
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

    uVar1 = gGenericMenu.unk1c;
    if ((gMenu.column_idx & 0x10) != 0) {
        gGenericMenu.unk1e = sub_080A4CBC(uVar1);
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

ASM_FUNC("asm/non_matching/subtask/sub_080A4BA0.inc", void sub_080A4BA0(u32 unk1, u32 unk2))

u32 sub_080A4CBC(u32 param_1) {
    s32 iVar1;
    const u16* psVar2;
    u32 uVar3;

    if (gGenericMenu.unk1a.HALF.LO != param_1) {
        gGenericMenu.unk1a.HALF.LO = param_1;
        MemClear(&gBG1Buffer, 0x800);
        MemCopy(&gBG1Buffer, (void*)0x600e000, 0x800);
        iVar1 = sub_080A4948(param_1);
        if (iVar1 != 0) {
            sub_0805F46C(param_1 + 0x900, &gUnk_08128190);
        }
        gScreen.bg1.updated = 1;
    }
    psVar2 = gUnk_08128190 + 0x80;

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

void sub_080A4D88(void) {
    MemClear(gUnk_020344A0, sizeof(gUnk_020344A0));
    MenuFadeIn(1, 0);
    SetBgmVolume(0x80);
}

void sub_080A4DA8(u32 param_1) {
    sub_080A4D34();
    sub_080A4DB8(param_1);
}

void sub_080A4DB8(u32 param_1) {
    const struct_08128AD8* ptr;

    sub_08056250();
    MemClear(&gBG0Buffer, 0x800);
    MemClear(&gBG1Buffer, 0x800);
    MemClear(&gBG2Buffer, 0x800);
    MemClear(gUnk_0200AF00.filler25 + 0xf, 0x300);
    MemClear(&gGenericMenu, sizeof(gGenericMenu));
    gGenericMenu.unk2e.HWORD = 0xffff;
    gMenu.field_0x3 = gUnk_02034490.unk2[param_1];
    ptr = &gUnk_08128AD8[gUnk_08128A38[param_1].unk0];
    gScreen.lcd.displayControl = ptr->unk2 | 0x1940;
    gScreen.bg0.xOffset = 0;
    gScreen.bg0.yOffset = 0;
    gScreen.bg0.updated = 1;
    gScreen.bg1.xOffset = 0;
    gScreen.bg1.yOffset = 0;
    gScreen.bg1.control = ptr->unk4;
    gScreen.bg1.updated = 1;
    gScreen.bg2.xOffset = 0;
    gScreen.bg2.yOffset = 0;
    gScreen.bg2.control = ptr->unk6;
    gScreen.bg2.updated = 1;
    gScreen.bg3.xOffset = 0;
    gScreen.bg3.yOffset = 0;
    gScreen.bg3.control = 0x1e0b;
    if (ptr->unk0 != 0) {
        LoadPaletteGroup(ptr->unk0);
    }
    if (ptr->unk1 != 0) {
        LoadGfxGroup(ptr->unk1);
    }
}

void sub_080A4E84(u8 param_1) {
    gUnk_02034490.unk14 = param_1;
}

void sub_080A4E90(u8 param_1) {
    gUnk_02034490.unk11 = param_1;
    gUnk_02034490.unk12 = 0;
}

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
