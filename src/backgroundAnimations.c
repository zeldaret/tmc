/**
 * @file backgroundAnimations.c
 *
 * @brief Animations of background tiles
 */
#include "backgroundAnimations.h"

#include "asm.h"
#include "assets/gfx_offsets.h"
#include "common.h"
#include "functions.h"

void LoadBgAnimationGfx(const BgAnimationGfx*);
u32 GetBgAnimationTimer(const s32*);
void ClearBgAnimations(void);

const u16 gUnk_080B44F0[] = { 5, 9, 77, 123, 181, 195, 217, 239 };
const u16 gUnk_080B4500[] = { 7, 11, 79, 125, 183, 197, 219, 241 };
const u16 gUnk_080B4510[] = { 3, 7, 75, 121, 179, 193, 215, 237 };
const u16 gUnk_080B4520[] = { 9, 13, 31, 127, 185, 199, 221, 243 };
const u16 gUnk_080B4530[] = { 51, 69, 87, 103, 119, 137, 153, 169 };
const u16 gUnk_080B4540[] = { 23, 31, 39, 47, 55, 63, 71, 79 };
const u16* const gUnk_080B4550[] = {
    gUnk_080B44F0, gUnk_080B4500, gUnk_080B4510, gUnk_080B4520, gUnk_080B4530, gUnk_080B4540,
};

const BgAnimationFrame* const gUnk_080B7278[];

