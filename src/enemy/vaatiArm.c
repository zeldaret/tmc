/**
 * @file vaatiArm.c
 * @ingroup Enemies
 *
 * @brief Vaati Arm enemy
 */
#include "area.h"
#include "enemy.h"
#include "functions.h"
#include "hitbox.h"
#include "object.h"
#include "roomid.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ Entity* unk_68;
    /*0x6c*/ u8 unused1[12];
    /*0x78*/ u8 unk_78;
    /*0x79*/ u8 unk_79;
    /*0x7a*/ u16 unk_7a;
    /*0x7c*/ u8 unk_7c;
    /*0x7d*/ u8 unk_7d;
    /*0x7e*/ u8 unk_7e;
    /*0x7f*/ u8 unk_7f;
} VaatiArmEntity;

typedef struct VaatiArm_HeapStruct1 {
    union SplitHWord unk00;
    u16 unk02;
    union SplitHWord unk04;
    u16 unk06;
    s16 unk08;
    s16 unk0a;
    u8 unk0c;
    u8 unk0d;
    u8 unk0e;
    u8 unk0f;
} VaatiArm_HeapStruct1;

typedef struct VaatiArm_HeapStruct {
    VaatiArmEntity* entities[5];
    Entity* parent;
    VaatiArm_HeapStruct1 s1[5];
} VaatiArm_HeapStruct;

extern void EnemyDetachFX(Entity*);

static u32 sub_080437DC(VaatiArmEntity*);
static bool32 sub_08043C98(VaatiArmEntity*);
static void VaatiArm_OnTick(VaatiArmEntity*);
static void VaatiArm_OnCollision(VaatiArmEntity*);
static void sub_080425B4(VaatiArmEntity*);
static void sub_08042818(VaatiArmEntity*);
static void sub_08042870(VaatiArmEntity*);
static void sub_08042A3C(VaatiArmEntity*);
static void sub_08042C14(VaatiArmEntity*);
static void sub_0804325C(VaatiArmEntity*);
static void sub_08043420(VaatiArmEntity*);
static void sub_08043680(VaatiArmEntity*);
static void VaatiArm_OnGrabbed(VaatiArmEntity*);
static void sub_08042654(VaatiArmEntity*);
static void sub_0804259C(VaatiArmEntity*);
static void sub_08043A10(VaatiArmEntity*);
static void sub_08043ABC(VaatiArmEntity*);
static void sub_08043BC8(VaatiArmEntity*);
static void sub_08043EB8(VaatiArmEntity*);
static void sub_08044000(VaatiArmEntity*);
static void sub_08044078(VaatiArmEntity*);
static void sub_080440CC(VaatiArmEntity*);
static void sub_08043CD4(VaatiArmEntity*);
static void sub_08042894(VaatiArmEntity*);
static void sub_080428AC(VaatiArmEntity*);
static void sub_080428FC(VaatiArmEntity*);
static void sub_08042944(VaatiArmEntity*);
static void sub_08042970(VaatiArmEntity*);
static void sub_080429D4(VaatiArmEntity*);
static void sub_080429FC(VaatiArmEntity*);
static void sub_08043BF0(VaatiArmEntity*);
static void sub_08042A6C(VaatiArmEntity*);
static void sub_08042A88(VaatiArmEntity*);
static void sub_08042AEC(VaatiArmEntity*);
static void sub_08042B20(VaatiArmEntity*);
static void sub_08043C40(VaatiArmEntity*, VaatiArm_HeapStruct1*);
static void sub_08043A78(VaatiArmEntity*);
static void sub_08042C34(VaatiArmEntity*);
static void sub_08042D24(VaatiArmEntity*);
static void sub_08042D6C(VaatiArmEntity*);
static void sub_08042E30(VaatiArmEntity*);
static void sub_08042EF4(VaatiArmEntity*);
static void sub_08042FD8(VaatiArmEntity*);
static void sub_08043048(VaatiArmEntity*);
static void sub_080430D0(VaatiArmEntity*);
static void sub_08043130(VaatiArmEntity*);
static void sub_080431E8(VaatiArmEntity*);
static void sub_08043B9C(VaatiArmEntity*);
static void sub_08043DB0(VaatiArmEntity*);
static void sub_08043B7C(VaatiArmEntity*);
static void sub_08043D08(VaatiArmEntity*);
static void sub_080432A8(VaatiArmEntity*);
static void sub_0804334C(VaatiArmEntity*);
static void sub_08043440(VaatiArmEntity*);
static void sub_08043490(VaatiArmEntity*);
static void sub_08043520(VaatiArmEntity*);
static void sub_0804355C(VaatiArmEntity*);
static void sub_08043580(VaatiArmEntity*);
static void sub_080435F4(VaatiArmEntity*);
static void sub_08043698(VaatiArmEntity*);
static void sub_080436C0(VaatiArmEntity*);
static void sub_08043700(VaatiArmEntity*);
static void sub_08043738(VaatiArmEntity*);
static void sub_08043770(VaatiArmEntity*);

void (*const VaatiArm_Functions[])(VaatiArmEntity*) = {
    VaatiArm_OnTick,
    VaatiArm_OnCollision,
    (void (*)(VaatiArmEntity*))GenericKnockback,
    (void (*)(VaatiArmEntity*))GenericDeath,
    (void (*)(VaatiArmEntity*))GenericConfused,
    VaatiArm_OnGrabbed,
};
void (*const gUnk_080D1248[])(VaatiArmEntity*) = {
    sub_0804259C, sub_08044078, sub_08044078, sub_08044078, sub_080440CC,
};
void (*const gUnk_080D125C[])(VaatiArmEntity*) = {
    sub_080425B4, sub_08042654, sub_08042818, sub_08042870, sub_08042A3C,
    sub_08042C14, sub_0804325C, sub_08043420, sub_08043680,
};

const s16 gUnk_080D1280[] = { 0x140, -0x140 };
const s8 gUnk_080D1284[] = { 0x40, -0x40 };
const u8 gUnk_080D1286[] = { 2, 3, 5, 6, 0xc, 0xb, 9, 8, 0, 0 };

void (*const gUnk_080D1290[])(VaatiArmEntity*) = {
    sub_08042894, sub_080428AC, sub_080428FC, sub_08042944, sub_08042970, sub_080429D4, sub_080429FC,
};

const s16 gUnk_080D12AC[] = { -0x200, 0x200 };
const u8 gUnk_080D12B0[] = { 8, -8 };
const u8 gUnk_080D12B2[] = { -0x50, 0x50 };
const s8 gUnk_080D12B4[] = { -0x20, 0x20 };
const u8 gUnk_080D12B6[] = { 0x70, -0x70 };

void (*const gUnk_080D12B8[])(VaatiArmEntity*) = {
    sub_08042A6C,
    sub_08042A88,
    sub_08042AEC,
    sub_08042B20,
};

const u8 gUnk_080D12C8[] = { 0x60, -0x60 };
const u16 gUnk_080D12CA[] = { 0x280, -0x280 };

void (*const gUnk_080D12D0[])(VaatiArmEntity*) = {
    sub_08042C34, sub_08042D24, sub_08042D6C, sub_08042E30, sub_08042EF4,
    sub_08042FD8, sub_08043048, sub_080430D0, sub_08043130, sub_080431E8,
};

