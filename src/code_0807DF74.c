#include "global.h"
#include "flags.h"
#include "entity.h"
#include "area.h"
#include "structures.h"
#include "textbox.h"
#include "functions.h"

typedef struct {
    u16 * unk_00;
    u32 unk_04;
    u32 unk_08;
    u8 unk_0C[0x4];//unused
    u16 unk_10;
    u16 unk_12;
    u32 unk_14;
    u8 unk_18;
    u8 unk_19;
    u8 unk_1A;
    u8 unk_1B;//unused
    union SplitWord unk_1C;
    union SplitWord unk_20;
} unk_struct;

void nullsub_507 (Entity*, unk_struct*);
void sub_0807E004(Entity*, unk_struct*);
void sub_0807E014(Entity*, unk_struct*);
void sub_0807E024(Entity*, unk_struct*);
void sub_0807E050(Entity*, unk_struct*);
void sub_0807E064(Entity*, unk_struct*);
void sub_0807E078(Entity*, unk_struct*);
void sub_0807E0A0(Entity*, unk_struct*);
void sub_0807E0B8(Entity*, unk_struct*);
void sub_0807E0CC(Entity*, unk_struct*);
void sub_0807E0E0(Entity*, unk_struct*);
void sub_0807E10C(Entity*, unk_struct*);
void sub_0807E124(Entity*, unk_struct*);
void sub_0807E148(Entity*, unk_struct*);
void sub_0807E158(Entity*, unk_struct*);
void sub_0807E188(Entity*, unk_struct*);
void sub_0807E1D8(Entity*, unk_struct*);
void sub_0807E200(Entity*, unk_struct*);
void sub_0807E220(Entity*, unk_struct*);
void sub_0807E240(Entity*, unk_struct*);
void sub_0807E260(Entity*, unk_struct*);
void sub_0807E280(Entity*, unk_struct*);
void sub_0807E2A8(Entity*, unk_struct*);
void sub_0807E2E4(Entity*, unk_struct*);
void sub_0807E30C(Entity*, unk_struct*);
void sub_0807E390(Entity*, unk_struct*);
void sub_0807E3BC(Entity*, unk_struct*);
void sub_0807E3E8(Entity*, unk_struct*);
void sub_0807E40C(Entity*, unk_struct*);
void sub_0807E42C(Entity*, unk_struct*);
void sub_0807E48C(Entity*, unk_struct*);
void sub_0807E4AC(Entity*, unk_struct*);
void sub_0807E4CC(Entity*, unk_struct*);
void sub_0807E4EC(Entity*, unk_struct*);
void sub_0807E514(Entity*, unk_struct*);
void sub_0807E538(Entity*, unk_struct*);
void sub_0807E564(Entity*, unk_struct*);
void sub_0807E584(Entity*, unk_struct*);
void sub_0807E5A0(Entity*, unk_struct*);
void sub_0807E5CC(Entity*, unk_struct*);
void sub_0807E5F8(Entity*, unk_struct*);
void sub_0807E610(Entity*, unk_struct*);
void sub_0807E628(Entity*, unk_struct*);
void sub_0807E634(Entity*, unk_struct*);
void sub_0807E644(Entity*, unk_struct*);
void sub_0807E650(Entity*, unk_struct*);
void sub_0807E65C(Entity*, unk_struct*);
void sub_0807E668(Entity*, unk_struct*);
void sub_0807E674(Entity*, unk_struct*);
void sub_0807E680(Entity*, unk_struct*);
void sub_0807E690(Entity*, unk_struct*);
void sub_0807E6AC(Entity*, unk_struct*);
void sub_0807E6DC(Entity*, unk_struct*);
void sub_0807E700(Entity*, unk_struct*);
void sub_0807E72C(Entity*, unk_struct*);
void sub_0807E75C(Entity*, unk_struct*);
void sub_0807E778(Entity*, unk_struct*);
void sub_0807E788(Entity*, unk_struct*);
void sub_0807E79C(Entity*, unk_struct*);
void nullsub_508 (Entity*, unk_struct*);
void sub_0807E7B0(Entity*, unk_struct*);
void sub_0807E7C4(Entity*, unk_struct*);
void sub_0807E7D8(Entity*, unk_struct*);
void sub_0807E7EC(Entity*, unk_struct*);
void sub_0807E800(Entity*, unk_struct*);
void sub_0807E80C(Entity*, unk_struct*);
void sub_0807E818(u32);
void sub_0807E858(Entity*, unk_struct*);
void sub_0807E864(Entity*, unk_struct*);
void sub_0807E878(Entity*, unk_struct*);
void sub_0807E888(Entity*, unk_struct*);
void sub_0807E898(Entity*, unk_struct*);
void sub_0807E8C4(Entity*, unk_struct*);
void sub_0807E8D4(Entity*, unk_struct*);
void sub_0807E8E4(Entity*, unk_struct*);
void sub_0807E908(Entity*, unk_struct*);
void sub_0807E914(Entity*, unk_struct*);
void sub_0807E924(Entity*, unk_struct*);
void sub_0807E930(Entity*, unk_struct*);
void sub_0807E944(Entity*, unk_struct*);
void sub_0807E974(Entity*, unk_struct*);
void sub_0807E9D4(Entity*, unk_struct*);
void sub_0807E9DC(Entity*, unk_struct*);
void sub_0807E9E4(Entity*, unk_struct*);
void sub_0807E9F0(Entity*, unk_struct*);
void sub_0807EA4C(Entity*, unk_struct*);
void sub_0807EA88(Entity*, unk_struct*);
void sub_0807EA94(Entity*, unk_struct*);
void sub_0807EAB4(Entity*, unk_struct*);
void sub_0807EAC0(Entity*, unk_struct*);
void sub_0807EAD0(Entity*, unk_struct*);
void sub_0807EAF0(Entity*, unk_struct*);
void sub_0807EB18(Entity*, unk_struct*);
void sub_0807EB28(Entity*, unk_struct*);
void sub_0807EB38(Entity*, unk_struct*);
void sub_0807EB44(Entity*, unk_struct*);
void sub_0807EB4C(Entity*, unk_struct*);
void sub_0807EB74(Entity*, unk_struct*);
void sub_0807EB8C(Entity*, unk_struct*);
void sub_0807EBA8(Entity*, unk_struct*);
void sub_0807EBB0(Entity*, unk_struct*);
void sub_0807EBC0(Entity*, unk_struct*);
void sub_0807EBC8(Entity*, unk_struct*);
void sub_0807EBD8(Entity*, unk_struct*);
void sub_0807EBF4(Entity*, unk_struct*);
void sub_0807EC08(Entity*, unk_struct*);
void nullsub_509 (Entity*, unk_struct*);
void sub_0807EC1C(Entity*, unk_struct*);
void sub_0807EC44(Entity*, unk_struct*);
void sub_0807EC64(Entity*, unk_struct*);
void sub_0807EC94(Entity*, unk_struct*);
void sub_0807ECC4(Entity*, unk_struct*);
void sub_0807ECF4(Entity*, unk_struct*);
void sub_0807ED24(Entity*, unk_struct*);
void sub_0807EDD4(Entity*, unk_struct*);
void sub_0807EE04(Entity*, unk_struct*);
void sub_0807EE30(Entity*, unk_struct*);
void sub_0807EEB4(Entity*, unk_struct*);
void sub_0807EEF4(Entity*, unk_struct*);
void sub_0807EF3C(Entity*, unk_struct*);
void sub_0807EF80(Entity*, unk_struct*);
void sub_0807EF90(Entity*, unk_struct*);
void sub_0807EFA0(Entity*, unk_struct*);
void sub_0807EFAC(Entity*, unk_struct*);
void sub_0807EFD4(Entity*, unk_struct*);
void sub_0807EFE4(Entity*, unk_struct*);
void sub_0807EFF4(Entity*, unk_struct*);
void sub_0807F004(Entity*, unk_struct*);
void sub_0807F010(Entity*, unk_struct*);
void sub_0807F034(Entity*, unk_struct*);
void sub_0807F050(Entity*, unk_struct*);
void sub_0807F060(Entity*, unk_struct*);
void sub_0807F078(Entity*, unk_struct*);
void sub_0807F088(Entity*, unk_struct*);
void sub_0807F098(Entity*, unk_struct*);
void sub_0807F0A4(Entity*, unk_struct*);
void sub_0807F0B4(Entity*, unk_struct*);
void sub_0807F0C8(Entity*, unk_struct*);

