#include "global.h"
#include "sound.h"
#include "manager.h"
#include "flags.h"
#include "structures.h"
#include "room.h"
#include "screen.h"
#include "coord.h"
#include "functions.h"
#include "save.h"
#include "area.h"
#include "common.h"

typedef struct {
    Manager manager;
    s32 unk_20;
    union SplitWord unk_24;
    u32 unk_28;
    u32 unk_2c;
    u8 unk_30[0x10];
} ManagerC;

typedef struct {
    u16 unk_0;
    u16 unk_2;
    u16 unk_4;
    u16 unk_6;
} struct_08108228;

void sub_08058D34(void);

void (*const gUnk_0810821C[])(ManagerC*);
const struct_08108228 gUnk_08108228[6];
const struct_08108228 gUnk_08108258[6];
const struct_08108228 gUnk_08108288[6];
const struct_08108228 gUnk_081082B8[6];
const u16 gUnk_081082E8[0xC];
const u16 gUnk_08108300[4];

void sub_08058BC8(ManagerC*);
void sub_08058CB0(ManagerC*);
void sub_08058CFC(void);
void sub_08058A04(ManagerC*);
void sub_080588F8(ManagerC*);
u32 sub_08058B08(ManagerC*, u32, u32, const struct_08108228*);
void sub_08058B5C(ManagerC*, u32);

extern void sub_0805622C(struct BgAffineDstData*, u32, u32);

extern u8 gUnk_03003DE4[0xC];

extern struct BgAffineDstData gUnk_02017AA0[];
extern struct BgAffineDstData gUnk_02017BA0[];
extern u8 gUnk_02017700[];
extern u8 gUpdateVisibleTiles;
extern u32 gUsedPalettes;

void sub_08058894(ManagerC*);
void sub_080588CC(ManagerC*);
void nullsub_108(ManagerC*);

void (*const gUnk_0810821C[])(ManagerC*) = { sub_08058894, sub_080588CC, nullsub_108 };

void ManagerC_Main(ManagerC* this) {
    u32 tmp;
    gUnk_0810821C[this->manager.action](this);
    sub_08058BC8(this);
    sub_0805622C(&gUnk_02017AA0[gUnk_03003DE4[0] * 0xA0], 0x04000020, 0xA2600008);
}
void sub_08058894(ManagerC* this) {
    this->manager.action = 1;
    this->unk_28 = 0x1234;
    this->manager.unk_0e = CheckLocalFlags(0x15, 0x2) != 0;
    sub_08058CB0(this);
    RegisterTransitionManager(this, sub_08058D34, 0);
}

void sub_080588CC(ManagerC* this) {
    sub_08058CFC();
    sub_08058A04(this);
    if (gRoomTransition.transitioningOut) {
        this->manager.action = 2;
    } else {
        sub_080588F8(this);
    }
}

void nullsub_108(ManagerC* this) {
}

#define ABS_DIFF_GT(a, b, c) ((signed)(a) - (b) >= 0 ? (a) - (b) > (c) : (b) - (a) > (c))

void sub_080588F8(ManagerC* this) {
    if (this->manager.unk_0f == 0) {
        if (ABS_DIFF_GT(this->unk_28, this->unk_24.HALF.HI, 8)) {
            this->unk_28 = 0x1234;
            switch (this->unk_24.HALF.HI & 0xFFFE) {
                case 0x48:
                case 0xa0:
                case 0xf0:
                    this->unk_28 = this->unk_24.HALF.HI;
                    this->manager.unk_0f = 0x2D;
                    SoundReq(SFX_BARREL_ROLL_STOP);
            }
        }
    } else {
        this->manager.unk_0f--;
        if (this->manager.unk_0f > 0x29) {
            this->unk_24.HALF.HI = this->unk_28 - 2;
        } else {
            this->unk_24.HALF.HI = this->unk_28;
        }
    }
    if (this->manager.unk_0e) {
        s32 tmp = gPlayerEntity.y.HALF.HI - gRoomControls.origin_y;
        u32 tmp2;
        tmp2 = (((unsigned)(tmp - 0x50 < 0 ? 0x50 - tmp : tmp - 0x50) >> 3) * 0x3000) + 0x4000;
        if (this->manager.unk_0f == 0) {
            if (tmp < 0x49) {
                this->unk_24.WORD -= tmp2;
            } else if (tmp > 0x57) {
                this->unk_24.WORD += tmp2;
            }
            if (ABS_DIFF_GT(this->unk_2c, this->unk_24.WORD, 0x100000)) {
                this->unk_2c = this->unk_24.WORD;
                SoundReq(SFX_BARREL_ROLL);
            }
        }
    }
    if ((this->unk_20 = this->unk_24.HALF.HI) < 0) {
        this->unk_20 = 0x1FF;
        this->unk_24.HALF.HI = 0x1FF;
    } else if (this->unk_20 > 0x1FF) {
        this->unk_20 = 0;
        this->unk_24.HALF.HI = 0;
    }
}

