#include "global.h"
#include "entity.h"
#include "common.h"
#include "color.h"
#include "room.h"
#include "global.h"
#include "fileselect.h"
#include "main.h"
#include "physics.h"

extern Palette gUnk_02001A3C;

void LoadObjPaletteAtIndex(u32 a1, u32 a2);
void CleanUpObjPalettes();
u32 FindFreeObjPalette(u32);
void SetEntityObjPalette(Entity*, u32);
u32 sub_0801D458(u32);
void sub_0801D48C(u32, u32);
static void sub_0801CFD0(u32 a1);

extern union SplitWord gUnk_08133368[];

void ResetPaletteTable(u32 a1) {
    u32 i;

    MemClear(gPaletteList, 0x40);
    for (i = 0; i < 6; ++i) {
        sub_0801CFD0(i);
    }
    sub_0801D000(a1);
}

void sub_0801CFD0(u32 a1) {
    Palette* p = &gPaletteList[a1];
    p->_0_0 = 4;
    p->_0_4 = 1;
    p->_1 = 0x80;
    p->_2 = 0xFFFF;
}

void sub_0801D000(u32 a1) {
    u32 tmp;
    RoomTransition* roomTransition = &gRoomTransition;
    if (a1) {
        tmp = 0x0f;
    } else {
        tmp = 0;
    }

    roomTransition->field_0x2c[2] = tmp;
    if (a1) {
        CleanUpObjPalettes();
        sub_0801CFD0(0xf);
    } else {
        if ((gUnk_02001A3C._0_0) == 4) {
            gUnk_02001A3C._0_0 = 0;
            gUnk_02001A3C._0_4 = 0;
            gUnk_02001A3C._1 = 0;
            gUnk_02001A3C._2 = 0;
        }
    }
}

u32 LoadObjPalette(Entity* entity, u32 a2) {
    Palette* puVar1;
    int iVar2;
    u32 uVar3;
    u32 uVar4;

    iVar2 = FindPalette(a2);
    if (iVar2 < 0) {
        if (a2 < 0x16) {
            uVar3 = 1;
        } else {
            uVar3 = gUnk_08133368[(a2 - 0x16)].BYTES.byte3;
            uVar3 &= 0xf;
        }
        iVar2 = FindFreeObjPalette(uVar3);
        if (iVar2 < 0) {
            CleanUpObjPalettes();
            iVar2 = FindFreeObjPalette(uVar3);
        }
        if (iVar2 >= 0) {
            puVar1 = &gPaletteList[iVar2];
            puVar1->_2 = a2;
            puVar1->_1 = 0;
            puVar1->_0_4 = uVar3;
            puVar1->_0_0 = 3;
            for (uVar3 = uVar3 - 1; uVar3 != 0; uVar3--) {
                puVar1++;
                puVar1->_2 = 0;
                puVar1->_1 = 0;
                puVar1->_0_4 = uVar3;
                puVar1->_0_0 = 2;
            }
            LoadObjPaletteAtIndex(a2, iVar2);
        }
    }
    SetEntityObjPalette(entity, iVar2);
    return iVar2;
}

s32 FindPalette(u32 a1) {
    u32 index;
    Palette* palette;
    if (a1 <= 5)
        return a1;

    for (index = 6, palette = gPaletteList; index < 0x10; index++) {
        if (a1 == palette[index]._2) {
            return index;
        }
    }

    return -1;
}

u32 FindFreeObjPalette(u32 a1) {
    u32 uVar1;
    u32 uVar2;
    u32 tmp;

    for (uVar1 = 0, uVar2 = 6; uVar2 < 0x10; uVar2++) {
        switch ((gPaletteList[uVar2]._0_0)) {
            case 0:
                uVar1 = uVar1 + 1;
                if (a1 > uVar1)
                    continue;
                tmp = uVar1 - 1;
                return uVar2 - tmp;
            default:
                uVar1 = 0;
                break;
        }
    }

    for (uVar1 = 0, uVar2 = 6; uVar2 < 0x10; uVar2++) {
        switch (gPaletteList[uVar2]._0_0) {
            case 0:
            case 1:
                uVar1++;
                if (a1 <= uVar1) {
                    tmp = uVar1 - 1;
                    return uVar2 - tmp;
                }
                break;
            default:
                uVar1 = 0;
                break;
        }
    }
    return 0xffffffff;
}

ASM_FUNC("asm/non_matching/color/SetEntityObjPalette.inc", void SetEntityObjPalette(Entity* entity, u32 palette));

void UnloadOBJPalette(Entity* entity) {
    u8* p = &entity->spriteAnimation[1];
    u32 idx = *p;
    *p = 0;
    sub_0801D244(idx);
}