const s8 gUnk_080D12F8[] = { -0x10, 0, 0, -0x10, 0x10, 0, 0, 0x10 };
const s16 gUnk_080D1300[] = { 0xC0, -0xC0 };
const u8 gUnk_080D1304[] = { 0, -1, -2, -3, 0, 1, 2, 3 };
const s16 gUnk_080D130C[] = { 0x5000, -0x5000 };
const s16 gUnk_080D1310[] = { 0xA0, -0xA0 };
void (*const gUnk_080D1314[])(VaatiArmEntity*) = { sub_080432A8, sub_0804334C };
const u8 gUnk_080D131C[] = { 0x70, -0x70 };
void (*const gUnk_080D1320[])(VaatiArmEntity*) = {
    sub_08043440, sub_08043490, sub_08043520, sub_0804355C, sub_08043580, sub_080435F4,
};
const s16 gUnk_080D1338[] = { 0x4000, -0x4000 };
const s16 gUnk_080D133C[] = { 0xA0, -0xA0 };
const u8 gUnk_080D1340[] = { 0, 0x12, 0x12, 0x11, 0x11, 0, 0, 0 };
void (*const gUnk_080D1348[])(VaatiArmEntity*) = {
    sub_08043698, sub_080436C0, sub_08043700, sub_08043738, sub_08043770,
};
const u16 gUnk_080D135C[] = { 0x4000, -0x4000, 0x8000 };
const u8 gUnk_080D1362[] = {
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 3, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2,
    3, 4, 4, 4, 4, 0, 0, 0, 0, 0, 0, 1, 2, 3, 4, 4, 4, 4, 4, 4, 4, 0, 0, 0, 1, 2, 3,
    4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 1, 2, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
};
const u8 gUnk_080D13B2[] = { 0, 12, 9, 6, 3 };
const u8 gUnk_080D13B7[] = {
    1, 1, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 6, 6, 6, 7, 7, 7, 8, 8, 8, 9, 9, 10, 10, 10, 11, 11, 11, 12, 12, 1, 0,
};
const Coords gUnk_080D13D8[] = { { .HALF = { -0x60, 0x80 } }, { .HALF = { 0x60, -0x80 } } };
const u8 gUnk_080D13E0[] = { 0xc, 0xe, 0x10 };
const u8 gUnk_080D13E3[] = { 8, 9, 10, 4, 4, 5 };
const s8 gUnk_080D13E9[] = { -8, 8 };
const ScreenTransitionData gUnk_080D13EC = {
    1, { 0, 0, 0, 0 }, 0x98, 0xb8, 0, AREA_VAATIS_ARMS, ROOM_VAATIS_ARMS_FIRST, 1, 0, 0, 0
};
const u16 gUnk_080D1400[][5] = {
    { 0x8000, 0x7000, 0x6000, 0x5000, 0x4000 },
    { 0x8000, -0x7000, -0x6000, -0x5000, -0x4000 },
};
const u8 gUnk_080D1414[] = { 0, 0xc, 0xe, 0x10, 0x1c };
const u8 gUnk_080D1419[] = { 0, 0xa, 0xa, 0xa, 0x1c };

void VaatiArm(VaatiArmEntity* this) {
    VaatiArm_Functions[GetNextFunction(super)](this);
}

static void VaatiArm_OnTick(VaatiArmEntity* this) {
    gUnk_080D1248[super->type](this);
}

static void VaatiArm_OnCollision(VaatiArmEntity* this) {
    EnemyFunctionHandlerAfterCollision(super, VaatiArm_Functions);
}

static void VaatiArm_OnGrabbed(VaatiArmEntity* this) {
}

static void sub_0804259C(VaatiArmEntity* this) {
    gUnk_080D125C[super->action](this);
}

static void sub_080425B4(VaatiArmEntity* this) {
    if (sub_080437DC(this)) {
        this->unk_7c = 0;
        this->unk_7d = 0;
        if ((gRoomTransition.field_0x38 & 1) != 0) {
            if (gRoomTransition.field_0x3c == super->type2) {
                sub_08043EB8(this);
                sub_08043ABC(this);
                if ((gRoomTransition.field_0x39 >> (super->type2 + 2) & 1U) != 0) {
                    super->action = 7;
                    super->subAction = 4;
                } else {
                    super->action = 8;
                    super->subAction = 0;
                }
            } else {
                sub_08044000(this);
                sub_08043BC8(this);
                sub_08043A10(this);
            }
        } else {
            super->action = 1;
            super->subAction = gRoomTransition.field_0x38 & 1;
            ((VaatiArm_HeapStruct*)super->myHeap)->s1[0].unk08 = gUnk_080D1280[super->type2];
            sub_08042654(this);
        }
    }
}

static void sub_08042654(VaatiArmEntity* this) {
    u32 uVar8;
    int index;
    VaatiArm_HeapStruct1* ptr;

    index = super->type2 * 4;
    ptr = &((VaatiArm_HeapStruct*)super->myHeap)->s1[0];
    switch (super->subAction) {
        case 0:
            super->subAction = 1;
            ptr->unk00.HALF.HI = gUnk_080D1284[super->type2];
            uVar8 = gUnk_080D1286[super->type2 * 4];
            InitAnimationForceUpdate(super, uVar8);
            SoundReq(SFX_15E);
            break;
        case 1:
            ptr->unk00.HWORD += ptr->unk08;
            if ((((VaatiArm_HeapStruct*)super->myHeap)->s1[1].unk0c += 2) < 0xc)
                break;
            super->subAction = 2;
            uVar8 = gUnk_080D1286[index + 1];
            InitAnimationForceUpdate(super, uVar8);
            SoundReq(SFX_15E);
            break;
        case 2:
            ptr->unk00.HWORD += ptr->unk08;
            if ((((VaatiArm_HeapStruct*)super->myHeap)->s1[2].unk0c += 2) < 0xe)
                break;
            super->subAction = 3;
            uVar8 = gUnk_080D1286[index + 2];
            InitAnimationForceUpdate(super, uVar8);
            SoundReq(SFX_15E);
            break;
        case 3:
            ptr->unk00.HWORD += ptr->unk08;
            if ((((VaatiArm_HeapStruct*)super->myHeap)->s1[3].unk0c += 2) < 0x10)
                break;
            super->subAction = 4;
            uVar8 = gUnk_080D1286[index + 3];
            InitAnimationForceUpdate(super, uVar8);
            SoundReq(SFX_15E);
            break;
        case 4:
            ptr->unk00.HWORD += ptr->unk08;
            if ((((VaatiArm_HeapStruct*)super->myHeap)->s1[4].unk0c += 2) < 0x1c)
                break;
            super->subAction = 5;
            super->timer = 90;
            ((VaatiArm_HeapStruct*)super->myHeap)->entities[0]->base.flags |= ENT_COLLIDE;
            ((VaatiArm_HeapStruct*)super->myHeap)->entities[0]->base.spritePriority.b0 = 4;
            ((VaatiArm_HeapStruct*)super->myHeap)->entities[1]->base.flags |= ENT_COLLIDE;
            ((VaatiArm_HeapStruct*)super->myHeap)->entities[1]->base.spritePriority.b0 = 4;
            ((VaatiArm_HeapStruct*)super->myHeap)->entities[2]->base.flags |= ENT_COLLIDE;
            ((VaatiArm_HeapStruct*)super->myHeap)->entities[2]->base.spritePriority.b0 = 4;
            ((VaatiArm_HeapStruct*)super->myHeap)->entities[3]->base.flags |= ENT_COLLIDE;
            ((VaatiArm_HeapStruct*)super->myHeap)->entities[3]->base.spritePriority.b0 = 4;
            ((VaatiArm_HeapStruct*)super->myHeap)->entities[4]->base.flags |= ENT_COLLIDE;
            ((VaatiArm_HeapStruct*)super->myHeap)->entities[4]->base.spritePriority.b0 = 4;
            InitAnimationForceUpdate(super, 7);
            SoundReq(SFX_15E);
            break;
        default:
            if (--super->timer == 0) {
                sub_08043BC8(this);
            }
            break;
    }
    sub_08043A10(this);
}

static void sub_08042818(VaatiArmEntity* this) {
    VaatiArm_HeapStruct1* ptr;

    sub_08043CD4(this);
    ptr = &((VaatiArm_HeapStruct*)super->myHeap)->s1[0];
    ptr->unk00.HWORD += ptr->unk08;
    if (--ptr->unk0d == 0) {
        ptr->unk0d = 0x78;
        ptr->unk08 *= -1;
    }
    ptr->unk04.HWORD += ptr->unk0a;
    if (--ptr->unk0e == 0) {
        ptr->unk0e = 0x50;
        ptr->unk0a *= -1;
    }
    sub_08043A10(this);
}

static void sub_08042870(VaatiArmEntity* this) {
    sub_08043CD4(this);
    gUnk_080D1290[super->subAction](this);
    sub_08043A10(this);
}

static void sub_08042894(VaatiArmEntity* this) {
    super->subAction = 1;
    ((VaatiArm_HeapStruct*)super->myHeap)->s1[0].unk08 = gUnk_080D12AC[super->type2];
}

static void sub_080428AC(VaatiArmEntity* this) {
    u8 bVar1;
    VaatiArm_HeapStruct1* pVVar3;

    pVVar3 = &((VaatiArm_HeapStruct*)super->myHeap)->s1[0];
    bVar1 = pVVar3->unk04.HALF.HI;
    if (bVar1 != 0x40) {
        if (bVar1 >= 0x41) {
            pVVar3->unk04.HWORD -= 0x80;
        } else {
            pVVar3->unk04.HWORD += 0x80;
        }
    }
    if ((u32)(pVVar3->unk00.HALF.HI - gUnk_080D12B0[super->type2] + 1) > 2) {
        pVVar3->unk00.HWORD += pVVar3->unk08;
    } else {
        super->subAction = 2;
        super->timer = 30;
    }
    sub_08043BF0(this);
}