void (* const gUnk_0811E524[])() = {
    nullsub_507,
    sub_0807E004,
    sub_0807E014,
    sub_0807E024,
    sub_0807E050,
    sub_0807E064,
    sub_0807E078,
    sub_0807E0A0,
    sub_0807E0B8,
    sub_0807E0CC,
    sub_0807E0E0,
    sub_0807E10C,
    sub_0807E124,
    sub_0807E148,
    sub_0807E158,
    sub_0807E188,
    sub_0807E1D8,
    sub_0807E4AC,//defined out of order
    sub_0807E200,
    sub_0807E220,
    sub_0807E240,
    sub_0807E260,
    sub_0807E280,
    sub_0807E2A8,
    sub_0807E2E4,
    sub_0807E30C,
    sub_0807E390,
    sub_0807E3BC,
    sub_0807E3E8,
    sub_0807E40C,
    sub_0807E42C,
    sub_0807E48C,
    sub_0807E4CC,
    sub_0807E4EC,
    sub_0807E514,
    sub_0807E538,
    sub_0807E564,
    sub_0807E584,
    sub_0807E5A0,
    sub_0807E5CC,
    sub_0807E5F8,
    sub_0807E610,
    sub_0807E628,
    sub_0807E634,
    sub_0807E644,
    sub_0807E650,
    sub_0807E65C,
    sub_0807E668,
    sub_0807E674,
    sub_0807E680,
    sub_0807E690,
    sub_0807E6AC,
    sub_0807E6DC,
    sub_0807E700,
    sub_0807E72C,
    sub_0807E75C,
    sub_0807E778,
    sub_0807E788,
    sub_0807E79C,
    nullsub_508,
    sub_0807E7B0,
    sub_0807E7C4,
    sub_0807E7D8,
    sub_0807E7EC,
    sub_0807E800,
    sub_0807E80C,
    sub_0807E858,
    sub_0807E864,
    sub_0807E878,
    sub_0807E888,
    sub_0807E898,
    sub_0807E8C4,
    sub_0807E8D4,
    sub_0807E8E4,
    sub_0807E8E4,//duplicate
    sub_0807E8E4,//duplicate
    sub_0807E8E4,//duplicate
    sub_0807E908,
    sub_0807E914,
    sub_0807E924,
    sub_0807E930,
    sub_0807E944,
    sub_0807E974,
    sub_0807E9D4,
    sub_0807E9DC,
    sub_0807E9E4,
    sub_0807E9F0,
    sub_0807EA4C,
    sub_0807EA88,
    sub_0807EA94,
    sub_0807EAB4,
    sub_0807EAC0,
    sub_0807EAD0,
    sub_0807EAF0,
    sub_0807EB18,
    sub_0807EB28,
    sub_0807EB38,
    sub_0807EB44,
    sub_0807EB4C,
    sub_0807EB74,
    sub_0807EB8C,
    sub_0807EBA8,
    sub_0807EBB0,
    sub_0807EBC0,
    sub_0807EBC8,
    sub_0807EBD8,
    sub_0807EBF4,
    sub_0807EC08,
    nullsub_509,
    sub_0807EC1C,
    sub_0807EC64,
    sub_0807EC94,
    sub_0807ECC4,
    sub_0807ECF4,
    sub_0807ED24,
    sub_0807EDD4,
    sub_0807EE04,
    sub_0807EE30,
    sub_0807EEB4,
    sub_0807EEF4,
    sub_0807EF3C,
    sub_0807EF80,
    sub_0807EF90,
    sub_0807EFA0,
    sub_0807EFAC,
    sub_0807EFD4,
    sub_0807EFE4,
    sub_0807EFF4,
    sub_0807F004,
    sub_0807F010,
    sub_0807F034,
    sub_0807F050,
    sub_0807F060,
    sub_0807F078,
    sub_0807F088,
    sub_0807F098,
    sub_0807F0A4,
    sub_0807F0B4,
    sub_0807F0C8
};

typedef struct {
    u32 unk_00;
    u16 unk_04;
    u8 unk_06;
    u8 unk_07;
    u8 unk_08;
} struct_02033280;

