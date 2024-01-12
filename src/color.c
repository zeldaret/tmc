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
void SetEntityObjPalette(Entity*, s32);
u32 sub_0801D458(u32);
void sub_0801D48C(u32, u32);
static void sub_0801CFD0(u32 a1);

extern union SplitWord gUnk_08133368[];

typedef struct {
    u8 _0_0 : 4;
    u8 _0_4 : 4;
    u8 _1;
    u16 _2;
} Palette2;

void ResetPaletteTable(u32 a1) {
    u32 i;

    MemClear(gPaletteList, sizeof(gPaletteList));
    for (i = 0; i < 6; ++i) {
        sub_0801CFD0(i);
    }
    sub_0801D000(a1);
}

void sub_0801CFD0(u32 index) {
    Palette* p = &gPaletteList[index];
    p->_0_0 = 4;
    p->_0_4 = 1;
    p->_1 = 0x80;
    p->objPaletteId = 0xffff;
}

void sub_0801D000(u32 a1) {
    u32 tmp;
    RoomTransition* roomTransition = &gRoomTransition;
    if (a1) {
        tmp = 0x0f;
    } else {
        tmp = 0;
    }

    roomTransition->field2f = tmp;
    if (a1) {
        CleanUpObjPalettes();
        sub_0801CFD0(0xf);
    } else {
        if (gUnk_02001A3C._0_0 == 4) {
            gUnk_02001A3C._0_0 = 0;
            gUnk_02001A3C._0_4 = 0;
            gUnk_02001A3C._1 = 0;
            gUnk_02001A3C.objPaletteId = 0;
        }
    }
}

u32 LoadObjPalette(Entity* entity, u32 objPaletteId) {
    Palette* palette;
    s32 slot;
    u32 uVar3;
    u32 uVar4;

    slot = FindPalette(objPaletteId);
    if (slot < 0) {
        if (objPaletteId < 0x16) {
            uVar3 = 1;
        } else {
            uVar3 = gUnk_08133368[(objPaletteId - 0x16)].BYTES.byte3;
            uVar3 &= 0xf;
        }
        slot = FindFreeObjPalette(uVar3);
        if (slot < 0) {
            CleanUpObjPalettes();
            slot = FindFreeObjPalette(uVar3);
        }
        if (slot >= 0) {
            palette = &gPaletteList[slot];
            palette->objPaletteId = objPaletteId;
            palette->_1 = 0;
            palette->_0_4 = uVar3;
            palette->_0_0 = 3;
            for (uVar3 = uVar3 - 1; uVar3 != 0; uVar3--) {
                palette++;
                palette->objPaletteId = 0;
                palette->_1 = 0;
                palette->_0_4 = uVar3;
                palette->_0_0 = 2;
            }
            LoadObjPaletteAtIndex(objPaletteId, slot);
        }
    }
    SetEntityObjPalette(entity, slot);
    return slot;
}

s32 FindPalette(u32 objPaletteId) {
    u32 index;
    Palette* palette;
    if (objPaletteId <= 5)
        return objPaletteId;

    for (index = 6, palette = gPaletteList; index < ARRAY_COUNT(gPaletteList); index++) {
        if (objPaletteId == palette[index].objPaletteId) {
            return index;
        }
    }

    return -1;
}

u32 FindFreeObjPalette(u32 paletteCount) {
    u32 count;
    u32 index;
    u32 tmp;

    for (count = 0, index = 6; index < ARRAY_COUNT(gPaletteList); index++) {
        switch ((gPaletteList[index]._0_0)) {
            case 0:
                count = count + 1;
                if (paletteCount > count)
                    continue;
                tmp = count - 1;
                return index - tmp;
            default:
                count = 0;
                break;
        }
    }

    for (count = 0, index = 6; index < ARRAY_COUNT(gPaletteList); index++) {
        switch (gPaletteList[index]._0_0) {
            case 0:
            case 1:
                count++;
                if (paletteCount <= count) {
                    tmp = count - 1;
                    return index - tmp;
                }
                break;
            default:
                count = 0;
                break;
        }
    }
    return 0xffffffff;
}

