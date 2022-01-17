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
    u8 filler[3];
    void (*func)(void);
} gUnk_08128A38[];

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
    gMenu.unk2a = 0;
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
    if (gFadeControl.active) {
        return;
    }
    gMenu.column_idx = 2;
    tmp2 = gMenu.unk28 * 0x10000;
    tmp1 = tmp2 - gMenu.unk10.i;
    tmp5 = tmp1;
    if (tmp1 < 0) {
        tmp5 = -tmp1;
    }
    if (tmp5 <= 0x1ffdu) {
        gMenu.unk10.i = tmp2;
    } else {
        gMenu.column_idx = 1;
        tmp2 = sub_08000E44(tmp1);
        tmp1 /= 0x20000;
        if (tmp1 < 0) {
            tmp1 = -tmp1;
        }
        if (tmp1 > 5) {
            tmp1 = 5;
        }
        gMenu.unk10.i += gUnk_081280EE[tmp1] * 0x666 * tmp2;
    }
    if (gMenu.unk29 != gMenu.unk10.i / 0x10000) {
        gMenu.unk29 = gMenu.unk10.i / 0x10000;
        SoundReq(SFX_TEXTBOX_CHOICE);
    }
    if ((gInput.newKeys & 0x20a) != 0) {
        sub_080A7114(2);
        SoundReq(SFX_MENU_CANCEL);
        return;
    }
    tmp3 = gMenu.unk28;
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
                tmp3 = gMenu.unk10.i / 0x10000;
                gMenu.unk2a = gSave.unk118[tmp3];
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
    if (gMenu.unk28 != tmp3) {
        gMenu.unk28 = tmp3;
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
    gMenu.unk18 = 0;
    gMenu.unk2c += 2;
    if (0x45 < gMenu.unk2c) {
        gMenu.unk2c = 0x46;
        gMenu.overlayType = 1;
    }
}

void sub_080A3E48(void) {
    u32 temp = gUnk_080C9CBC[gMenu.unk2a].unk5;
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
    gMenu.unk2c -= 3;
    gMenu.unk18 += 0x100;
    if (gMenu.unk2c < 0) {
        gMenu.unk18 = 0;
        gMenu.unk2c = 0;
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
        gMenu.unk18 += gMenu.unk1a.HWORD;
        gMenu.unk1a.HWORD += 0x20;
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
    gOamCmd.y = 0x10 - (s8)gMenu.unk2e.HALF.HI;
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
        iVar3 = gMenu.unk10.i;
        if (iVar3 < 0) {
            iVar3 = gMenu.unk10.i + 0xffff;
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
    uVar1 = gMenu.unk10.h[0] / 0xb21;
    for (i = -3, uVar1 = -uVar1 - 0x45; i < 4; uVar1 += 0x17, i++) {
        gOamCmd.y = ((gSineTable[uVar1 & 0xff] * 0x44) / 0x100) + 0x4f;
        gOamCmd.x = ((gSineTable[(uVar1 + 0x40) & 0xff] * 0x42) / 0x100) - 0x10;
        iVar2 = gMenu.unk10.i / 0x10000 + i;
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

    uVar2 = gMenu.unk18 / 256;
    uVar2 %= 27;
    t3 = uVar2;
    sub_0805ECEC(0, gUnk_08128120[t3] << 4, 0x100, 0);
    gOamCmd._4 = 0x100;
    gOamCmd._6 = 0;
    gOamCmd.y = 0x4f;
    t = gMenu.unk2a;
    t2 = 0x180;
    switch (gMenu.column_idx) {
        case 5:
            gOamCmd.x = 0x78;
            sub_080A42E0(t, 0xff);
            break;
        case 3:
        case 4:
            gOamCmd.x = gMenu.unk2c + 0x32;
            sub_080A42E0(t, 0);
            t2 = 0x8a - (gMenu.unk2c * 0x12 / 0x46);
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
    sub_0801E798(gMenu.unk2a);
}

NONMATCH("asm/non_matching/subtask/sub_080A4494.inc", u32 sub_080A4494(void)) {
    struct_02036540* psVar1;
    u32 ret;

    psVar1 = sub_0805F2C8();
    if (psVar1 != NULL) {
        psVar1->unk8 = gTextGfxBuffer;
        psVar1->charColor = 0;
        psVar1->bgColor = 5;
        psVar1->unk1 = 0;
        sub_080A44E0(psVar1, gUnk_02002AC0, 0x80);
        sub_08002632(gFuseInfo.ent);
        ret = sub_080A44E0(psVar1, gUnk_02002AC0, 0xa0);
        sub_0805F300(psVar1);
    }
    return ret;
}
END_NONMATCH

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
#ifndef DEMO
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
        gMenu.unk10.a[iVar2] = 0xee;
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
        gMenu.unk1c = r1;
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
        CreateObject(0xa2, gUnk_080FC3E4[gMenu.unk1c].unk7, 0);
        sub_080A7114(2);
    }
}

void sub_080A4720(void) {
    u32 bVar1;
    Sound sound;

    if (gMenu.field_0x0 != 0) {
        gMenu.unk20 += 1;
        switch (gMenu.unk20) {
            case 0x40:
                gMenu.unk21 = WriteBit(&gUnk_02002B0E, gMenu.unk1c);
                gMenu.column_idx = 1;
            default:
                bVar1 = gMenu.unk20 >> 2;
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
                if (gMenu.unk21 == 0) {
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

    uVar1 = gMenu.unk1f;
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
    t = gMenu.unk1e;
    if (uVar1 < 0) {
        uVar1 = 0;
    }
    if (t < uVar1) {
        uVar1 = t;
    }
    gMenu.unk1f = uVar1;
    gScreen.bg1.yOffset = uVar1 - 0x70;
}

void sub_080A4830(void) {
    sub_080A4608();
    gScreen.lcd.displayControl |= 0x2000;
    sub_080A70AC(&gUnk_0812813C);
    gMenu.column_idx = 0xff;
    sub_080A7114(1);
}

ASM_FUNC("asm/non_matching/subtask/sub_080A4864.inc", void sub_080A4864(Entity* this))

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

ASM_FUNC("asm/non_matching/subtask/sub_080A4978.inc", void sub_080A4978(void))

void sub_080A4B44(void) {
    u32 uVar1;

    uVar1 = gMenu.unk1c;
    if ((gMenu.column_idx & 0x10) != 0) {
        gMenu.unk1e = sub_080A4CBC(uVar1);
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

    if (gMenu.unk1a.HALF.LO != param_1) {
        gMenu.unk1a.HALF.LO = param_1;
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
    MemClear(&gMenu, sizeof(gMenu));
    gMenu.unk2e.HWORD = 0xffff;
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