const struct_08108228 gUnk_08108228[6] = { { 0x40, 0x2A, 0x1C, 0x10 }, { 0x3C, 0x24, 0x1C, 0x12 },
                                           { 0x3C, 0x1C, 0x1A, 0x18 }, { 0x38, 0x16, 0x1C, 0x16 },
                                           { 0x34, 0x16, 0x1E, 0x0E }, { 0x30, 0x16, 0x20, 0x0A } };

const struct_08108228 gUnk_08108258[6] = { { 0x30, 0x88, 0x20, 0x0A }, { 0x34, 0x7E, 0x1E, 0x12 },
                                           { 0x38, 0x78, 0x1A, 0x16 }, { 0x3A, 0x70, 0x1A, 0x18 },
                                           { 0x3C, 0x64, 0x1E, 0x1E }, { 0x3E, 0x6A, 0x1C, 0x10 } };

const struct_08108228 gUnk_08108288[6] = { { 0x98, 0x2A, 0x1C, 0x10 }, { 0x98, 0x24, 0x1C, 0x12 },
                                           { 0x9C, 0x1C, 0x1A, 0x18 }, { 0x9C, 0x16, 0x1C, 0x16 },
                                           { 0xA0, 0x16, 0x1E, 0x0E }, { 0xA0, 0x16, 0x20, 0x0A } };

const struct_08108228 gUnk_081082B8[6] = { { 0xA0, 0x88, 0x20, 0x0A }, { 0x9E, 0x7E, 0x1E, 0x12 },
                                           { 0x9C, 0x78, 0x1A, 0x16 }, { 0x9A, 0x70, 0x1A, 0x18 },
                                           { 0x98, 0x64, 0x1E, 0x1E }, { 0x98, 0x6A, 0x1C, 0x10 } };

void sub_08058A04(ManagerC* this) {
    s32 tmp = gPlayerEntity.x.HALF.HI - gRoomControls.origin_x;
    s32 tmp2 = gPlayerEntity.y.HALF.HI - gRoomControls.origin_y;
    if ((this->unk_20 - 0x118 < 0xDu) && CheckGlobalFlag(LV1TARU_OPEN) && (tmp - 0x6d < 0x17u) &&
        (tmp2 - 0x45 < 0x17u) && (gPlayerEntity.z.HALF.HI == 0)) {
        gPlayerState.queued_action = PLAYER_FALL;
        gPlayerState.field_0x38 = 0;
        gPlayerEntity.x.HALF.HI = gRoomControls.origin_x + 0x78;
        gPlayerEntity.y.HALF.HI = gRoomControls.origin_y + 0x50;
        return;
    }
    if (tmp < 0x78) {
        if (tmp2 < 0x50) {
            if (sub_08058B08(this, 0x88, 0xB0, gUnk_08108228)) {
                sub_08058B5C(this, 0);
            }
        } else {
            if (sub_08058B08(this, 0x38, 0x60, gUnk_08108258)) {
                sub_08058B5C(this, 1);
            }
        }
    } else {
        if (tmp2 < 0x50) {
            if (sub_08058B08(this, 0xE0, 0x108, gUnk_08108288)) {
                sub_08058B5C(this, 2);
            }
        } else {
            if (sub_08058B08(this, 0x90, 0xB8, gUnk_081082B8)) {
                sub_08058B5C(this, 3);
            }
        }
    }
}

u32 sub_08058B08(ManagerC* this, u32 unk1, u32 unk2, const struct_08108228* unk3) {
    u32 tmp = this->unk_20;
    if (tmp < unk1 || tmp > unk2) {
        return 0;
    } else {
        u32 tmp2, tmp3;
        tmp -= unk1;
        tmp >>= 3;
        unk3 += tmp;
        tmp2 = (gPlayerEntity.x.HALF.HI - gRoomControls.origin_x - unk3->unk_0);
        tmp3 = (gPlayerEntity.y.HALF.HI - gRoomControls.origin_y - unk3->unk_2);
        return ((tmp2 < unk3->unk_4) && (tmp3 < unk3->unk_6));
    }
}

const u16 gUnk_081082E8[0xC] = { 0xB8, 0x80, 0x0, 0xB8, 0x110, 0x2, 0x118, 0x80, 0x2, 0x118, 0x110, 0x0 };