void SetEntityObjPalette(Entity* entity, s32 palette) {
    u32 uVar1;
    u32 mask;
    u32 tmp;
    Palette2* pPVar1;

    if (palette < 0) {
        palette = 0;
    }
    if (0x7e < (u8)(entity->spriteAnimation[2] - 1)) {
        entity->spriteAnimation[1] = palette;
    }

    entity->palette.b.b0 = palette & 0xf;

    mask = 0xF;
    tmp = (palette & mask) << 4;
    *(u8*)&entity->palette.b &= mask;
    *(u8*)&entity->palette.b |= tmp;

    pPVar1 = (Palette2*)&gPaletteList[palette];
    if ((s8)pPVar1->_0_0 != 4) {
        pPVar1->_1++;
        uVar1 = pPVar1->_0_4;
        pPVar1->_0_0 = 3;
        while (uVar1 = uVar1 - 1, uVar1 != 0) {
            pPVar1 = pPVar1 + 1;
            pPVar1->_0_4 = uVar1;
            pPVar1->_0_0 = 2;
        }
    }
}

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

void sub_0801D28C(Entity* entity, u32 objPaletteId) {
    u32 c = entity->spriteAnimation[1];
    Palette* list = gPaletteList;
    Palette* p = &list[c];

    // using the bit field members generates an ldr instead of ldrb
    u32 lo = ((u32)((*(u8*)p) << 0x1c)) >> 0x1c;

    if (lo == 3) {
        p->objPaletteId = objPaletteId;
        LoadObjPaletteAtIndex(objPaletteId, c);
    }
}

void ChangeObjPalette(Entity* entity, u32 objPaletteId) {
    UnloadOBJPalette(entity);
    LoadObjPalette(entity, objPaletteId);
}

void LoadObjPaletteAtIndex(u32 objPaletteId, u32 a2) {
    u16* buffer;

    gUsedPalettes |= 1 << (a2 + 16);
    if (objPaletteId > 5) {
        if (objPaletteId == 0x15) {
            buffer = gPaletteBuffer;
            MemFill16(buffer[0x3C], buffer + (a2 + 16) * 16, 0x20);
        } else if (objPaletteId < 0x15) {
            LoadPalettes((u8*)(gPaletteBuffer + (objPaletteId - 6) * 16), a2 + 16, 1);
        } else {
            u32 offset = gUnk_08133368[(objPaletteId - 0x16)].WORD_U;
            u32 numPalettes = (offset >> 0x18) & 0xf;
            offset &= 0xffffff;
            LoadPalettes(gGlobalGfxAndPalettes + offset, a2 + 16, numPalettes);
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
    u8 local_24[ARRAY_COUNT(gPaletteList)];

    for (index1 = 0; index1 < ARRAY_COUNT(gPaletteList); index1++) {
        local_24[index1] = index1;
        switch (gPaletteList[index1]._0_0) {
            case 0:
            case 1:
                gPaletteList[index1]._0_0 = 0;
                gPaletteList[index1]._0_4 = 0;
                gPaletteList[index1]._1 = 0;
                gPaletteList[index1].objPaletteId = 0;
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

void sub_0801D48C(u32 a1, u32 a2) {
    Palette* pPVar1;
    Palette* pPVar2;
    s32 iVar2;
    u16* iVar3;
    u16* iVar4;
    Palette* pPVar5;
    u32 tmp;
    u16* ptr;
    Palette* ptr2;

    pPVar2 = gPaletteList;
    pPVar1 = pPVar2 + a1;
    iVar2 = (*(u8*)pPVar1) >> 4;
    if (--iVar2 != -1) {
        ptr = gPaletteBuffer;
        iVar4 = ptr + 0x100 + a2 * 0x10;
        pPVar5 = gPaletteList + a2;
        iVar3 = ptr + 0x100 + a1 * 0x10;
        do {
            *pPVar5 = *pPVar1;
            pPVar1->_0_0 = 0;
            pPVar1->_0_4 = 0;
            pPVar1->_1 = 0;
            pPVar1->objPaletteId = 0;
            MemCopy(iVar3, iVar4, 0x20);
            iVar3 += 0x10;
            pPVar1++;
            iVar4 += 0x10;
            iVar2--;
            pPVar5++;
        } while (iVar2 != -1);
    }

    gUsedPalettes |= 1 << 16 | 1 << 17 | 1 << 18 | 1 << 19 | 1 << 20 | 1 << 21 | 1 << 22 | 1 << 23 | 1 << 24 | 1 << 25 |
                     1 << 26 | 1 << 27 | 1 << 28 | 1 << 29 | 1 << 30 | 1 << 31;
}