extern struct_02033280 gUnk_02033280;

extern u8 gUnk_02022740[];
extern u8 gUnk_02034490;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02[0xE];
} struct_02000040;

extern struct_02000040 gUnk_02000040;

extern const u16 gUnk_08016984;

extern u32 GetNextScriptCommandHalfword(u16*);
extern u32 GetNextScriptCommandWord(u16*);
extern u32 GetNextScriptCommandWordAfterCommandMetadata(u16*);
extern u32 GetNextScriptCommandHalfwordAfterCommandMetadata(u16*);

void StartPlayerScript(u32);

extern u32 sub_08052734(); //has Dungeon Map?
extern u32 sub_08052764(); //has Dungeon Compass?
extern u32 sub_0805279C(); //has Dungeon Big Key?
extern u32 sub_080527CC(); //num Dungeon small keys?

extern void sub_0801E00C();
extern void sub_0807919C();
extern void sub_0801DFB4(Entity*, u32, u32, u32);
extern void sub_08078790(Entity*, u32);
extern void sub_08078AA8(u32, u32);
extern void sub_0807DEDC(Entity*, unk_struct*, u32, u32);
extern void sub_0807CAA0(u32, u32);
extern void sub_08080964(u32, u32);

extern u32 sub_08053FE0();
extern void sub_080500F4(u32);
extern void sub_08050110(u32, u32, u32, u32);
extern void sub_08050038(u32);
extern void sub_08078B48(void);
extern void sub_080788E0(Entity*);

void sub_0807E818(u32);
void sub_0807EC44(Entity*, unk_struct*);
void sub_0807EE04(Entity*, unk_struct*);
void sub_0807EE30(Entity*, unk_struct*);

extern u32 CheckPlayerInRegion(u32, u32, u32, u32);
extern u32 sub_0806F5B0(u32);

void ExecuteScriptCommandSet(Entity* unk1, unk_struct* unk2) {
    if (!unk2->unk_00) return;
    if (unk2->unk_10) {
        unk2->unk_10--;
    } else {
        struct_02033280 * tmp2 = &gUnk_02033280;
        tmp2->unk_07 = 0;
        do {
            u32 cmd = GetNextScriptCommandHalfword(unk2->unk_00);
            u16* tmp;
            if (cmd == 0xFFFF) return;
            tmp2->unk_06 = cmd >> 0xA;
            tmp2->unk_04 = cmd & 0x3FF;
            tmp = unk2->unk_00;
            tmp2->unk_07 &= ~1;
            gUnk_0811E524[tmp2->unk_04](unk1, unk2);
            unk2->unk_00 += tmp2->unk_06;
            if (tmp != unk2->unk_00) {
                unk2->unk_18 = 0;
            }
        } while (tmp2->unk_07 & 3);
    }
}

void nullsub_507(Entity* unk1, unk_struct* unk2) {}

void sub_0807E004(Entity* unk1, unk_struct* unk2) {
    gUnk_02033280.unk_07 |= 2;
}

void sub_0807E014(Entity* unk1, unk_struct* unk2) {
    gUnk_02033280.unk_07 &= ~2;
}

void sub_0807E024(Entity* unk1, unk_struct* unk2) {
    s16 tmp;
    unk2->unk_00++;
    tmp = GetNextScriptCommandHalfword(unk2->unk_00);
    unk2->unk_00 += (tmp / 2);
    gUnk_02033280.unk_06 = 0;
}

void sub_0807E050(Entity* unk1, unk_struct* unk2) {
    if (unk2->unk_14) {
        sub_0807E024(unk1, unk2);
    }
}

void sub_0807E064(Entity* unk1, unk_struct* unk2) {
    if (!unk2->unk_14) {
        sub_0807E024(unk1, unk2);
    }
}

void sub_0807E078(Entity* unk1, unk_struct* unk2) {
    if (gUnk_02033280.unk_06 > unk2->unk_04) {
        unk2->unk_00 += unk2->unk_04;
        sub_0807E024(unk1, unk2);
    }
}

void sub_0807E0A0(Entity* unk1, unk_struct* unk2) {
    unk2->unk_00 = (u16*) GetNextScriptCommandWordAfterCommandMetadata(unk2->unk_00);
    gUnk_02033280.unk_06 = 0;
}

void sub_0807E0B8(Entity* unk1, unk_struct* unk2) {
    if (unk2->unk_14) {
        sub_0807E0A0(unk1, unk2);
    }
}

void sub_0807E0CC(Entity* unk1, unk_struct* unk2) {
    if (!unk2->unk_14) {
        sub_0807E0A0(unk1, unk2);
    }
}

void sub_0807E0E0(Entity* unk1, unk_struct* unk2) {
    if (gUnk_02033280.unk_06 > (unk2->unk_04 << 1) + 1) {
        unk2->unk_00 += unk2->unk_04 << 1;
        sub_0807E0A0(unk1, unk2);
    }
}

void sub_0807E10C(Entity* unk1, unk_struct* unk2) {
   ((void (*)(Entity*, unk_struct*)) GetNextScriptCommandWordAfterCommandMetadata(unk2->unk_00))(unk1, unk2);
}

void sub_0807E124(Entity* unk1, unk_struct* unk2) {
    void (* tmp)(Entity*, unk_struct*) = (void (*)(Entity*, unk_struct*)) GetNextScriptCommandWordAfterCommandMetadata(unk2->unk_00);
    unk2->unk_04 = GetNextScriptCommandWord(unk2->unk_00 + 3);
    tmp(unk1, unk2);
}

void sub_0807E148(Entity* unk1, unk_struct* unk2) {
    LoadRoomEntityList(GetNextScriptCommandWordAfterCommandMetadata(unk2->unk_00));
}

void sub_0807E158(Entity* unk1, unk_struct* unk2) {
    u32 tmp = GetNextScriptCommandWordAfterCommandMetadata(unk2->unk_00);
    u32 tmp2 = 0;
    u32 tmp3 = gUnk_02033280.unk_00;
    if ((tmp3 & tmp) == tmp) tmp2 = 1;
    unk2->unk_14 = tmp2;
    gUnk_02033280.unk_00 = tmp3 & ~tmp;
    gUnk_02033280.unk_07 |= 1;
}