static void sub_080428FC(VaatiArmEntity* this) {
    u32 uVar2;
    VaatiArm_HeapStruct1* ptr;

    if (--super->timer == 0) {
        super->subAction = 3;
        ptr = &((VaatiArm_HeapStruct*)super->myHeap)->s1[0];
        ptr->unk08 *= -3;
        SoundReq(SFX_153);
        uVar2 = 0;
        do {
            ((VaatiArm_HeapStruct*)super->myHeap)->entities[uVar2]->base.hitType = 0x3b;
            uVar2 = uVar2 + 1;
        } while (uVar2 < 5);
    }
}

static void sub_08042944(VaatiArmEntity* this) {
    VaatiArm_HeapStruct1* pVVar1;

    pVVar1 = &((VaatiArm_HeapStruct*)super->myHeap)->s1[0];
    if ((u32)(pVVar1->unk00.HALF.HI - 0x7c) >= 9) {
        pVVar1->unk00.HWORD += pVVar1->unk08;
    } else {
        super->subAction = 4;
        super->speed = pVVar1->unk08;
    }
    sub_08043BF0(this);
}

static void sub_08042970(VaatiArmEntity* this) {
    u32 uVar2;
    VaatiArm_HeapStruct1* pVVar3;

    pVVar3 = &((VaatiArm_HeapStruct*)super->myHeap)->s1[0];
    if ((u32)(pVVar3->unk00.HALF.HI - gUnk_080D12B2[super->type2] + 2) >= 5) {
        pVVar3->unk08 += gUnk_080D12B4[super->type2];
        pVVar3->unk00.HWORD += pVVar3->unk08;
    } else {
        super->subAction = 5;
        super->timer = 60;
        uVar2 = 0;
        do {
            ((VaatiArm_HeapStruct*)super->myHeap)->entities[uVar2]->base.hitType = 0x39;
            uVar2 = uVar2 + 1;
        } while (uVar2 < 5);
    }
    sub_08043BF0(this);
}

static void sub_080429D4(VaatiArmEntity* this) {
    s16 sVar2;
    VaatiArm_HeapStruct1* pVVar3;

    if (--super->timer == 0) {
        super->subAction = 6;
        pVVar3 = &((VaatiArm_HeapStruct*)super->myHeap)->s1[0];
        sVar2 = -super->speed / 6;
        pVVar3->unk08 = sVar2;
    }
}

static void sub_080429FC(VaatiArmEntity* this) {
    VaatiArm_HeapStruct1* pVVar1;

    pVVar1 = &((VaatiArm_HeapStruct*)super->myHeap)->s1[0];
    if ((u32)(pVVar1->unk00.HALF.HI - gUnk_080D12B6[super->type2]) + 1 >= 3) {
        pVVar1->unk00.HWORD += pVVar1->unk08;
        sub_08043BF0(this);
    } else {
        sub_08043BC8(this);
        InitAnimationForceUpdate(super, 7);
    }
}

static void sub_08042A3C(VaatiArmEntity* this) {
    Entity* entity;

    gUnk_080D12B8[super->subAction](this);
    sub_08043A10(this);
    entity = &((VaatiArm_HeapStruct*)super->myHeap)->entities[4]->base;
    entity->z.HALF.HI += this->unk_78;
}

static void sub_08042A6C(VaatiArmEntity* this) {
    super->subAction = 1;
    this->unk_78 = 0;
    this->unk_7e = 1;
    ((VaatiArm_HeapStruct*)super->myHeap)->s1[0].unk0a = 0x200;
}

static void sub_08042A88(VaatiArmEntity* this) {
    VaatiArm_HeapStruct1* pVVar4;

    pVVar4 = &((VaatiArm_HeapStruct*)super->myHeap)->s1[0];
    if (gUnk_080D12C8[super->type2] != pVVar4->unk00.HALF.HI) {
        if (gUnk_080D12C8[super->type2] < pVVar4->unk00.HALF.HI) {
            pVVar4->unk00.HWORD -= 0x100;
        } else {
            pVVar4->unk00.HWORD += 0x100;
        }
    }
    if (pVVar4->unk0a < pVVar4->unk04.HWORD) {
        pVVar4->unk04.HWORD -= pVVar4->unk0a;
    } else {
        pVVar4->unk04.HWORD = 0;
        pVVar4->unk08 = gUnk_080D12CA[super->type2];
        super->subAction = 2;
        super->timer = 30;
    }
}

static void sub_08042AEC(VaatiArmEntity* this) {
    if (--super->timer == 0) {
        super->subAction = 3;
        super->timer = 4;
        super->hitType = 0x3d;
        InitAnimationForceUpdate(super, 0xe);
        ((VaatiArm_HeapStruct*)super->myHeap)->entities[1]->base.hitType = 0x3d;
    }
}

static void sub_08042B20(VaatiArmEntity* this) {
    VaatiArm_HeapStruct1* ptr;
    Entity* object;
    Entity* entity;
    u32 i;

    ptr = &((VaatiArm_HeapStruct*)super->myHeap)->s1[0];
    if (ptr->unk04.HALF.HI < 0x7b) {
        ptr->unk04.HWORD += 0x500;
    } else {
        ptr->unk04.HALF.HI = 0x80;
    }
    if (0x30 < ptr->unk04.HALF.HI) {
        ptr->unk00.HWORD += ptr->unk08;
    }
    if (((VaatiArm_HeapStruct*)super->myHeap)->entities[3]->base.spriteSettings.draw) {
        sub_08043C40(this, ptr);
        for (i = 0; i < 4; i++) {
            entity = &((VaatiArm_HeapStruct*)super->myHeap)->entities[i]->base;
            if ((-0xa <= entity->z.HALF.HI) && ((entity->spriteSettings.draw) == 1)) {
                if (i == 0) {
                    object = CreateObject(VAATI3_ARM, 0, 0);
                    if (object != NULL) {
                        object->parent = &((VaatiArm_HeapStruct*)super->myHeap)->entities[4]->base;
                    }
                    *(Entity**)&((VaatiArm_HeapStruct*)super->myHeap)->entities[4]->unk_68 = object;
                    object = CreateObject(VAATI3_ARM, 2, 0);
                    if (object != NULL) {
                        CopyPosition(&((VaatiArm_HeapStruct*)super->myHeap)->entities[4]->base, object);
                    }
                }
                entity->flags &= ~ENT_COLLIDE;
                entity->spriteSettings.draw = 0;
                SoundReq(SFX_161);
            }
        }
    } else {
        this->unk_78 += 2;
        if (--super->timer == 0) {
            super->action = 5;
            super->subAction = 0;
            super->timer = 30;
            super->hitType = 0x39;
            ((VaatiArm_HeapStruct*)super->myHeap)->entities[1]->base.hitType = 0x39;
        }
    }
}

static void sub_08042C14(VaatiArmEntity* this) {
    gUnk_080D12D0[super->subAction](this);
    sub_08043A78(this);
}

static void sub_08042C34(VaatiArmEntity* this) {
    u32 random;
    int y;
    u32 i;
    Entity* entity;
    int x;
    const s8* temp;

    VaatiArm_HeapStruct1* ptr;

    if (--super->timer == 0) {
        super->timer = 60;
        super->subtimer = 3;
        super->subAction = 1;
        random = Random() & 6;
        temp = &gUnk_080D12F8[random];
        x = gPlayerEntity.base.x.HALF.HI + *temp;
        y = gPlayerEntity.base.y.HALF.HI + *(temp + 1);
        if ((gRoomControls.origin_x + 0x20) > x) {
            x = gRoomControls.origin_x + 0x20;
        }
        if (gRoomControls.origin_x + gRoomControls.width + -0x20 < x) {
            x = gRoomControls.origin_x + gRoomControls.width + -0x20;
        }
        if ((gRoomControls.origin_y + 0x20) > y) {
            y = gRoomControls.origin_y + 0x20;
        }
#if defined EU || defined JP || defined DEMO_JP
        if (gRoomControls.origin_y + gRoomControls.height + -0x20 < y) {
            y = gRoomControls.origin_y + gRoomControls.height + -0x20;
        }
#else
        if (gRoomControls.origin_y + gRoomControls.height + -0x40 < y) {
            y = gRoomControls.origin_y + gRoomControls.height + -0x40;
        }
#endif
        if (((u32)((x - gRoomControls.origin_x) - 0x90) < 0x41) && ((u32)((y - gRoomControls.origin_y) - 8) < 0x41)) {
            x = gRoomControls.origin_x + 0xb0;
            y = gRoomControls.origin_y + 0x40;
        }
        for (i = 0; i < 4; i++) {
            entity = &((VaatiArm_HeapStruct*)super->myHeap)->entities[i]->base;
            entity->x.HALF.HI = x;
            entity->y.HALF.HI = y;
            entity->z.HALF.HI = 0x32;
            entity->hitType = 0x39;
            ptr = &((VaatiArm_HeapStruct*)super->myHeap)->s1[i];
            ptr->unk00.HWORD = 0x80;
            ptr->unk04.HWORD = 0;
            ptr->unk0c = gUnk_080D1419[i];
            if (i != 0) {
                InitializeAnimation(entity, 0x12);
            }
        }
    }
}