const BgAnimationGfx gUnk_080B4568[] = {
    { 0x2c00, 5, BG_ANIM_DEFAULT, offset_bgAnim_0_0 },
};
const BgAnimationGfx gUnk_080B4570[] = {
    { 0x2c00, 5, BG_ANIM_DEFAULT, offset_bgAnim_0_1 },
};
const BgAnimationGfx gUnk_080B4578[] = {
    { 0x2c00, 5, BG_ANIM_DEFAULT, offset_bgAnim_0_2 },
};
const BgAnimationGfx gUnk_080B4580[] = {
    { 0x2c00, 5, BG_ANIM_DEFAULT, offset_bgAnim_0_3 },
};
const BgAnimationFrame gUnk_080B4588[] = {
    { gUnk_080B4568, 10 }, { gUnk_080B4570, 10 }, { gUnk_080B4578, 10 }, { gUnk_080B4580, 10 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B45B0[] = {
    { 0x4400, 14, BG_ANIM_DEFAULT, offset_bgAnim_2_0 },
};
const BgAnimationGfx gUnk_080B45B8[] = {
    { 0x4400, 14, BG_ANIM_DEFAULT, offset_bgAnim_2_1 },
};
const BgAnimationGfx gUnk_080B45C0[] = {
    { 0x4400, 14, BG_ANIM_DEFAULT, offset_bgAnim_2_2 },
};
const BgAnimationGfx gUnk_080B45C8[] = {
    { 0x4400, 14, BG_ANIM_DEFAULT, offset_bgAnim_2_3 },
};
const BgAnimationFrame gUnk_080B45D0[] = {
    { gUnk_080B45B0, 10 }, { gUnk_080B45B8, 11 }, { gUnk_080B45C0, 10 }, { gUnk_080B45C8, 11 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B45F8[] = {
    { 0x45c0, 11, BG_ANIM_DEFAULT, offset_bgAnim_3_0 },
};
const BgAnimationGfx gUnk_080B4600[] = {
    { 0x45c0, 11, BG_ANIM_DEFAULT, offset_bgAnim_3_1 },
};
const BgAnimationGfx gUnk_080B4608[] = {
    { 0x45c0, 11, BG_ANIM_DEFAULT, offset_bgAnim_3_2 },
};
const BgAnimationGfx gUnk_080B4610[] = {
    { 0x45c0, 11, BG_ANIM_DEFAULT, offset_bgAnim_3_3 },
};
const BgAnimationFrame gUnk_080B4618[] = {
    { gUnk_080B45F8, 11 }, { gUnk_080B4600, 10 }, { gUnk_080B4608, 11 }, { gUnk_080B4610, 10 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B4640[] = {
    { 0x4720, 7, BG_ANIM_DEFAULT, offset_bgAnim_4_0 },
};
const BgAnimationGfx gUnk_080B4648[] = {
    { 0x4720, 7, BG_ANIM_DEFAULT, offset_bgAnim_4_1 },
};
const BgAnimationGfx gUnk_080B4650[] = {
    { 0x4720, 7, BG_ANIM_DEFAULT, offset_bgAnim_4_2 },
};
const BgAnimationGfx gUnk_080B4658[] = {
    { 0x4720, 7, BG_ANIM_DEFAULT, offset_bgAnim_4_3 },
};
const BgAnimationFrame gUnk_080B4660[] = {
    { gUnk_080B4640, 18 }, { gUnk_080B4648, 18 }, { gUnk_080B4650, 18 }, { gUnk_080B4658, 18 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B4688[] = {
    { 0x1000, 12, BG_ANIM_DEFAULT, offset_bgAnim_5_0 },
};
const BgAnimationGfx gUnk_080B4690[] = {
    { 0x1000, 12, BG_ANIM_DEFAULT, offset_bgAnim_5_1 },
};
const BgAnimationGfx gUnk_080B4698[] = {
    { 0x1000, 12, BG_ANIM_DEFAULT, offset_bgAnim_5_2 },
};
const BgAnimationGfx gUnk_080B46A0[] = {
    { 0x1000, 12, BG_ANIM_DEFAULT, offset_bgAnim_5_3 },
};
const BgAnimationFrame gUnk_080B46A8[] = {
    { gUnk_080B4688, 15 }, { gUnk_080B4690, 16 }, { gUnk_080B4698, 15 }, { gUnk_080B46A0, 16 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B46D0[] = {
    { 0x1180, 2, BG_ANIM_DEFAULT, offset_bgAnim_6_0 },
};
const BgAnimationGfx gUnk_080B46D8[] = {
    { 0x1180, 2, BG_ANIM_DEFAULT, offset_bgAnim_6_1 },
};
const BgAnimationGfx gUnk_080B46E0[] = {
    { 0x1180, 2, BG_ANIM_DEFAULT, offset_bgAnim_6_2 },
};
const BgAnimationGfx gUnk_080B46E8[] = {
    { 0x1180, 2, BG_ANIM_DEFAULT, offset_bgAnim_6_3 },
};
const BgAnimationFrame gUnk_080B46F0[] = {
    { gUnk_080B46D0, 20 }, { gUnk_080B46D8, 19 }, { gUnk_080B46E0, 20 }, { gUnk_080B46E8, 19 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B4718[] = {
    { 0x9000, 11, BG_ANIM_DEFAULT, offset_bgAnim_93_0 },
};
const BgAnimationGfx gUnk_080B4720[] = {
    { 0x9000, 11, BG_ANIM_DEFAULT, offset_bgAnim_93_1 },
};
const BgAnimationGfx gUnk_080B4728[] = {
    { 0x9000, 11, BG_ANIM_DEFAULT, offset_bgAnim_93_2 },
};
const BgAnimationGfx gUnk_080B4730[] = {
    { 0x9000, 11, BG_ANIM_DEFAULT, offset_bgAnim_93_3 },
};
const BgAnimationFrame gUnk_080B4738[] = {
    { gUnk_080B4718, 12 }, { gUnk_080B4720, 12 }, { gUnk_080B4728, 12 }, { gUnk_080B4730, 12 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B4760[] = {
    { 0x9160, 15, BG_ANIM_DEFAULT, offset_bgAnim_94_0 },
};
const BgAnimationGfx gUnk_080B4768[] = {
    { 0x9160, 15, BG_ANIM_DEFAULT, offset_bgAnim_94_1 },
};
const BgAnimationGfx gUnk_080B4770[] = {
    { 0x9160, 15, BG_ANIM_DEFAULT, offset_bgAnim_94_2 },
};
const BgAnimationGfx gUnk_080B4778[] = {
    { 0x9160, 15, BG_ANIM_DEFAULT, offset_bgAnim_94_3 },
};
const BgAnimationFrame gUnk_080B4780[] = {
    { gUnk_080B4760, 19 }, { gUnk_080B4768, 20 }, { gUnk_080B4770, 19 }, { gUnk_080B4778, 20 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B47A8[] = {
    { 0x9340, 16, BG_ANIM_DEFAULT, offset_bgAnim_95_0 },
};
const BgAnimationGfx gUnk_080B47B0[] = {
    { 0x9340, 16, BG_ANIM_DEFAULT, offset_bgAnim_95_1 },
};
const BgAnimationGfx gUnk_080B47B8[] = {
    { 0x9340, 16, BG_ANIM_DEFAULT, offset_bgAnim_95_2 },
};
const BgAnimationGfx gUnk_080B47C0[] = {
    { 0x9340, 16, BG_ANIM_DEFAULT, offset_bgAnim_95_3 },
};
const BgAnimationFrame gUnk_080B47C8[] = {
    { gUnk_080B47A8, 16 }, { gUnk_080B47B0, 15 }, { gUnk_080B47B8, 16 }, { gUnk_080B47C0, 15 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B47F0[] = {
    { 0x4600, 9, BG_ANIM_DEFAULT, offset_bgAnim_30_0 },
};
const BgAnimationGfx gUnk_080B47F8[] = {
    { 0x4600, 9, BG_ANIM_DEFAULT, offset_bgAnim_30_1 },
};
const BgAnimationGfx gUnk_080B4800[] = {
    { 0x4600, 9, BG_ANIM_DEFAULT, offset_bgAnim_30_2 },
};
const BgAnimationGfx gUnk_080B4808[] = {
    { 0x4600, 9, BG_ANIM_DEFAULT, offset_bgAnim_30_3 },
};
const BgAnimationFrame gUnk_080B4810[] = {
    { gUnk_080B47F0, 9 }, { gUnk_080B47F8, 8 }, { gUnk_080B4800, 9 }, { gUnk_080B4808, 8 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B4838[] = {
    { 0x2e60, 6, BG_ANIM_MULTIPLE, offset_bgAnim_31_0 },
    { 0x2f20, 4, BG_ANIM_DEFAULT, offset_bgAnim_31_0_1 },
};
const BgAnimationGfx gUnk_080B4848[] = {
    { 0x2e60, 6, BG_ANIM_MULTIPLE, offset_bgAnim_31_1 },
    { 0x2f20, 4, BG_ANIM_DEFAULT, offset_bgAnim_31_1_1 },
};
const BgAnimationGfx gUnk_080B4858[] = {
    { 0x2e60, 6, BG_ANIM_MULTIPLE, offset_bgAnim_31_2 },
    { 0x2f20, 4, BG_ANIM_DEFAULT, offset_bgAnim_31_2_1 },
};
const BgAnimationGfx gUnk_080B4868[] = {
    { 0x2e60, 6, BG_ANIM_MULTIPLE, offset_bgAnim_31_3 },
    { 0x2f20, 4, BG_ANIM_DEFAULT, offset_bgAnim_31_3_1 },
};
const BgAnimationFrame gUnk_080B4878[] = {
    { gUnk_080B4838, 12 }, { gUnk_080B4848, 11 }, { gUnk_080B4858, 12 }, { gUnk_080B4868, 11 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B48A0[] = {
    { 0x2fa0, 1, BG_ANIM_DEFAULT, offset_bgAnim_32_0 },
};
const BgAnimationGfx gUnk_080B48A8[] = {
    { 0x2fa0, 1, BG_ANIM_DEFAULT, offset_bgAnim_32_1 },
};
const BgAnimationGfx gUnk_080B48B0[] = {
    { 0x2fa0, 1, BG_ANIM_DEFAULT, offset_bgAnim_32_2 },
};
const BgAnimationGfx gUnk_080B48B8[] = {
    { 0x2fa0, 1, BG_ANIM_DEFAULT, offset_bgAnim_32_3 },
};
const BgAnimationGfx gUnk_080B48C0[] = {
    { 0x2fa0, 1, BG_ANIM_DEFAULT, offset_bgAnim_32_4 },
};
const BgAnimationGfx gUnk_080B48C8[] = {
    { 0x2fa0, 1, BG_ANIM_DEFAULT, offset_bgAnim_32_5 },
};
const BgAnimationFrame gUnk_080B48D0[] = {
    { gUnk_080B48A0, 13 }, { gUnk_080B48A8, 13 }, { gUnk_080B48B0, 13 }, { gUnk_080B48B8, 13 },
    { gUnk_080B48C0, 13 }, { gUnk_080B48C8, 13 }, { NULL, 6 },
};
const BgAnimationGfx gUnk_080B4908[] = {
    { 0x2fc0, 1, BG_ANIM_DEFAULT, offset_bgAnim_33_0 },
};
const BgAnimationGfx gUnk_080B4910[] = {
    { 0x2fc0, 1, BG_ANIM_DEFAULT, offset_bgAnim_33_1 },
};
const BgAnimationGfx gUnk_080B4918[] = {
    { 0x2fc0, 1, BG_ANIM_DEFAULT, offset_bgAnim_33_2 },
};
const BgAnimationGfx gUnk_080B4920[] = {
    { 0x2fc0, 1, BG_ANIM_DEFAULT, offset_bgAnim_33_3 },
};
const BgAnimationGfx gUnk_080B4928[] = {
    { 0x2fc0, 1, BG_ANIM_DEFAULT, offset_bgAnim_33_4 },
};
const BgAnimationGfx gUnk_080B4930[] = {
    { 0x2fc0, 1, BG_ANIM_DEFAULT, offset_bgAnim_33_5 },
};
const BgAnimationFrame gUnk_080B4938[] = {
    { gUnk_080B4908, 176 }, { gUnk_080B4910, 13 }, { gUnk_080B4918, 13 }, { gUnk_080B4920, 13 },
    { gUnk_080B4928, 13 },  { gUnk_080B4930, 13 }, { NULL, 6 },
};
const BgAnimationGfx gUnk_080B4970[] = {
    { 0x2fe0, 1, BG_ANIM_DEFAULT, offset_bgAnim_34_0 },
};
const BgAnimationGfx gUnk_080B4978[] = {
    { 0x2fe0, 1, BG_ANIM_DEFAULT, offset_bgAnim_34_1 },
};
const BgAnimationGfx gUnk_080B4980[] = {
    { 0x2fe0, 1, BG_ANIM_DEFAULT, offset_bgAnim_34_2 },
};
const BgAnimationGfx gUnk_080B4988[] = {
    { 0x2fe0, 1, BG_ANIM_DEFAULT, offset_bgAnim_34_3 },
};
const BgAnimationGfx gUnk_080B4990[] = {
    { 0x2fe0, 1, BG_ANIM_DEFAULT, offset_bgAnim_34_4 },
};
const BgAnimationGfx gUnk_080B4998[] = {
    { 0x2fe0, 1, BG_ANIM_DEFAULT, offset_bgAnim_34_5 },
};
const BgAnimationFrame gUnk_080B49A0[] = {
    { gUnk_080B4970, 368 }, { gUnk_080B4978, 13 }, { gUnk_080B4980, 13 }, { gUnk_080B4988, 13 },
    { gUnk_080B4990, 13 },  { gUnk_080B4998, 13 }, { NULL, 6 },
};
const BgAnimationGfx gUnk_080B49D8[] = {
    { 0x2e00, 3, BG_ANIM_DEFAULT, offset_bgAnim_35_0 },
};
const BgAnimationGfx gUnk_080B49E0[] = {
    { 0x2e00, 3, BG_ANIM_DEFAULT, offset_bgAnim_35_1 },
};
const BgAnimationGfx gUnk_080B49E8[] = {
    { 0x2e00, 3, BG_ANIM_DEFAULT, offset_bgAnim_35_2 },
};
const BgAnimationGfx gUnk_080B49F0[] = {
    { 0x2e00, 3, BG_ANIM_DEFAULT, offset_bgAnim_35_3 },
};
const BgAnimationFrame gUnk_080B49F8[] = {
    { gUnk_080B49D8, 8 }, { gUnk_080B49E0, 9 }, { gUnk_080B49E8, 8 }, { gUnk_080B49F0, 9 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B4A20[] = {
    { 0x2c80, 15, BG_ANIM_DEFAULT, offset_bgAnim_35_0 },
};
const BgAnimationGfx gUnk_080B4A28[] = {
    { 0x2c80, 15, BG_ANIM_DEFAULT, offset_bgAnim_35_1 },
};
const BgAnimationGfx gUnk_080B4A30[] = {
    { 0x2c80, 15, BG_ANIM_DEFAULT, offset_bgAnim_35_2 },
};
const BgAnimationGfx gUnk_080B4A38[] = {
    { 0x2c80, 15, BG_ANIM_DEFAULT, offset_bgAnim_35_3 },
};
const BgAnimationFrame gUnk_080B4A40[] = {
    { gUnk_080B4A20, 11 }, { gUnk_080B4A28, 12 }, { gUnk_080B4A30, 11 }, { gUnk_080B4A38, 12 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B4A68[] = {
    { 0x4400, 15, BG_ANIM_DEFAULT, offset_bgAnim_8_0 },
};
const BgAnimationGfx gUnk_080B4A70[] = {
    { 0x4400, 15, BG_ANIM_DEFAULT, offset_bgAnim_8_1 },
};
const BgAnimationGfx gUnk_080B4A78[] = {
    { 0x4400, 15, BG_ANIM_DEFAULT, offset_bgAnim_8_2 },
};
const BgAnimationGfx gUnk_080B4A80[] = {
    { 0x4400, 15, BG_ANIM_DEFAULT, offset_bgAnim_8_3 },
};
const BgAnimationFrame gUnk_080B4A88[] = {
    { gUnk_080B4A68, 16 }, { gUnk_080B4A70, 16 }, { gUnk_080B4A78, 16 }, { gUnk_080B4A80, 16 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B4AB0[] = {
    { 0x4620, 4, BG_ANIM_DEFAULT, offset_bgAnim_9_0 },
};
const BgAnimationGfx gUnk_080B4AB8[] = {
    { 0x4620, 4, BG_ANIM_DEFAULT, offset_bgAnim_9_1 },
};
const BgAnimationGfx gUnk_080B4AC0[] = {
    { 0x4620, 4, BG_ANIM_DEFAULT, offset_bgAnim_9_2 },
};
const BgAnimationGfx gUnk_080B4AC8[] = {
    { 0x4620, 4, BG_ANIM_DEFAULT, offset_bgAnim_9_3 },
};
const BgAnimationFrame gUnk_080B4AD0[] = {
    { gUnk_080B4AB0, 17 }, { gUnk_080B4AB8, 18 }, { gUnk_080B4AC0, 17 }, { gUnk_080B4AC8, 18 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B4AF8[] = {
    { 0x46a0, 4, BG_ANIM_DEFAULT, offset_bgAnim_10_0 },
};
const BgAnimationGfx gUnk_080B4B00[] = {
    { 0x46a0, 4, BG_ANIM_DEFAULT, offset_bgAnim_10_1 },
};
const BgAnimationGfx gUnk_080B4B08[] = {
    { 0x46a0, 4, BG_ANIM_DEFAULT, offset_bgAnim_10_2 },
};
const BgAnimationGfx gUnk_080B4B10[] = {
    { 0x46a0, 4, BG_ANIM_DEFAULT, offset_bgAnim_10_3 },
};
const BgAnimationFrame gUnk_080B4B18[] = {
    { gUnk_080B4AF8, 10 }, { gUnk_080B4B00, 9 }, { gUnk_080B4B08, 10 }, { gUnk_080B4B10, 9 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B4B40[] = {
    { 0x4720, 7, BG_ANIM_DEFAULT, offset_bgAnim_11_0 },
};
const BgAnimationGfx gUnk_080B4B48[] = {
    { 0x4720, 7, BG_ANIM_DEFAULT, offset_bgAnim_11_1 },
};
const BgAnimationGfx gUnk_080B4B50[] = {
    { 0x4720, 7, BG_ANIM_DEFAULT, offset_bgAnim_11_2 },
};
const BgAnimationGfx gUnk_080B4B58[] = {
    { 0x4720, 7, BG_ANIM_DEFAULT, offset_bgAnim_11_3 },
};
const BgAnimationFrame gUnk_080B4B60[] = {
    { gUnk_080B4B40, 19 }, { gUnk_080B4B48, 19 }, { gUnk_080B4B50, 19 }, { gUnk_080B4B58, 19 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B4B88[] = {
    { 0x20, 15, BG_ANIM_DEFAULT, offset_bgAnim_12_0 },
};
const BgAnimationGfx gUnk_080B4B90[] = {
    { 0x20, 15, BG_ANIM_DEFAULT, offset_bgAnim_12_1 },
};
const BgAnimationGfx gUnk_080B4B98[] = {
    { 0x20, 15, BG_ANIM_DEFAULT, offset_bgAnim_12_2 },
};
const BgAnimationGfx gUnk_080B4BA0[] = {
    { 0x20, 15, BG_ANIM_DEFAULT, offset_bgAnim_12_3 },
};
const BgAnimationFrame gUnk_080B4BA8[] = {
    { gUnk_080B4B88, 9 }, { gUnk_080B4B90, 10 }, { gUnk_080B4B98, 9 }, { gUnk_080B4BA0, 10 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B4BD0[] = {
    { 0x45e0, 10, BG_ANIM_DEFAULT, offset_bgAnim_53_0 },
};
const BgAnimationGfx gUnk_080B4BD8[] = {
    { 0x45e0, 10, BG_ANIM_DEFAULT, offset_bgAnim_53_1 },
};
const BgAnimationGfx gUnk_080B4BE0[] = {
    { 0x45e0, 10, BG_ANIM_DEFAULT, offset_bgAnim_53_2 },
};
const BgAnimationGfx gUnk_080B4BE8[] = {
    { 0x45e0, 10, BG_ANIM_DEFAULT, offset_bgAnim_53_3 },
};
const BgAnimationFrame gUnk_080B4BF0[] = {
    { gUnk_080B4BD0, 16 }, { gUnk_080B4BD8, 16 }, { gUnk_080B4BE0, 16 }, { gUnk_080B4BE8, 16 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B4C18[] = {
    { 0x7f40, 6, BG_ANIM_DEFAULT, offset_bgAnim_54_0 },
};
const BgAnimationGfx gUnk_080B4C20[] = {
    { 0x7f40, 6, BG_ANIM_DEFAULT, offset_bgAnim_54_1 },
};
const BgAnimationGfx gUnk_080B4C28[] = {
    { 0x7f40, 6, BG_ANIM_DEFAULT, offset_bgAnim_54_2 },
};
const BgAnimationGfx gUnk_080B4C30[] = {
    { 0x7f40, 6, BG_ANIM_DEFAULT, offset_bgAnim_54_3 },
};
const BgAnimationFrame gUnk_080B4C38[] = {
    { gUnk_080B4C18, 13 }, { gUnk_080B4C20, 13 }, { gUnk_080B4C28, 13 }, { gUnk_080B4C30, 13 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B4C60[] = {
    { 0x4400, 32, BG_ANIM_DEFAULT, offset_bgAnim_55_0 },
};
const BgAnimationGfx gUnk_080B4C68[] = {
    { 0x4400, 32, BG_ANIM_DEFAULT, offset_bgAnim_55_1 },
};
const BgAnimationGfx gUnk_080B4C70[] = {
    { 0x4400, 32, BG_ANIM_DEFAULT, offset_bgAnim_55_2 },
};
const BgAnimationGfx gUnk_080B4C78[] = {
    { 0x4400, 32, BG_ANIM_DEFAULT, offset_bgAnim_55_3 },
};
const BgAnimationFrame gUnk_080B4C80[] = {
    { gUnk_080B4C60, 9 }, { gUnk_080B4C68, 8 }, { gUnk_080B4C70, 9 }, { gUnk_080B4C78, 8 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B4CA8[] = {
    { 0x4b80, 4, BG_ANIM_DEFAULT, offset_bgAnim_56_0 },
};
const BgAnimationGfx gUnk_080B4CB0[] = {
    { 0x4b80, 4, BG_ANIM_DEFAULT, offset_bgAnim_56_1 },
};
const BgAnimationGfx gUnk_080B4CB8[] = {
    { 0x4b80, 4, BG_ANIM_DEFAULT, offset_bgAnim_56_2 },
};
const BgAnimationGfx gUnk_080B4CC0[] = {
    { 0x4b80, 4, BG_ANIM_DEFAULT, offset_bgAnim_56_3 },
};
const BgAnimationFrame gUnk_080B4CC8[] = {
    { gUnk_080B4CA8, 8 }, { gUnk_080B4CB0, 9 }, { gUnk_080B4CB8, 8 }, { gUnk_080B4CC0, 9 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B4CF0[] = {
    { 0xe0, 1, BG_ANIM_PALETTE | BG_ANIM_MULTIPLE, offset_bgAnim_57_0 },
    { 0x180, 1, BG_ANIM_PALETTE, offset_bgAnim_57_0_1 },
};
const BgAnimationGfx gUnk_080B4D00[] = {
    { 0xe0, 1, BG_ANIM_PALETTE | BG_ANIM_MULTIPLE, offset_bgAnim_57_1 },
    { 0x180, 1, BG_ANIM_PALETTE, offset_bgAnim_57_1_1 },
};
const BgAnimationFrame gUnk_080B4D10[] = {
    { gUnk_080B4CF0, 8 },
    { gUnk_080B4D00, 8 },
    { NULL, 2 },
};
const BgAnimationGfx gUnk_080B4D28[] = {
    { 0xa0, 1, BG_ANIM_PALETTE, offset_bgAnim_68_0 },
};
const BgAnimationGfx gUnk_080B4D30[] = {
    { 0xa0, 1, BG_ANIM_PALETTE, offset_bgAnim_68_1 },
};
const BgAnimationGfx gUnk_080B4D38[] = {
    { 0xa0, 1, BG_ANIM_PALETTE, offset_bgAnim_68_2 },
};
const BgAnimationGfx gUnk_080B4D40[] = {
    { 0xa0, 1, BG_ANIM_PALETTE, offset_bgAnim_68_3 },
};
const BgAnimationGfx gUnk_080B4D48[] = {
    { 0xa0, 1, BG_ANIM_PALETTE, offset_bgAnim_68_4 },
};
const BgAnimationGfx gUnk_080B4D50[] = {
    { 0xa0, 1, BG_ANIM_PALETTE, offset_bgAnim_68_5 },
};
const BgAnimationGfx gUnk_080B4D58[] = {
    { 0xa0, 1, BG_ANIM_PALETTE, offset_bgAnim_68_6 },
};
const BgAnimationGfx gUnk_080B4D60[] = {
    { 0xa0, 1, BG_ANIM_PALETTE, offset_bgAnim_68_7 },
};
const BgAnimationGfx gUnk_080B4D68[] = {
    { 0xa0, 1, BG_ANIM_PALETTE, offset_bgAnim_68_8 },
};
const BgAnimationGfx gUnk_080B4D70[] = {
    { 0xa0, 1, BG_ANIM_PALETTE, offset_bgAnim_68_9 },
};
const BgAnimationGfx gUnk_080B4D78[] = {
    { 0xa0, 1, BG_ANIM_PALETTE, offset_bgAnim_68_10 },
};
const BgAnimationGfx gUnk_080B4D80[] = {
    { 0xa0, 1, BG_ANIM_PALETTE, offset_bgAnim_68_11 },
};
const BgAnimationGfx gUnk_080B4D88[] = {
    { 0xa0, 1, BG_ANIM_PALETTE, offset_bgAnim_68_12 },
};
const BgAnimationGfx gUnk_080B4D90[] = {
    { 0xa0, 1, BG_ANIM_PALETTE, offset_bgAnim_68_13 },
};
const BgAnimationGfx gUnk_080B4D98[] = {
    { 0xa0, 1, BG_ANIM_PALETTE, offset_bgAnim_68_14 },
};
const BgAnimationGfx gUnk_080B4DA0[] = {
    { 0xa0, 1, BG_ANIM_PALETTE, offset_bgAnim_68_15 },
};
const BgAnimationFrame gUnk_080B4DA8[] = {
    { gUnk_080B4D28, 12 }, { gUnk_080B4D30, 12 }, { gUnk_080B4D38, 12 }, { gUnk_080B4D40, 12 }, { gUnk_080B4D48, 12 },
    { gUnk_080B4D50, 12 }, { gUnk_080B4D58, 12 }, { gUnk_080B4D60, 12 }, { gUnk_080B4D68, 12 }, { gUnk_080B4D70, 12 },
    { gUnk_080B4D78, 12 }, { gUnk_080B4D80, 12 }, { gUnk_080B4D88, 12 }, { gUnk_080B4D90, 12 }, { gUnk_080B4D98, 12 },
    { gUnk_080B4DA0, 12 }, { NULL, 16 },
};
const BgAnimationGfx gUnk_080B4E30[] = {
    { 0x4480, 10, BG_ANIM_DEFAULT, offset_bgAnim_29_0 },
};
const BgAnimationGfx gUnk_080B4E38[] = {
    { 0x4480, 10, BG_ANIM_DEFAULT, offset_bgAnim_29_1 },
};
const BgAnimationGfx gUnk_080B4E40[] = {
    { 0x4480, 10, BG_ANIM_DEFAULT, offset_bgAnim_29_2 },
};
const BgAnimationGfx gUnk_080B4E48[] = {
    { 0x4480, 10, BG_ANIM_DEFAULT, offset_bgAnim_29_3 },
};
const BgAnimationFrame gUnk_080B4E50[] = {
    { gUnk_080B4E30, 8 }, { gUnk_080B4E38, 8 }, { gUnk_080B4E40, 8 }, { gUnk_080B4E48, 8 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B4E78[] = {
    { 0x45c0, 6, BG_ANIM_DEFAULT, offset_bgAnim_58_0 },
};
const BgAnimationGfx gUnk_080B4E80[] = {
    { 0x45c0, 6, BG_ANIM_DEFAULT, offset_bgAnim_58_1 },
};
const BgAnimationGfx gUnk_080B4E88[] = {
    { 0x45c0, 6, BG_ANIM_DEFAULT, offset_bgAnim_58_2 },
};
const BgAnimationGfx gUnk_080B4E90[] = {
    { 0x45c0, 6, BG_ANIM_DEFAULT, offset_bgAnim_58_3 },
};
const BgAnimationFrame gUnk_080B4E98[] = {
    { gUnk_080B4E78, 12 }, { gUnk_080B4E80, 13 }, { gUnk_080B4E88, 12 }, { gUnk_080B4E90, 13 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B4EC0[] = {
    { 0x4800, 7, BG_ANIM_DEFAULT, offset_bgAnim_59_0 },
};
const BgAnimationGfx gUnk_080B4EC8[] = {
    { 0x4800, 7, BG_ANIM_DEFAULT, offset_bgAnim_59_1 },
};
const BgAnimationGfx gUnk_080B4ED0[] = {
    { 0x4800, 7, BG_ANIM_DEFAULT, offset_bgAnim_59_2 },
};
const BgAnimationGfx gUnk_080B4ED8[] = {
    { 0x4800, 7, BG_ANIM_DEFAULT, offset_bgAnim_59_3 },
};
const BgAnimationFrame gUnk_080B4EE0[] = {
    { gUnk_080B4EC0, 13 }, { gUnk_080B4EC8, 12 }, { gUnk_080B4ED0, 13 }, { gUnk_080B4ED8, 12 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B4F08[] = {
    { 0x4400, 4, BG_ANIM_DEFAULT, offset_bgAnim_36_0 },
};
const BgAnimationGfx gUnk_080B4F10[] = {
    { 0x4400, 4, BG_ANIM_DEFAULT, offset_bgAnim_36_1 },
};
const BgAnimationGfx gUnk_080B4F18[] = {
    { 0x4400, 4, BG_ANIM_DEFAULT, offset_bgAnim_36_2 },
};
const BgAnimationGfx gUnk_080B4F20[] = {
    { 0x4400, 4, BG_ANIM_DEFAULT, offset_bgAnim_36_3 },
};
const BgAnimationFrame gUnk_080B4F28[] = {
    { gUnk_080B4F08, 7 }, { gUnk_080B4F10, 7 }, { gUnk_080B4F18, 7 }, { gUnk_080B4F20, 7 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B4F50[] = {
    { 0x4480, 4, BG_ANIM_DEFAULT, offset_bgAnim_37_0 },
};
const BgAnimationGfx gUnk_080B4F58[] = {
    { 0x4480, 4, BG_ANIM_DEFAULT, offset_bgAnim_37_1 },
};
const BgAnimationGfx gUnk_080B4F60[] = {
    { 0x4480, 4, BG_ANIM_DEFAULT, offset_bgAnim_37_2 },
};
const BgAnimationGfx gUnk_080B4F68[] = {
    { 0x4480, 4, BG_ANIM_DEFAULT, offset_bgAnim_37_3 },
};
const BgAnimationFrame gUnk_080B4F70[] = {
    { gUnk_080B4F50, 9 }, { gUnk_080B4F58, 9 }, { gUnk_080B4F60, 9 }, { gUnk_080B4F68, 9 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B4F98[] = {
    { 0x45c0, 4, BG_ANIM_MULTIPLE, offset_bgAnim_40_0 },
    { 0x4640, 6, BG_ANIM_DEFAULT, offset_bgAnim_40_0_1 },
};
const BgAnimationGfx gUnk_080B4FA8[] = {
    { 0x45c0, 4, BG_ANIM_MULTIPLE, offset_bgAnim_40_1 },
    { 0x4640, 6, BG_ANIM_DEFAULT, offset_bgAnim_40_1_1 },
};
const BgAnimationGfx gUnk_080B4FB8[] = {
    { 0x45c0, 4, BG_ANIM_MULTIPLE, offset_bgAnim_40_2 },
    { 0x4640, 6, BG_ANIM_DEFAULT, offset_bgAnim_40_2_1 },
};
const BgAnimationGfx gUnk_080B4FC8[] = {
    { 0x45c0, 4, BG_ANIM_MULTIPLE, offset_bgAnim_40_3 },
    { 0x4640, 6, BG_ANIM_DEFAULT, offset_bgAnim_40_3_1 },
};
const BgAnimationFrame gUnk_080B4FD8[] = {
    { gUnk_080B4F98, 8 }, { gUnk_080B4FA8, 9 }, { gUnk_080B4FB8, 8 }, { gUnk_080B4FC8, 9 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B5000[] = {
    { 0x4700, 7, BG_ANIM_DEFAULT, offset_bgAnim_41_0 },
};
const BgAnimationGfx gUnk_080B5008[] = {
    { 0x4700, 7, BG_ANIM_DEFAULT, offset_bgAnim_41_1 },
};
const BgAnimationGfx gUnk_080B5010[] = {
    { 0x4700, 7, BG_ANIM_DEFAULT, offset_bgAnim_41_2 },
};
const BgAnimationGfx gUnk_080B5018[] = {
    { 0x4700, 7, BG_ANIM_DEFAULT, offset_bgAnim_41_3 },
};
const BgAnimationFrame gUnk_080B5020[] = {
    { gUnk_080B5000, 19 }, { gUnk_080B5008, 19 }, { gUnk_080B5010, 19 }, { gUnk_080B5018, 19 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B5048[] = {
    { 0x100, 1, BG_ANIM_PALETTE, offset_bgAnim_73_0 },
};
const BgAnimationGfx gUnk_080B5050[] = {
    { 0x100, 1, BG_ANIM_PALETTE, offset_bgAnim_73_1 },
};
const BgAnimationGfx gUnk_080B5058[] = {
    { 0x100, 1, BG_ANIM_PALETTE, offset_bgAnim_73_2 },
};
const BgAnimationGfx gUnk_080B5060[] = {
    { 0x100, 1, BG_ANIM_PALETTE, offset_bgAnim_73_3 },
};
const BgAnimationGfx gUnk_080B5068[] = {
    { 0x100, 1, BG_ANIM_PALETTE, offset_bgAnim_73_4 },
};
const BgAnimationGfx gUnk_080B5070[] = {
    { 0x100, 1, BG_ANIM_PALETTE, offset_bgAnim_73_5 },
};
const BgAnimationGfx gUnk_080B5078[] = {
    { 0x100, 1, BG_ANIM_PALETTE, offset_bgAnim_73_6 },
};
const BgAnimationGfx gUnk_080B5080[] = {
    { 0x100, 1, BG_ANIM_PALETTE, offset_bgAnim_73_7 },
};
const BgAnimationGfx gUnk_080B5088[] = {
    { 0x100, 1, BG_ANIM_PALETTE, offset_bgAnim_73_8 },
};
const BgAnimationGfx gUnk_080B5090[] = {
    { 0x100, 1, BG_ANIM_PALETTE, offset_bgAnim_73_9 },
};
const BgAnimationGfx gUnk_080B5098[] = {
    { 0x100, 1, BG_ANIM_PALETTE, offset_bgAnim_73_10 },
};
const BgAnimationGfx gUnk_080B50A0[] = {
    { 0x100, 1, BG_ANIM_PALETTE, offset_bgAnim_73_11 },
};
const BgAnimationGfx gUnk_080B50A8[] = {
    { 0x100, 1, BG_ANIM_PALETTE, offset_bgAnim_73_12 },
};
const BgAnimationGfx gUnk_080B50B0[] = {
    { 0x100, 1, BG_ANIM_PALETTE, offset_bgAnim_73_13 },
};
const BgAnimationGfx gUnk_080B50B8[] = {
    { 0x100, 1, BG_ANIM_PALETTE, offset_bgAnim_73_14 },
};
const BgAnimationGfx gUnk_080B50C0[] = {
    { 0x100, 1, BG_ANIM_PALETTE, offset_bgAnim_73_15 },
};
const BgAnimationFrame gUnk_080B50C8[] = {
    { gUnk_080B5048, 12 }, { gUnk_080B5050, 12 }, { gUnk_080B5058, 12 }, { gUnk_080B5060, 12 }, { gUnk_080B5068, 12 },
    { gUnk_080B5070, 12 }, { gUnk_080B5078, 12 }, { gUnk_080B5080, 12 }, { gUnk_080B5088, 12 }, { gUnk_080B5090, 12 },
    { gUnk_080B5098, 12 }, { gUnk_080B50A0, 12 }, { gUnk_080B50A8, 12 }, { gUnk_080B50B0, 12 }, { gUnk_080B50B8, 12 },
    { gUnk_080B50C0, 12 }, { NULL, 16 },
};
const BgAnimationGfx gUnk_080B5150[] = {
    { 0x2800, 3, BG_ANIM_DEFAULT, offset_bgAnim_0_0 },
};
const BgAnimationGfx gUnk_080B5158[] = {
    { 0x2800, 3, BG_ANIM_DEFAULT, offset_bgAnim_0_1 },
};
const BgAnimationGfx gUnk_080B5160[] = {
    { 0x2800, 3, BG_ANIM_DEFAULT, offset_bgAnim_0_2 },
};
const BgAnimationGfx gUnk_080B5168[] = {
    { 0x2800, 3, BG_ANIM_DEFAULT, offset_bgAnim_0_3 },
};
const BgAnimationFrame gUnk_080B5170[] = {
    { gUnk_080B5150, 10 }, { gUnk_080B5158, 10 }, { gUnk_080B5160, 10 }, { gUnk_080B5168, 10 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B5198[] = {
    { 0x4400, 12, BG_ANIM_DEFAULT, offset_bgAnim_8_0 },
};
const BgAnimationGfx gUnk_080B51A0[] = {
    { 0x4400, 12, BG_ANIM_DEFAULT, offset_bgAnim_8_1 },
};
const BgAnimationGfx gUnk_080B51A8[] = {
    { 0x4400, 12, BG_ANIM_DEFAULT, offset_bgAnim_8_2 },
};
const BgAnimationGfx gUnk_080B51B0[] = {
    { 0x4400, 12, BG_ANIM_DEFAULT, offset_bgAnim_8_3 },
};
const BgAnimationFrame gUnk_080B51B8[] = {
    { gUnk_080B5198, 16 }, { gUnk_080B51A0, 16 }, { gUnk_080B51A8, 16 }, { gUnk_080B51B0, 16 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B51E0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_96_0 },
};
const BgAnimationGfx gUnk_080B51E8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_96_1 },
};
const BgAnimationGfx gUnk_080B51F0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_96_2 },
};
const BgAnimationGfx gUnk_080B51F8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_96_3 },
};
const BgAnimationGfx gUnk_080B5200[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_96_4 },
};
const BgAnimationGfx gUnk_080B5208[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_96_5 },
};
const BgAnimationGfx gUnk_080B5210[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_96_6 },
};
const BgAnimationGfx gUnk_080B5218[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_96_7 },
};
const BgAnimationGfx gUnk_080B5220[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_96_8 },
};
const BgAnimationGfx gUnk_080B5228[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_96_9 },
};
const BgAnimationGfx gUnk_080B5230[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_96_10 },
};
const BgAnimationGfx gUnk_080B5238[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_96_11 },
};
const BgAnimationGfx gUnk_080B5240[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_96_12 },
};
const BgAnimationGfx gUnk_080B5248[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_96_13 },
};
const BgAnimationGfx gUnk_080B5250[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_96_14 },
};
const BgAnimationGfx gUnk_080B5258[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_96_15 },
};
const BgAnimationFrame gUnk_080B5260[] = {
    { gUnk_080B51E0, 12 }, { gUnk_080B51E8, 12 }, { gUnk_080B51F0, 12 }, { gUnk_080B51F8, 12 }, { gUnk_080B5200, 12 },
    { gUnk_080B5208, 12 }, { gUnk_080B5210, 12 }, { gUnk_080B5218, 12 }, { gUnk_080B5220, 12 }, { gUnk_080B5228, 12 },
    { gUnk_080B5230, 12 }, { gUnk_080B5238, 12 }, { gUnk_080B5240, 12 }, { gUnk_080B5248, 12 }, { gUnk_080B5250, 12 },
    { gUnk_080B5258, 12 }, { NULL, 16 },
};
const BgAnimationGfx gUnk_080B52E8[] = {
    { 0x5400, 8, BG_ANIM_DEFAULT, offset_bgAnim_47_0 },
};
const BgAnimationGfx gUnk_080B52F0[] = {
    { 0x5400, 8, BG_ANIM_DEFAULT, offset_bgAnim_47_1 },
};
const BgAnimationGfx gUnk_080B52F8[] = {
    { 0x5400, 8, BG_ANIM_DEFAULT, offset_bgAnim_47_2 },
};
const BgAnimationGfx gUnk_080B5300[] = {
    { 0x5400, 8, BG_ANIM_DEFAULT, offset_bgAnim_47_3 },
};
const BgAnimationFrame gUnk_080B5308[] = {
    { gUnk_080B52E8, 5 }, { gUnk_080B52F0, 5 }, { gUnk_080B52F8, 5 }, { gUnk_080B5300, 5 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B5330[] = {
    { 0x5500, 16, BG_ANIM_DEFAULT, offset_bgAnim_48_0 },
};
const BgAnimationGfx gUnk_080B5338[] = {
    { 0x5500, 16, BG_ANIM_DEFAULT, offset_bgAnim_48_1 },
};
const BgAnimationGfx gUnk_080B5340[] = {
    { 0x5500, 16, BG_ANIM_DEFAULT, offset_bgAnim_48_2 },
};
const BgAnimationGfx gUnk_080B5348[] = {
    { 0x5500, 16, BG_ANIM_DEFAULT, offset_bgAnim_48_3 },
};
const BgAnimationFrame gUnk_080B5350[] = {
    { gUnk_080B5330, 20 }, { gUnk_080B5338, 19 }, { gUnk_080B5340, 20 }, { gUnk_080B5348, 19 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B5378[] = {
    { 0x5700, 8, BG_ANIM_DEFAULT, offset_bgAnim_49_0 },
};
const BgAnimationGfx gUnk_080B5380[] = {
    { 0x5700, 8, BG_ANIM_DEFAULT, offset_bgAnim_49_1 },
};
const BgAnimationGfx gUnk_080B5388[] = {
    { 0x5700, 8, BG_ANIM_DEFAULT, offset_bgAnim_49_2 },
};
const BgAnimationGfx gUnk_080B5390[] = {
    { 0x5700, 8, BG_ANIM_DEFAULT, offset_bgAnim_49_3 },
};
const BgAnimationFrame gUnk_080B5398[] = {
    { gUnk_080B5378, 16 }, { gUnk_080B5380, 16 }, { gUnk_080B5388, 16 }, { gUnk_080B5390, 16 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B53C0[] = {
    { 0x5800, 6, BG_ANIM_DEFAULT, offset_bgAnim_50_0 },
};
const BgAnimationGfx gUnk_080B53C8[] = {
    { 0x5800, 6, BG_ANIM_DEFAULT, offset_bgAnim_50_1 },
};
const BgAnimationGfx gUnk_080B53D0[] = {
    { 0x5800, 6, BG_ANIM_DEFAULT, offset_bgAnim_50_2 },
};
const BgAnimationGfx gUnk_080B53D8[] = {
    { 0x5800, 6, BG_ANIM_DEFAULT, offset_bgAnim_50_3 },
};
const BgAnimationFrame gUnk_080B53E0[] = {
    { gUnk_080B53C0, 9 }, { gUnk_080B53C8, 9 }, { gUnk_080B53D0, 9 }, { gUnk_080B53D8, 9 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B5408[] = {
    { 0x5920, 23, BG_ANIM_DEFAULT, offset_bgAnim_51_0 },
};
const BgAnimationGfx gUnk_080B5410[] = {
    { 0x5920, 23, BG_ANIM_DEFAULT, offset_bgAnim_51_1 },
};
const BgAnimationGfx gUnk_080B5418[] = {
    { 0x5920, 23, BG_ANIM_DEFAULT, offset_bgAnim_51_2 },
};
const BgAnimationGfx gUnk_080B5420[] = {
    { 0x5920, 23, BG_ANIM_DEFAULT, offset_bgAnim_51_3 },
};
const BgAnimationFrame gUnk_080B5428[] = {
    { gUnk_080B5408, 19 }, { gUnk_080B5410, 20 }, { gUnk_080B5418, 19 }, { gUnk_080B5420, 20 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B5450[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_68_0 },
};
const BgAnimationGfx gUnk_080B5458[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_68_1 },
};
const BgAnimationGfx gUnk_080B5460[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_68_2 },
};
const BgAnimationGfx gUnk_080B5468[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_68_3 },
};
const BgAnimationGfx gUnk_080B5470[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_68_4 },
};
const BgAnimationGfx gUnk_080B5478[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_68_5 },
};
const BgAnimationGfx gUnk_080B5480[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_68_6 },
};
const BgAnimationGfx gUnk_080B5488[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_68_7 },
};
const BgAnimationGfx gUnk_080B5490[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_68_8 },
};
const BgAnimationGfx gUnk_080B5498[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_68_9 },
};
const BgAnimationGfx gUnk_080B54A0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_68_10 },
};
const BgAnimationGfx gUnk_080B54A8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_68_11 },
};
const BgAnimationGfx gUnk_080B54B0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_68_12 },
};
const BgAnimationGfx gUnk_080B54B8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_68_13 },
};
const BgAnimationGfx gUnk_080B54C0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_68_14 },
};
const BgAnimationGfx gUnk_080B54C8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_68_15 },
};
const BgAnimationFrame gUnk_080B54D0[] = {
    { gUnk_080B5450, 12 }, { gUnk_080B5458, 12 }, { gUnk_080B5460, 12 }, { gUnk_080B5468, 12 }, { gUnk_080B5470, 12 },
    { gUnk_080B5478, 12 }, { gUnk_080B5480, 12 }, { gUnk_080B5488, 12 }, { gUnk_080B5490, 12 }, { gUnk_080B5498, 12 },
    { gUnk_080B54A0, 12 }, { gUnk_080B54A8, 12 }, { gUnk_080B54B0, 12 }, { gUnk_080B54B8, 12 }, { gUnk_080B54C0, 12 },
    { gUnk_080B54C8, 12 }, { NULL, 16 },
};
const BgAnimationGfx gUnk_080B5558[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_69_0 },
};
const BgAnimationGfx gUnk_080B5560[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_69_1 },
};
const BgAnimationGfx gUnk_080B5568[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_69_2 },
};
const BgAnimationGfx gUnk_080B5570[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_69_3 },
};
const BgAnimationGfx gUnk_080B5578[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_69_4 },
};
const BgAnimationGfx gUnk_080B5580[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_69_5 },
};
const BgAnimationGfx gUnk_080B5588[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_69_6 },
};
const BgAnimationGfx gUnk_080B5590[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_69_7 },
};
const BgAnimationGfx gUnk_080B5598[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_69_8 },
};
const BgAnimationGfx gUnk_080B55A0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_69_9 },
};
const BgAnimationGfx gUnk_080B55A8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_69_10 },
};
const BgAnimationGfx gUnk_080B55B0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_69_11 },
};
const BgAnimationGfx gUnk_080B55B8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_69_12 },
};
const BgAnimationGfx gUnk_080B55C0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_69_13 },
};
const BgAnimationGfx gUnk_080B55C8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_69_14 },
};
const BgAnimationGfx gUnk_080B55D0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_69_15 },
};
const BgAnimationFrame gUnk_080B55D8[] = {
    { gUnk_080B5558, 12 }, { gUnk_080B5560, 12 }, { gUnk_080B5568, 12 }, { gUnk_080B5570, 12 }, { gUnk_080B5578, 12 },
    { gUnk_080B5580, 12 }, { gUnk_080B5588, 12 }, { gUnk_080B5590, 12 }, { gUnk_080B5598, 12 }, { gUnk_080B55A0, 12 },
    { gUnk_080B55A8, 12 }, { gUnk_080B55B0, 12 }, { gUnk_080B55B8, 12 }, { gUnk_080B55C0, 12 }, { gUnk_080B55C8, 12 },
    { gUnk_080B55D0, 12 }, { NULL, 16 },
};
const BgAnimationGfx gUnk_080B5660[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_70_0 },
};
const BgAnimationGfx gUnk_080B5668[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_70_1 },
};
const BgAnimationGfx gUnk_080B5670[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_70_2 },
};
const BgAnimationGfx gUnk_080B5678[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_70_3 },
};
const BgAnimationGfx gUnk_080B5680[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_70_4 },
};
const BgAnimationGfx gUnk_080B5688[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_70_5 },
};
const BgAnimationGfx gUnk_080B5690[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_70_6 },
};
const BgAnimationGfx gUnk_080B5698[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_70_7 },
};
const BgAnimationGfx gUnk_080B56A0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_70_8 },
};
const BgAnimationGfx gUnk_080B56A8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_70_9 },
};
const BgAnimationGfx gUnk_080B56B0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_70_10 },
};
const BgAnimationGfx gUnk_080B56B8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_70_11 },
};
const BgAnimationGfx gUnk_080B56C0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_70_12 },
};
const BgAnimationGfx gUnk_080B56C8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_70_13 },
};
const BgAnimationGfx gUnk_080B56D0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_70_14 },
};
const BgAnimationGfx gUnk_080B56D8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_70_15 },
};
const BgAnimationFrame gUnk_080B56E0[] = {
    { gUnk_080B5660, 12 }, { gUnk_080B5668, 12 }, { gUnk_080B5670, 12 }, { gUnk_080B5678, 12 }, { gUnk_080B5680, 12 },
    { gUnk_080B5688, 12 }, { gUnk_080B5690, 12 }, { gUnk_080B5698, 12 }, { gUnk_080B56A0, 12 }, { gUnk_080B56A8, 12 },
    { gUnk_080B56B0, 12 }, { gUnk_080B56B8, 12 }, { gUnk_080B56C0, 12 }, { gUnk_080B56C8, 12 }, { gUnk_080B56D0, 12 },
    { gUnk_080B56D8, 12 }, { NULL, 16 },
};
const BgAnimationGfx gUnk_080B5768[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_71_0 },
};
const BgAnimationGfx gUnk_080B5770[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_71_1 },
};
const BgAnimationGfx gUnk_080B5778[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_71_2 },
};
const BgAnimationGfx gUnk_080B5780[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_71_3 },
};
const BgAnimationGfx gUnk_080B5788[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_71_4 },
};
const BgAnimationGfx gUnk_080B5790[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_71_5 },
};
const BgAnimationGfx gUnk_080B5798[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_71_6 },
};
const BgAnimationGfx gUnk_080B57A0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_71_7 },
};
const BgAnimationGfx gUnk_080B57A8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_71_8 },
};
const BgAnimationGfx gUnk_080B57B0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_71_9 },
};
const BgAnimationGfx gUnk_080B57B8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_71_10 },
};
const BgAnimationGfx gUnk_080B57C0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_71_11 },
};
const BgAnimationGfx gUnk_080B57C8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_71_12 },
};
const BgAnimationGfx gUnk_080B57D0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_71_13 },
};
const BgAnimationGfx gUnk_080B57D8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_71_14 },
};
const BgAnimationGfx gUnk_080B57E0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_71_15 },
};
const BgAnimationFrame gUnk_080B57E8[] = {
    { gUnk_080B5768, 12 }, { gUnk_080B5770, 12 }, { gUnk_080B5778, 12 }, { gUnk_080B5780, 12 }, { gUnk_080B5788, 12 },
    { gUnk_080B5790, 12 }, { gUnk_080B5798, 12 }, { gUnk_080B57A0, 12 }, { gUnk_080B57A8, 12 }, { gUnk_080B57B0, 12 },
    { gUnk_080B57B8, 12 }, { gUnk_080B57C0, 12 }, { gUnk_080B57C8, 12 }, { gUnk_080B57D0, 12 }, { gUnk_080B57D8, 12 },
    { gUnk_080B57E0, 12 }, { NULL, 16 },
};
const BgAnimationGfx gUnk_080B5870[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_72_0 },
};
const BgAnimationGfx gUnk_080B5878[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_72_1 },
};
const BgAnimationGfx gUnk_080B5880[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_72_2 },
};
const BgAnimationGfx gUnk_080B5888[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_72_3 },
};
const BgAnimationGfx gUnk_080B5890[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_72_4 },
};
const BgAnimationGfx gUnk_080B5898[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_72_5 },
};
const BgAnimationGfx gUnk_080B58A0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_72_6 },
};
const BgAnimationGfx gUnk_080B58A8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_72_7 },
};
const BgAnimationGfx gUnk_080B58B0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_72_8 },
};
const BgAnimationGfx gUnk_080B58B8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_72_9 },
};
const BgAnimationGfx gUnk_080B58C0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_72_10 },
};
const BgAnimationGfx gUnk_080B58C8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_72_11 },
};
const BgAnimationGfx gUnk_080B58D0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_72_12 },
};
const BgAnimationGfx gUnk_080B58D8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_72_13 },
};
const BgAnimationGfx gUnk_080B58E0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_72_14 },
};
const BgAnimationGfx gUnk_080B58E8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_72_15 },
};
const BgAnimationFrame gUnk_080B58F0[] = {
    { gUnk_080B5870, 12 }, { gUnk_080B5878, 12 }, { gUnk_080B5880, 12 }, { gUnk_080B5888, 12 }, { gUnk_080B5890, 12 },
    { gUnk_080B5898, 12 }, { gUnk_080B58A0, 12 }, { gUnk_080B58A8, 12 }, { gUnk_080B58B0, 12 }, { gUnk_080B58B8, 12 },
    { gUnk_080B58C0, 12 }, { gUnk_080B58C8, 12 }, { gUnk_080B58D0, 12 }, { gUnk_080B58D8, 12 }, { gUnk_080B58E0, 12 },
    { gUnk_080B58E8, 12 }, { NULL, 16 },
};
const BgAnimationGfx gUnk_080B5978[] = {
    { 0x5400, 8, BG_ANIM_DEFAULT, offset_bgAnim_87_0 },
};
const BgAnimationGfx gUnk_080B5980[] = {
    { 0x5400, 8, BG_ANIM_DEFAULT, offset_bgAnim_87_1 },
};
const BgAnimationGfx gUnk_080B5988[] = {
    { 0x5400, 8, BG_ANIM_DEFAULT, offset_bgAnim_87_2 },
};
const BgAnimationGfx gUnk_080B5990[] = {
    { 0x5400, 8, BG_ANIM_DEFAULT, offset_bgAnim_87_3 },
};
const BgAnimationFrame gUnk_080B5998[] = {
    { gUnk_080B5978, 9 }, { gUnk_080B5980, 9 }, { gUnk_080B5988, 9 }, { gUnk_080B5990, 9 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B59C0[] = {
    { 0x5500, 24, BG_ANIM_DEFAULT, offset_bgAnim_88_0 },
};
const BgAnimationGfx gUnk_080B59C8[] = {
    { 0x5500, 24, BG_ANIM_DEFAULT, offset_bgAnim_88_1 },
};
const BgAnimationGfx gUnk_080B59D0[] = {
    { 0x5500, 24, BG_ANIM_DEFAULT, offset_bgAnim_88_2 },
};
const BgAnimationGfx gUnk_080B59D8[] = {
    { 0x5500, 24, BG_ANIM_DEFAULT, offset_bgAnim_88_3 },
};
const BgAnimationFrame gUnk_080B59E0[] = {
    { gUnk_080B59C0, 18 }, { gUnk_080B59C8, 19 }, { gUnk_080B59D0, 18 }, { gUnk_080B59D8, 19 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B5A08[] = {
    { 0x5800, 29, BG_ANIM_DEFAULT, offset_bgAnim_89_0 },
};
const BgAnimationGfx gUnk_080B5A10[] = {
    { 0x5800, 29, BG_ANIM_DEFAULT, offset_bgAnim_89_1 },
};
const BgAnimationGfx gUnk_080B5A18[] = {
    { 0x5800, 29, BG_ANIM_DEFAULT, offset_bgAnim_89_2 },
};
const BgAnimationGfx gUnk_080B5A20[] = {
    { 0x5800, 29, BG_ANIM_DEFAULT, offset_bgAnim_89_3 },
};
const BgAnimationFrame gUnk_080B5A28[] = {
    { gUnk_080B5A08, 19 }, { gUnk_080B5A10, 18 }, { gUnk_080B5A18, 19 }, { gUnk_080B5A20, 18 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B5A50[] = {
    { 0x5400, 8, BG_ANIM_DEFAULT, offset_bgAnim_90_0 },
};
const BgAnimationGfx gUnk_080B5A58[] = {
    { 0x5400, 8, BG_ANIM_DEFAULT, offset_bgAnim_90_1 },
};
const BgAnimationGfx gUnk_080B5A60[] = {
    { 0x5400, 8, BG_ANIM_DEFAULT, offset_bgAnim_90_2 },
};
const BgAnimationGfx gUnk_080B5A68[] = {
    { 0x5400, 8, BG_ANIM_DEFAULT, offset_bgAnim_90_3 },
};
const BgAnimationFrame gUnk_080B5A70[] = {
    { gUnk_080B5A50, 9 }, { gUnk_080B5A58, 9 }, { gUnk_080B5A60, 9 }, { gUnk_080B5A68, 9 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B5A98[] = {
    { 0x5500, 24, BG_ANIM_DEFAULT, offset_bgAnim_91_0 },
};
const BgAnimationGfx gUnk_080B5AA0[] = {
    { 0x5500, 24, BG_ANIM_DEFAULT, offset_bgAnim_91_1 },
};
const BgAnimationGfx gUnk_080B5AA8[] = {
    { 0x5500, 24, BG_ANIM_DEFAULT, offset_bgAnim_91_2 },
};
const BgAnimationGfx gUnk_080B5AB0[] = {
    { 0x5500, 24, BG_ANIM_DEFAULT, offset_bgAnim_91_3 },
};
const BgAnimationFrame gUnk_080B5AB8[] = {
    { gUnk_080B5A98, 18 }, { gUnk_080B5AA0, 19 }, { gUnk_080B5AA8, 18 }, { gUnk_080B5AB0, 19 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B5AE0[] = {
    { 0x5800, 1, BG_ANIM_MULTIPLE, offset_bgAnim_92_0 },
    { 0x59c0, 8, BG_ANIM_DEFAULT, offset_bgAnim_92_0_1 },
};
const BgAnimationGfx gUnk_080B5AF0[] = {
    { 0x5800, 1, BG_ANIM_MULTIPLE, offset_bgAnim_92_1 },
    { 0x59c0, 8, BG_ANIM_DEFAULT, offset_bgAnim_92_1_1 },
};
const BgAnimationGfx gUnk_080B5B00[] = {
    { 0x5800, 1, BG_ANIM_MULTIPLE, offset_bgAnim_92_2 },
    { 0x59c0, 8, BG_ANIM_DEFAULT, offset_bgAnim_92_2_1 },
};
const BgAnimationGfx gUnk_080B5B10[] = {
    { 0x5800, 1, BG_ANIM_MULTIPLE, offset_bgAnim_92_3 },
    { 0x59c0, 8, BG_ANIM_DEFAULT, offset_bgAnim_92_3_1 },
};
const BgAnimationFrame gUnk_080B5B20[] = {
    { gUnk_080B5AE0, 19 }, { gUnk_080B5AF0, 18 }, { gUnk_080B5B00, 19 }, { gUnk_080B5B10, 18 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B5B48[] = {
    { 0x5400, 24, BG_ANIM_DEFAULT, offset_bgAnim_26_0 },
};
const BgAnimationGfx gUnk_080B5B50[] = {
    { 0x5400, 24, BG_ANIM_DEFAULT, offset_bgAnim_26_1 },
};
const BgAnimationGfx gUnk_080B5B58[] = {
    { 0x5400, 24, BG_ANIM_DEFAULT, offset_bgAnim_26_2 },
};
const BgAnimationGfx gUnk_080B5B60[] = {
    { 0x5400, 24, BG_ANIM_DEFAULT, offset_bgAnim_26_3 },
};
const BgAnimationFrame gUnk_080B5B68[] = {
    { gUnk_080B5B48, 8 }, { gUnk_080B5B50, 8 }, { gUnk_080B5B58, 8 }, { gUnk_080B5B60, 8 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B5B90[] = {
    { 0x5800, 32, BG_ANIM_DEFAULT, offset_bgAnim_77_0 },
};
const BgAnimationGfx gUnk_080B5B98[] = {
    { 0x5800, 32, BG_ANIM_DEFAULT, offset_bgAnim_77_1 },
};
const BgAnimationGfx gUnk_080B5BA0[] = {
    { 0x5800, 32, BG_ANIM_DEFAULT, offset_bgAnim_77_2 },
};
const BgAnimationGfx gUnk_080B5BA8[] = {
    { 0x5800, 32, BG_ANIM_DEFAULT, offset_bgAnim_77_3 },
};
const BgAnimationFrame gUnk_080B5BB0[] = {
    { gUnk_080B5B90, 19 }, { gUnk_080B5B98, 19 }, { gUnk_080B5BA0, 19 }, { gUnk_080B5BA8, 19 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B5BD8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_78_0 },
};
const BgAnimationGfx gUnk_080B5BE0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_78_1 },
};
const BgAnimationGfx gUnk_080B5BE8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_78_2 },
};
const BgAnimationGfx gUnk_080B5BF0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_78_3 },
};
const BgAnimationGfx gUnk_080B5BF8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_78_4 },
};
const BgAnimationGfx gUnk_080B5C00[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_78_5 },
};
const BgAnimationGfx gUnk_080B5C08[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_78_6 },
};
const BgAnimationGfx gUnk_080B5C10[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_78_7 },
};
const BgAnimationGfx gUnk_080B5C18[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_78_8 },
};
const BgAnimationGfx gUnk_080B5C20[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_78_9 },
};
const BgAnimationGfx gUnk_080B5C28[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_78_10 },
};
const BgAnimationGfx gUnk_080B5C30[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_78_11 },
};
const BgAnimationGfx gUnk_080B5C38[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_78_12 },
};
const BgAnimationGfx gUnk_080B5C40[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_78_13 },
};
const BgAnimationGfx gUnk_080B5C48[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_78_14 },
};
const BgAnimationGfx gUnk_080B5C50[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_78_15 },
};
const BgAnimationFrame gUnk_080B5C58[] = {
    { gUnk_080B5BD8, 12 }, { gUnk_080B5BE0, 12 }, { gUnk_080B5BE8, 12 }, { gUnk_080B5BF0, 12 }, { gUnk_080B5BF8, 12 },
    { gUnk_080B5C00, 12 }, { gUnk_080B5C08, 12 }, { gUnk_080B5C10, 12 }, { gUnk_080B5C18, 12 }, { gUnk_080B5C20, 12 },
    { gUnk_080B5C28, 12 }, { gUnk_080B5C30, 12 }, { gUnk_080B5C38, 12 }, { gUnk_080B5C40, 12 }, { gUnk_080B5C48, 12 },
    { gUnk_080B5C50, 12 }, { NULL, 16 },
};
const BgAnimationGfx gUnk_080B5CE0[] = {
    { 0x5400, 4, BG_ANIM_MULTIPLE, offset_bgAnim_21_0 },
    { 0x5b40, 6, BG_ANIM_MULTIPLE, offset_bgAnim_21_0_1 },
    { 0x5720, 7, BG_ANIM_DEFAULT, offset_bgAnim_21_0_2 },
};
const BgAnimationGfx gUnk_080B5CF8[] = {
    { 0x5400, 4, BG_ANIM_MULTIPLE, offset_bgAnim_21_1 },
    { 0x5b40, 6, BG_ANIM_MULTIPLE, offset_bgAnim_21_1_1 },
    { 0x5720, 7, BG_ANIM_DEFAULT, offset_bgAnim_21_1_2 },
};
const BgAnimationGfx gUnk_080B5D10[] = {
    { 0x5400, 4, BG_ANIM_MULTIPLE, offset_bgAnim_21_2 },
    { 0x5b40, 6, BG_ANIM_MULTIPLE, offset_bgAnim_21_2_1 },
    { 0x5720, 7, BG_ANIM_DEFAULT, offset_bgAnim_21_2_2 },
};
const BgAnimationGfx gUnk_080B5D28[] = {
    { 0x5400, 4, BG_ANIM_MULTIPLE, offset_bgAnim_21_3 },
    { 0x5b40, 6, BG_ANIM_MULTIPLE, offset_bgAnim_21_3_1 },
    { 0x5720, 7, BG_ANIM_DEFAULT, offset_bgAnim_21_3_2 },
};
const BgAnimationFrame gUnk_080B5D40[] = {
    { gUnk_080B5CE0, 8 }, { gUnk_080B5CF8, 8 }, { gUnk_080B5D10, 8 }, { gUnk_080B5D28, 8 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B5D68[] = {
    { 0x54c0, 19, BG_ANIM_MULTIPLE, offset_bgAnim_22_0 },
    { 0x5800, 12, BG_ANIM_DEFAULT, offset_bgAnim_22_0_1 },
};
const BgAnimationGfx gUnk_080B5D78[] = {
    { 0x54c0, 19, BG_ANIM_MULTIPLE, offset_bgAnim_22_1 },
    { 0x5800, 12, BG_ANIM_DEFAULT, offset_bgAnim_22_1_1 },
};
const BgAnimationGfx gUnk_080B5D88[] = {
    { 0x54c0, 19, BG_ANIM_MULTIPLE, offset_bgAnim_22_2 },
    { 0x5800, 12, BG_ANIM_DEFAULT, offset_bgAnim_22_2_1 },
};
const BgAnimationGfx gUnk_080B5D98[] = {
    { 0x54c0, 19, BG_ANIM_MULTIPLE, offset_bgAnim_22_3 },
    { 0x5800, 12, BG_ANIM_DEFAULT, offset_bgAnim_22_3_1 },
};
const BgAnimationFrame gUnk_080B5DA8[] = {
    { gUnk_080B5D68, 12 }, { gUnk_080B5D78, 12 }, { gUnk_080B5D88, 12 }, { gUnk_080B5D98, 12 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B5DD0[] = {
    { 0x5980, 14, BG_ANIM_DEFAULT, offset_bgAnim_23_0 },
};
const BgAnimationGfx gUnk_080B5DD8[] = {
    { 0x5980, 14, BG_ANIM_DEFAULT, offset_bgAnim_23_1 },
};
const BgAnimationGfx gUnk_080B5DE0[] = {
    { 0x5980, 14, BG_ANIM_DEFAULT, offset_bgAnim_23_2 },
};
const BgAnimationGfx gUnk_080B5DE8[] = {
    { 0x5980, 14, BG_ANIM_DEFAULT, offset_bgAnim_23_3 },
};
const BgAnimationFrame gUnk_080B5DF0[] = {
    { gUnk_080B5DD0, 14 }, { gUnk_080B5DD8, 14 }, { gUnk_080B5DE0, 14 }, { gUnk_080B5DE8, 14 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B5E18[] = {
    { 0x5400, 4, BG_ANIM_DEFAULT, offset_bgAnim_20_0 },
};
const BgAnimationGfx gUnk_080B5E20[] = {
    { 0x5400, 4, BG_ANIM_DEFAULT, offset_bgAnim_20_1 },
};
const BgAnimationGfx gUnk_080B5E28[] = {
    { 0x5400, 4, BG_ANIM_DEFAULT, offset_bgAnim_20_2 },
};
const BgAnimationGfx gUnk_080B5E30[] = {
    { 0x5400, 4, BG_ANIM_DEFAULT, offset_bgAnim_20_3 },
};
const BgAnimationFrame gUnk_080B5E38[] = {
    { gUnk_080B5E18, 5 }, { gUnk_080B5E20, 5 }, { gUnk_080B5E28, 5 }, { gUnk_080B5E30, 5 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B5E60[] = {
    { 0x5600, 16, BG_ANIM_DEFAULT, offset_bgAnim_24_0 },
};
const BgAnimationGfx gUnk_080B5E68[] = {
    { 0x5600, 16, BG_ANIM_DEFAULT, offset_bgAnim_24_1 },
};
const BgAnimationGfx gUnk_080B5E70[] = {
    { 0x5600, 16, BG_ANIM_DEFAULT, offset_bgAnim_24_2 },
};
const BgAnimationGfx gUnk_080B5E78[] = {
    { 0x5600, 16, BG_ANIM_DEFAULT, offset_bgAnim_24_3 },
};
const BgAnimationGfx gUnk_080B5E80[] = {
    { 0x5600, 16, BG_ANIM_DEFAULT, offset_bgAnim_24_4 },
};
const BgAnimationFrame gUnk_080B5E88[] = {
    { gUnk_080B5E60, 0x80000004 }, { gUnk_080B5E68, 12 }, { gUnk_080B5E70, 12 },
    { gUnk_080B5E78, 12 },         { gUnk_080B5E80, 12 }, { NULL, 5 },
};
const BgAnimationGfx gUnk_080B5EB8[] = {
    { 0x5800, 12, BG_ANIM_DEFAULT, offset_bgAnim_25_0 },
};
const BgAnimationGfx gUnk_080B5EC0[] = {
    { 0x5800, 12, BG_ANIM_DEFAULT, offset_bgAnim_25_1 },
};
const BgAnimationGfx gUnk_080B5EC8[] = {
    { 0x5800, 12, BG_ANIM_DEFAULT, offset_bgAnim_25_2 },
};
const BgAnimationGfx gUnk_080B5ED0[] = {
    { 0x5800, 12, BG_ANIM_DEFAULT, offset_bgAnim_25_3 },
};
const BgAnimationFrame gUnk_080B5ED8[] = {
    { gUnk_080B5EB8, 9 }, { gUnk_080B5EC0, 9 }, { gUnk_080B5EC8, 9 }, { gUnk_080B5ED0, 9 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B5F00[] = {
    { 0x5a00, 16, BG_ANIM_DEFAULT, offset_bgAnim_27_0 },
};
const BgAnimationGfx gUnk_080B5F08[] = {
    { 0x5a00, 16, BG_ANIM_DEFAULT, offset_bgAnim_27_1 },
};
const BgAnimationGfx gUnk_080B5F10[] = {
    { 0x5a00, 16, BG_ANIM_DEFAULT, offset_bgAnim_27_2 },
};
const BgAnimationGfx gUnk_080B5F18[] = {
    { 0x5a00, 16, BG_ANIM_DEFAULT, offset_bgAnim_27_3 },
};
const BgAnimationGfx gUnk_080B5F20[] = {
    { 0x5a00, 16, BG_ANIM_DEFAULT, offset_bgAnim_27_4 },
};
const BgAnimationFrame gUnk_080B5F28[] = {
    { gUnk_080B5F00, 0x80000005 }, { gUnk_080B5F08, 10 }, { gUnk_080B5F10, 10 },
    { gUnk_080B5F18, 10 },         { gUnk_080B5F20, 10 }, { NULL, 5 },
};
const BgAnimationGfx gUnk_080B5F58[] = {
    { 0x160, 3, BG_ANIM_PALETTE, offset_bgAnim_28_0 },
};
const BgAnimationGfx gUnk_080B5F60[] = {
    { 0x160, 3, BG_ANIM_PALETTE, offset_bgAnim_28_1 },
};
const BgAnimationGfx gUnk_080B5F68[] = {
    { 0x160, 3, BG_ANIM_PALETTE, offset_bgAnim_28_2 },
};
const BgAnimationGfx gUnk_080B5F70[] = {
    { 0x160, 3, BG_ANIM_PALETTE, offset_bgAnim_28_3 },
};
const BgAnimationGfx gUnk_080B5F78[] = {
    { 0x160, 3, BG_ANIM_PALETTE, offset_bgAnim_28_4 },
};
const BgAnimationFrame gUnk_080B5F80[] = {
    { gUnk_080B5F58, 23 }, { gUnk_080B5F60, 23 }, { gUnk_080B5F68, 23 },
    { gUnk_080B5F70, 23 }, { gUnk_080B5F78, 23 }, { NULL, 5 },
};
const BgAnimationGfx gUnk_080B5FB0[] = {
    { 0x5400, 5, BG_ANIM_DEFAULT, offset_bgAnim_46_0 },
};
const BgAnimationGfx gUnk_080B5FB8[] = {
    { 0x5400, 5, BG_ANIM_DEFAULT, offset_bgAnim_46_1 },
};
const BgAnimationGfx gUnk_080B5FC0[] = {
    { 0x5400, 5, BG_ANIM_DEFAULT, offset_bgAnim_46_2 },
};
const BgAnimationGfx gUnk_080B5FC8[] = {
    { 0x5400, 5, BG_ANIM_DEFAULT, offset_bgAnim_46_3 },
};
const BgAnimationFrame gUnk_080B5FD0[] = {
    { gUnk_080B5FB0, 5 }, { gUnk_080B5FB8, 5 }, { gUnk_080B5FC0, 5 }, { gUnk_080B5FC8, 5 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B5FF8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_61_0 },
};
const BgAnimationGfx gUnk_080B6000[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_61_1 },
};
const BgAnimationGfx gUnk_080B6008[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_61_2 },
};
const BgAnimationGfx gUnk_080B6010[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_61_3 },
};
const BgAnimationGfx gUnk_080B6018[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_61_4 },
};
const BgAnimationGfx gUnk_080B6020[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_61_5 },
};
const BgAnimationGfx gUnk_080B6028[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_61_6 },
};
const BgAnimationGfx gUnk_080B6030[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_61_7 },
};
const BgAnimationGfx gUnk_080B6038[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_61_8 },
};
const BgAnimationGfx gUnk_080B6040[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_61_9 },
};
const BgAnimationGfx gUnk_080B6048[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_61_10 },
};
const BgAnimationGfx gUnk_080B6050[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_61_11 },
};
const BgAnimationGfx gUnk_080B6058[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_61_12 },
};
const BgAnimationGfx gUnk_080B6060[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_61_13 },
};
const BgAnimationGfx gUnk_080B6068[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_61_14 },
};
const BgAnimationGfx gUnk_080B6070[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_61_15 },
};
const BgAnimationFrame gUnk_080B6078[] = {
    { gUnk_080B5FF8, 12 }, { gUnk_080B6000, 12 }, { gUnk_080B6008, 12 }, { gUnk_080B6010, 12 }, { gUnk_080B6018, 12 },
    { gUnk_080B6020, 12 }, { gUnk_080B6028, 12 }, { gUnk_080B6030, 12 }, { gUnk_080B6038, 12 }, { gUnk_080B6040, 12 },
    { gUnk_080B6048, 12 }, { gUnk_080B6050, 12 }, { gUnk_080B6058, 12 }, { gUnk_080B6060, 12 }, { gUnk_080B6068, 12 },
    { gUnk_080B6070, 12 }, { NULL, 16 },
};
const BgAnimationGfx gUnk_080B6100[] = {
    { 0x5400, 8, BG_ANIM_DEFAULT, offset_bgAnim_42_0 },
};
const BgAnimationGfx gUnk_080B6108[] = {
    { 0x5400, 8, BG_ANIM_DEFAULT, offset_bgAnim_42_1 },
};
const BgAnimationGfx gUnk_080B6110[] = {
    { 0x5400, 8, BG_ANIM_DEFAULT, offset_bgAnim_42_2 },
};
const BgAnimationGfx gUnk_080B6118[] = {
    { 0x5400, 8, BG_ANIM_DEFAULT, offset_bgAnim_42_3 },
};
const BgAnimationFrame gUnk_080B6120[] = {
    { gUnk_080B6100, 5 }, { gUnk_080B6108, 5 }, { gUnk_080B6110, 5 }, { gUnk_080B6118, 5 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B6148[] = {
    { 0x5500, 20, BG_ANIM_DEFAULT, offset_bgAnim_43_0 },
};
const BgAnimationGfx gUnk_080B6150[] = {
    { 0x5500, 20, BG_ANIM_DEFAULT, offset_bgAnim_43_1 },
};
const BgAnimationGfx gUnk_080B6158[] = {
    { 0x5500, 20, BG_ANIM_DEFAULT, offset_bgAnim_43_2 },
};
const BgAnimationGfx gUnk_080B6160[] = {
    { 0x5500, 20, BG_ANIM_DEFAULT, offset_bgAnim_43_3 },
};
const BgAnimationFrame gUnk_080B6168[] = {
    { gUnk_080B6148, 18 }, { gUnk_080B6150, 17 }, { gUnk_080B6158, 18 }, { gUnk_080B6160, 17 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B6190[] = {
    { 0x5800, 19, BG_ANIM_DEFAULT, offset_bgAnim_44_0 },
};
const BgAnimationGfx gUnk_080B6198[] = {
    { 0x5800, 19, BG_ANIM_DEFAULT, offset_bgAnim_44_1 },
};
const BgAnimationGfx gUnk_080B61A0[] = {
    { 0x5800, 19, BG_ANIM_DEFAULT, offset_bgAnim_44_2 },
};
const BgAnimationGfx gUnk_080B61A8[] = {
    { 0x5800, 19, BG_ANIM_DEFAULT, offset_bgAnim_44_3 },
};
const BgAnimationFrame gUnk_080B61B0[] = {
    { gUnk_080B6190, 21 }, { gUnk_080B6198, 20 }, { gUnk_080B61A0, 21 }, { gUnk_080B61A8, 20 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B61D8[] = {
    { 0x5a60, 13, BG_ANIM_DEFAULT, offset_bgAnim_45_0 },
};
const BgAnimationGfx gUnk_080B61E0[] = {
    { 0x5a60, 13, BG_ANIM_DEFAULT, offset_bgAnim_45_1 },
};
const BgAnimationGfx gUnk_080B61E8[] = {
    { 0x5a60, 13, BG_ANIM_DEFAULT, offset_bgAnim_45_2 },
};
const BgAnimationGfx gUnk_080B61F0[] = {
    { 0x5a60, 13, BG_ANIM_DEFAULT, offset_bgAnim_45_3 },
};
const BgAnimationFrame gUnk_080B61F8[] = {
    { gUnk_080B61D8, 8 }, { gUnk_080B61E0, 8 }, { gUnk_080B61E8, 8 }, { gUnk_080B61F0, 8 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B6220[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_62_0 },
};
const BgAnimationGfx gUnk_080B6228[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_62_1 },
};
const BgAnimationGfx gUnk_080B6230[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_62_2 },
};
const BgAnimationGfx gUnk_080B6238[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_62_3 },
};
const BgAnimationGfx gUnk_080B6240[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_62_4 },
};
const BgAnimationGfx gUnk_080B6248[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_62_5 },
};
const BgAnimationGfx gUnk_080B6250[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_62_6 },
};
const BgAnimationGfx gUnk_080B6258[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_62_7 },
};
const BgAnimationGfx gUnk_080B6260[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_62_8 },
};
const BgAnimationGfx gUnk_080B6268[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_62_9 },
};
const BgAnimationGfx gUnk_080B6270[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_62_10 },
};
const BgAnimationGfx gUnk_080B6278[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_62_11 },
};
const BgAnimationGfx gUnk_080B6280[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_62_12 },
};
const BgAnimationGfx gUnk_080B6288[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_62_13 },
};
const BgAnimationGfx gUnk_080B6290[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_62_14 },
};
const BgAnimationGfx gUnk_080B6298[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_62_15 },
};
const BgAnimationFrame gUnk_080B62A0[] = {
    { gUnk_080B6220, 12 }, { gUnk_080B6228, 12 }, { gUnk_080B6230, 12 }, { gUnk_080B6238, 12 }, { gUnk_080B6240, 12 },
    { gUnk_080B6248, 12 }, { gUnk_080B6250, 12 }, { gUnk_080B6258, 12 }, { gUnk_080B6260, 12 }, { gUnk_080B6268, 12 },
    { gUnk_080B6270, 12 }, { gUnk_080B6278, 12 }, { gUnk_080B6280, 12 }, { gUnk_080B6288, 12 }, { gUnk_080B6290, 12 },
    { gUnk_080B6298, 12 }, { NULL, 16 },
};
const BgAnimationGfx gUnk_080B6328[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_63_0 },
};
const BgAnimationGfx gUnk_080B6330[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_63_1 },
};
const BgAnimationGfx gUnk_080B6338[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_63_2 },
};
const BgAnimationGfx gUnk_080B6340[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_63_3 },
};
const BgAnimationGfx gUnk_080B6348[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_63_4 },
};
const BgAnimationGfx gUnk_080B6350[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_63_5 },
};
const BgAnimationGfx gUnk_080B6358[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_63_6 },
};
const BgAnimationGfx gUnk_080B6360[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_63_7 },
};
const BgAnimationGfx gUnk_080B6368[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_63_8 },
};
const BgAnimationGfx gUnk_080B6370[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_63_9 },
};
const BgAnimationGfx gUnk_080B6378[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_63_10 },
};
const BgAnimationGfx gUnk_080B6380[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_63_11 },
};
const BgAnimationGfx gUnk_080B6388[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_63_12 },
};
const BgAnimationGfx gUnk_080B6390[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_63_13 },
};
const BgAnimationGfx gUnk_080B6398[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_63_14 },
};
const BgAnimationGfx gUnk_080B63A0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_63_15 },
};
const BgAnimationFrame gUnk_080B63A8[] = {
    { gUnk_080B6328, 12 }, { gUnk_080B6330, 12 }, { gUnk_080B6338, 12 }, { gUnk_080B6340, 12 }, { gUnk_080B6348, 12 },
    { gUnk_080B6350, 12 }, { gUnk_080B6358, 12 }, { gUnk_080B6360, 12 }, { gUnk_080B6368, 12 }, { gUnk_080B6370, 12 },
    { gUnk_080B6378, 12 }, { gUnk_080B6380, 12 }, { gUnk_080B6388, 12 }, { gUnk_080B6390, 12 }, { gUnk_080B6398, 12 },
    { gUnk_080B63A0, 12 }, { NULL, 16 },
};
const BgAnimationGfx gUnk_080B6430[] = {
    { 0x5400, 6, BG_ANIM_DEFAULT, offset_bgAnim_85_0 },
};
const BgAnimationGfx gUnk_080B6438[] = {
    { 0x5400, 6, BG_ANIM_DEFAULT, offset_bgAnim_85_1 },
};
const BgAnimationGfx gUnk_080B6440[] = {
    { 0x5400, 6, BG_ANIM_DEFAULT, offset_bgAnim_85_2 },
};
const BgAnimationGfx gUnk_080B6448[] = {
    { 0x5400, 6, BG_ANIM_DEFAULT, offset_bgAnim_85_3 },
};
const BgAnimationFrame gUnk_080B6450[] = {
    { gUnk_080B6430, 8 }, { gUnk_080B6438, 8 }, { gUnk_080B6440, 8 }, { gUnk_080B6448, 8 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B6478[] = {
    { 0x54c0, 12, BG_ANIM_DEFAULT, offset_bgAnim_86_0 },
};
const BgAnimationGfx gUnk_080B6480[] = {
    { 0x54c0, 12, BG_ANIM_DEFAULT, offset_bgAnim_86_1 },
};
const BgAnimationGfx gUnk_080B6488[] = {
    { 0x54c0, 12, BG_ANIM_DEFAULT, offset_bgAnim_86_2 },
};
const BgAnimationGfx gUnk_080B6490[] = {
    { 0x54c0, 12, BG_ANIM_DEFAULT, offset_bgAnim_86_3 },
};
const BgAnimationFrame gUnk_080B6498[] = {
    { gUnk_080B6478, 19 }, { gUnk_080B6480, 19 }, { gUnk_080B6488, 19 }, { gUnk_080B6490, 19 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B64C0[] = {
    { 0x5800, 10, BG_ANIM_DEFAULT, offset_bgAnim_17_0 },
};
const BgAnimationGfx gUnk_080B64C8[] = {
    { 0x5800, 10, BG_ANIM_DEFAULT, offset_bgAnim_17_1 },
};
const BgAnimationGfx gUnk_080B64D0[] = {
    { 0x5800, 10, BG_ANIM_DEFAULT, offset_bgAnim_17_2 },
};
const BgAnimationGfx gUnk_080B64D8[] = {
    { 0x5800, 10, BG_ANIM_DEFAULT, offset_bgAnim_17_3 },
};
const BgAnimationFrame gUnk_080B64E0[] = {
    { gUnk_080B64C0, 8 }, { gUnk_080B64C8, 8 }, { gUnk_080B64D0, 8 }, { gUnk_080B64D8, 8 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B6508[] = {
    { 0x5480, 9, BG_ANIM_DEFAULT, offset_bgAnim_18_0 },
};
const BgAnimationGfx gUnk_080B6510[] = {
    { 0x5480, 9, BG_ANIM_DEFAULT, offset_bgAnim_18_1 },
};
const BgAnimationGfx gUnk_080B6518[] = {
    { 0x5480, 9, BG_ANIM_DEFAULT, offset_bgAnim_18_2 },
};
const BgAnimationGfx gUnk_080B6520[] = {
    { 0x5480, 9, BG_ANIM_DEFAULT, offset_bgAnim_18_3 },
};
const BgAnimationFrame gUnk_080B6528[] = {
    { gUnk_080B6508, 21 }, { gUnk_080B6510, 21 }, { gUnk_080B6518, 21 }, { gUnk_080B6520, 21 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B6550[] = {
    { 0x55a0, 12, BG_ANIM_DEFAULT, offset_bgAnim_19_0 },
};
const BgAnimationGfx gUnk_080B6558[] = {
    { 0x55a0, 12, BG_ANIM_DEFAULT, offset_bgAnim_19_1 },
};
const BgAnimationGfx gUnk_080B6560[] = {
    { 0x55a0, 12, BG_ANIM_DEFAULT, offset_bgAnim_19_2 },
};
const BgAnimationGfx gUnk_080B6568[] = {
    { 0x55a0, 12, BG_ANIM_DEFAULT, offset_bgAnim_19_3 },
};
const BgAnimationFrame gUnk_080B6570[] = {
    { gUnk_080B6550, 11 }, { gUnk_080B6558, 11 }, { gUnk_080B6560, 11 }, { gUnk_080B6568, 11 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B6598[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_64_0 },
};
const BgAnimationGfx gUnk_080B65A0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_64_1 },
};
const BgAnimationGfx gUnk_080B65A8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_64_2 },
};
const BgAnimationGfx gUnk_080B65B0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_64_3 },
};
const BgAnimationGfx gUnk_080B65B8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_64_4 },
};
const BgAnimationGfx gUnk_080B65C0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_64_5 },
};
const BgAnimationGfx gUnk_080B65C8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_64_6 },
};
const BgAnimationGfx gUnk_080B65D0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_64_7 },
};
const BgAnimationGfx gUnk_080B65D8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_64_8 },
};
const BgAnimationGfx gUnk_080B65E0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_64_9 },
};
const BgAnimationGfx gUnk_080B65E8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_64_10 },
};
const BgAnimationGfx gUnk_080B65F0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_64_11 },
};
const BgAnimationGfx gUnk_080B65F8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_64_12 },
};
const BgAnimationGfx gUnk_080B6600[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_64_13 },
};
const BgAnimationGfx gUnk_080B6608[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_64_14 },
};
const BgAnimationGfx gUnk_080B6610[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_64_15 },
};
const BgAnimationFrame gUnk_080B6618[] = {
    { gUnk_080B6598, 12 }, { gUnk_080B65A0, 12 }, { gUnk_080B65A8, 12 }, { gUnk_080B65B0, 12 }, { gUnk_080B65B8, 12 },
    { gUnk_080B65C0, 12 }, { gUnk_080B65C8, 12 }, { gUnk_080B65D0, 12 }, { gUnk_080B65D8, 12 }, { gUnk_080B65E0, 12 },
    { gUnk_080B65E8, 12 }, { gUnk_080B65F0, 12 }, { gUnk_080B65F8, 12 }, { gUnk_080B6600, 12 }, { gUnk_080B6608, 12 },
    { gUnk_080B6610, 12 }, { NULL, 16 },
};
const BgAnimationGfx gUnk_080B66A0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_76_0 },
};
const BgAnimationGfx gUnk_080B66A8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_76_1 },
};
const BgAnimationGfx gUnk_080B66B0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_76_2 },
};
const BgAnimationGfx gUnk_080B66B8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_76_3 },
};
const BgAnimationGfx gUnk_080B66C0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_76_4 },
};
const BgAnimationGfx gUnk_080B66C8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_76_5 },
};
const BgAnimationGfx gUnk_080B66D0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_76_6 },
};
const BgAnimationGfx gUnk_080B66D8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_76_7 },
};
const BgAnimationGfx gUnk_080B66E0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_76_8 },
};
const BgAnimationGfx gUnk_080B66E8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_76_9 },
};
const BgAnimationGfx gUnk_080B66F0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_76_10 },
};
const BgAnimationGfx gUnk_080B66F8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_76_11 },
};
const BgAnimationGfx gUnk_080B6700[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_76_12 },
};
const BgAnimationGfx gUnk_080B6708[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_76_13 },
};
const BgAnimationGfx gUnk_080B6710[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_76_14 },
};
const BgAnimationGfx gUnk_080B6718[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_76_15 },
};
const BgAnimationFrame gUnk_080B6720[] = {
    { gUnk_080B66A0, 12 }, { gUnk_080B66A8, 12 }, { gUnk_080B66B0, 12 }, { gUnk_080B66B8, 12 }, { gUnk_080B66C0, 12 },
    { gUnk_080B66C8, 12 }, { gUnk_080B66D0, 12 }, { gUnk_080B66D8, 12 }, { gUnk_080B66E0, 12 }, { gUnk_080B66E8, 12 },
    { gUnk_080B66F0, 12 }, { gUnk_080B66F8, 12 }, { gUnk_080B6700, 12 }, { gUnk_080B6708, 12 }, { gUnk_080B6710, 12 },
    { gUnk_080B6718, 12 }, { NULL, 16 },
};
const BgAnimationGfx gUnk_080B67A8[] = {
    { 0x5400, 16, BG_ANIM_DEFAULT, offset_bgAnim_1_0 },
};
const BgAnimationGfx gUnk_080B67B0[] = {
    { 0x5400, 16, BG_ANIM_DEFAULT, offset_bgAnim_1_1 },
};
const BgAnimationGfx gUnk_080B67B8[] = {
    { 0x5400, 16, BG_ANIM_DEFAULT, offset_bgAnim_1_2 },
};
const BgAnimationGfx gUnk_080B67C0[] = {
    { 0x5400, 16, BG_ANIM_DEFAULT, offset_bgAnim_1_3 },
};
const BgAnimationFrame gUnk_080B67C8[] = {
    { gUnk_080B67A8, 10 }, { gUnk_080B67B0, 10 }, { gUnk_080B67B8, 10 }, { gUnk_080B67C0, 10 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B67F0[] = {
    { 0x5800, 4, BG_ANIM_DEFAULT, offset_bgAnim_7_0 },
};
const BgAnimationGfx gUnk_080B67F8[] = {
    { 0x5800, 4, BG_ANIM_DEFAULT, offset_bgAnim_7_1 },
};
const BgAnimationGfx gUnk_080B6800[] = {
    { 0x5800, 4, BG_ANIM_DEFAULT, offset_bgAnim_7_2 },
};
const BgAnimationGfx gUnk_080B6808[] = {
    { 0x5800, 4, BG_ANIM_DEFAULT, offset_bgAnim_7_3 },
};
const BgAnimationFrame gUnk_080B6810[] = {
    { gUnk_080B67F0, 0x80000000 }, { gUnk_080B67F8, 5 }, { gUnk_080B6800, 6 }, { gUnk_080B6808, 5 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B6838[] = {
    { 0x5880, 3, BG_ANIM_DEFAULT, offset_bgAnim_13_0 },
};
const BgAnimationGfx gUnk_080B6840[] = {
    { 0x5880, 3, BG_ANIM_DEFAULT, offset_bgAnim_13_1 },
};
const BgAnimationGfx gUnk_080B6848[] = {
    { 0x5880, 3, BG_ANIM_DEFAULT, offset_bgAnim_13_2 },
};
const BgAnimationGfx gUnk_080B6850[] = {
    { 0x5880, 3, BG_ANIM_DEFAULT, offset_bgAnim_13_3 },
};
const BgAnimationFrame gUnk_080B6858[] = {
    { gUnk_080B6838, 0x80000001 }, { gUnk_080B6840, 5 }, { gUnk_080B6848, 6 }, { gUnk_080B6850, 5 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B6880[] = {
    { 0x58e0, 4, BG_ANIM_DEFAULT, offset_bgAnim_14_0 },
};
const BgAnimationGfx gUnk_080B6888[] = {
    { 0x58e0, 4, BG_ANIM_DEFAULT, offset_bgAnim_14_1 },
};
const BgAnimationGfx gUnk_080B6890[] = {
    { 0x58e0, 4, BG_ANIM_DEFAULT, offset_bgAnim_14_2 },
};
const BgAnimationGfx gUnk_080B6898[] = {
    { 0x58e0, 4, BG_ANIM_DEFAULT, offset_bgAnim_14_3 },
};
const BgAnimationFrame gUnk_080B68A0[] = {
    { gUnk_080B6880, 0x80000002 }, { gUnk_080B6888, 5 }, { gUnk_080B6890, 6 }, { gUnk_080B6898, 5 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B68C8[] = {
    { 0x5960, 3, BG_ANIM_DEFAULT, offset_bgAnim_15_0 },
};
const BgAnimationGfx gUnk_080B68D0[] = {
    { 0x5960, 3, BG_ANIM_DEFAULT, offset_bgAnim_15_1 },
};
const BgAnimationGfx gUnk_080B68D8[] = {
    { 0x5960, 3, BG_ANIM_DEFAULT, offset_bgAnim_15_2 },
};
const BgAnimationGfx gUnk_080B68E0[] = {
    { 0x5960, 3, BG_ANIM_DEFAULT, offset_bgAnim_15_3 },
};
const BgAnimationFrame gUnk_080B68E8[] = {
    { gUnk_080B68C8, 0x80000003 }, { gUnk_080B68D0, 5 }, { gUnk_080B68D8, 6 }, { gUnk_080B68E0, 5 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B6910[] = {
    { 0x100, 3, BG_ANIM_PALETTE, offset_bgAnim_16_0 },
};
const BgAnimationGfx gUnk_080B6918[] = {
    { 0x100, 3, BG_ANIM_PALETTE, offset_bgAnim_16_1 },
};
const BgAnimationGfx gUnk_080B6920[] = {
    { 0x100, 3, BG_ANIM_PALETTE, offset_bgAnim_16_2 },
};
const BgAnimationGfx gUnk_080B6928[] = {
    { 0x100, 3, BG_ANIM_PALETTE, offset_bgAnim_16_3 },
};
const BgAnimationGfx gUnk_080B6930[] = {
    { 0x100, 3, BG_ANIM_PALETTE, offset_bgAnim_16_4 },
};
const BgAnimationFrame gUnk_080B6938[] = {
    { gUnk_080B6910, 20 }, { gUnk_080B6918, 20 }, { gUnk_080B6920, 20 }, { gUnk_080B6928, 20 }, { gUnk_080B6930, 20 },
    { gUnk_080B6928, 20 }, { gUnk_080B6920, 20 }, { gUnk_080B6918, 20 }, { NULL, 8 },
};
const BgAnimationGfx gUnk_080B6980[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_75_0 },
};
const BgAnimationGfx gUnk_080B6988[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_75_1 },
};
const BgAnimationGfx gUnk_080B6990[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_75_2 },
};
const BgAnimationGfx gUnk_080B6998[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_75_3 },
};
const BgAnimationGfx gUnk_080B69A0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_75_4 },
};
const BgAnimationGfx gUnk_080B69A8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_75_5 },
};
const BgAnimationGfx gUnk_080B69B0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_75_6 },
};
const BgAnimationGfx gUnk_080B69B8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_75_7 },
};
const BgAnimationGfx gUnk_080B69C0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_75_8 },
};
const BgAnimationGfx gUnk_080B69C8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_75_9 },
};
const BgAnimationGfx gUnk_080B69D0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_75_10 },
};
const BgAnimationGfx gUnk_080B69D8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_75_11 },
};
const BgAnimationGfx gUnk_080B69E0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_75_12 },
};
const BgAnimationGfx gUnk_080B69E8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_75_13 },
};
const BgAnimationGfx gUnk_080B69F0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_75_14 },
};
const BgAnimationGfx gUnk_080B69F8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_75_15 },
};
const BgAnimationFrame gUnk_080B6A00[] = {
    { gUnk_080B6980, 12 }, { gUnk_080B6988, 12 }, { gUnk_080B6990, 12 }, { gUnk_080B6998, 12 }, { gUnk_080B69A0, 12 },
    { gUnk_080B69A8, 12 }, { gUnk_080B69B0, 12 }, { gUnk_080B69B8, 12 }, { gUnk_080B69C0, 12 }, { gUnk_080B69C8, 12 },
    { gUnk_080B69D0, 12 }, { gUnk_080B69D8, 12 }, { gUnk_080B69E0, 12 }, { gUnk_080B69E8, 12 }, { gUnk_080B69F0, 12 },
    { gUnk_080B69F8, 12 }, { NULL, 16 },
};
const BgAnimationGfx gUnk_080B6A88[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_60_0 },
};
const BgAnimationGfx gUnk_080B6A90[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_60_1 },
};
const BgAnimationGfx gUnk_080B6A98[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_60_2 },
};
const BgAnimationGfx gUnk_080B6AA0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_60_3 },
};
const BgAnimationGfx gUnk_080B6AA8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_60_4 },
};
const BgAnimationGfx gUnk_080B6AB0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_60_5 },
};
const BgAnimationGfx gUnk_080B6AB8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_60_6 },
};
const BgAnimationGfx gUnk_080B6AC0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_60_7 },
};
const BgAnimationGfx gUnk_080B6AC8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_60_8 },
};
const BgAnimationGfx gUnk_080B6AD0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_60_9 },
};
const BgAnimationGfx gUnk_080B6AD8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_60_10 },
};
const BgAnimationGfx gUnk_080B6AE0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_60_11 },
};
const BgAnimationGfx gUnk_080B6AE8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_60_12 },
};
const BgAnimationGfx gUnk_080B6AF0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_60_13 },
};
const BgAnimationGfx gUnk_080B6AF8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_60_14 },
};
const BgAnimationGfx gUnk_080B6B00[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_60_15 },
};
const BgAnimationFrame gUnk_080B6B08[] = {
    { gUnk_080B6A88, 12 }, { gUnk_080B6A90, 12 }, { gUnk_080B6A98, 12 }, { gUnk_080B6AA0, 12 }, { gUnk_080B6AA8, 12 },
    { gUnk_080B6AB0, 12 }, { gUnk_080B6AB8, 12 }, { gUnk_080B6AC0, 12 }, { gUnk_080B6AC8, 12 }, { gUnk_080B6AD0, 12 },
    { gUnk_080B6AD8, 12 }, { gUnk_080B6AE0, 12 }, { gUnk_080B6AE8, 12 }, { gUnk_080B6AF0, 12 }, { gUnk_080B6AF8, 12 },
    { gUnk_080B6B00, 12 }, { NULL, 16 },
};
const BgAnimationGfx gUnk_080B6B90[] = {
    { 0x5400, 20, BG_ANIM_DEFAULT, offset_bgAnim_82_0 },
};
const BgAnimationGfx gUnk_080B6B98[] = {
    { 0x5400, 20, BG_ANIM_DEFAULT, offset_bgAnim_82_1 },
};
const BgAnimationGfx gUnk_080B6BA0[] = {
    { 0x5400, 20, BG_ANIM_DEFAULT, offset_bgAnim_82_2 },
};
const BgAnimationGfx gUnk_080B6BA8[] = {
    { 0x5400, 20, BG_ANIM_DEFAULT, offset_bgAnim_82_3 },
};
const BgAnimationFrame gUnk_080B6BB0[] = {
    { gUnk_080B6B90, 10 }, { gUnk_080B6B98, 10 }, { gUnk_080B6BA0, 10 }, { gUnk_080B6BA8, 10 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B6BD8[] = {
    { 0x5800, 2, BG_ANIM_DEFAULT, offset_bgAnim_83_0 },
};
const BgAnimationGfx gUnk_080B6BE0[] = {
    { 0x5800, 2, BG_ANIM_DEFAULT, offset_bgAnim_83_1 },
};
const BgAnimationGfx gUnk_080B6BE8[] = {
    { 0x5800, 2, BG_ANIM_DEFAULT, offset_bgAnim_83_2 },
};
const BgAnimationGfx gUnk_080B6BF0[] = {
    { 0x5800, 2, BG_ANIM_DEFAULT, offset_bgAnim_83_3 },
};
const BgAnimationFrame gUnk_080B6BF8[] = {
    { gUnk_080B6BD8, 8 }, { gUnk_080B6BE0, 8 }, { gUnk_080B6BE8, 8 }, { gUnk_080B6BF0, 8 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B6C20[] = {
    { 0x5840, 12, BG_ANIM_DEFAULT, offset_bgAnim_84_0 },
};
const BgAnimationGfx gUnk_080B6C28[] = {
    { 0x5840, 12, BG_ANIM_DEFAULT, offset_bgAnim_84_1 },
};
const BgAnimationGfx gUnk_080B6C30[] = {
    { 0x5840, 12, BG_ANIM_DEFAULT, offset_bgAnim_84_2 },
};
const BgAnimationGfx gUnk_080B6C38[] = {
    { 0x5840, 12, BG_ANIM_DEFAULT, offset_bgAnim_84_3 },
};
const BgAnimationGfx gUnk_080B6C40[] = {
    { 0x5840, 12, BG_ANIM_DEFAULT, offset_bgAnim_84_4 },
};
const BgAnimationGfx gUnk_080B6C48[] = {
    { 0x5840, 12, BG_ANIM_DEFAULT, offset_bgAnim_84_5 },
};
const BgAnimationGfx gUnk_080B6C50[] = {
    { 0x5840, 12, BG_ANIM_DEFAULT, offset_bgAnim_84_6 },
};
const BgAnimationFrame gUnk_080B6C58[] = {
    { gUnk_080B6C20, 9 }, { gUnk_080B6C28, 9 }, { gUnk_080B6C30, 9 }, { gUnk_080B6C38, 9 },
    { gUnk_080B6C40, 9 }, { gUnk_080B6C48, 9 }, { gUnk_080B6C50, 9 }, { NULL, 7 },
};
const BgAnimationGfx gUnk_080B6C98[] = {
    { 0x5400, 12, BG_ANIM_DEFAULT, offset_bgAnim_81_0 },
};
const BgAnimationGfx gUnk_080B6CA0[] = {
    { 0x5400, 12, BG_ANIM_DEFAULT, offset_bgAnim_81_1 },
};
const BgAnimationGfx gUnk_080B6CA8[] = {
    { 0x5400, 12, BG_ANIM_DEFAULT, offset_bgAnim_81_2 },
};
const BgAnimationGfx gUnk_080B6CB0[] = {
    { 0x5400, 12, BG_ANIM_DEFAULT, offset_bgAnim_81_3 },
};
const BgAnimationFrame gUnk_080B6CB8[] = {
    { gUnk_080B6C98, 8 }, { gUnk_080B6CA0, 8 }, { gUnk_080B6CA8, 8 }, { gUnk_080B6CB0, 8 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B6CE0[] = {
    { 0x5400, 6, BG_ANIM_DEFAULT, offset_bgAnim_97_0 },
};
const BgAnimationGfx gUnk_080B6CE8[] = {
    { 0x5400, 6, BG_ANIM_DEFAULT, offset_bgAnim_97_1 },
};
const BgAnimationGfx gUnk_080B6CF0[] = {
    { 0x5400, 6, BG_ANIM_DEFAULT, offset_bgAnim_97_2 },
};
const BgAnimationGfx gUnk_080B6CF8[] = {
    { 0x5400, 6, BG_ANIM_DEFAULT, offset_bgAnim_97_3 },
};
const BgAnimationFrame gUnk_080B6D00[] = {
    { gUnk_080B6CE0, 8 }, { gUnk_080B6CE8, 7 }, { gUnk_080B6CF0, 6 }, { gUnk_080B6CF8, 7 }, { NULL, 4 },
};
const BgAnimationGfx gUnk_080B6D28[] = {
    { 0x100, 1, BG_ANIM_PALETTE, offset_bgAnim_67_0 },
};
const BgAnimationGfx gUnk_080B6D30[] = {
    { 0x100, 1, BG_ANIM_PALETTE, offset_bgAnim_67_1 },
};
const BgAnimationGfx gUnk_080B6D38[] = {
    { 0x100, 1, BG_ANIM_PALETTE, offset_bgAnim_67_2 },
};
const BgAnimationGfx gUnk_080B6D40[] = {
    { 0x100, 1, BG_ANIM_PALETTE, offset_bgAnim_67_3 },
};
const BgAnimationGfx gUnk_080B6D48[] = {
    { 0x100, 1, BG_ANIM_PALETTE, offset_bgAnim_67_4 },
};
const BgAnimationGfx gUnk_080B6D50[] = {
    { 0x100, 1, BG_ANIM_PALETTE, offset_bgAnim_67_5 },
};
const BgAnimationGfx gUnk_080B6D58[] = {
    { 0x100, 1, BG_ANIM_PALETTE, offset_bgAnim_67_6 },
};
const BgAnimationGfx gUnk_080B6D60[] = {
    { 0x100, 1, BG_ANIM_PALETTE, offset_bgAnim_67_7 },
};
const BgAnimationGfx gUnk_080B6D68[] = {
    { 0x100, 1, BG_ANIM_PALETTE, offset_bgAnim_67_8 },
};
const BgAnimationGfx gUnk_080B6D70[] = {
    { 0x100, 1, BG_ANIM_PALETTE, offset_bgAnim_67_9 },
};
const BgAnimationGfx gUnk_080B6D78[] = {
    { 0x100, 1, BG_ANIM_PALETTE, offset_bgAnim_67_10 },
};
const BgAnimationGfx gUnk_080B6D80[] = {
    { 0x100, 1, BG_ANIM_PALETTE, offset_bgAnim_67_11 },
};
const BgAnimationGfx gUnk_080B6D88[] = {
    { 0x100, 1, BG_ANIM_PALETTE, offset_bgAnim_67_12 },
};
const BgAnimationGfx gUnk_080B6D90[] = {
    { 0x100, 1, BG_ANIM_PALETTE, offset_bgAnim_67_13 },
};
const BgAnimationGfx gUnk_080B6D98[] = {
    { 0x100, 1, BG_ANIM_PALETTE, offset_bgAnim_67_14 },
};
const BgAnimationGfx gUnk_080B6DA0[] = {
    { 0x100, 1, BG_ANIM_PALETTE, offset_bgAnim_67_15 },
};
const BgAnimationFrame gUnk_080B6DA8[] = {
    { gUnk_080B6D28, 18 }, { gUnk_080B6D30, 18 }, { gUnk_080B6D38, 18 }, { gUnk_080B6D40, 18 }, { gUnk_080B6D48, 18 },
    { gUnk_080B6D50, 18 }, { gUnk_080B6D58, 18 }, { gUnk_080B6D60, 18 }, { gUnk_080B6D68, 18 }, { gUnk_080B6D70, 18 },
    { gUnk_080B6D78, 18 }, { gUnk_080B6D80, 18 }, { gUnk_080B6D88, 18 }, { gUnk_080B6D90, 18 }, { gUnk_080B6D98, 18 },
    { gUnk_080B6DA0, 18 }, { gUnk_080B6D98, 18 }, { gUnk_080B6D90, 18 }, { gUnk_080B6D88, 18 }, { gUnk_080B6D80, 18 },
    { gUnk_080B6D78, 18 }, { gUnk_080B6D70, 18 }, { gUnk_080B6D68, 18 }, { gUnk_080B6D60, 18 }, { gUnk_080B6D58, 18 },
    { gUnk_080B6D50, 18 }, { gUnk_080B6D48, 18 }, { gUnk_080B6D40, 18 }, { gUnk_080B6D38, 18 }, { gUnk_080B6D30, 18 },
    { gUnk_080B6D28, 18 }, { NULL, 31 },
};
const BgAnimationGfx gUnk_080B6EA8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_65_0 },
};
const BgAnimationGfx gUnk_080B6EB0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_65_1 },
};
const BgAnimationGfx gUnk_080B6EB8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_65_2 },
};
const BgAnimationGfx gUnk_080B6EC0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_65_3 },
};
const BgAnimationGfx gUnk_080B6EC8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_65_4 },
};
const BgAnimationGfx gUnk_080B6ED0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_65_5 },
};
const BgAnimationGfx gUnk_080B6ED8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_65_6 },
};
const BgAnimationGfx gUnk_080B6EE0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_65_7 },
};
const BgAnimationGfx gUnk_080B6EE8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_65_8 },
};
const BgAnimationGfx gUnk_080B6EF0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_65_9 },
};
const BgAnimationGfx gUnk_080B6EF8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_65_10 },
};
const BgAnimationGfx gUnk_080B6F00[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_65_11 },
};
const BgAnimationGfx gUnk_080B6F08[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_65_12 },
};
const BgAnimationGfx gUnk_080B6F10[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_65_13 },
};
const BgAnimationGfx gUnk_080B6F18[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_65_14 },
};
const BgAnimationGfx gUnk_080B6F20[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_65_15 },
};
const BgAnimationFrame gUnk_080B6F28[] = {
    { gUnk_080B6EA8, 12 }, { gUnk_080B6EB0, 12 }, { gUnk_080B6EB8, 12 }, { gUnk_080B6EC0, 12 }, { gUnk_080B6EC8, 12 },
    { gUnk_080B6ED0, 12 }, { gUnk_080B6ED8, 12 }, { gUnk_080B6EE0, 12 }, { gUnk_080B6EE8, 12 }, { gUnk_080B6EF0, 12 },
    { gUnk_080B6EF8, 12 }, { gUnk_080B6F00, 12 }, { gUnk_080B6F08, 12 }, { gUnk_080B6F10, 12 }, { gUnk_080B6F18, 12 },
    { gUnk_080B6F20, 12 }, { NULL, 16 },
};
const BgAnimationGfx gUnk_080B6FB0[] = {
    { 0x120, 2, BG_ANIM_PALETTE, offset_bgAnim_66_0 },
};
const BgAnimationGfx gUnk_080B6FB8[] = {
    { 0x120, 2, BG_ANIM_PALETTE, offset_bgAnim_66_1 },
};
const BgAnimationGfx gUnk_080B6FC0[] = {
    { 0x120, 2, BG_ANIM_PALETTE, offset_bgAnim_66_2 },
};
const BgAnimationGfx gUnk_080B6FC8[] = {
    { 0x120, 2, BG_ANIM_PALETTE, offset_bgAnim_66_3 },
};
const BgAnimationGfx gUnk_080B6FD0[] = {
    { 0x120, 2, BG_ANIM_PALETTE, offset_bgAnim_66_4 },
};
const BgAnimationGfx gUnk_080B6FD8[] = {
    { 0x120, 2, BG_ANIM_PALETTE, offset_bgAnim_66_5 },
};
const BgAnimationGfx gUnk_080B6FE0[] = {
    { 0x120, 2, BG_ANIM_PALETTE, offset_bgAnim_66_6 },
};
const BgAnimationGfx gUnk_080B6FE8[] = {
    { 0x120, 2, BG_ANIM_PALETTE, offset_bgAnim_66_7 },
};
const BgAnimationFrame gUnk_080B6FF0[] = {
    { gUnk_080B6FB0, 14 }, { gUnk_080B6FB8, 14 }, { gUnk_080B6FC0, 14 }, { gUnk_080B6FC8, 14 }, { gUnk_080B6FD0, 14 },
    { gUnk_080B6FD8, 14 }, { gUnk_080B6FE0, 14 }, { gUnk_080B6FE8, 14 }, { gUnk_080B6FE0, 14 }, { gUnk_080B6FD8, 14 },
    { gUnk_080B6FD0, 14 }, { gUnk_080B6FC8, 14 }, { gUnk_080B6FC0, 14 }, { gUnk_080B6FB8, 14 }, { NULL, 14 },
};
const BgAnimationGfx gUnk_080B7068[] = {
    { 0x5400, 10, BG_ANIM_DEFAULT, offset_bgAnim_80_0 },
};
const BgAnimationGfx gUnk_080B7070[] = {
    { 0x5400, 10, BG_ANIM_DEFAULT, offset_bgAnim_80_1 },
};
const BgAnimationGfx gUnk_080B7078[] = {
    { 0x5400, 10, BG_ANIM_DEFAULT, offset_bgAnim_80_2 },
};
const BgAnimationGfx gUnk_080B7080[] = {
    { 0x5400, 10, BG_ANIM_DEFAULT, offset_bgAnim_80_3 },
};
const BgAnimationGfx gUnk_080B7088[] = {
    { 0x5400, 10, BG_ANIM_DEFAULT, offset_bgAnim_80_4 },
};
const BgAnimationGfx gUnk_080B7090[] = {
    { 0x5400, 10, BG_ANIM_DEFAULT, offset_bgAnim_80_5 },
};
const BgAnimationGfx gUnk_080B7098[] = {
    { 0x5400, 10, BG_ANIM_DEFAULT, offset_bgAnim_80_6 },
};
const BgAnimationGfx gUnk_080B70A0[] = {
    { 0x5400, 10, BG_ANIM_DEFAULT, offset_bgAnim_80_7 },
};
const BgAnimationGfx gUnk_080B70A8[] = {
    { 0x5400, 10, BG_ANIM_DEFAULT, offset_bgAnim_80_8 },
};
const BgAnimationGfx gUnk_080B70B0[] = {
    { 0x5400, 10, BG_ANIM_DEFAULT, offset_bgAnim_80_9 },
};
const BgAnimationGfx gUnk_080B70B8[] = {
    { 0x5400, 10, BG_ANIM_DEFAULT, offset_bgAnim_80_10 },
};
const BgAnimationGfx gUnk_080B70C0[] = {
    { 0x5400, 10, BG_ANIM_DEFAULT, offset_bgAnim_80_11 },
};
const BgAnimationGfx gUnk_080B70C8[] = {
    { 0x5400, 10, BG_ANIM_DEFAULT, offset_bgAnim_80_12 },
};
const BgAnimationGfx gUnk_080B70D0[] = {
    { 0x5400, 10, BG_ANIM_DEFAULT, offset_bgAnim_80_13 },
};
const BgAnimationGfx gUnk_080B70D8[] = {
    { 0x5400, 10, BG_ANIM_DEFAULT, offset_bgAnim_80_14 },
};
const BgAnimationGfx gUnk_080B70E0[] = {
    { 0x5400, 10, BG_ANIM_DEFAULT, offset_bgAnim_80_15 },
};
const BgAnimationFrame gUnk_080B70E8[] = {
    { gUnk_080B7068, 16 }, { gUnk_080B7070, 16 }, { gUnk_080B7078, 16 }, { gUnk_080B7080, 16 }, { gUnk_080B7088, 16 },
    { gUnk_080B7090, 16 }, { gUnk_080B7098, 16 }, { gUnk_080B70A0, 16 }, { gUnk_080B70A8, 16 }, { gUnk_080B70B0, 16 },
    { gUnk_080B70B8, 16 }, { gUnk_080B70C0, 16 }, { gUnk_080B70C8, 16 }, { gUnk_080B70D0, 16 }, { gUnk_080B70D8, 16 },
    { gUnk_080B70E0, 16 }, { NULL, 16 },
};
const BgAnimationGfx gUnk_080B7170[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_79_0 },
};
const BgAnimationGfx gUnk_080B7178[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_79_1 },
};
const BgAnimationGfx gUnk_080B7180[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_79_2 },
};
const BgAnimationGfx gUnk_080B7188[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_79_3 },
};
const BgAnimationGfx gUnk_080B7190[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_79_4 },
};
const BgAnimationGfx gUnk_080B7198[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_79_5 },
};
const BgAnimationGfx gUnk_080B71A0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_79_6 },
};
const BgAnimationGfx gUnk_080B71A8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_79_7 },
};
const BgAnimationGfx gUnk_080B71B0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_79_8 },
};
const BgAnimationGfx gUnk_080B71B8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_79_9 },
};
const BgAnimationGfx gUnk_080B71C0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_79_10 },
};
const BgAnimationGfx gUnk_080B71C8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_79_11 },
};
const BgAnimationGfx gUnk_080B71D0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_79_12 },
};
const BgAnimationGfx gUnk_080B71D8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_79_13 },
};
const BgAnimationGfx gUnk_080B71E0[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_79_14 },
};
const BgAnimationGfx gUnk_080B71E8[] = {
    { 0x80, 1, BG_ANIM_PALETTE, offset_bgAnim_79_15 },
};
const BgAnimationFrame gUnk_080B71F0[] = {
    { gUnk_080B7170, 12 }, { gUnk_080B7178, 12 }, { gUnk_080B7180, 12 }, { gUnk_080B7188, 12 }, { gUnk_080B7190, 12 },
    { gUnk_080B7198, 12 }, { gUnk_080B71A0, 12 }, { gUnk_080B71A8, 12 }, { gUnk_080B71B0, 12 }, { gUnk_080B71B8, 12 },
    { gUnk_080B71C0, 12 }, { gUnk_080B71C8, 12 }, { gUnk_080B71D0, 12 }, { gUnk_080B71D8, 12 }, { gUnk_080B71E0, 12 },
    { gUnk_080B71E8, 12 }, { NULL, 16 },
};

