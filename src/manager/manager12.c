#include "manager.h"
#include "room.h"
#include "functions.h"
#include "flags.h"

typedef struct {
    Manager manager;
    u8 field_0x20;
    u8 field_0x21;
    u8 field_0x22;
} Manager12;

void sub_08059A58(Manager12*);

void sub_08059A2C(Manager12*);

u32 sub_08056300(u16* arr);
extern u16 gUnk_081083DA;
extern u16 gUnk_081083F2;
extern u16 gUnk_08108398;
extern u16 gUnk_081083AE;
extern u16 gUnk_081083C4;

void sub_08059CC0(u32, u32);
void sub_08059B18();

bool32 sub_08059C8C(Manager12*, u32, u8*, u16*);

extern void sub_0807B9B8(s32, s32, s32);
extern u32 gUnk_086E8460;

typedef struct {
    u32 field_0x0;
    u32 field_0x4;
    u32 field_0x8;
    u32 field_0xc;
} Unknown;

extern Unknown gUnk_08108468[];
extern Unknown gUnk_08108408[];
extern const u8 gGlobalGfxAndPalettes[];

void Manager12_Main(Manager12* this) {
    if (this->manager.action == 0) {
        this->manager.action = 1;
        this->field_0x22 = 0xff;
        this->field_0x21 = 0xff;
        this->field_0x20 = 0xff;
        sub_08052D74(this, sub_08059A2C, NULL);
        sub_0805E3A0(this, 6);
    }
    sub_08059A58(this);
}

void sub_08059A2C(Manager12* this) {
    gRoomVars.unk_10[2] = 0xff;
    gRoomVars.unk_10[1] = 0xff;
    gRoomVars.unk_10[0] = 0xff;
    this->field_0x22 = 0xff;
    this->field_0x21 = 0xff;
    this->field_0x20 = 0xff;
    sub_08059A58(this);
}

void sub_08059A58(Manager12* this) {
    if (gRoomControls.areaID != 0x15) {
        if (sub_08059C8C(this, 0, &this->field_0x20, &gUnk_08108398) != 0) {
            sub_08059CC0(0, (u32)this->field_0x20);
        }
        if (sub_08059C8C(this, 1, &this->field_0x21, &gUnk_081083AE) != 0) {
            sub_08059CC0(1, this->field_0x21);
            if (this->field_0x21 == 2) {
                sub_08059B18();
            }
        }
        if (sub_08059C8C(this, 2, &this->field_0x22, &gUnk_081083C4) != 0) {
            sub_08059CC0(2, (u32)this->field_0x22);
        }
    } else {
        if (sub_08059C8C(this, 0, &this->field_0x20, &gUnk_081083DA) != 0) {
            sub_08059CC0(0, (u32)this->field_0x20);
        }
        if (sub_08059C8C(this, 2, &this->field_0x22, &gUnk_081083F2) != 0) {
            sub_08059CC0(2, (u32)this->field_0x22);
        }
    }
}

#define COMMON(tmp2, tmp1) ((tmp2) >> 4 & 0x3f) | (((tmp1) + 0x188U) >> 4 & 0x3f) << 6
void sub_08059B18(void) {
    u32 loopVar;
    u32 innerLoopVar;

    if (CheckGlobalFlag(TATEKAKE_HOUSE) != 0) {
        for (loopVar = 0; loopVar < 4; ++loopVar) {
            for (innerLoopVar = 0; innerLoopVar < 4; ++innerLoopVar) {
                sub_0807B9B8(loopVar * 0x10 + 0x4ab + innerLoopVar, COMMON(0x28 + 0x10 * innerLoopVar, loopVar * 0x10),
                             1);
            }
        }

        for (loopVar = 0; loopVar < 3; ++loopVar) {
            for (innerLoopVar = 0; innerLoopVar < 4; ++innerLoopVar) {
                sub_0807B9B8(loopVar * 0x10 + 0x440 + innerLoopVar, COMMON(0x28 + 0x10 * innerLoopVar, loopVar * 0x10),
                             2);
            }
        }
        sub_0807B9B8(0xd6, 0x5c2, 2);
        sub_0807B9B8(0xd7, 0x5c3, 2);
        LoadResourceAsync(&gUnk_086E8460, 0x6001800, 0x800);
    } else {
        if (CheckGlobalFlag(TATEKAKE_TOCHU) != 0) {
            for (loopVar = 0; loopVar < 5; ++loopVar) {
                for (innerLoopVar = 0; innerLoopVar < 4; ++innerLoopVar) {
                    sub_0807B9B8(loopVar * 0x10 + 0x4a6 + innerLoopVar,
                                 COMMON(0x28 + 0x10 * innerLoopVar, loopVar * 0x10), 1);
                }
            }
            sub_0807B9B8(0x444, 0x602, 2);
            sub_0807B9B8(0x445, 0x605, 2);
            sub_0807B9B8(0x454, 0x642, 2);
            sub_0807B9B8(0x455, 0x645, 2);
        }
    }
}

bool32 sub_08059C8C(Manager12* this, u32 param_2, u8* param_3, u16* param_4) {
    bool32 bVar2;

    *param_3 = sub_08056300(param_4);
    if ((*param_3 != 0xff) && (gRoomVars.unk_10[param_2] != *param_3)) {
        gRoomVars.unk_10[param_2] = *param_3;
        return TRUE;
    } else {
        return FALSE;
    }
}

void sub_08059CC0(u32 param_1, u32 param_2) {
    Unknown* unknown;

    gRoomVars.unk_10[param_1] = param_2;
    if (gRoomControls.areaID != 0x15) {
        unknown = &gUnk_08108408[param_2];
    } else {
        unknown = &gUnk_08108468[param_2];
    }
    LoadResourceAsync((void*)&gGlobalGfxAndPalettes + unknown->field_0x0, unknown->field_0x4, 0x1000);
    LoadResourceAsync((void*)&gGlobalGfxAndPalettes + unknown->field_0x8, unknown->field_0xc, 0x1000);
}

void TryLoadPrologueHyruleTown(void) {
    u32 tmp;

    if (gRoomControls.areaID != 0x15) {
        tmp = sub_08056300(&gUnk_08108398);
        if (tmp != 0xff) {
            sub_08059CC0(0, tmp);
        }
        tmp = sub_08056300(&gUnk_081083AE);
        if ((tmp != 0xff) && (sub_08059CC0(1, tmp), tmp == 2)) {
            sub_08059B18();
        }
        tmp = sub_08056300(&gUnk_081083C4);
        if (tmp != 0xff) {
            sub_08059CC0(2, tmp);
        }
    } else {
        tmp = sub_08056300(&gUnk_081083DA);
        if (tmp != 0xff) {
            sub_08059CC0(0, tmp);
        }
        tmp = sub_08056300(&gUnk_081083F2);
        if (tmp != 0xff) {
            sub_08059CC0(2, tmp);
        }
    }
}