void sub_0801D244(u32 a1) {
    u32 uVar1;
    Palette* pPVar2;
    u32 uVar3;

    pPVar2 = gPaletteList + a1;
    if ((s8)pPVar2->_0_0 == 3) {
        if (--pPVar2->_1 == 0) {
            uVar3 = pPVar2->_0_4;
            do {
                pPVar2->_1 = 0;
                pPVar2->_0_0 = 1;
                pPVar2 = pPVar2 + 1;
                uVar3 = uVar3 - 1;
            } while (uVar3 != 0);
        }
    }
}

void sub_0801D28C(Entity* entity, u32 palette) {
    u32 c = entity->spriteAnimation[1];
    Palette* list = gPaletteList;
    Palette* p = &list[c];

    // using the bit field members generates an ldr instead of ldrb
    u32 lo = ((u32)((*(u8*)p) << 0x1c)) >> 0x1c;

    if (lo == 3) {
        p->_2 = palette;
        LoadObjPaletteAtIndex(palette, c);
    }
}

void ChangeObjPalette(Entity* entity, u32 a2) {
    UnloadOBJPalette(entity);
    LoadObjPalette(entity, a2);
}

void LoadObjPaletteAtIndex(u32 a1, u32 a2) {
    u16* buffer;

    gUsedPalettes |= 1 << (a2 + 0x10);
    if (5 < a1) {
        if (a1 == 0x15) {
            buffer = gPaletteBuffer;
            MemFill16(buffer[0x3C], buffer + (a2 + 0x10) * 0x10, 0x20);
        } else if (a1 < 0x15) {
            LoadPalettes((u8*)(gPaletteBuffer + (a1 - 6) * 0x10), a2 + 0x10, 1);
        } else {
            u32 tmp1 = gUnk_08133368[(a1 - 0x16)].WORD_U;
            u32 tmp2 = (tmp1 >> 0x18) & 0xf;
            tmp1 &= 0xffffff;
            LoadPalettes(gGlobalGfxAndPalettes + tmp1, a2 + 0x10, tmp2);
        }
    }
}

void CleanUpObjPalettes(void) {
    u32 bVar1;
    u32 bVar2;
    u32 index1;
    u32 uVar4;
    u32 index2;
    Entity* pEVar9;
    int iVar10;
    u8 local_24[0x10];

    for (index1 = 0; index1 < 0x10; index1++) {
        local_24[index1] = index1;
        switch (gPaletteList[index1]._0_0) {
            case 0:
            case 1:
                gPaletteList[index1]._0_0 = 0;
                gPaletteList[index1]._0_4 = 0;
                gPaletteList[index1]._1 = 0;
                gPaletteList[index1]._2 = 0;
                break;
        }
    }

    iVar10 = 6;
    while ((iVar10 = sub_0801D458(iVar10 + 1), iVar10 != 0 && (uVar4 = FindFreeObjPalette(1), uVar4 != 0xffffffff))) {
        if (iVar10 > (int)uVar4) {
            local_24[iVar10] = uVar4;
            sub_0801D48C(iVar10, uVar4);
        }
    }

    for (index2 = 0; index2 < ARRAY_COUNT(gEntityLists); index2++) {
        pEVar9 = (Entity*)&gEntityLists[index2];
        while (((Entity*)&gEntityLists[index2]) != (pEVar9 = pEVar9->next)) {
            if (pEVar9->kind != MANAGER) {
                if ((u8)(pEVar9->spriteAnimation[2] - 1) < 0x7f) {
                    bVar1 = pEVar9->spriteAnimation[2];
                    gUnk_020000C0[bVar1].unk_00[0].unk_04.BYTES.byte1 =
                        local_24[gUnk_020000C0[bVar1].unk_00[0].unk_04.BYTES.byte1];
                    gUnk_020000C0[bVar1].unk_00[1].unk_04.BYTES.byte1 =
                        local_24[gUnk_020000C0[bVar1].unk_00[1].unk_04.BYTES.byte1];
                    gUnk_020000C0[bVar1].unk_00[2].unk_04.BYTES.byte1 =
                        local_24[gUnk_020000C0[bVar1].unk_00[2].unk_04.BYTES.byte1];
                    gUnk_020000C0[bVar1].unk_00[3].unk_04.BYTES.byte1 =
                        local_24[gUnk_020000C0[bVar1].unk_00[3].unk_04.BYTES.byte1];
                }
                pEVar9->spriteAnimation[1] = local_24[pEVar9->spriteAnimation[1]];
                bVar2 = local_24[pEVar9->palette.b.b0];
                pEVar9->palette.b.b0 = bVar2;
                pEVar9->palette.b.b4 = local_24[pEVar9->palette.b.b4];
            }
        }
    }
}

u32 sub_0801D458(u32 a1) {
    u32 i;
    for (i = a1; i < 16; i++) {
        s32 tmp = (u32)gPaletteList[i]._0_0;
        switch (tmp) {
            case 0:
            case 1:
            case 4:
                continue;
            default:
                return i;
        }
    }
    return 0;
}

ASM_FUNC("asm/non_matching/color/sub_0801D48C.inc", void sub_0801D48C(u32 a1, u32 a2));