static void sub_08042D24(VaatiArmEntity* this) {
    Entity* entity;

    if (--super->timer == 0) {
        super->subAction = 2;
        super->hitType = 0x3d;
        ((VaatiArm_HeapStruct*)super->myHeap)->entities[1]->base.hitType = 0x3d;
        entity = CreateObject(VAATI3_ARM, 1, 0);
        if (entity != NULL) {
            entity->parent = &((VaatiArm_HeapStruct*)super->myHeap)->entities[3]->base;
        }
        *(Entity**)&this->unk_68 = entity;
        InitAnimationForceUpdate(super, 0xd);
    }
}

static void sub_08042D6C(VaatiArmEntity* this) {
    Entity* object;
    Entity* entity;
    u32 i;

    for (i = 0; i < 4; i++) {
        entity = &((VaatiArm_HeapStruct*)super->myHeap)->entities[i]->base;
        if (entity->z.HALF.HI < 4) {
            if (i != 2) {
                entity->flags = entity->flags | ENT_COLLIDE;
            }
            if ((entity->spriteSettings.draw == 0u) && (object = CreateObject(VAATI3_ARM, 2, 0), object != NULL)) {
                CopyPosition(entity, object);
                SoundReq(SFX_166);
            }
            entity->spriteSettings.draw = 1;
        }
    }
    entity = &((VaatiArm_HeapStruct*)super->myHeap)->entities[3]->base;
    if (entity->z.HALF.HI <= -3) {
        entity->z.HALF.HI = -5;
        ((VaatiArm_HeapStruct*)super->myHeap)->s1[0].unk08 = gUnk_080D1300[super->type2];
        ((VaatiArm_HeapStruct*)super->myHeap)->s1[0].unk0a = 0xc0;
        super->subAction = 3;
        super->timer = 30;
        super->hitType = 0x39;
        this->unk_7f = 0x2d;
        InitAnimationForceUpdate(super, 0);
        ((VaatiArm_HeapStruct*)super->myHeap)->entities[1]->base.hitType = 0x39;
    } else {
        entity->z.HALF.HI -= 2;
    }
}

static void sub_08042E30(VaatiArmEntity* this) {
    short sVar3;
    u32 uVar6;
    VaatiArm_HeapStruct1* pVVar9;

    if (this->unk_7f == 0) {
        if (sub_08043C98(this)) {
            return;
        }
    } else {
        this->unk_7f--;
    }
    pVVar9 = &((VaatiArm_HeapStruct*)super->myHeap)->s1[0];
    if (--super->timer == 0) {
        super->subAction = 4;
        super->timer = (Random() & 0x38) + 40;
        super->speed = 0x200;
        super->direction = pVVar9->unk00.HALF.HI >> 3;
        uVar6 = CalculateDirectionTo(super->x.HALF.HI, super->y.HALF.HI, gRoomControls.origin_x + 0x110,
                                     gRoomControls.origin_y + 0x60);
        this->unk_79 = (gUnk_080D1304[Random() & 7] + uVar6) & 0x1f;
    }
    pVVar9->unk00.HWORD += pVVar9->unk08;
    pVVar9->unk04.HWORD += pVVar9->unk0a;
    if (pVVar9->unk0a >= 1) {
        if (pVVar9->unk04.HALF.HI >= 0x19) {
            sVar3 = pVVar9->unk0a;
            pVVar9->unk0a = -sVar3;
        }
    } else {
        if (3 >= pVVar9->unk04.HALF.HI) {
            sVar3 = pVVar9->unk0a;
            pVVar9->unk0a = -sVar3;
        }
    }
    UpdateAnimationSingleFrame(super);
}

static void sub_08042EF4(VaatiArmEntity* this) {
    VaatiArm_HeapStruct1* ptr;
    Entity* entity;
    u32 temp;
    u32 x, y;

    UpdateAnimationSingleFrame(super);
    if (!sub_08043C98(this)) {
        if (--super->timer == 0) {
            if (EntityWithinDistance(super, gPlayerEntity.base.x.HALF.HI, gPlayerEntity.base.y.HALF.HI, 0x50)) {
                super->subAction = 6;
                super->timer = 40;
            } else {
                super->subAction = 5;
                InitAnimationForceUpdate(super, 0xf);
                SoundReq(SFX_19B);
            }
        }
        ptr = &((VaatiArm_HeapStruct*)super->myHeap)->s1[0];
        if (ptr->unk04.HALF.HI < 0x20) {
            ptr->unk04.HWORD += 0x100;
        }
        x = super->parent->x.HALF.HI;
        y = super->parent->y.HALF.HI - 0x10;
        if (EntityWithinDistance(super, x, y, 0x30)) {
            temp = CalculateDirectionTo(super->x.HALF.HI, super->y.HALF.HI, x, y);
            if ((this->unk_79 - temp) + 4 < 9) {
                this->unk_79 = temp ^ 0x10;
            }
        }
        if (this->unk_79 != super->direction) {
            sub_08004596(super, this->unk_79);
            ptr->unk00.HALF.HI = super->direction << 3;
        }
        entity = &((VaatiArm_HeapStruct*)super->myHeap)->entities[3]->base;
        entity->direction = super->direction;
        ProcessMovement0(entity);
    }
}

static void sub_08042FD8(VaatiArmEntity* this) {
    Entity* entity;

    UpdateAnimationSingleFrame(super);
    if (!sub_08043C98(this)) {
        if ((super->frame & 1) != 0) {
            entity = CreateProjectile(V3_HAND_PROJECTILE);
            if (entity != NULL) {
                CopyPosition(super, entity);
                entity->z.HALF.HI -= 0x18;
                super->frame = 0;
            }
        } else {
            if (super->frame & ANIM_DONE) {
                if (--super->subtimer == 0) {
                    super->subAction = 8;
                    super->timer = 60;
                } else {
                    super->subAction = 3;
                    super->timer = 60;
                    InitAnimationForceUpdate(super, 0);
                }
            }
        }
    }
}

static void sub_08043048(VaatiArmEntity* this) {
    VaatiArm_HeapStruct1* ptr;
    u32 i;

    if (!sub_08043C98(this)) {
        ptr = ((VaatiArm_HeapStruct*)super->myHeap)->s1;
        if (ptr[0].unk04.HALF.HI < 0x50) {
            ptr[0].unk04.HWORD += 0x200;
            if (0x4f < ptr[0].unk04.HALF.HI) {
                for (i = 0; i < 5; i++) {
                    ((VaatiArm_HeapStruct*)super->myHeap)->entities[i]->base.hitType = 0x3b;
                }
                SoundReq(SFX_153);
            }
        } else {
            ptr[0].unk00.HWORD += ptr[0].unk08 * 8;
            if (--super->timer == 0) {
                super->subAction = 7;
                for (i = 0; i < 5; i++) {
                    ((VaatiArm_HeapStruct*)super->myHeap)->entities[i]->base.hitType = 0x39;
                }
            }
        }
        sub_08043B9C(this);
    }
}

static void sub_080430D0(VaatiArmEntity* this) {
    VaatiArm_HeapStruct1* ptr;

    if (!sub_08043C98(this)) {
        ptr = ((VaatiArm_HeapStruct*)super->myHeap)->s1;
        ptr[0].unk00.HWORD += ptr[0].unk08;
        ptr[0].unk04.HWORD -= 0x100;
        if (ptr[0].unk04.HALF.HI < 0x18) {
            if (--super->subtimer == 0) {
                super->subAction = 8;
                super->timer = 60;
            } else {
                super->subAction = 3;
                super->timer = 60;
                ptr[0].unk0a = -0xc0;
                InitAnimationForceUpdate(super, 0);
            }
        }
    }
}