void sub_0807E188(Entity* unk1, unk_struct* unk2) {
    u32 tmp;
    u32 tmp2 = GetNextScriptCommandHalfwordAfterCommandMetadata(unk2->unk_00);
    switch (tmp2) {
        case 0x53:
            tmp = sub_08052734();
            break;
        case 0x52:
            tmp = sub_08052764();
            break;
        case 0x51:
            tmp = sub_0805279C();
            break;
        case 0x50:
            tmp = sub_080527CC();
            break;
        default:
            tmp = GetInventoryValue(tmp2);
    }
    unk2->unk_14 = tmp;
    gUnk_02033280.unk_07 |= 1;
}

void sub_0807E1D8(Entity* unk1, unk_struct* unk2) {
    unk2->unk_14 = GetInventoryValue(unk2->unk_00[1]) == 2;
    gUnk_02033280.unk_07 |= 1;
}

void sub_0807E200(Entity* unk1, unk_struct* unk2) {
    unk2->unk_14 = CheckLocalFlag(unk2->unk_00[1]);
    gUnk_02033280.unk_07 |= 1;
}

void sub_0807E220(Entity* unk1, unk_struct* unk2) {
    unk2->unk_14 = CheckLocalFlagByOffset(unk2->unk_00[1], unk2->unk_00[2]);
    gUnk_02033280.unk_07 |= 1;
}

void sub_0807E240(Entity* unk1, unk_struct* unk2) {
    unk2->unk_14 = CheckGlobalFlag(GetNextScriptCommandHalfwordAfterCommandMetadata(unk2->unk_00));
    gUnk_02033280.unk_07 |= 1;
}

void sub_0807E260(Entity* unk1, unk_struct* unk2) {
    unk2->unk_14 = CheckRoomFlag(unk2->unk_00[1]);
    gUnk_02033280.unk_07 |= 1;
}

void sub_0807E280(Entity* unk1, unk_struct* unk2) {
    u32 x, y, width, height;
    width = unk2->unk_00[3];
    height = width >> 8;
    width &= 0xFF;
    x = unk2->unk_00[1];
    y = unk2->unk_00[2];
    unk2->unk_14 = CheckPlayerInRegion(x,y,width, height);
    gUnk_02033280.unk_07 |= 1;
}

void sub_0807E2A8(Entity* unk1, unk_struct* unk2) {
    u32 x, y, width, height;
    width = unk2->unk_00[1] & 0xFF;
    height = unk2->unk_00[1] >> 8;
    x = unk1->x.HALF.HI - gRoomControls.roomOriginX;
    y = unk1->y.HALF.HI - gRoomControls.roomOriginY;
    unk2->unk_14 = CheckPlayerInRegion(x,y,width, height);
    gUnk_02033280.unk_07 |= 1;
}

void sub_0807E2E4(Entity* unk1, unk_struct* unk2) {
    if (unk1->interactType) {
        unk1->interactType = 0;
        unk2->unk_14 = 1;
    } else {
        unk2->unk_14 = 0;
    }
    gUnk_02033280.unk_07 |= 1;
}

void sub_0807E30C(Entity* unk1, unk_struct* unk2) {
    if ((unk2->unk_1A & 0xF) == 0
     && (gPlayerState.flags.all & 0x80) == 0
     && sub_080041A0(unk1, &gPlayerEntity, 0x28, 0x28)) {
        unk1->animationState = sub_0806F5B0(GetFacingDirection(unk1, &gPlayerEntity));
    }
    unk2->unk_1A++;
    if (unk1->interactType) {
        unk1->interactType = 0;
        unk2->unk_14 = 1;
        unk1->animationState = sub_0806F5B0(GetFacingDirection(unk1, &gPlayerEntity));
    } else {
        unk2->unk_14 = 0;
    }
    gUnk_02033280.unk_07 |= 1;
}

void sub_0807E390(Entity* unk1, unk_struct* unk2) {
    unk2->unk_14 = (unk2->unk_00[1] <= gUnk_02002A40.stats.rupees);
    gUnk_02033280.unk_07 |= 1;
}

void sub_0807E3BC(Entity* unk1, unk_struct* unk2) {
    unk2->unk_14 = (unk2->unk_00[1] <= gUnk_02002A40.stats.field_0x1a);
    gUnk_02033280.unk_07 |= 1;
}

void sub_0807E3E8(Entity* unk1, unk_struct* unk2) {
    unk2->unk_14 = !gUnk_02000040.unk_01;
    gUnk_02033280.unk_07 |= 1;
}

void sub_0807E40C(Entity* unk1, unk_struct* unk2) {
    unk2->unk_14 = CheckKinstoneFused(unk2->unk_00[1]);
    gUnk_02033280.unk_07 |= 1;
}

void sub_0807E42C(Entity* unk1, unk_struct* unk2) {
    u32 tmp, tmp2;
    s32 tmp3;
    tmp = unk2->unk_00[1];
    tmp2 = unk2->unk_00[2];
    if (!tmp) {
        tmp = gRoomVars.itemForSaleIndex;
        tmp2 = gRoomVars.field_0x7;
    }
    tmp3 = sub_08053FE0(tmp);
    unk2->unk_14 = (tmp3 <= gUnk_02002A40.stats.rupees);
    if (unk2->unk_14) {
        ModRupees(-tmp3);
        sub_080A7C18(tmp, tmp2, 0);
        gRoomVars.itemForSaleIndex = 0;
        gRoomVars.field_0x7 = 0;
    }
    gUnk_02033280.unk_07 |= 1;
}

void sub_0807E48C(Entity* unk1, unk_struct* unk2) {
    unk2->unk_14 = sub_080544DC(unk2->unk_00[1]);
    gUnk_02033280.unk_07 |= 1;
}

void sub_0807E4AC(Entity* unk1, unk_struct* unk2) {
    unk2->unk_14 = !!gRoomVars.itemForSaleIndex;
    gUnk_02033280.unk_07 |= 1;
}

void sub_0807E4CC(Entity* unk1, unk_struct* unk2) {
    unk2->unk_14 = !!(unk2->unk_04 & unk2->unk_00[1]);
    gUnk_02033280.unk_07 |= 1;
}

