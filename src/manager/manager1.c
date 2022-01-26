#include "global.h"
#include "entity.h"
#include "screen.h"
#include "functions.h"
#include "common.h"
#include "main.h"

extern void sub_08056250(void);

void (*const gUnk_08107C5C[])(Entity*);
void (*const gUnk_08107C48[])(Entity*);
const u16 gUnk_08107C1C[];
const u16 gUnk_08107C30[];
const u8 gManager1GfxGroups[];

extern u16 gUnk_02017AA0[];
extern u16 gUnk_085B4180[];

typedef struct {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 unk4;
} PACKED Manager1Prop;

#define ZV(this) ((u8*)&this->zVelocity)
#define ZS(this) ((u8*)&this->speed)

void Manager1_Main(Entity* this) {
    u8 bVar1;
    u8* pbVar2;

    gUnk_08107C5C[this->action](this);
    gUnk_08107C48[ZV(this)[1]](this);
    bVar1 = gManager1GfxGroups[ZV(this)[1]];
    if ((bVar1 != 0) && (ZV(this)[0] != bVar1)) {
        ZV(this)[0] = bVar1;
        LoadGfxGroup(bVar1);
    }
}

static void sub_080570B8(Entity* this) {
    u8* pbVar1;

    LoadGfxGroup(ZV(this)[0]);
    this->z.WORD = 0;
    pbVar1 = &ZV(this)[1];
    if (*pbVar1 == 3) {
        gScreen.bg3.updated = 1;
    } else {
        gUnk_08107C48[*pbVar1](this);
    }
}

static void sub_080570F8(void) {
    gScreen.lcd.displayControl &= ~DISPCNT_BG3_ON;
    gScreen.controls.layerFXControl = 0;
    sub_08056250();
}

void sub_08057118(Entity* this) {
    this->actionDelay = 0;
    ZV(this)[0] = 0;
    ZV(this)[1] = 0;
    ZV(this)[2] = 0;
    this->action = 1;
    gScreen.bg3.control = 0x1e04;
    gScreen.lcd.displayControl |= DISPCNT_BG3_ON;
    gScreen.controls.layerFXControl = 0x3648;
    gScreen.controls.alphaBlend = 0x1000;
    RegisterTransitionManager(this, sub_080570B8, sub_080570F8);
}

// regalloc
NONMATCH("asm/non_matching/manager1/sub_08057174.inc", void sub_08057174(Entity* this)) {
    Manager1Prop* prop = GetCurrentRoomProperty(this->type);
    s32 temp;
    s32 x;
    s32 y;

    if (prop->unk0 == 0xff)
        return;
    temp = gPlayerEntity.x.HALF.HI;
    if (temp < 0) {
        temp += 0xf;
    }

    x = temp >> 4;
    temp = gPlayerEntity.y.HALF.HI;
    if (temp < 0) {
        temp += 0xf;
    }

    y = temp >> 4;

    for (; prop->unk0 != 0xff; prop++) {
        if (prop->unk0 != ZV(this)[1]) {
            u32 x2 = (gRoomControls.origin_x >> 4) + prop->unk1;
            u32 y2 = (gRoomControls.origin_y >> 4) + prop->unk2;

            if (y - y2 < prop->unk4 && x - x2 < prop->unk3) {
                switch (prop->unk0) {
                    case 1:
                        if (ZV(this)[1] == 2) {
                            this->action = 3;
                            this->actionDelay = 9;
                        }
                        break;
                    case 5:
                        if (ZV(this)[1] == 6) {
                            this->action = 3;
                            this->actionDelay = 9;
                        }
                        break;
                    case 2:
                        if (ZV(this)[1] == 0) {
                            this->action = 2;
                            this->actionDelay = 0;
                            ZV(this)[0] = 0;
                        }
                        break;
                    case 6:
                        if (ZV(this)[1] == 0) {
                            this->action = 2;
                            this->actionDelay = 0;
                        }
                        break;
                    case 4:
                        if (ZV(this)[1] == 0) {
                            this->action = 2;
                            this->actionDelay = 0;
                            this->z.WORD = 0;
                        }
                        break;
                    case 3:
                        if (ZV(this)[1] == 4) {
                            this->action = 3;
                            this->actionDelay = 9;
                        }
                        break;
                }

                if (this->action != 1) {
                    this->field_0xf = 8;
                    ZV(this)[1] = prop->unk0;
                    ZV(this)[2] = 1;
                    return;
                }
            }
        }
    }
}
END_NONMATCH