static void sub_08043130(VaatiArmEntity* this) {
    VaatiArm_HeapStruct1* ptr;
    Entity* entity;
    u32 i;

    ptr = ((VaatiArm_HeapStruct*)super->myHeap)->s1;
    if (ptr[0].unk04.HALF.HI != 0) {
        if (!sub_08043C98(this)) {
            if (--ptr[0].unk04.HALF.HI == 0) {
                InitAnimationForceUpdate(super, 0xd);
            }
        }
    } else {
        if (super->timer != 0) {
            super->timer--;
            for (i = 1; i < 4; i++) {
                ptr = &((VaatiArm_HeapStruct*)super->myHeap)->s1[i];
                if (ptr->unk04.HALF.HI != 0) {
                    ptr->unk04.HALF.HI--;
                }
            }
        } else {
            ((VaatiArm_HeapStruct*)super->myHeap)->entities[3]->base.z.HALF.HI += 3;
            for (i = 0; i < 4; i++) {
                entity = &((VaatiArm_HeapStruct*)super->myHeap)->entities[i]->base;
                if (entity->z.HALF.HI > -4) {
                    entity->flags = entity->flags & ~ENT_COLLIDE;
                    if (entity->spriteSettings.draw == 1) {
                        SoundReq(SFX_161);
                    }
                    entity->spriteSettings.draw = 0;
                }
            }
            if (super->spriteSettings.draw == 0) {
                super->subAction = 9;
                super->timer = 60;
                EnemyDetachFX(super);
            }
        }
    }
}

static void sub_080431E8(VaatiArmEntity* this) {
    u32 i;
    VaatiArm_HeapStruct1* ptr;

    if (--super->timer == 0) {
        super->action = 6;
        super->subAction = 0;
        for (i = 0; i < 4; i++) {
            ptr = &((VaatiArm_HeapStruct*)super->myHeap)->s1[i];
            ptr->unk00.HWORD = gUnk_080D130C[super->type2];
            ptr->unk04.HWORD = 0x8000;
            ptr->unk0c = gUnk_080D1414[i];
            if (i == 3) {
                InitializeAnimation(&((VaatiArm_HeapStruct*)super->myHeap)->entities[3]->base, 0x11);
            }
        }
        ((VaatiArm_HeapStruct*)super->myHeap)->s1[0].unk08 = gUnk_080D1310[super->type2];
        InitAnimationForceUpdate(super, 0xe);
    }
}

static void sub_0804325C(VaatiArmEntity* this) {
    Entity* entity;

    sub_08043CD4(this);
    gUnk_080D1314[super->subAction](this);
    sub_08043A10(this);
    if (this->unk_78 != 0) {
        if (this->unk_78 >= 3) {
            this->unk_78 -= 2;
            entity = &((VaatiArm_HeapStruct*)super->myHeap)->entities[4]->base;
            entity->z.HALF.HI += this->unk_78;
        } else {
            this->unk_78 = 0;
        }
    }
}

void sub_080432A8(VaatiArmEntity* this) {
    s32 iVar3;
    s32 i;
    VaatiArm_HeapStruct1* hs;
    Entity* entity;
    i = 3;
    iVar3 = 0;

    for (; i >= 0; i--) {
        hs = &((VaatiArm_HeapStruct*)super->myHeap)->s1[i];
        if (hs->unk0c > 2) {
            hs->unk0c--;
            if (++iVar3 > 1) {
                break;
            }
        }
    }

    hs = &((VaatiArm_HeapStruct*)super->myHeap)->s1[0];
    hs->unk04.HALF.HI -= 2;

    for (i = 0; i < 4; i++) {
        entity = &((VaatiArm_HeapStruct*)super->myHeap)->entities[i]->base;
        if (entity->z.HALF.HI < 4) {
            COLLISION_ON(entity);
            entity->spriteSettings.draw = 1;
        }
    }

    if ((((VaatiArm_HeapStruct*)super->myHeap)->entities[0]->base.spriteSettings.draw == 1) &&
        (((VaatiArm_HeapStruct*)super->myHeap)->s1[1].unk0c < 3)) {
        super->subAction = 1;
        super->timer = 0x1e;
        ((VaatiArm_HeapStruct*)super->myHeap)->s1[0].unk04.HWORD = 0x4000;
        EnemyDetachFX(&((VaatiArm_HeapStruct*)super->myHeap)->entities[4]->base);
    }
}

void sub_0804334C(VaatiArmEntity* this) {
    u32 bVar1;
    Entity* entity;
    u32 i;
    VaatiArm_HeapStruct1* ptr;

    if (super->timer != 0) {
        if (--super->timer != 0) {
            return;
        }
        for (i = 0; i < 5; i++) {
            entity = &((VaatiArm_HeapStruct*)super->myHeap)->entities[i]->base;
            COLLISION_ON(entity);
            entity->spriteSettings.draw = 1;
        }
    }
    ptr = &((VaatiArm_HeapStruct*)super->myHeap)->s1[0];
    if (gUnk_080D131C[super->type2] - ptr->unk00.HALF.HI + 1 > 2u) {
        ptr->unk00.HWORD += ptr->unk08;
        bVar1 = 0;
    } else {
        bVar1 = 1;
    }
    sub_08043B9C(this);
    for (i = 0; i < 5; i++) {
        ptr = &(((VaatiArm_HeapStruct*)super->myHeap)->s1)[i];

        if (gUnk_080D1414[i] > ptr->unk0c) {
            if (gUnk_080D1414[i] == ++ptr->unk0c) {
                SoundReq(SFX_15E);
            }
            return;
        }
        if ((bVar1) && (i == 4)) {
            sub_08043BC8(this);
            InitAnimationForceUpdate(super, 7);
            if (this->unk_7e != 0) {
                this->unk_7e = 0;
                ((VaatiArm_HeapStruct*)super->myHeap)->parent->subAction = 2;
            }
        }
    }
}

static void sub_08043420(VaatiArmEntity* this) {
    gUnk_080D1320[super->subAction](this);
    sub_08043ABC(this);
}

static void sub_08043440(VaatiArmEntity* this) {
    u32 i;
    int iVar4;
    u8* ptr;
    int offset;
    int zero;

    i = 0;
    iVar4 = 0;
    zero = 0;
    offset = 0x18;
    do {
        ptr = ((u8*)super->myHeap) + offset;
        if (ptr[5] >= 0x11) {
            ptr[5] -= 0x10;
            iVar4++;
        } else {
            ((u16*)ptr)[2] = zero;
        }
        offset += 0x10;
        i++;
    } while (i < 5);
    if (iVar4 == 0) {
        i = 0;
        do {
            ((VaatiArm_HeapStruct*)super->myHeap)->s1[i].unk00.HWORD = 0x8000;
            i++;
        } while (i < 5);
        super->subAction = 1;
        InitAnimationForceUpdate(super, 0x10);
    }
}

static void sub_08043490(VaatiArmEntity* this) {
    Entity* entity;
    Entity* entity2;
    Entity* entity3;

    entity = &((VaatiArm_HeapStruct*)super->myHeap)->entities[4]->base;
    if (entity->z.HALF.HI < -4) {
        entity->zVelocity = Q_16_16(1.5);
        super->subAction = 2;
        this->unk_7e = 0;
        ((VaatiArm_HeapStruct*)super->myHeap)->parent->subAction = 2;
    } else {
        entity->z.HALF.HI -= 2;
        if (entity->z.HALF.HI < 0) {
            entity->flags = entity->flags | ENT_COLLIDE;
            entity->spriteSettings.draw = 1;
            entity->collisionFlags = entity->collisionFlags & 0xef;
            entity->hitType = 0x3a;
            entity->hitbox = (Hitbox*)&gUnk_080FD450;
            entity2 = &((VaatiArm_HeapStruct*)super->myHeap)->entities[2]->base;
            entity2->flags = entity2->flags | ENT_COLLIDE;
            entity3 = &((VaatiArm_HeapStruct*)super->myHeap)->entities[3]->base;
            entity3->flags = entity3->flags & ~ENT_COLLIDE;
        }
    }
    UpdateAnimationSingleFrame(super);
}

static void sub_08043520(VaatiArmEntity* this) {
    Entity* entity;

    entity = &((VaatiArm_HeapStruct*)super->myHeap)->entities[4]->base;
    GravityUpdate(entity, Q_8_8(26.0));
    if ((entity->zVelocity < 0) && (-6 < entity->z.HALF.HI)) {
        entity->z.HALF.HI = -6;
        super->subAction = 3;
        this->unk_7a = 900;
    }
}