const BgAnimationFrame* const gUnk_080B7278[] = {
    gUnk_080B4588, gUnk_080B67C8, gUnk_080B45D0, gUnk_080B4618, gUnk_080B4660, gUnk_080B46A8, gUnk_080B46F0,
    gUnk_080B6810, gUnk_080B4A88, gUnk_080B4AD0, gUnk_080B4B18, gUnk_080B4B60, gUnk_080B4BA8, gUnk_080B6858,
    gUnk_080B68A0, gUnk_080B68E8, gUnk_080B6938, gUnk_080B64E0, gUnk_080B6528, gUnk_080B6570, gUnk_080B5E38,
    gUnk_080B5D40, gUnk_080B5DA8, gUnk_080B5DF0, gUnk_080B5E88, gUnk_080B5ED8, gUnk_080B5B68, gUnk_080B5F28,
    gUnk_080B5F80, gUnk_080B4E50, gUnk_080B4810, gUnk_080B4878, gUnk_080B48D0, gUnk_080B4938, gUnk_080B49A0,
    gUnk_080B49F8, gUnk_080B4F28, gUnk_080B4F70, gUnk_080B5170, gUnk_080B51B8, gUnk_080B4FD8, gUnk_080B5020,
    gUnk_080B6120, gUnk_080B6168, gUnk_080B61B0, gUnk_080B61F8, gUnk_080B5FD0, gUnk_080B5308, gUnk_080B5350,
    gUnk_080B5398, gUnk_080B53E0, gUnk_080B5428, gUnk_080B4A40, gUnk_080B4BF0, gUnk_080B4C38, gUnk_080B4C80,
    gUnk_080B4CC8, gUnk_080B4D10, gUnk_080B4E98, gUnk_080B4EE0, gUnk_080B6B08, gUnk_080B6078, gUnk_080B62A0,
    gUnk_080B63A8, gUnk_080B6618, gUnk_080B6F28, gUnk_080B6FF0, gUnk_080B6DA8, gUnk_080B54D0, gUnk_080B55D8,
    gUnk_080B56E0, gUnk_080B57E8, gUnk_080B58F0, gUnk_080B50C8, gUnk_080B4DA8, gUnk_080B6A00, gUnk_080B6720,
    gUnk_080B5BB0, gUnk_080B5C58, gUnk_080B71F0, gUnk_080B70E8, gUnk_080B6CB8, gUnk_080B6BB0, gUnk_080B6BF8,
    gUnk_080B6C58, gUnk_080B6450, gUnk_080B6498, gUnk_080B5998, gUnk_080B59E0, gUnk_080B5A28, gUnk_080B5A70,
    gUnk_080B5AB8, gUnk_080B5B20, gUnk_080B4738, gUnk_080B4780, gUnk_080B47C8, gUnk_080B5260, gUnk_080B6D00,
};

