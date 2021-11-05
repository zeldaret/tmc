#include "global.h"
#include "entity.h"
#include "functions.h"
#include "script.h"
#include "functions.h"
#include "audio.h"
#include "save.h"
#include "flags.h"
#include "object.h"

extern Hitbox gUnk_080FD170;
typedef struct {
    u32 unk_00;
    s8 unk_04;
} gUnk_0810C89C_struct;

extern void sub_08078850(Entity*, u32, u8 /* TODO this is a s8 in beedle.c*/, gUnk_0810C89C_struct*);

extern void script_08016030; // Cutscene data type?
extern void script_0801606C; // Cutscene data type?

const Hitbox gUnk_08114154;
const u8 gUnk_0811415C[];
const ScreenTransitionData* const gUnk_081141A4[];
const u8 gUnk_081141E4[];
const u16 gUnk_081141F4[];

extern void sub_0809623C(Entity*);
extern void sub_08096260(Entity*);

// NPC4E is created when link enters minish woods for the first time and
// destroyed once he wears ezlo. Also exists when entering hyrule for the second time
// and fusing kinstones. Is destroyed as soon as the kinstone is fused.
void NPC4E(Entity* this) {
    if (this->action == 0) {
        this->action = 1;
        this->spriteSettings.b.draw = 4;
        this->hitbox = &gUnk_080FD170;
        sub_0807DD50(this);
    } else {
        sub_0807DD94(this, 0);
    }
}

void sub_0806DA04(Entity* this, ScriptExecutionContext* context) {
    // TODO gUnk_0811415C should be a gUnk_0810C89C_struct[], but then a lot of bytes everywhere are wrong?
    gUnk_0810C89C_struct* a = (gUnk_0810C89C_struct*)&(
        (gUnk_0810C89C_struct*)gUnk_0811415C)[context->intVariable]; // cast necessary to no longer make it a const* ?
    sub_08078850(this, 1, a->unk_04, a);
}

void sub_0806DA1C(Entity* this, ScriptExecutionContext* context) {
    sub_0808091C((ScreenTransitionData*)(gUnk_081141A4)[context->intVariable],
                 (u32)(gUnk_081141E4[context->intVariable]));
}

// Returns the kinstone id?
u8 sub_0806DA3C(Entity* this) {
    u32 result;

    switch (this->type) {
        default:
            result = 0;
            break;
        case 1:
            result = 1;
            break;
        case 2:
            result = 2;
            break;
        case 3:
            result = 3;
            break;
        case 4:
            result = 4;
            break;
        case 5:
            result = 5;
            break;
        case 11:
            result = 9;
            break;
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
            result = sub_0801E99C(this);
            break;
    }
    return result;
}

// Check whether a kinstone fusion is possible and store the result somewhere in param_2?
void sub_0806DAAC(Entity* this, ScriptExecutionContext* context) {
    context->condition = CheckKinstoneFused(sub_0806DA3C(this));
    gActiveScriptInfo.flags |= 1;
}

// maybe actually execute the kinstone fusion?
void sub_0806DAD0(Entity* this) {
    sub_08078790(this, sub_0806DA3C(this));
}

void sub_0806DAE8(Entity* this) {
    switch (this->type - 1) {
        case 0:
#if defined(JP) || defined(EU) || defined(DEMO_JP)
            SetLocalFlag(0xeb);
#else
            SetLocalFlag(0xee);
#endif
            break;
        case 1:
#if defined(JP) || defined(EU) || defined(DEMO_JP)
            SetLocalFlag(0xec);
#else
            SetLocalFlag(0xef);
#endif
            break;
        case 2:
#if defined(JP) || defined(EU) || defined(DEMO_JP)
            SetLocalFlag(0xed);
#else
            SetLocalFlag(0xf0);
#endif
            break;
        case 3:
#if defined(JP) || defined(EU) || defined(DEMO_JP)
            SetLocalFlag(0xee);
#else
            SetLocalFlag(0xf1);
#endif
            break;
        case 4:
#if defined(JP) || defined(EU) || defined(DEMO_JP)
            SetLocalFlag(0xef);
#else
            SetLocalFlag(0xf2);
#endif
            break;
    }

    SoundReq(SFX_TASK_COMPLETE);
}

