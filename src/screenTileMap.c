#include "global.h"
#include "room.h"

// Called when gUpdateVisibleTiles == 2
void sub_0807D280(u16* mapspecial, u16* bgbuffer) {
    u32 unk_18;
    s32 tmp1, tmp2, tmp3, tmp4, tmp5, tmp6;
    s32 xdiff, ydiff;
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

// Called when gUpdateVisibleTiles == 3
void sub_0807D46C(u16* mapSpecial, u16* bgBuffer) {
    s32 index, r0, r1, r2, r5, r8, r12;
    u16 *r4, *r6;

    switch (gRoomControls.scroll_direction) {
        case 0:
        case 2:
            r5 = gRoomControls.scroll_x - gRoomControls.origin_x;
            if (r5 > 7) {
                r5 -= 8;
            }

            r8 = (gRoomControls.camera_target)->x.HALF.HI - gRoomControls.origin_x - 4;
            if (r8 > 7) {
                r8 = r8 - 8;
            }

            r12 = gRoomControls.scroll_y - gRoomControls.origin_y;
            if (r12 > 7) {
                r12 -= 8;
            }

            r0 = r8 - (gRoomControls.unk_18 * 8);
            if (r0 >= r5) {
                r4 = mapSpecial + ((r12 >> 3) * 0x80) + (r0 >> 3);
                r6 = bgBuffer + ((r0 >> 3) & 0x1f);
                r2 = ((r12 >> 3) & 0x1f) << 5;

                if (gRoomControls.height < 0xb0) {
                    index = gRoomControls.height >> 0x3;
                } else {
                    index = 0x16;
                }

                while (index > 0) {
                    // TODO r4 index with index
                    r6[r2] = *r4;
                    r4 += 0x80;
                    r2 = (r2 + 0x20) & 0x3ff;
                    index--;
                }
            }

            r0 = (gRoomControls.unk_18 + 1) * 8 + r8;
            if (r5 + 0xf8 >= gRoomControls.width) {
                r1 = r5 + 0xf8;
            } else {
                r1 = r5 + 0x100;
            }
            if (r0 < r1) {
                r4 = mapSpecial + ((r12 >> 3) * 0x80) + (r0 >> 3);
                r6 = bgBuffer + ((r0 >> 3) & 0x1f);
                r2 = (r12 >> 3 & 0x1f) << 5;

                if (gRoomControls.height < 0xb0) {
                    index = gRoomControls.height >> 3;
                } else {
                    index = 0x16;
                }

                while (index > 0) {
                    r6[r2] = *r4;
                    r4 += 0x80;
                    r2 = (r2 + 0x20) & 0x3ff;
                    index--;
                }
            }
            break;
        case 1:
        case 3:
            r5 = gRoomControls.scroll_y - gRoomControls.origin_y;
            if (r5 > 7) {
                r5 -= 8;
            }

            r8 = gRoomControls.scroll_x - gRoomControls.origin_x;
            if (r8 > 7) {
                r8 -= 8;
            }

            r12 = (gRoomControls.camera_target)->y.HALF.HI - gRoomControls.origin_y - 4;
            if (r12 > 7) {
                r12 = r12 - 8;
            }

            r0 = r12 + gRoomControls.unk_18 * -8;
            if (r0 >= r5) {
                r4 = mapSpecial + ((r0 >> 3) * 0x80) + (r8 >> 3);
                r6 = bgBuffer + (((r0 >> 3) & 0x1f) << 5);
                r2 = ((r8 >> 3) & 0x1f);

                if (gRoomControls.width < 0x100) {
                    index = gRoomControls.width >> 3;
                } else {
                    index = 0x20;
                }

                while (index > 0) {
                    r6[r2] = *r4;
                    r4 += 1;
                    r2 = (r2 + 1) & 0x1f;
                    index--;
                }
            }

            r0 = (gRoomControls.unk_18 + 1) * 8 + r12;
            if (r5 + 0xa8 >= gRoomControls.height) {
                r2 = r5 + 0xa8;
            } else {
                r2 = r5 + 0xb0;
            }
            if (r0 < r2) {
                r4 = mapSpecial + ((r0 >> 3) * 0x80) + (r8 >> 3);
                r6 = bgBuffer + (((r0 >> 3) & 0x1f) << 5);
                r2 = ((r8 >> 3) & 0x1f);
                if (gRoomControls.width < 0x100) {
                    index = gRoomControls.width >> 3;
                } else {
                    index = 0x20;
                }
                while (index > 0) {
                    r6[r2] = *r4;
                    r4 += 0x1;
                    r2 = (r2 + 0x1) & 0x1f;
                    index--;
                }
            }
            break;
    }
}

// Called when gUpdateVisibleTiles == 4
void sub_0807D6D8(u16* mapSpecial, u16* bgBuffer) {
    s32 Unk1a;
    s32 SquaredUnk18;
    s32 SquaredUnk1a;
    s32 RelativeCameraTargetX;
    s32 RelativeCameraTargetY;
    s32 CameraOffsetFromTargetX;
    s32 CameraOffsetFromTargetY;
    s32 RelativeScrollX;
    s32 RelativeScrollY;
    s32 r0, r4, r9, r7, r12;
    u16 *r2, *r3;

    if ((gRoomControls.unk_18 == 0) || (gRoomControls.unk_1a == 0))
        return;

    RelativeScrollX = (gRoomControls.scroll_x - gRoomControls.origin_x) & 0xfffffff0;
    RelativeCameraTargetX = ((gRoomControls.camera_target)->x.HALF.HI - gRoomControls.origin_x) & 0xfffffff8;
    CameraOffsetFromTargetX = RelativeCameraTargetX - RelativeScrollX;

    RelativeScrollY = (gRoomControls.scroll_y - gRoomControls.origin_y) & 0xfffffff0;
    RelativeCameraTargetY = (gRoomControls.camera_target->y.HALF.HI - gRoomControls.origin_y) & 0xfffffff8;
    CameraOffsetFromTargetY = RelativeCameraTargetY - RelativeScrollY;

    SquaredUnk18 = gRoomControls.unk_18 * gRoomControls.unk_18;
    Unk1a = gRoomControls.unk_1a;
    SquaredUnk1a = Unk1a * Unk1a;

    r4 = gRoomControls.unk_18;
    r9 = 0;
    r7 = (-(r4 << 1) + 1) * SquaredUnk1a + (SquaredUnk18 << 1);
    r12 = (r4 * SquaredUnk1a) / SquaredUnk18;

    while (r9 <= r12) {
        if ((RelativeScrollY + 0xb0) > (RelativeCameraTargetY + r9)) {
            r0 = ((CameraOffsetFromTargetY + r9) >> 3) & 0x1f;
            if (r0 != 0x1f) {
                r2 = bgBuffer + (r0 << 5);
                r3 = mapSpecial + (((RelativeCameraTargetY + r9) >> 3) << 7);

                if ((RelativeScrollX + 0x100) > (RelativeCameraTargetX + r4)) {
                    r2[((CameraOffsetFromTargetX + r4) >> 3 & 0x1f)] = r3[((RelativeCameraTargetX + r4) >> 3)];
                    gRoomControls.unk_1c |= 1 << 0;
                }
                if (RelativeScrollX < (RelativeCameraTargetX - r4)) {
                    r2[((CameraOffsetFromTargetX - r4) >> 3 & 0x1f)] = r3[((RelativeCameraTargetX - r4) >> 3)];
                    gRoomControls.unk_1c |= 1 << 1;
                }
            }
        }

        if ((RelativeScrollY < (RelativeCameraTargetY - r9 + 8))) {
            r0 = ((CameraOffsetFromTargetY - r9) >> 3) & 0x1f;
            if (r0 != 0x1f) {
                r2 = bgBuffer + (r0 << 5);
                r3 = mapSpecial + (((RelativeCameraTargetY - r9) >> 3) << 7);
                if ((RelativeScrollX + 0x100) > (RelativeCameraTargetX + r4)) {
                    r2[((CameraOffsetFromTargetX + r4) >> 3 & 0x1f)] = r3[((RelativeCameraTargetX + r4) >> 3)];
                    gRoomControls.unk_1c |= 1 << 2;
                }
                if (RelativeScrollX < (RelativeCameraTargetX - r4)) {
                    r2[((CameraOffsetFromTargetX - r4) >> 3 & 0x1f)] = r3[((RelativeCameraTargetX - r4) >> 3)];
                    gRoomControls.unk_1c |= 1 << 3;
                }
            }
        }

        if (r7 > 0) {
            r7 += ((-(r4 << 0x2) + 4) * SquaredUnk1a) + (SquaredUnk18 * (6 + (4 * r9)));
            r4--;
            r12 = (r4 * SquaredUnk1a) / SquaredUnk18;
        } else
            r7 += (SquaredUnk18 * (6 + (4 * r9)));

        r9++;
    }

    r4 = 0;
    r9 = Unk1a;
    r7 = (SquaredUnk1a << 1) + SquaredUnk18 * (Unk1a * -2 + 1);
    r12 = r9 * SquaredUnk18 / SquaredUnk1a;

    while (r4 <= r12) {
        if ((RelativeScrollY + 0xb0) > (RelativeCameraTargetY + r9)) {
            r0 = (CameraOffsetFromTargetY + r9) >> 3 & 0x1f;
            if (r0 != 0x1f) {
                r2 = bgBuffer + (r0 << 5);
                r3 = mapSpecial + (((RelativeCameraTargetY + r9) >> 3) << 7);
                if ((RelativeScrollX + 0x100) > (RelativeCameraTargetX + r4)) {
                    r2[(((CameraOffsetFromTargetX + r4) >> 3) & 0x1f)] = r3[((RelativeCameraTargetX + r4) >> 3)];
                    gRoomControls.unk_1c |= 0x10;
                }
                if (RelativeScrollX < (RelativeCameraTargetX - r4)) {
                    r2[(((CameraOffsetFromTargetX - r4) >> 3) & 0x1f)] = r3[((RelativeCameraTargetX - r4) >> 3)];
                    gRoomControls.unk_1c |= 0x20;
                }
            }
        }

        if (RelativeScrollY < ((RelativeCameraTargetY - r9) + 8)) {
            r0 = (CameraOffsetFromTargetY - r9) >> 3 & 0x1f;
            if (r0 != 0x1f) {
                r2 = bgBuffer + (r0 << 5);
                r3 = mapSpecial + (((RelativeCameraTargetY - r9) >> 3) << 7);
                if ((RelativeScrollX + 0x100) > (RelativeCameraTargetX + r4)) {
                    r2[(((CameraOffsetFromTargetX + r4) >> 3) & 0x1f)] = r3[((RelativeCameraTargetX + r4) >> 3)];
                    gRoomControls.unk_1c |= 0x40;
                }
                if (RelativeScrollX < (RelativeCameraTargetX - r4)) {
                    r2[(((CameraOffsetFromTargetX - r4) >> 3) & 0x1f)] = r3[((RelativeCameraTargetX - r4) >> 3)];
                    gRoomControls.unk_1c |= 0x80;
                }
            }
        }

        if (r7 > 0) {
            r7 += (((SquaredUnk1a * 6)) + (r4 * SquaredUnk1a << 2)) + ((-(r9 << 0x2) + 4) * SquaredUnk18);
            r9--;
            r12 = (r9 * SquaredUnk18) / SquaredUnk1a;

        } else {
            r7 += (((SquaredUnk1a * 6)) + (r4 * SquaredUnk1a << 2));
        }

        r4++;
    }
}