void UpdateBgAnimations(void) {
    bool32 alreadyUploadedGfx = FALSE;
    BgAnimation* animation = gBgAnimations;
    s32 index = 8;
    while (index != 0) {
        if (animation->currentFrame == NULL) {
            return;
        }
        if (--animation->timer == 0) {
            if (!alreadyUploadedGfx) {
                if (gFadeControl.active == 0) {
                    LoadBgAnimationGfx(animation->currentFrame->gfx);
                }
                animation->timer = GetBgAnimationTimer(&animation->currentFrame->unk_4);
                animation->currentFrame++;
                if (animation->currentFrame->gfx == NULL) {
                    animation->currentFrame -= animation->currentFrame->unk_4;
                }
                alreadyUploadedGfx = TRUE;
            } else {
                animation->timer++;
            }
        }
        animation++;
        index--;
    }
}

u32 GetBgAnimationTimer(const s32* param_1) {
    if (param_1[0] < 0) {
        return gUnk_080B4550[*(u8*)param_1][(Random() & 7)];
    } else {
        return param_1[0];
    }
}

void LoadBgAnimationGfx(const BgAnimationGfx* param_1) {
    const u8* src;
    u32 vramOffset;
    u32 size;
    while (TRUE) {
        src = &gGlobalGfxAndPalettes[param_1->gfxOffset];
        size = param_1->gfxSize;
        vramOffset = param_1->vramOffset;
        if ((*(u32*)param_1 >> 0x1c & 1) != 0) {
            LoadPalettes(src, vramOffset >> 5, size);
        } else {
            MemCopy(src, (void*)(vramOffset + 0x6000000), size << 5);
        }
        if (*(int*)param_1 >= 0) {
            return;
        }
        param_1++;
    }
}