void sub_0806DB44(Entity* this, ScriptExecutionContext* context) {
    context->condition = 0;

#if defined(JP) || defined(EU) || defined(DEMO_JP)
    if (CheckLocalFlag(0xeb) != 0 && CheckLocalFlag(0xec) != 0 && CheckLocalFlag(0xed) != 0 &&
        CheckLocalFlag(0xee) != 0 && CheckLocalFlag(0xef) != 0) {
#else
    if (CheckLocalFlag(0xee) != 0 && CheckLocalFlag(0xef) != 0 && CheckLocalFlag(0xf0) != 0 &&
        CheckLocalFlag(0xf1) != 0 && CheckLocalFlag(0xf2) != 0) {
#endif

        context->condition = 1;
    }
}

void sub_0806DB84(Entity* this, ScriptExecutionContext* context) {
    Entity* ent;
    this->hitbox = (Hitbox*)&gUnk_08114154;
    ent = CreateObject(OBJECT_3E, 4, 0);
    if (ent != NULL) {
        PositionRelative(this, ent, -0x80000, 0);
        *(ScriptExecutionContext**)&ent->cutsceneBeh = StartCutscene(ent, &script_08016030);
    }
    ent = CreateObject(OBJECT_3E, 5, 0);
    if (ent != NULL) {
        PositionRelative(this, ent, 0x80000, 0);
        *(ScriptExecutionContext**)&ent->cutsceneBeh = StartCutscene(ent, &script_0801606C);
    }
}

u32 sub_0806DBF4(u32 param_1) {
    switch (param_1) {
        case 1:
        case 2:
        case 3:
        case 4:
        case 6:
            param_1 = 1;
            if (GetInventoryValue(2) != 0) {
                param_1 = 2;
            }
            if (GetInventoryValue(3) != 0) {
                param_1 = 3;
            }
            if (GetInventoryValue(4) != 0) {
                param_1 = 4;
            }
            if (GetInventoryValue(6) != 0) {
                param_1 = 6;
            }
            break;
    }
    return param_1;
}

void sub_0806DC3C(Entity* this) {
    this->field_0x68.HALF.LO = gSave.stats.itemOnA;
    this->field_0x68.HALF.HI = gSave.stats.itemOnB;
}

void sub_0806DC58(Entity* this) {
    ForceEquipItem(sub_0806DBF4(this->field_0x68.HALF.LO), 0);
    ForceEquipItem(sub_0806DBF4(this->field_0x68.HALF.HI), 1);
}

void sub_0806DC7C() {
    const u16* tiles = gUnk_081141F4;
    while (*tiles != 0) {
        u32 tile = *tiles;
        tiles = tiles + 1;
        SetTileType(0x4072, tile, 1);
    }
}

void sub_0806DCA0() {
    u16 uVar1;
    const u16* tiles = gUnk_081141F4;
    while (*tiles != 0) {
        u32 tile = *tiles;
        tiles = tiles + 1;
        sub_0807BA8C(tile, 1);
    }
}

void sub_0806DCC0() {
    gScreenTransition.field_0x20 = 0x7c8;
    gScreenTransition.field_0x22 = 0xf8;
}

void NPC4E_Fusion(Entity* this) {
    if (this->action == 0) {
        this->action += 1;
        switch (this->type) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                sub_0809623C(this);
                break;
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
                sub_08096260(this);
                break;
            case 11:
                sub_0806DB84(this, 0);
                this->hitbox = NULL;
                break;
        }
    }
}

const Hitbox gUnk_08114154 = { 0, -8, 0, 0, 0, 0, 24, 8 };

const u8 gUnk_0811415C[] = { //
                             0x00, 0x00, 0x08, 0x08, 0x0e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1a, 0x08, 0x0e,
                             0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x04, 0x0e, 0x00, 0x00, 0x00, 0x00, 0x00,
                             0x0a, 0x0a, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0a, 0x0a, 0x00, 0x00, 0x00,
                             0x00, 0x00, 0x00, 0x06, 0x04, 0x0e, 0x00, 0x00, 0x00, 0x00, 0x08, 0x10, 0x04,
                             0x0e, 0x00, 0x00, 0x00, 0x00, 0xf8, 0x18, 0x08, 0x0e, 0x00, 0x00, 0x00,
#ifndef EU
                             0x00, 0x00, 0x58, 0x08, 0x0e, 0x00, 0x00, 0x00
#endif
};
extern ScreenTransitionData gUnk_0813AB6C;
extern ScreenTransitionData gUnk_0813ABBC;
extern ScreenTransitionData gUnk_0813ABE4;
extern ScreenTransitionData gUnk_0813ABF8;
extern ScreenTransitionData gUnk_0813AC0C;
extern ScreenTransitionData gUnk_0813AC20;
extern ScreenTransitionData gUnk_0813AC5C;
extern ScreenTransitionData gUnk_0813AC70;
extern ScreenTransitionData gUnk_0813AC84;
extern ScreenTransitionData gUnk_0813AC98;
extern ScreenTransitionData gUnk_0813ACAC;
extern ScreenTransitionData gUnk_0813ACC0;
extern ScreenTransitionData gUnk_0813ACD4;
extern ScreenTransitionData gUnk_0813ACE8;
extern ScreenTransitionData gUnk_0813ACFC;

// Array of pointers to ScreenTransitionData
const ScreenTransitionData* const gUnk_081141A4[] = { //
                                                      &gUnk_0813AB6C, &gUnk_0813ABBC, &gUnk_0813ABE4, &gUnk_0813ABF8,
                                                      &gUnk_0813AC0C, &gUnk_0813AC20, &gUnk_0813AC5C, &gUnk_0813AC70,
                                                      &gUnk_0813AC84, &gUnk_0813AC98, &gUnk_0813ACAC, &gUnk_0813ACC0,
                                                      &gUnk_0813ACD4, &gUnk_0813ACE8, &gUnk_0813AC5C, &gUnk_0813ACFC
};

// param_2 for the call to sub_0808091C, same indices as gUnk_081141A4
const u8 gUnk_081141E4[] = { //
                             0x02, 0x02, 0x04, 0x04, 0x02, 0x02, 0x09, 0x02,
                             0x02, 0x04, 0x02, 0x04, 0x04, 0x04, 0x04, 0x02
};

// tiles that are changed?
const u16 gUnk_081141F4[] = { 0x047a, 0x047b, 0x05af, 0x05ef, 0x0738, 0x0739, 0x073a, 0x073b, 0x0000, 0x0000 };
