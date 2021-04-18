#include "global.h"
#include "utils.h"
#include "structures.h"
#include "functions.h"

extern u16 gUnk_081092D4;
extern u8 gUnk_02036AD8;
extern u8 gUnk_081094CE;
extern u8 gUnk_02036A58;
extern void* gUnk_081092AC[];

typedef struct {
    u8 filler0[12][16];
} VStruct;

extern VStruct gUnk_0810942E[];
extern u32 gUnk_0810926C[];

typedef struct {
    u8 unk0;
    u8 unk1;
} UStruct;

void sub_0805F820(WStruct* r0, u32* r1);

u32 sub_0805F7DC(u32 r0, WStruct* r1) {
    u32 temp;
    u32 temp2;
    u32* offset;

    if (r1->unk4 <= r1->unk6)
        return 0;

    offset = sub_0805F25C(r0);
    temp = r1->unk6;
    if ((r0 >> 8) > 4) {
        sub_0805F820(r1, offset);
        offset += 0x10;
    }

    sub_0805F820(r1, offset);
    if (r1->unk6 > r1->unk4) {
        r1->unk6 = r1->unk4;
    }
    return r1->unk6 - temp;
}

void sub_0805F820(WStruct* r0, u32* r1) {
    u32 bVar1;
    u32 bVar2;
    s32 uVar3;
    s32 uVar4;
    void* uVar5;
    u32 uVar6;
    u32 uVar7;
    u8* puVar8;
    u8* temp;
    void* temp2;
    VStruct* temp3;

    if (r0->unk4 - r0->unk6 > 0) {
        sub_08002724(r1, &gUnk_02036A58);
        if (r0->unk1 == 0) {
            u32 tmp = sub_0805F7A0(*r1);
            uVar6 = tmp & 0xf;
            uVar3 = tmp >> 8;
        } else {
            uVar6 = 0;
            uVar3 = 8;
        }

        uVar4 = r0->unk4 - r0->unk6;
        if (uVar4 > 8) {
            uVar4 = 8;
        }
        if (uVar4 < uVar3) {
            uVar3 = uVar4;
        }

        puVar8 = &gUnk_02036A58 + uVar6;
        temp2 = r0->unk8;
        temp = gUnk_0810942E[r0->unk3].filler0[r0->unk2 * 2];
        uVar7 = r0->unk6;
        r0->unk6 += uVar3;

        if (r0->unk0 / 16 != 1) {
            while (uVar3-- > 0) {
                sub_080026C4(puVar8, temp2, temp, uVar7);
                puVar8++;
                uVar7++;
            }
        } else {
            while (uVar3-- > 0) {
                sub_080026F2(puVar8, temp2, temp, uVar7);
                puVar8++;
                uVar7++;
            }
        }
    }
}

void sub_0805F8E4(u32 r0, WStruct* r1) {
    u32 old = r1->unk1;
    r1->unk1 = 1;
    sub_0805F7DC(r0, r1);
    r1->unk1 = old;
}

u32 sub_0805F8F8(u32 idx) {
    u8* temp = &gUnk_0810942E[idx].filler0[10][10];
    return gUnk_0810926C[*temp];
}

void sub_0805F918(u32 idx, u32 idx2, void* dest) {
    u32 i;
    void* puVar1;
    u8* puVar2;
    u32 j;
    u32 idx3;
    u8* temp;
    u8* temp2;

    MemFill32(sub_0805F8F8(idx2), &gUnk_02036AD8, 0xe0);
    puVar1 = gUnk_081092AC[idx];

    temp = &gUnk_081094CE + idx2 * 0xc0;
    idx3 = 0;
    for (i = 0; i < 3; i++) {
        puVar2 = &gUnk_02036A58;
        sub_08002724(puVar1, &gUnk_02036A58);
        puVar1 += 0x40;

        for (j = 0; j < 8; j++) {
            sub_080026C4(puVar2, &gUnk_02036AD8, temp, idx3);
            puVar2++;
            idx3++;
        }
    }
    LoadResourceAsync((const void*)&gUnk_02036AD8, (u32)dest, 0xe0);
}

u32 sub_0805F9A0(u32 r0) {

    if (gUnk_02000000->gameLanguage == 0) {
        u16* val = &gUnk_081092D4;
        u32 i = 0;

        do {
            if (*val == r0) {
                return i + 0x800;
            }
            i++;
            val++;
        } while (*val != 0);
    } else if (r0 == 0x31a) {
        r0 = 1;
        r0 &= 0xff;
    }
    return (r0 & 0xff) + 0x800;
}