static void sub_0804355C(VaatiArmEntity* this) {
    sub_08043DB0(this);
    if (--this->unk_7a == 0) {
        super->subAction = 4;
    }
    UpdateAnimationSingleFrame(super);
}

static void sub_08043580(VaatiArmEntity* this) {
    Entity* entity;
    u32 i;

    ((VaatiArm_HeapStruct*)super->myHeap)->entities[4]->base.z.HALF.HI += 3;
    for (i = 0; i < 5; i++) {
        entity = &((VaatiArm_HeapStruct*)super->myHeap)->entities[i]->base;
        if (-4 < entity->z.HALF.HI) {
            entity->flags = entity->flags & ~ENT_COLLIDE;
            entity->spriteSettings.draw = 0;
        }
    }
    if ((super->spriteSettings.draw & 3) == 0) {
        super->subAction = 5;
        super->timer = 60;
        entity = &((VaatiArm_HeapStruct*)super->myHeap)->entities[4]->base;
        entity->collisionFlags = entity->collisionFlags | 0x10;
        entity->hitType = 0x39;
        entity->hitbox = (Hitbox*)&gUnk_080FD538;
        EnemyDetachFX(super);
    }
}

static void sub_080435F4(VaatiArmEntity* this) {
    Entity* entity;
    u32 i;
    VaatiArm_HeapStruct1* ptr;

    if (--super->timer == 0) {
        super->action = 6;
        super->subAction = 1;
        super->timer = 1;
        for (i = 0; i < 5; i++) {
            ptr = &((VaatiArm_HeapStruct*)super->myHeap)->s1[i];
            ptr->unk00.HWORD = gUnk_080D1338[super->type2];
            ptr->unk04.HWORD = 0x4000;
            ptr->unk0c = 0;
            ptr->unk08 = gUnk_080D133C[super->type2];
            entity = &((VaatiArm_HeapStruct*)super->myHeap)->entities[i]->base;
            if (i == 0) {
                sub_08043B9C((VaatiArmEntity*)entity);
            } else {
                InitializeAnimation(entity, gUnk_080D1340[i]);
            }
        }
    }
}

static void sub_08043680(VaatiArmEntity* this) {
    gUnk_080D1348[super->subAction](this);
}

static void sub_08043698(VaatiArmEntity* this) {
    Entity* entity;
    u32 i;

    super->subAction = 1;
    super->timer = 60;
    for (i = 0; i < 5; i++) {
        entity = &((VaatiArm_HeapStruct*)super->myHeap)->entities[i]->base;
        entity->flags = entity->flags & ~ENT_COLLIDE;
    }
}

static inline void deleteThing(VaatiArmEntity* this, const u32 index) {
    if (--super->timer == 0) {
        super->timer = 20;
        super->subAction = index + 1;
        if (index == 1) {
            super->spriteSettings.draw = 0;
        }
        CreateFx(&((VaatiArm_HeapStruct*)super->myHeap)->entities[index]->base, FX_GIANT_EXPLOSION4, 0);
        ((VaatiArm_HeapStruct*)super->myHeap)->entities[index]->base.myHeap = NULL;
        DeleteEntity(&((VaatiArm_HeapStruct*)super->myHeap)->entities[index]->base);
    }
}

static void sub_080436C0(VaatiArmEntity* this) {
    deleteThing(this, 1);
}

static void sub_08043700(VaatiArmEntity* this) {
    deleteThing(this, 2);
}

static void sub_08043738(VaatiArmEntity* this) {
    deleteThing(this, 3);
}

static void sub_08043770(VaatiArmEntity* this) {
    Entity* entity;

    if (--super->timer == 0) {
        entity = ((VaatiArm_HeapStruct*)super->myHeap)->parent;
        if ((gRoomTransition.field_0x39 & 0xc) == 0) {
            entity->subAction = 2;
        }
        if (super->type2 == 0) {
            ((VaatiArm_HeapStruct*)entity->myHeap)->parent = NULL;
            gRoomTransition.field_0x39 &= 0xfe;
        } else {
            *(u32*)((VaatiArm_HeapStruct*)entity->myHeap)->s1 = 0;
            gRoomTransition.field_0x39 &= 0xfd;
        }
        ((VaatiArm_HeapStruct*)super->myHeap)->entities[4]->base.myHeap = NULL;
        ((VaatiArm_HeapStruct*)super->myHeap)->entities[4]->base.health = 0;
        (*(Entity**)&this->unk_68)->parent = &((VaatiArm_HeapStruct*)super->myHeap)->entities[4]->base;
        DeleteThisEntity();
    }
}

static u32 sub_080437DC(VaatiArmEntity* this) {
    u16 temp;
    VaatiArm_HeapStruct* heapStruct;
    Entity* entity;

    if (gEntCount >= 0x44)
        return 0;
    heapStruct = zMalloc(sizeof(VaatiArm_HeapStruct));
    if (heapStruct == NULL)
        return 0;
    super->spritePriority.b0 = 5;
    super->collisionFlags = super->collisionFlags | 0x10;
    super->myHeap = (u32*)heapStruct;
    heapStruct->entities[0] = this;
    entity = CreateEnemy(VAATI_ARM, 1);
    entity->spritePriority.b0 = 5;
    entity->collisionFlags = entity->collisionFlags | 0x10;
    entity->myHeap = (u32*)heapStruct;
    heapStruct->entities[1] = (VaatiArmEntity*)entity;
    CopyPosition(super, entity);
    entity = CreateEnemy(VAATI_ARM, 2);
    entity->spritePriority.b0 = 5;
    entity->collisionFlags = entity->collisionFlags | 0x10;
    entity->myHeap = (u32*)heapStruct;
    heapStruct->entities[2] = (VaatiArmEntity*)entity;
    CopyPosition(super, entity);
    entity = CreateEnemy(VAATI_ARM, 3);
    entity->spritePriority.b0 = 5;
    entity->collisionFlags = entity->collisionFlags | 0x10;
    entity->myHeap = (u32*)heapStruct;
    heapStruct->entities[3] = (VaatiArmEntity*)entity;
    CopyPosition(super, entity);
    entity = CreateEnemy(VAATI_ARM, 4);
    entity->spritePriority.b0 = 5;
    entity->collisionFlags = entity->collisionFlags | 0x10;
    entity->myHeap = (u32*)heapStruct;
    heapStruct->entities[4] = (VaatiArmEntity*)entity;
    CopyPosition(super, entity);
    heapStruct->parent = super->parent;
    temp = gUnk_080D135C[super->type2];
    heapStruct->s1[0].unk00.HWORD = temp;
    heapStruct->s1[0].unk04.HWORD = 0x4000;
    heapStruct->s1[0].unk0c = 0;
    heapStruct->s1[1].unk00.HWORD = temp;
    heapStruct->s1[1].unk04.HWORD = 0x4000;
    heapStruct->s1[1].unk0c = 0;
    heapStruct->s1[2].unk00.HWORD = temp;
    heapStruct->s1[2].unk04.HWORD = 0x4000;
    heapStruct->s1[2].unk0c = 0;
    heapStruct->s1[3].unk00.HWORD = temp;
    heapStruct->s1[3].unk04.HWORD = 0x4000;
    heapStruct->s1[3].unk0c = 0;
    heapStruct->s1[4].unk00.HWORD = temp;
    heapStruct->s1[4].unk04.HWORD = 0x4000;
    heapStruct->s1[4].unk0c = 0;
    return 1;
}

void sub_0804393C(VaatiArmEntity* this) {
    s32 uVar1;
    s32 uVar2;
    s32 uVar6;
    s32 iVar7;
    VaatiArm_HeapStruct1* hs;
    VaatiArmEntity* entity;

    entity = (VaatiArmEntity*)((VaatiArm_HeapStruct*)super->myHeap)->entities[0];
    if (entity->unk_7c != 0 && entity->unk_7d <= super->type) {
        uVar2 = gUnk_080D1362[super->type * 16 + ((entity->unk_7c >> 3) & 0xf)];
    } else {
        uVar2 = 0;
    }
    hs = &((VaatiArm_HeapStruct*)super->myHeap)->s1[super->type];
    uVar2 = (uVar2 + hs->unk0c) << 8;
    uVar1 = -gSineTable[hs->unk04.HALF.HI + 0x40] * uVar2;
    uVar2 = (gSineTable[hs->unk04.HALF.HI & 0x7f] * uVar2) / 0x100;
    uVar6 = gSineTable[hs->unk00.HALF.HI] * uVar2;
    iVar7 = -gSineTable[hs->unk00.HALF.HI + 0x40] * uVar2;
    PositionRelative(&((VaatiArm_HeapStruct*)super->myHeap)->entities[super->type + 1]->base, super, uVar6, iVar7);
    super->z.WORD += uVar1;
    super->spriteOffsetY = ((VaatiArm_HeapStruct*)super->myHeap)->entities[super->type + 1]->base.spriteOffsetY;
}