void sub_0807E4EC(Entity* unk1, unk_struct* unk2) {
    u32 tmp = unk2->unk_00[1];
    unk2->unk_14 = tmp == (tmp & unk2->unk_04);
    gUnk_02033280.unk_07 |= 1;
}

void sub_0807E514(Entity* unk1, unk_struct* unk2) {
    u32 tmp = unk2->unk_00[1];
    unk2->unk_14 = tmp == unk2->unk_04;
    gUnk_02033280.unk_07 |= 1;
}

void sub_0807E538(Entity* unk1, unk_struct* unk2) {
    unk2->unk_14 = !!(GetNextScriptCommandWordAfterCommandMetadata(unk2->unk_00) & gPlayerState.flags.all);
    gUnk_02033280.unk_07 |= 1;
}

void sub_0807E564(Entity* unk1, unk_struct* unk2) {
    unk2->unk_14 = (gPlayerState.flags.all >> 7) & 1;
    gUnk_02033280.unk_07 |= 1;
}

void sub_0807E584(Entity* unk1, unk_struct* unk2) {
    unk2->unk_14 = unk1->height.WORD != 0;
    gUnk_02033280.unk_07 |= 1;
}

void sub_0807E5A0(Entity* unk1, unk_struct* unk2) {
    unk2->unk_14 = unk2->unk_00[1] == gPlayerEntity.action;
    gUnk_02033280.unk_07 |= 1;
}

void sub_0807E5CC(Entity* unk1, unk_struct* unk2) {
    unk2->unk_14 = unk2->unk_00[1] == gPlayerEntity.animationState;
    gUnk_02033280.unk_07 |= 1;
}

void sub_0807E5F8(Entity* unk1, unk_struct* unk2) {
    gUnk_02033280.unk_00 |= GetNextScriptCommandWordAfterCommandMetadata(unk2->unk_00);
}

void sub_0807E610(Entity* unk1, unk_struct* unk2) {
    gUnk_02033280.unk_00 &= ~GetNextScriptCommandWordAfterCommandMetadata(unk2->unk_00);
}

void sub_0807E628(Entity* unk1, unk_struct* unk2) {
    SetLocalFlag(unk2->unk_00[1]);
}

void sub_0807E634(Entity* unk1, unk_struct* unk2) {
    SetLocalFlagByOffset(unk2->unk_00[1], unk2->unk_00[2]);
}

void sub_0807E644(Entity* unk1, unk_struct* unk2) {
    ClearLocalFlag(unk2->unk_00[1]);
}

void sub_0807E650(Entity* unk1, unk_struct* unk2) {
    SetGlobalFlag(unk2->unk_00[1]);
}

void sub_0807E65C(Entity* unk1, unk_struct* unk2) {
    ClearGlobalFlag(unk2->unk_00[1]);
}

void sub_0807E668(Entity* unk1, unk_struct* unk2) {
    SetRoomFlag(unk2->unk_00[1]);
}

void sub_0807E674(Entity* unk1, unk_struct* unk2) {
    ClearRoomFlag(unk2->unk_00[1]);
}

void sub_0807E680(Entity* unk1, unk_struct* unk2) {
    unk2->unk_10 = GetNextScriptCommandHalfwordAfterCommandMetadata(unk2->unk_00);
}

void sub_0807E690(Entity* unk1, unk_struct* unk2) {
    u32 tmp = GetNextScriptCommandWordAfterCommandMetadata(unk2->unk_00);
    if ((gUnk_02033280.unk_00 & tmp) != tmp) {
        gUnk_02033280.unk_06 = 0;
    }
}

void sub_0807E6AC(Entity* unk1, unk_struct* unk2) {
    u32 tmp = GetNextScriptCommandWordAfterCommandMetadata(unk2->unk_00);
    if ((gUnk_02033280.unk_00 & tmp) != tmp) {
        gUnk_02033280.unk_06 = 0;
    } else {
        gUnk_02033280.unk_00 &= ~tmp;
        gUnk_02033280.unk_07 |= 1;
    }
}

void sub_0807E6DC(Entity* unk1, unk_struct* unk2) {
    if (gPlayerEntity.action == 8) {
        gUnk_02033280.unk_06 = 0;
    } else {
        unk2->unk_10 = 0x2D;
    }
}

void sub_0807E700(Entity* unk1, unk_struct* unk2) {
    if (gPlayerEntity.action != 0x17) {
        gUnk_02033280.unk_07 |= 1;
    } else {
        gUnk_02033280.unk_06 = 0;
    }
}

void sub_0807E72C(Entity* unk1, unk_struct* unk2) {
    if (gRoomControls.unk6 & 4) {
        gUnk_02033280.unk_06 = 0;
    } else {
        gUnk_02033280.unk_07 |= 1;
    }
}

void sub_0807E75C(Entity* unk1, unk_struct* unk2) {
    if (gFadeControl.active) {
        gUnk_02033280.unk_06 = 0;
    }
}

void sub_0807E778(Entity* unk1, unk_struct* unk2) {
    gUnk_02033280.unk_08 = unk2->unk_00[1];
}

void sub_0807E788(Entity* unk1, unk_struct* unk2) {
    gFadeControl.field_0x4 = GetNextScriptCommandWordAfterCommandMetadata(unk2->unk_00);
}

void sub_0807E79C(Entity* unk1, unk_struct* unk2) {
    sub_080500F4(gUnk_02033280.unk_08);
}

void nullsub_508(Entity* unk1, unk_struct* unk2) {}

void sub_0807E7B0(Entity* unk1, unk_struct* unk2) {
    DoFade(4, gUnk_02033280.unk_08);
}

void sub_0807E7C4(Entity* unk1, unk_struct* unk2) {
    DoFade(5, gUnk_02033280.unk_08);
}

void sub_0807E7D8(Entity* unk1, unk_struct* unk2) {
    DoFade(6, gUnk_02033280.unk_08);
}

void sub_0807E7EC(Entity* unk1, unk_struct* unk2) {
    DoFade(7, gUnk_02033280.unk_08);
}

void sub_0807E800(Entity* unk1, unk_struct* unk2) {
    sub_0807E818(0x10);
}

void sub_0807E80C(Entity* unk1, unk_struct* unk2) {
    sub_0807E818(0x11);
}