void sub_0805728C(Entity* this) {
    if (--this->field_0xf == 0) {
        this->field_0xf = 8;
        gScreen.controls.alphaBlend = gUnk_08107C1C[this->actionDelay++];

        if (this->actionDelay == 10) {
            this->action = 1;
            ZV(this)[2] = 0;
        }
    }
}

void sub_080572D4(Entity* this) {
    if (--this->field_0xf == 0) {
        this->field_0xf = 8;
        gScreen.controls.alphaBlend = gUnk_08107C1C[this->actionDelay--];

        if (this->actionDelay == 0xff) {
            this->action = 1;
            ZV(this)[2] = 0;
            ZV(this)[1] = 0;
            gScreen._6c = 0;
        }
    }
}

void sub_0805732C(u32 param_1, u32 param_2) {
    u32 index;
    u16* ptr = &gUnk_02017AA0[gUnk_03003DE4 * 0x500];

    for (index = 0; index < 0xa0; ptr++, index++) {
        *ptr = gSineTable[(param_2 + index) & 0xff] * param_1 / 0x100 + gScreen.bg3.xOffset;
    }

    sub_0805622C(&gUnk_02017AA0[gUnk_03003DE4 * 0x500], REG_ADDR_BG3HOFS, 0xa2600001UL);
}

void nullsub_494() {
}

void sub_080573AC(Entity* this) {
    s32 sin, frameCount;
    gRoomControls.bg3OffsetX.WORD -= 0x2000;
    gRoomControls.bg3OffsetY.WORD -= 0x1000;
    gScreen.bg3.xOffset = ((gRoomControls.scroll_x - gRoomControls.origin_x) >> 1) + gRoomControls.bg3OffsetX.HALF.HI;
    gScreen.bg3.yOffset = ((gRoomControls.scroll_y - gRoomControls.origin_y) >> 1) + gRoomControls.bg3OffsetY.HALF.HI;
    sin = gSineTable[(gRoomTransition.frameCount & 0xff) + 0x40];
    sub_0805732C((sin >> 5) + 0x10, gRoomTransition.frameCount);
    if (ZV(this)[2] == 0) {
        if ((gRoomTransition.frameCount & 0x1f) == 0) {
            ZS(this)[0] = (ZS(this)[0] + 1) & 7;
            gScreen.controls.alphaBlend = gUnk_08107C30[ZS(this)[0]];
        }
    }
}

void sub_08057450(Entity* this) {
    s32 y;
    gScreen.bg3.xOffset = 0x10;
    y = gRoomControls.scroll_y;
    y -= gRoomControls.origin_y;
    y >>= 2;

    gScreen.bg3.yOffset = y & 0x3f;
    gScreen.bg3.tilemap = &gBG3Buffer[(y / 0x40) << 8];
    if ((void*)this->z.WORD != gScreen.bg3.tilemap) {
        this->z.WORD = (u32)gScreen.bg3.tilemap;
        gScreen.bg3.updated = 1;
    }

    if (ZV(this)[2] == 0 && (gRoomTransition.frameCount & 0x1f) == 0) {
        ZS(this)[0] = (ZS(this)[0] + 1) & 7;
        gScreen.controls.alphaBlend = gUnk_08107C30[ZS(this)[0]];
    }

    if ((gRoomTransition.frameCount & 0x7) == 0) {
        u32 index;
        u16* ptr = &gUnk_085B4180[(ZV(this)[3] << 4)];

        for (index = 0, ptr = ptr + 7; index <= 3; index++) {
            SetColor(index + 0x87, *(ptr + index));
            SetColor(index + 0x8c, *(ptr + index + 5));
        }

        ZV(this)[3] = (ZV(this)[3] + 1) & 3;
    }
}

const u16 gUnk_08107C1C[] = {
    0x1000, 0xF01, 0xE02, 0xD03, 0xC04, 0xB05, 0xA06, 0x907, 0x908, 0x909,
};

const u16 gUnk_08107C30[] = {
    0x909, 0xA08, 0xB07, 0xC06, 0xD05, 0xC06, 0xB07, 0xA08,
};

const u8 gManager1GfxGroups[] = {
    0x25, 0x00, 0x24, 0x00, 0x25, 0x00, 0x00, 0x00,
};

void (*const gUnk_08107C48[])(Entity*) = {
    nullsub_494, nullsub_494, sub_080573AC, nullsub_494, sub_08057450,
};

void (*const gUnk_08107C5C[])(Entity*) = {
    sub_08057118,
    sub_08057174,
    sub_0805728C,
    sub_080572D4,
};