void LoadBgAnimations(u16* param_1) {
    BgAnimation* animation;
    ClearBgAnimations();
    animation = gBgAnimations;
    while (param_1[0] != 0xffff) {
        animation->currentFrame = gUnk_080B7278[param_1[0]];
        animation->timer = GetBgAnimationTimer(&animation->currentFrame->unk_4);
        animation++;
        param_1++;
    }
}

void ClearBgAnimations(void) {
    u32 index;
    for (index = 0; index < MAX_BG_ANIMATIONS; index++) {
        gBgAnimations[index].currentFrame = NULL;
    }
}

const u16 gUnk_080B7400[] = { 0, 8, 10, 11, 0xffff };
const u16 gUnk_080B740A[] = { 2, 3, 4, 5, 6, 93, 94, 95, 0xffff };
const u16 gUnk_080B741C[] = { 8, 11, 30, 31, 32, 33, 34, 52, 0xffff };
const u16 gUnk_080B742E[] = { 8, 9, 10, 11, 12, 0xffff };
const u16 gUnk_080B743A[] = { 8, 10, 11, 12, 0xffff };
const u16 gUnk_080B7444[] = { 8, 10, 11, 57, 74, 0xffff };
const u16 gUnk_080B7450[] = { 8, 11, 53, 54, 0xffff };
const u16 gUnk_080B745A[] = { 55, 56, 0xffff };
const u16 gUnk_080B7460[] = { 11, 0xffff };
const u16 gUnk_080B7464[] = { 10, 29, 58, 59, 0xffff };
const u16 gUnk_080B746E[] = { 10, 11, 38, 39, 96, 0xffff };
const u16 gUnk_080B747A[] = { 36, 37, 0xffff };
const u16 gUnk_080B7480[] = { 36, 37, 40, 41, 0xffff };
const u16 gUnk_080B748A[] = { 73, 0xffff };
const u16 gUnk_080B748E[] = { 47, 48, 49, 50, 51, 68, 0xffff };
const u16 gUnk_080B749C[] = { 47, 48, 49, 50, 51, 69, 0xffff };
const u16 gUnk_080B74AA[] = { 47, 48, 49, 50, 51, 70, 0xffff };
const u16 gUnk_080B74B8[] = { 47, 48, 49, 50, 51, 71, 0xffff };
const u16 gUnk_080B74C6[] = { 47, 48, 49, 50, 51, 72, 0xffff };
const u16 gUnk_080B74D4[] = { 87, 88, 89, 0xffff };
const u16 gUnk_080B74DC[] = { 90, 91, 92, 0xffff };
const u16 gUnk_080B74E4[] = { 21, 22, 23, 0xffff };
const u16 gUnk_080B74EC[] = { 26, 77, 78, 0xffff };
const u16 gUnk_080B74F4[] = { 20, 24, 25, 27, 28, 0xffff };
const u16 gUnk_080B7500[] = { 46, 61, 0xffff };
const u16 gUnk_080B7506[] = { 42, 43, 44, 45, 62, 0xffff };
const u16 gUnk_080B7512[] = { 63, 85, 86, 0xffff };
const u16 gUnk_080B751A[] = { 17, 18, 19, 64, 0xffff };
const u16 gUnk_080B7524[] = { 76, 0xffff };
const u16 gUnk_080B7528[] = { 1, 7, 13, 14, 15, 16, 75, 0xffff };
const u16 gUnk_080B7538[] = { 60, 82, 83, 84, 0xffff };
const u16 gUnk_080B7542[] = { 81, 0xffff };
const u16 gUnk_080B7546[] = { 97, 0xffff };
const u16 gUnk_080B754A[] = { 67, 0xffff };
const u16 gUnk_080B754E[] = { 65, 66, 80, 0xffff };
const u16 gUnk_080B7556[] = { 79, 0xffff, 0 };