void sub_0807E818(u32 unk1) {
    Entity* tmp = gRoomControls.cameraTarget;
    u32 tmp2, tmp3;
    if (tmp) {
        tmp2 = tmp->x.HALF.HI - gRoomControls.roomScrollX;
        tmp3 = tmp->y.HALF.HI - gRoomControls.roomScrollY;
    } else {
        tmp2 = 0x78;
        tmp3 = 0x50;
    }
    sub_08050110(tmp2, tmp3, unk1, gUnk_02033280.unk_08);
}

void sub_0807E858(Entity* unk1, unk_struct* unk2) {
    sub_08050038(unk2->unk_00[1]);
}

void sub_0807E864(Entity* unk1, unk_struct* unk2) {
    gPlayerState.field_0x8b = 3;
    sub_08078B48();
}

void sub_0807E878(Entity* unk1, unk_struct* unk2) {
    gPlayerState.field_0x8b = 1;
}

void sub_0807E888(Entity* unk1, unk_struct* unk2) {
    gPlayerState.field_0x8b = 3;
}

void sub_0807E898(Entity* unk1, unk_struct* unk2) {
    u32 tmp = GetNextScriptCommandWordAfterCommandMetadata(unk2->unk_00);
    gPlayerState.playerAction = tmp;
    gPlayerState.field_0x38 = tmp >> 8;
    gPlayerState.field_0x39 = tmp >> 0x10;
    gPlayerState.field_0x3a = tmp >> 0x18;
}

void sub_0807E8C4(Entity* unk1, unk_struct* unk2) {
    StartPlayerScript(GetNextScriptCommandWordAfterCommandMetadata(unk2->unk_00));
}

void sub_0807E8D4(Entity* unk1, unk_struct* unk2) {
    gPlayerState.field_0x8 = unk2->unk_00[1];
}

void sub_0807E8E4(Entity* unk1, unk_struct* unk2) {
    u32 tmp = (gUnk_08016984 & 0x3FF);
    u32 tmp2;
    gPlayerEntity.animationState = tmp2 = (unk2->unk_00[0] - tmp) << 1;
}

void sub_0807E908(Entity* unk1, unk_struct* unk2) {
    unk1->action = unk2->unk_00[1];
    unk1->previousActionFlag = 0;
}

void sub_0807E914(Entity* unk1, unk_struct* unk2) {
    unk2->unk_04 = GetNextScriptCommandWordAfterCommandMetadata(unk2->unk_00);
}

void sub_0807E924(Entity* unk1, unk_struct* unk2) {
    unk2->unk_04 = unk1->frames.all;
    unk1->frames.all = 0;
}

void sub_0807E930(Entity* unk1, unk_struct* unk2) {
    unk1->field_0x80.HWORD = unk2->unk_00[1];
    InitAnimationForceUpdate(unk1, unk2->unk_00[1]);
}

void sub_0807E944(Entity* unk1, unk_struct* unk2) {
    if (unk1->interactType) {
        unk1->interactType = 0;
        gUnk_02033280.unk_07 |= 1;
    } else {
        gUnk_02033280.unk_06 = 0;
    }
}

void sub_0807E974(Entity* unk1, unk_struct* unk2) {
    switch (unk2->unk_18) {
        default:
            if (!--unk2->unk_19) return;
            break;
        case 0:
            if (!unk1->interactType) break;
            unk1->interactType = 0;
            unk2->unk_18++;
            TextboxNoOverlapFollow(unk2->unk_00[1]);
            break;
        case 1:
            if (gTextBox.doTextBox & 0x7F) break;
            unk2->unk_18 = 2;
            unk2->unk_19 = 0xF;
            break;
    }
    gUnk_02033280.unk_06 = 0;
}

void sub_0807E9D4(Entity* unk1, unk_struct* unk2) {
    sub_08078778(unk1);
}

void sub_0807E9DC(Entity* unk1, unk_struct* unk2) {
    sub_080788E0(unk1);
}

void sub_0807E9E4(Entity* unk1, unk_struct* unk2) {
    sub_08078784(unk1, unk2->unk_00[1]);
}

void sub_0807E9F0(Entity* unk1, unk_struct* unk2) {
    u32 tmp;
    sub_0801E00C();
    tmp = 1;
    switch (gUnk_02022740[0]) {
        case 2:
            gPlayerState.field_0x8b = 3;
            gUnk_02034490 = tmp;
            unk2->unk_14 = tmp;
            break;
        case 1:
            unk2->unk_14 = 0;
            break;
        default:
            goto lbl;
    }
    if (tmp) {
        sub_0807919C();
        gPlayerState.field_0x8b = 1;
    } else {
        lbl:
        gUnk_02033280.unk_06 = 0;
    }
}

void sub_0807EA4C(Entity* unk1, unk_struct* unk2) {
    if (unk1->interactType == 2) {
        sub_0801DFB4(unk1, 0, 0, 0);
        unk1->interactType = 0;
        gUnk_02033280.unk_07 |= 1;
    } else {
        gUnk_02033280.unk_06 = 0;
    }
}

void sub_0807EA88(Entity* unk1, unk_struct* unk2) {
    sub_08078790(unk1, unk2->unk_00[1]);
}

void sub_0807EA94(Entity* unk1, unk_struct* unk2) {
    if (gTextBox.doTextBox & 0x7F) {
        gUnk_02033280.unk_06 = 0;
    }
}

void sub_0807EAB4(Entity* unk1, unk_struct* unk2) {
    TextboxNoOverlapFollow(unk2->unk_00[1]);
}

void sub_0807EAC0(Entity* unk1, unk_struct* unk2) {
    TextboxNoOverlap(unk2->unk_00[1], unk1);
}

void sub_0807EAD0(Entity* unk1, unk_struct* unk2) {
    TextboxNoOverlapFollow(unk2->unk_00[1]);
    gTextBox.textWindowPosX = 1;
    gTextBox.textWindowPosY = unk2->unk_00[2];
}

void sub_0807EAF0(Entity* unk1, unk_struct* unk2) {
    if (gUnk_02033280.unk_06 > unk2->unk_04) {
        u16 * tmp = unk2->unk_00 + unk2->unk_04;
        TextboxNoOverlapFollow(tmp[1]);
    } else {
        TextboxNoOverlapFollow(0);
    }
}

