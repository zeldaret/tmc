#include "global.h"
#include "room.h"

void sub_0807D280(u16* mapspecial, u16* bgbuffer) {
    u32 unk_18;
    s32 tmp1, tmp2, tmp3, tmp4, tmp5, tmp6;
    s32 xdiff, ydiff;
    u16 *src, *dst;
    s32 i, j, index_hack;

    xdiff = (gRoomControls.scroll_x - gRoomControls.origin_x);
    ydiff = (gRoomControls.scroll_y - gRoomControls.origin_y);
    switch (gRoomControls.scroll_direction) {
        case 0:
            if ((gRoomControls.unk_18 & 3) != 1) {
                return;
            }
            for (i = 0x1c; i > 0; i--) {
                DmaSet(3, bgbuffer + 0x20 * (i - 1), bgbuffer + 0x20 * (i + 1), 0x80000020);
            }

            tmp1 = (gRoomControls.height >> 4) - 1;
            tmp2 = (gRoomControls.unk_18 >> 2);
            tmp3 = (tmp1 - tmp2) << 8;
            tmp3 += (xdiff >> 4) * 2;
            mapspecial = mapspecial + tmp3;
            DmaSet(3, mapspecial, bgbuffer, 0x80000020);
            DmaSet(3, mapspecial + 0x80, bgbuffer + 0x20, 0x80000020);
            return;
        case 1:
            if ((gRoomControls.unk_18 & 3) != 0) {
                return;
            } else if (gRoomControls.unk_18 != 0) {
                for (i = 0; i < 0x16; i++) {
                    DmaSet(3, bgbuffer + 0x20 * i + 2, bgbuffer + 0x20 * i, 0x8000001e);
                }
            }

            mapspecial = mapspecial + ((ydiff >> 4) * 0x100 + ((gRoomControls.unk_18 >> 2) << 1));
            bgbuffer = bgbuffer + 0x1e;

            for (i = 0; i < 0x16; bgbuffer += 0x20, mapspecial += 0x80, i++) {
                bgbuffer[0] = mapspecial[0];
                bgbuffer[1] = mapspecial[1];
            }

            return;
        case 2:
            unk_18 = gRoomControls.unk_18;

            if ((unk_18 & 3) != 0) {
                return;
            } else if (unk_18 << 0x10 != 0) {
                DmaSet(3, bgbuffer + 0x40, bgbuffer, 0x800003c0);
            }

            mapspecial = mapspecial + (((unk_18 * 0x10000 >> 0x12) << 8) + ((xdiff >> 4) << 1));
            DmaSet(3, mapspecial, bgbuffer + 0x280, 0x80000020);
            DmaSet(3, mapspecial + 0x80, bgbuffer + 0x2a0, 0x80000020);
            return;
        default:
            if ((gRoomControls.unk_18 & 3) == 1) {
                for (i = 0; i < 0x16; i++) {
                    for (j = 0x1d; j >= 0; j--) {
                        index_hack = i + 1;
                        bgbuffer[(index_hack - 1) * 0x20 + j + 2] = bgbuffer[(index_hack - 1) * 0x20 + j];
                    }
                }

                tmp4 = (ydiff >> 4) * 0x100;
                tmp5 = ((gRoomControls.width >> 4) - 1);
                tmp6 = (u32)(gRoomControls.unk_18 >> 2);
                mapspecial = mapspecial + (tmp4 + ((tmp5 - tmp6) << 1));

                for (i = 0; i < 0x16; bgbuffer += 0x20, mapspecial += 0x80, i++) {
                    bgbuffer[0] = mapspecial[0];
                    bgbuffer[1] = mapspecial[1];
                }
            }
            return;
    }
}

ASM_FUNC("asm/non_matching/code_0807CC3C/sub_0807D46C.inc", void sub_0807D46C(u32 unk_1, u32 unk_2))

ASM_FUNC("asm/non_matching/code_0807CC3C/sub_0807D6D8.inc", void sub_0807D6D8(u32 unk_1, u32 unk_2))