void sub_08058B5C(ManagerC* this, u32 unk1) {
    gRoomTransition.transitioningOut = 1;
    gRoomTransition.type = TRANSITION_DEFAULT;
    gRoomTransition.player_status.spawn_type = PL_SPAWN_STEP_IN;
    gRoomTransition.player_status.area_next = gRoomControls.area;
    gRoomTransition.player_status.room_next = 6;
    gRoomTransition.player_status.start_anim = unk1 & 1 ? 4 : 0;
    gRoomTransition.player_status.start_pos_x = gUnk_081082E8[unk1 * 3];
    gRoomTransition.player_status.start_pos_y = gUnk_081082E8[unk1 * 3 + 1];
    gSave.unk7 = gUnk_081082E8[unk1 * 3 + 2];
    SoundReq(SFX_STAIRS);
}

void sub_08058BC8(ManagerC* this) {
    struct BgAffineDstData* tmp = &gUnk_02017AA0[gUnk_03003DE4[0] * 0xA0];
    struct BgAffineSrcData tmp2;
    s32 tmp3;
    tmp2.texX = 0x10000;
    tmp2.scrX = 0x78;
    tmp2.scrY = 0x80;
    tmp2.alpha = 0;
    tmp2.sy = 0x100;
    tmp2.sx = 0x100;
    tmp3 = 0;
    do {
        u32 indx = ((tmp3 << 7) / 0xA0) & 0xFF;
        tmp2.sx = 0x100 + ((gSineTable[indx] * 3) >> 2);
        tmp2.sy =
            0x100 - ((gSineTable[indx * 2] * 2) >>
                     5); // yes, it makes no sense to multiply first and then shift right, but it's matching this way
        tmp2.texY = (this->unk_20 + tmp3) << 8;
        BgAffineSet(&tmp2, tmp, 1);
        tmp++;
    } while (++tmp3 < 0xA0u);
    tmp = &gUnk_02017BA0[gUnk_03003DE4[0] * 0xA0];
    gScreen.controls.bg2.dx = tmp->pa;
    gScreen.controls.bg2.dmx = tmp->pb;
    gScreen.controls.bg2.dy = tmp->pc;
    gScreen.controls.bg2.dmy = tmp->pd;
    gScreen.controls.bg2.xPointLeastSig = ((union SplitWord*)&tmp->dx)->HALF.LO;
    gScreen.controls.bg2.xPointMostSig = ((union SplitWord*)&tmp->dx)->HALF.HI;
    gScreen.controls.bg2.yPointLeastSig = ((union SplitWord*)&tmp->dy)->HALF.LO;
    gScreen.controls.bg2.yPointMostSig = ((union SplitWord*)&tmp->dy)->HALF.HI;
}

const u16 gUnk_08108300[4] = { 0xA4, 0x4C, 0xF4, 0x9C };

void sub_08058CB0(ManagerC* this) {
    u32 tmp = gPlayerEntity.x.HALF.HI - gRoomControls.origin_x;
    u32 tmp2 = gPlayerEntity.y.HALF.HI - gRoomControls.origin_y;
    u32 tmp3;
    if (tmp < 0x78) {
        tmp3 = 1;
        if (tmp2 < 0x50) {
            tmp3 = 0;
        }
    } else {
        tmp3 = 3;
        if (tmp2 < 0x50) {
            tmp3 = 2;
        }
    }
    this->unk_24.HALF.HI = this->unk_20 = gUnk_08108300[tmp3];
}

void sub_08058CFC(void) {
    u32 tmp = gPlayerEntity.y.HALF.HI - gRoomControls.scroll_y;
    if (tmp < 0x4C) {
        sub_080044AE(&gPlayerEntity, 0xC0, 0x10);
    }
    if (tmp > 0x54) {
        sub_080044AE(&gPlayerEntity, 0xC0, 0);
    }
}

void sub_08058D34(void) {
    u16 tmp;
    u32 tmp2;
    LoadPaletteGroup(0x28);
    MemCopy(gUnk_02017700, gUnk_02017700 + 0x240, 0x20);
    gUsedPalettes |= 0x200000;
    LoadGfxGroup(0x16);
    tmp = gScreen.lcd.displayControl;
    tmp2 = 0;
    gScreen.lcd.displayControl |= DISPCNT_MODE_1;
    gScreen.bg2.control = 0xBC82;
    gScreen.bg1.control = 0x5E86;
    gScreen.bg1.xOffset = 0;
    gScreen.bg1.yOffset = tmp2;
    gScreen.controls.layerFXControl = 0x3456;
    gScreen.controls.alphaBlend = 0x909;
    gArea.bgm = gArea.queued_bgm;
    gUpdateVisibleTiles = 0;
    if (CheckGlobalFlag(LV1TARU_OPEN)) {
        LoadGfxGroup(0x4A);
    }
}