void sub_0807EB18(Entity* unk1, unk_struct* unk2) {
    TextboxNoOverlap(unk2->unk_04, unk1);
}

void sub_0807EB28(Entity* unk1, unk_struct* unk2) {
    sub_08078AA8(unk2->unk_00[1], 0);
}

void sub_0807EB38(Entity* unk1, unk_struct* unk2) {
    unk2->unk_04 = gUnk_02000040.unk_01;
}

void sub_0807EB44(Entity* unk1, unk_struct* unk2) {
    unk1->animationState = unk2->unk_00[1];
}

void sub_0807EB4C(Entity* unk1, unk_struct* unk2) {
    unk1->animationState = sub_0806F5B0(sub_080045B4(unk1, unk2->unk_00[1] + gRoomControls.roomOriginX, unk2->unk_00[2] + gRoomControls.roomOriginY));
}

void sub_0807EB74(Entity* unk1, unk_struct* unk2) {
    unk1->animationState = sub_0806F5B0(GetFacingDirection(unk1, &gPlayerEntity));
}

void sub_0807EB8C(Entity* unk1, unk_struct* unk2) {
    gPlayerEntity.animationState = sub_0806F5B0(GetFacingDirection(&gPlayerEntity, unk1)) & ~1;
}

void sub_0807EBA8(Entity* unk1, unk_struct* unk2) {
    unk1->direction = unk2->unk_00[1];
}

void sub_0807EBB0(Entity* unk1, unk_struct* unk2) {
    unk1->direction = unk2->unk_00[1];
    unk1->animationState = unk1->direction / 4;
}

void sub_0807EBC0(Entity* unk1, unk_struct* unk2) {
    unk1->nonPlanarMovement = unk2->unk_00[1];
}

void sub_0807EBC8(Entity* unk1, unk_struct* unk2) {
    unk1->field_0x20 = GetNextScriptCommandWordAfterCommandMetadata(unk2->unk_00);
}

void sub_0807EBD8(Entity* unk1, unk_struct* unk2) {
    unk1->x.HALF.HI = gRoomControls.roomOriginX + unk2->unk_00[1];
    unk1->y.HALF.HI = gRoomControls.roomOriginY + unk2->unk_00[2];
}

void sub_0807EBF4(Entity* unk1, unk_struct* unk2) {
    unk1->x.HALF.HI += unk2->unk_00[1];
    unk1->y.HALF.HI += unk2->unk_00[2];
}

void sub_0807EC08(Entity* unk1, unk_struct* unk2) {
    CopyPosition(&gPlayerEntity, unk1);
}

void nullsub_509(Entity* unk1, unk_struct* unk2) {}

void sub_0807EC1C(Entity* unk1, unk_struct* unk2) {
    if (!unk2->unk_18) {
        unk2->unk_18 = 1;
        unk2->unk_12 = unk2->unk_00[1];
        unk2->unk_08 |= 2;
    }
    sub_0807EC44(unk1, unk2);
}

void sub_0807EC44(Entity* unk1, unk_struct* unk2) {
    sub_0806F69C(unk1);
    if (--unk2->unk_12) {
        gUnk_02033280.unk_06 = 0;
    }
}

void sub_0807EC64(Entity* unk1, unk_struct* unk2) {
    if (!unk2->unk_18) {
        unk2->unk_18 = 1;
        unk2->unk_12 = unk2->unk_00[1];
        unk1->animationState = 0;
        unk1->direction = 0;
        unk2->unk_08 |= 2;
    }
    sub_0807EC44(unk1, unk2);
}

void sub_0807EC94(Entity* unk1, unk_struct* unk2) {
    if (!unk2->unk_18) {
        unk2->unk_18 = 1;
        unk2->unk_12 = unk2->unk_00[1];
        unk1->animationState = 2;
        unk1->direction = 8;
        unk2->unk_08 |= 2;
    }
    sub_0807EC44(unk1, unk2);
}

void sub_0807ECC4(Entity* unk1, unk_struct* unk2) {
    if (!unk2->unk_18) {
        unk2->unk_18 = 1;
        unk2->unk_12 = unk2->unk_00[1];
        unk1->animationState = 4;
        unk1->direction = 0x10;
        unk2->unk_08 |= 2;
    }
    sub_0807EC44(unk1, unk2);
}

void sub_0807ECF4(Entity* unk1, unk_struct* unk2) {
    if (!unk2->unk_18) {
        unk2->unk_18 = 1;
        unk2->unk_12 = unk2->unk_00[1];
        unk1->animationState = 6;
        unk1->direction = 0x18;
        unk2->unk_08 |= 2;
    }
    sub_0807EC44(unk1, unk2);
}

void sub_0807ED24(Entity* unk1, unk_struct* unk2) {
    if (!unk2->unk_18) {
        s32 tmp, tmp2, tmp3;
        unk2->unk_18 = 1;
        unk2->unk_12 = unk2->unk_00[3];
        tmp = unk2->unk_00[1];
        tmp2 = unk1->x.HALF.HI - gRoomControls.roomOriginX;
        unk2->unk_1C.WORD = ((tmp - tmp2) << 0x10) / unk2->unk_12;
        tmp = unk2->unk_00[2];
        tmp3 = unk1->y.HALF.HI - gRoomControls.roomOriginY;
        unk2->unk_20.WORD = ((tmp - tmp3) << 0x10) / unk2->unk_12;
        unk1->animationState = sub_0806F5B0(sub_080045B4(unk1, unk2->unk_00[1] + gRoomControls.roomOriginX, unk2->unk_00[2] + gRoomControls.roomOriginY));
        unk2->unk_08 |= 2;
    } else {
        if (!--unk2->unk_12) {
            unk1->x.HALF.HI = unk2->unk_00[1] + gRoomControls.roomOriginX;
            unk1->y.HALF.HI = unk2->unk_00[2] + gRoomControls.roomOriginY;
            return;
        }
        unk1->x.WORD += unk2->unk_1C.WORD;
        unk1->y.WORD += unk2->unk_20.WORD;
    }
    gUnk_02033280.unk_06 = 0;
}

void sub_0807EDD4(Entity* unk1, unk_struct* unk2) {
    if (!unk2->unk_18) {
        unk2->unk_18 = 1;
        sub_0807EE04(unk1, unk2);
    }
    sub_0807EE30(unk1, unk2);
    if (!unk2->unk_14) {
        gUnk_02033280.unk_06 = 0;
    }
}