static void sub_08043A10(VaatiArmEntity* this) {
    sub_08043B7C(this);
    sub_0804393C(((VaatiArm_HeapStruct*)super->myHeap)->entities[4]);
    ((VaatiArm_HeapStruct*)super->myHeap)->entities[4]->base.y.HALF.HI -= 8;
    ((VaatiArm_HeapStruct*)super->myHeap)->entities[4]->base.z.HALF.HI -= 8;
    sub_0804393C(((VaatiArm_HeapStruct*)super->myHeap)->entities[3]);
    sub_0804393C(((VaatiArm_HeapStruct*)super->myHeap)->entities[2]);
    sub_0804393C(((VaatiArm_HeapStruct*)super->myHeap)->entities[1]);
    sub_0804393C(((VaatiArm_HeapStruct*)super->myHeap)->entities[0]);
    ((VaatiArm_HeapStruct*)super->myHeap)->entities[0]->base.y.HALF.HI++;
    ((VaatiArm_HeapStruct*)super->myHeap)->entities[0]->base.spriteOffsetY--;
    if (this->unk_7c != 0) {
        this->unk_7c--;
    }
}

static void sub_08043A78(VaatiArmEntity* this) {
    this->unk_7c = 0;
    sub_08043B7C(this);
    sub_0804393C(((VaatiArm_HeapStruct*)super->myHeap)->entities[2]);
    sub_0804393C(((VaatiArm_HeapStruct*)super->myHeap)->entities[1]);
    sub_0804393C(((VaatiArm_HeapStruct*)super->myHeap)->entities[0]);
    ((VaatiArm_HeapStruct*)super->myHeap)->entities[0]->base.y.HALF.HI++;
    ((VaatiArm_HeapStruct*)super->myHeap)->entities[0]->base.spriteOffsetY--;
}

static void sub_08043ABC(VaatiArmEntity* this) {
    this->unk_7c = 0;
    sub_08043B7C(this);
    sub_0804393C(((VaatiArm_HeapStruct*)super->myHeap)->entities[3]);
    sub_0804393C(((VaatiArm_HeapStruct*)super->myHeap)->entities[2]);
    sub_0804393C(((VaatiArm_HeapStruct*)super->myHeap)->entities[1]);
    sub_0804393C(((VaatiArm_HeapStruct*)super->myHeap)->entities[0]);
    ((VaatiArm_HeapStruct*)super->myHeap)->entities[0]->base.y.HALF.HI++;
    ((VaatiArm_HeapStruct*)super->myHeap)->entities[0]->base.spriteOffsetY--;
}

void sub_08043B08(VaatiArmEntity* this) {
    VaatiArm_HeapStruct1* hs1;
    VaatiArm_HeapStruct1* hs2;
    u32 bVar1;
    s32 uVar6;

    hs1 = &((VaatiArm_HeapStruct*)super->myHeap)->s1[super->type - 1];
    hs2 = &((VaatiArm_HeapStruct*)super->myHeap)->s1[super->type];
    bVar1 = gUnk_080D13B2[super->type];
    if (((VaatiArm_HeapStruct*)super->myHeap)->entities[0]->base.type2 == 0) {
        uVar6 = (s8)((hs1->unk00.HALF.HI - hs2->unk00.HALF.HI));
        if (bVar1 < uVar6) {
            if (uVar6 <= 0) {
                hs2->unk00.HALF.HI = hs1->unk00.HALF.HI;
            } else {
                hs2->unk00.HALF.HI = hs1->unk00.HALF.HI - bVar1;
            }
        }
    } else {
        uVar6 = (s8)(hs2->unk00.HALF.HI - hs1->unk00.HALF.HI);
        if (bVar1 < uVar6) {
            if (uVar6 < 0) {
                hs2->unk00.HALF.HI = hs1->unk00.HALF.HI;
            } else {
                hs2->unk00.HALF.HI = hs1->unk00.HALF.HI + bVar1;
            }
        }
    }

    uVar6 = hs1->unk04.HALF.HI - hs2->unk04.HALF.HI;
    if ((bVar1 << 1) < uVar6 + bVar1) {
        if (uVar6 > 0) {
            hs2->unk04.HALF.HI = hs1->unk04.HALF.HI - bVar1;
        } else {
            hs2->unk04.HALF.HI = hs1->unk04.HALF.HI + bVar1;
        }
    }
}

static void sub_08043B7C(VaatiArmEntity* this) {
    sub_08043B08(((VaatiArm_HeapStruct*)super->myHeap)->entities[1]);
    sub_08043B08(((VaatiArm_HeapStruct*)super->myHeap)->entities[2]);
    sub_08043B08(((VaatiArm_HeapStruct*)super->myHeap)->entities[3]);
}

static void sub_08043B9C(VaatiArmEntity* this) {
    u32 index = ((((VaatiArm_HeapStruct*)super->myHeap)->s1[0].unk00.HALF.HI + 4) & 0xff) >> 3;
    if (gUnk_080D13B7[index] != super->frameIndex - 1) {
        InitAnimationForceUpdate(super, gUnk_080D13B7[index]);
    }
}

static void sub_08043BC8(VaatiArmEntity* this) {
    VaatiArm_HeapStruct1* pVVar2;
    const Coords* ptr;

    super->action = 2;
    ptr = &gUnk_080D13D8[super->type2];
    pVVar2 = &((VaatiArm_HeapStruct*)super->myHeap)->s1[0];
    pVVar2->unk08 = ptr->HALF.x;
    pVVar2->unk0a = ptr->HALF.y;
    pVVar2->unk0d = 0x5a;
    pVVar2->unk0e = 0x28;
}

static void sub_08043BF0(VaatiArmEntity* this) {
    u8 bVar1;
    u32 uVar2;
    VaatiArm_HeapStruct1* ptr;

    ptr = &((VaatiArm_HeapStruct*)super->myHeap)->s1[0];
    if (super->type2 == 0) {
        bVar1 = ptr->unk00.HALF.HI;
        uVar2 = 6;
        if (((0x2f < bVar1) && (uVar2 = 7, 0x5f < bVar1)) && (uVar2 = 9, bVar1 < 0x90)) {
            uVar2 = 8;
        }
    } else {
        bVar1 = ptr->unk00.HALF.HI;
        uVar2 = 8;
        if (((bVar1 < 0xd1) && (uVar2 = 7, bVar1 < 0xa1)) && (uVar2 = 5, 0x70 < bVar1)) {
            uVar2 = 6;
        }
    }
    if (super->animIndex != uVar2) {
        InitAnimationForceUpdate(super, uVar2);
    }
}

static void sub_08043C40(VaatiArmEntity* this, VaatiArm_HeapStruct1* heapStruct) {
    u8* iVar3;
    int offset;
    const u8* puVar6;
    u32 i;

    if (heapStruct->unk04.HALF.HI < 0x20) {
        puVar6 = gUnk_080D13E0;
    } else {
        if (heapStruct->unk04.HALF.HI < 0x30) {
            puVar6 = gUnk_080D13E3;
        } else {
            if (heapStruct->unk04.HALF.HI < 0x78) {
                puVar6 = &gUnk_080D13E0[6];
            } else {
                puVar6 = gUnk_080D13E0;
            }
        }
    }
    for (i = 0, offset = 0x28; i < 3; offset += 0x10, i++) {
        iVar3 = (u8*)(int)((VaatiArm_HeapStruct*)super->myHeap) + offset;
        if (puVar6[i] != iVar3[0xc]) {
            if (puVar6[i] < iVar3[0xc]) {
                iVar3[0xc]--;
            } else {
                iVar3[0xc]++;
            }
        }
    }
}

static bool32 sub_08043C98(VaatiArmEntity* this) {
#if defined EU || defined JP
    Entity* e1 = &((VaatiArm_HeapStruct*)super->myHeap)->entities[3]->base;
    if ((e1->contactFlags == (CONTACT_NOW | 0x1d))) {
        sub_08043D08(this);
        return TRUE;
    } else {
        return FALSE;
    }
#else
    Entity* e1 = &((VaatiArm_HeapStruct*)super->myHeap)->entities[2]->base;
    Entity* e2 = &((VaatiArm_HeapStruct*)super->myHeap)->entities[3]->base;
    if ((e1->contactFlags == (CONTACT_NOW | 0x1d)) || (e2->contactFlags == (CONTACT_NOW | 0x1d))) {
        sub_08043D08(this);
        gRoomTransition.field_0x38 |= 2;
        return TRUE;
    } else {
        return FALSE;
    }
#endif
}

