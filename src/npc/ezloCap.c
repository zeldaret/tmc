#include "global.h"
#include "entity.h"
#include "flags.h"
#include "save.h"
#include "script.h"
#include "audio.h"
#include "functions.h"

extern Hitbox gUnk_080FD170;
extern void script_08016030; // Cutscene data type?
extern void script_0801606C; // Cutscene data type?

extern void sub_0809623C(Entity*);
extern void sub_08096260(Entity*);

const u8 gUnk_08114134[];
const u8 gUnk_08114144[];
const Hitbox gUnk_08114154;
const u8 gUnk_0811415C[];
const ScreenTransitionData* const gUnk_081141A4[];
const u8 gUnk_081141E4[];
const u16 gUnk_081141F4[];

typedef struct {
    u32 unk_00;
    s8 unk_04;
} gUnk_0810C89C_struct;

extern void sub_08078850(Entity*, u32, u8 /* TODO this is a s8 in beedle.c*/, gUnk_0810C89C_struct*);

// Ezlo as a cap in the Minish Woods, is destroyed as soon as link wears ezlo
void EzloCap(Entity* this) {
    if (this->action == 0) {
        this->action += 1;
        sub_0805E3A0(this, 2);
        sub_0807DD50(this);
    }
    ExecuteScriptForEntity(this, NULL);
    HandleEntity0x82Actions(this);
    UpdateAnimationSingleFrame(this);
}

void sub_0806D8A0(Entity* this, ScriptExecutionContext* context) {
    s32 xOffset;
    s32 yOffset;

    context->unk_19 = 8;
    context->postScriptActions |= 2;
    context->condition = 0;
    xOffset = 16;
    if (this->spriteSettings.b.flipX) {
        xOffset = -xOffset;
    }
    xOffset += gPlayerEntity.x.HALF.HI;
    yOffset = gPlayerEntity.y.HALF.HI + 2;
    context->x.HALF.HI = xOffset;
    context->y.HALF.HI = yOffset;

    xOffset -= this->x.HALF.HI;
    this->direction = sub_080045DA(xOffset, yOffset - this->y.HALF.HI);
    this->animationState = (this->animationState & 0x80) | gUnk_08114134[this->direction >> 4];
}

void sub_0806D908(Entity* this) {
    this->direction = sub_080045D4(this->x.HALF.HI, this->y.HALF.HI, gPlayerEntity.x.HALF.HI, gPlayerEntity.y.HALF.HI);
    this->animationState = (this->animationState & 0x80) | gUnk_08114144[this->direction >> 0x1];
}

// called when talk to ezlo, also when ezlo moves after you
void sub_0806D944(Entity* this) {
    this->spriteSettings.b.flipX = 0;
    if (this->x.WORD <= gPlayerEntity.x.WORD) {
        this->spriteSettings.b.flipX = 1;
    }
}

// Ezlo Angry FX
void sub_0806D96C(Entity* this) {
    Entity* fx = CreateFx(this, 0x42, 0);
    if (fx != NULL) {
        fx->spritePriority.b0 = 1;
        PositionRelative(this, fx, 0, 0xFFE80000);
    }
}

void sub_0806D9A4(Entity* this) {
    if (this->x.WORD <= gPlayerEntity.x.WORD) {
        gPlayerEntity.spriteSettings.b.flipX = 0;
    } else {
        gPlayerEntity.spriteSettings.b.flipX = 1;
    }
    gPlayerEntity.animationState = 4;
}

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
            SetLocalFlag(0xee);
            break;
        case 1:
            SetLocalFlag(0xef);
            break;
        case 2:
            SetLocalFlag(0xf0);
            break;
        case 3:
            SetLocalFlag(0xf1);
            break;
        case 4:
            SetLocalFlag(0xf2);
            break;
    }

    SoundReq(SFX_TASK_COMPLETE);
}

void sub_0806DB44(Entity* this, ScriptExecutionContext* context) {
    context->condition = 0;

    if (CheckLocalFlag(0xee) != 0 && CheckLocalFlag(0xef) != 0 && CheckLocalFlag(0xf0) != 0 &&
        CheckLocalFlag(0xf1) != 0 && CheckLocalFlag(0xf2) != 0) {
        context->condition = 1;
    }
}

void sub_0806DB84(Entity* this, ScriptExecutionContext* context) {
    Entity* ent;
    this->hitbox = (Hitbox*)&gUnk_08114154;
    ent = CreateObject(0x3e, 4, 0);
    if (ent != NULL) {
        PositionRelative(this, ent, -0x80000, 0);
        *(ScriptExecutionContext**)&ent->cutsceneBeh = StartCutscene(ent, &script_08016030);
    }
    ent = CreateObject(0x3e, 5, 0);
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

// animation states
const u8 gUnk_08114134[] = { 0x00, 0x01, 0x01, 0x02, 0x02, 0x03, 0x03, 0x04,
                             0x04, 0x05, 0x05, 0x06, 0x06, 0x07, 0x07, 0x00 };

// animation states
const u8 gUnk_08114144[] = { 0x00, 0x01, 0x01, 0x02, 0x02, 0x03, 0x03, 0x04,
                             0x04, 0x05, 0x05, 0x06, 0x06, 0x07, 0x07, 0x00 };

const Hitbox gUnk_08114154 = { 0, -8, 0, 0, 0, 0, 24, 8 };

const u8 gUnk_0811415C[] = { 0x00, 0x00, 0x08, 0x08, 0x0e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1a, 0x08, 0x0e, 0x00, 0x00,
                             0x00, 0x00, 0x00, 0x10, 0x04, 0x0e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0a, 0x0a, 0x00, 0x00,
                             0x00, 0x00, 0x00, 0x00, 0x0a, 0x0a, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x04, 0x0e,
                             0x00, 0x00, 0x00, 0x00, 0x08, 0x10, 0x04, 0x0e, 0x00, 0x00, 0x00, 0x00, 0xf8, 0x18, 0x08,
                             0x0e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x58, 0x08, 0x0e, 0x00, 0x00, 0x00 };
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
const ScreenTransitionData* const gUnk_081141A4[] = { &gUnk_0813AB6C, &gUnk_0813ABBC, &gUnk_0813ABE4, &gUnk_0813ABF8,
                                                      &gUnk_0813AC0C, &gUnk_0813AC20, &gUnk_0813AC5C, &gUnk_0813AC70,
                                                      &gUnk_0813AC84, &gUnk_0813AC98, &gUnk_0813ACAC, &gUnk_0813ACC0,
                                                      &gUnk_0813ACD4, &gUnk_0813ACE8, &gUnk_0813AC5C, &gUnk_0813ACFC };

// param_2 for the call to sub_0808091C, same indices as gUnk_081141A4
const u8 gUnk_081141E4[] = { 0x02, 0x02, 0x04, 0x04, 0x02, 0x02, 0x09, 0x02,
                             0x02, 0x04, 0x02, 0x04, 0x04, 0x04, 0x04, 0x02 };

// tiles that are changed?
const u16 gUnk_081141F4[] = { 0x047a, 0x047b, 0x05af, 0x05ef, 0x0738, 0x0739, 0x073a, 0x073b, 0x0000, 0x0000 };