void sub_0807EE04(Entity* unk1, unk_struct* unk2) {
    sub_0807DEDC(unk1, unk2, unk2->unk_00[1] + gRoomControls.roomOriginX, unk2->unk_00[2] + gRoomControls.roomOriginY);
    gUnk_02033280.unk_07 |= 1;
}

void sub_0807EE30(Entity* unk1, unk_struct* unk2) {
    s32 tmp, tmp2;
    if (!--unk2->unk_19) {
        unk2->unk_19 = 8;
        unk1->direction = sub_080045DA(unk2->unk_1C.HALF.HI - unk1->x.HALF.HI, unk2->unk_20.HALF.HI - unk1->y.HALF.HI);
    }
    tmp = unk1->x.HALF.HI - unk2->unk_1C.HALF.HI;
    tmp2 = unk1->y.HALF.HI - unk2->unk_20.HALF.HI;
    sub_0806F62C(unk1, unk1->nonPlanarMovement, unk1->direction);
    tmp *= unk1->x.HALF.HI - unk2->unk_1C.HALF.HI;
    tmp2 *= unk1->y.HALF.HI - unk2->unk_20.HALF.HI;
    if (tmp <= 0 && tmp2 <= 0) {
        unk1->x.HALF.HI = unk2->unk_1C.HALF.HI;
        unk1->y.HALF.HI = unk2->unk_20.HALF.HI;
        unk2->unk_14 = 1;
    } else {
        unk2->unk_14 = 0;
    }
}

void sub_0807EEB4(Entity* unk1, unk_struct* unk2) {
    if (!unk2->unk_18) {
        unk2->unk_18 = 1;
        sub_0807DEDC(unk1, unk2, gPlayerEntity.x.HALF.HI, gPlayerEntity.y.HALF.HI);
    }
    sub_0807EE30(unk1, unk2);
    if (!unk2->unk_14) {
        gUnk_02033280.unk_06 = 0;
    }
}

void sub_0807EEF4(Entity* unk1, unk_struct* unk2) {
    if (!unk2->unk_18) {
        unk2->unk_18 = 1;
        sub_0807DEDC(unk1, unk2, unk1->x.HALF.HI + ((s16)unk2->unk_00[1]), unk1->y.HALF.HI + ((s16)unk2->unk_00[2]));
    }
    sub_0807EE30(unk1, unk2);
    if (!unk2->unk_14) {
        gUnk_02033280.unk_06 = 0;
    }
}

void sub_0807EF3C(Entity* unk1, unk_struct* unk2) {
    if (!unk2->unk_18) {
        unk2->unk_18 = 1;
        unk1->field_0x20 = ((s16) unk2->unk_00[1]) << 8;
        unk2->unk_1C.HALF.LO = unk2->unk_00[2] << 8;
        sub_08003FC4(unk1, (u16)unk2->unk_1C.HALF.LO);
    } else {
        if (!sub_08003FC4(unk1, (u16)unk2->unk_1C.HALF.LO)) return;
    }
    gUnk_02033280.unk_06 = 0;
}

void sub_0807EF80(Entity* unk1, unk_struct* unk2) {
    unk2->unk_08 |= 1 << unk2->unk_00[1];
}

void sub_0807EF90(Entity* unk1, unk_struct* unk2) {
    unk2->unk_08 |= 1 << unk2->unk_00[1];
}

void sub_0807EFA0(Entity* unk1, unk_struct* unk2) {
    PlaySFX(unk2->unk_00[1]);
}

void sub_0807EFAC(Entity* unk1, unk_struct* unk2) {
    if (unk2->unk_00[1] >= 100) {
        PlaySFX(gArea.musicIndex);
    } else {
        PlaySFX(unk2->unk_00[1]);
    }
}

void sub_0807EFD4(Entity* unk1, unk_struct* unk2) {
    PlaySFX(GetNextScriptCommandWordAfterCommandMetadata(unk2->unk_00));
}

void sub_0807EFE4(Entity* unk1, unk_struct* unk2) {
    PlaySFX(0x80100000);
}

void sub_0807EFF4(Entity* unk1, unk_struct* unk2) {
    ModRupees((s16)unk2->unk_00[1]);
}

void sub_0807F004(Entity* unk1, unk_struct* unk2) {
    ModHealth(unk2->unk_00[1]);
}

void sub_0807F010(Entity* unk1, unk_struct* unk2) {
    gUnk_02002A40.stats.maxHealth = min(gUnk_02002A40.stats.maxHealth + 8, 0xA0);
    gUnk_02002A40.stats.health = gUnk_02002A40.stats.maxHealth;
}

void sub_0807F034(Entity* unk1, unk_struct* unk2) {
    u32 tmp = 0;
    if (unk2->unk_00[1] == 0x3F) {
        tmp = unk2->unk_04;
    }
    sub_080A7C18(unk2->unk_00[1], tmp, 0);
}

void sub_0807F050(Entity* unk1, unk_struct* unk2) {
    sub_080A7C18(0x5C, unk2->unk_00[1], 0);
}

void sub_0807F060(Entity* unk1, unk_struct* unk2) {
    unk2->unk_04 = GetInventoryValue(unk2->unk_00[1]);
    unk2->unk_14 = unk2->unk_04 != 0;
}

void sub_0807F078(Entity* unk1, unk_struct* unk2) {
    sub_0807CAA0(unk2->unk_00[1], unk2->unk_00[2]);
}

void sub_0807F088(Entity* unk1, unk_struct* unk2) {
    sub_080A7C18(unk2->unk_00[1], 0, 3);
}

void sub_0807F098(Entity* unk1, unk_struct* unk2) {
    gRoomControls.cameraTarget = unk1;
}

void sub_0807F0A4(Entity* unk1, unk_struct* unk2) {
    gRoomControls.cameraTarget = &gPlayerEntity;
}

void sub_0807F0B4(Entity* unk1, unk_struct* unk2) {
    gRoomControls.unk5 = unk2->unk_00[1] & 7;
}

void sub_0807F0C8(Entity* unk1, unk_struct* unk2) {
    sub_08080964(unk2->unk_00[1], unk2->unk_00[2]);
}