static void sub_08043CD4(VaatiArmEntity* this) {
    u32 i;
    for (i = 0; i < 5; i++) {
        if (((VaatiArm_HeapStruct*)super->myHeap)->entities[i]->base.contactFlags == (CONTACT_NOW | 0x1d)) {
            this->unk_7c = 0x78;
            this->unk_7d = i;
            return;
        }
    }
}

static void sub_08043D08(VaatiArmEntity* this) {
    Entity* entity;
    Entity* fx;
    u32 i;

    super->action = 7;
    super->subAction = 0;
    InitAnimationForceUpdate(super, 0xd);
    entity = &((VaatiArm_HeapStruct*)super->myHeap)->entities[4]->base;
    entity->flags &= ~ENT_COLLIDE;
    entity->spriteSettings.draw = 0;
    InitializeAnimation(entity, 0x13);
    EnemyDetachFX(entity);
    fx = CreateFx(entity, FX_GIANT_EXPLOSION4, 0);
    if (fx != NULL) {
        fx->x.HALF.HI += gUnk_080D13E9[super->type2];
        fx->y.HALF.HI -= 6;
        fx->spritePriority.b0 = 3;
    }
    CopyPosition(&((VaatiArm_HeapStruct*)super->myHeap)->entities[3]->base, entity);
    entity->z.HALF.HI += ((VaatiArm_HeapStruct*)super->myHeap)->s1[3].unk0c;
    for (i = 0; i < 5; i++) {
        ((VaatiArm_HeapStruct*)super->myHeap)->entities[i]->base.hitType = 0x39;
    }
    EnqueueSFX(SFX_HIT);
}

static void sub_08043DB0(VaatiArmEntity* this) {
    s32 cVar1;
    Entity* pEVar2;
    Entity* pEVar3;
    Entity* pEVar4;

    if (((gPlayerState.flags & PL_MINISH) != 0)) {
        pEVar3 = &((VaatiArm_HeapStruct*)super->myHeap)->entities[3]->base;
        if (CheckPlayerInRegion(pEVar3->x.HALF.HI - gRoomControls.origin_x,
                                pEVar3->y.HALF.HI - gRoomControls.origin_y + 2, 3, 3)) {
            DoExitTransition(&gUnk_080D13EC);
            if ((gRoomTransition.field_0x39 & 3) != 3) {
                gRoomTransition.player_status.room_next = 1;
            }
            cVar1 = this->unk_7a;
            gRoomTransition.field_0x3d = 0x1e - (cVar1 / 0x3c);
            gRoomTransition.field_0x3c = super->type2;
            pEVar2 = ((VaatiArm_HeapStruct*)super->myHeap)->parent;
            gRoomTransition.field_0x40 = pEVar2->x.HALF.HI;
            gRoomTransition.field_0x42 = pEVar2->y.HALF.HI;
            pEVar4 = ((VaatiArm_HeapStruct*)pEVar2->myHeap)->parent;
            if (pEVar4 != NULL) {
                gRoomTransition.field_0x44 = pEVar4->x.HALF.HI;
                gRoomTransition.field_0x46 = pEVar4->y.HALF.HI;
            } else {
                gRoomTransition.field_0x44 = gRoomControls.origin_x + 0x110;
                gRoomTransition.field_0x46 = gRoomControls.origin_y + 0x60;
            }
            pEVar4 = (Entity*)(*(int*)((VaatiArm_HeapStruct*)pEVar2->myHeap)->s1);
            if (pEVar4 != NULL) {
                gRoomTransition.field_0x48 = pEVar4->x.HALF.HI;
                gRoomTransition.field_0x4a = pEVar4->y.HALF.HI;
            } else {
                gRoomTransition.field_0x48 = gRoomControls.origin_x + 0x110;
                gRoomTransition.field_0x4a = gRoomControls.origin_y + 0x60;
            }
        }
    }
}

static void sub_08043EB8(VaatiArmEntity* this) {
    u32 i;
    Entity* pEVar4;
    VaatiArm_HeapStruct1* ptr;

    COLLISION_ON(super);
    super->spritePriority.b0 = 4;
    InitAnimationForceUpdate(super, 0xd);
    pEVar4 = &((VaatiArm_HeapStruct*)super->myHeap)->entities[1]->base;
    pEVar4->flags = pEVar4->flags | ENT_COLLIDE;
    pEVar4->spritePriority.b0 = 4;
    pEVar4 = &((VaatiArm_HeapStruct*)super->myHeap)->entities[2]->base;
    pEVar4->flags = pEVar4->flags | ENT_COLLIDE;
    pEVar4->spritePriority.b0 = 4;
    pEVar4 = &((VaatiArm_HeapStruct*)super->myHeap)->entities[3]->base;
    pEVar4->flags = pEVar4->flags & ~ENT_COLLIDE;
    pEVar4->spriteSettings.draw = 1;
    pEVar4->spritePriority.b0 = 4;
    pEVar4 = &((VaatiArm_HeapStruct*)super->myHeap)->entities[4]->base;
    pEVar4->flags = pEVar4->flags | ENT_COLLIDE;
    pEVar4->spriteSettings.draw = 1;
    pEVar4->spritePriority.b0 = 4;
    pEVar4->x.HALF.HI = (super->type2 == 0) ? gRoomTransition.field_0x44 : gRoomTransition.field_0x48;
    pEVar4->y.HALF.HI = (super->type2 == 0) ? gRoomTransition.field_0x46 : gRoomTransition.field_0x4a;
    pEVar4->z.HALF.HI = 0;
    pEVar4->collisionFlags = pEVar4->collisionFlags & 0xef;
    pEVar4->hitType = 0x3a;
    pEVar4->hitbox = (Hitbox*)&gUnk_080FD450;
    pEVar4 = CreateObject(VAATI3_ARM, 0, 0);
    if (pEVar4 != NULL) {
        pEVar4->parent = &((VaatiArm_HeapStruct*)super->myHeap)->entities[3]->base;
    }
    *(Entity**)&((VaatiArm_HeapStruct*)super->myHeap)->entities[0]->unk_68 = pEVar4;
    for (i = 0; i < 5; i++) {
        ptr = &((VaatiArm_HeapStruct*)super->myHeap)->s1[i];
        ptr->unk00.HWORD = 0x8000;
        ptr->unk04.HWORD = 0;
        ptr->unk0c = gUnk_080D1419[i];
    }
}

void sub_08044000(VaatiArmEntity* this) {
    Entity* entity;
    u32 i;
    VaatiArm_HeapStruct1* ptr;
    const u16* ptr2;

    ptr2 = gUnk_080D1400[super->type2];
    for (i = 0; i < 5; i++) {
        entity = &((VaatiArm_HeapStruct*)super->myHeap)->entities[i]->base;
        entity->flags = entity->flags | 0x80;
        entity->spritePriority.b0 = 4;
        ptr = &((VaatiArm_HeapStruct*)super->myHeap)->s1[i];
        ptr->unk00.HWORD = ptr2[i];
        ptr->unk04.HWORD = 0x4000;
        ptr->unk0c = gUnk_080D1414[i];
    }
    InitAnimationForceUpdate(super, 7);
    CopyPosition(((VaatiArm_HeapStruct*)super->myHeap)->parent,
                 &((VaatiArm_HeapStruct*)super->myHeap)->entities[4]->base);
}

static void sub_08044078(VaatiArmEntity* this) {
    if (super->action == 0) {
        super->action = 1;
        if (super->type != 3 ||
            !(((gRoomTransition.field_0x38 & 1) == 0 ||
               (((VaatiArm_HeapStruct*)super->myHeap)->entities[0]->base.type2 != gRoomTransition.field_0x3c)))) {
            InitializeAnimation(super, 0x12);
        } else {
            InitializeAnimation(super, 0x11);
        }
    }
    GetNextFrame(super);
}

static void sub_080440CC(VaatiArmEntity* this) {
    if (super->action == 0) {
        super->action = 1;
        if ((gRoomTransition.field_0x38 & 1) != 0 &&
            ((VaatiArm_HeapStruct*)super->myHeap)->entities[0]->base.type2 == gRoomTransition.field_0x3c) {
            InitializeAnimation(super, 0x13);
        } else {
            InitializeAnimation(super, 0x11);
        }
    }
    GetNextFrame(super);
}