// bg_anim by area
const u16* const gUnk_080B755C[] = {
    gUnk_080B7400, gUnk_080B7460, gUnk_080B740A, gUnk_080B742E, gUnk_080B741C, NULL,          gUnk_080B743A,
    gUnk_080B7450, gUnk_080B745A, gUnk_080B7444, gUnk_080B743A, gUnk_080B7400, NULL,          NULL,
    NULL,          NULL,          NULL,          gUnk_080B746E, gUnk_080B7464, NULL,          NULL,
    gUnk_080B740A, NULL,          NULL,          NULL,          NULL,          gUnk_080B743A, NULL,
    NULL,          gUnk_080B742E, gUnk_080B7400, gUnk_080B742E, NULL,          gUnk_080B747A, gUnk_080B747A,
    gUnk_080B747A, gUnk_080B747A, gUnk_080B7480, gUnk_080B74C6, NULL,          gUnk_080B7480, NULL,
    gUnk_080B749C, gUnk_080B7500, NULL,          NULL,          gUnk_080B748A, gUnk_080B74D4, gUnk_080B747A,
    NULL,          gUnk_080B74B8, gUnk_080B74AA, gUnk_080B748E, gUnk_080B74DC, NULL,          NULL,
    NULL,          NULL,          NULL,          NULL,          NULL,          NULL,          NULL,
    NULL,          gUnk_080B74EC, gUnk_080B74EC, gUnk_080B74EC, gUnk_080B74EC, gUnk_080B74EC, NULL,
    NULL,          NULL,          gUnk_080B74E4, gUnk_080B74E4, NULL,          NULL,          NULL,
    NULL,          gUnk_080B74E4, gUnk_080B74E4, gUnk_080B74F4, gUnk_080B74F4, NULL,          NULL,
    NULL,          NULL,          gUnk_080B74F4, gUnk_080B74F4, gUnk_080B7500, NULL,          NULL,
    NULL,          NULL,          NULL,          NULL,          NULL,          gUnk_080B7506, NULL,
    gUnk_080B7506, NULL,          NULL,          NULL,          NULL,          NULL,          gUnk_080B7512,
    NULL,          NULL,          NULL,          NULL,          NULL,          NULL,          NULL,
    gUnk_080B751A, gUnk_080B7524, NULL,          NULL,          NULL,          NULL,          NULL,
    gUnk_080B751A, gUnk_080B7528, NULL,          NULL,          NULL,          NULL,          NULL,
    NULL,          gUnk_080B7528, NULL,          NULL,          NULL,          NULL,          NULL,
    NULL,          NULL,          NULL,          gUnk_080B7538, gUnk_080B7542, gUnk_080B754A, gUnk_080B754E,
    gUnk_080B7556, gUnk_080B7546, NULL,          NULL,          NULL,          NULL,          NULL,
    NULL,          NULL,          NULL,          NULL,          NULL,          NULL,
};

// TODO gMapTop.bgSettings->control values
const u16 gUnk_080B77C0[] = { 0x1c42, 0x1d45, 0x1d46, 0x1e03 };
