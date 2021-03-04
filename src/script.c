#include "global.h"
#include "flags.h"
#include "entity.h"
#include "area.h"
#include "script.h"
#include "structures.h"
#include "textbox.h"
#include "functions.h"
#include "save.h"

void sub_0807DAF0(Entity*, ScriptExecutionContext*, u16*);
void sub_0807DB88(ScriptExecutionContext*, u16*);
void sub_0807DE80(Entity*);
void sub_0807DF38(void);
void nullsub_507(Entity*, ScriptExecutionContext*);
void sub_0807E004(Entity*, ScriptExecutionContext*);
void sub_0807E014(Entity*, ScriptExecutionContext*);
void sub_0807E024(Entity*, ScriptExecutionContext*);
void sub_0807E050(Entity*, ScriptExecutionContext*);
void sub_0807E064(Entity*, ScriptExecutionContext*);
void sub_0807E078(Entity*, ScriptExecutionContext*);
void sub_0807E0A0(Entity*, ScriptExecutionContext*);
void sub_0807E0B8(Entity*, ScriptExecutionContext*);
void sub_0807E0CC(Entity*, ScriptExecutionContext*);
void sub_0807E0E0(Entity*, ScriptExecutionContext*);
void sub_0807E10C(Entity*, ScriptExecutionContext*);
void sub_0807E124(Entity*, ScriptExecutionContext*);
void sub_0807E148(Entity*, ScriptExecutionContext*);
void sub_0807E158(Entity*, ScriptExecutionContext*);
void sub_0807E188(Entity*, ScriptExecutionContext*);
void sub_0807E1D8(Entity*, ScriptExecutionContext*);
void sub_0807E200(Entity*, ScriptExecutionContext*);
void sub_0807E220(Entity*, ScriptExecutionContext*);
void sub_0807E240(Entity*, ScriptExecutionContext*);
void sub_0807E260(Entity*, ScriptExecutionContext*);
void sub_0807E280(Entity*, ScriptExecutionContext*);
void sub_0807E2A8(Entity*, ScriptExecutionContext*);
void sub_0807E2E4(Entity*, ScriptExecutionContext*);
void sub_0807E30C(Entity*, ScriptExecutionContext*);
void sub_0807E390(Entity*, ScriptExecutionContext*);
void sub_0807E3BC(Entity*, ScriptExecutionContext*);
void sub_0807E3E8(Entity*, ScriptExecutionContext*);
void sub_0807E40C(Entity*, ScriptExecutionContext*);
void sub_0807E42C(Entity*, ScriptExecutionContext*);
void sub_0807E48C(Entity*, ScriptExecutionContext*);
void sub_0807E4AC(Entity*, ScriptExecutionContext*);
void sub_0807E4CC(Entity*, ScriptExecutionContext*);
void sub_0807E4EC(Entity*, ScriptExecutionContext*);
void sub_0807E514(Entity*, ScriptExecutionContext*);
void sub_0807E538(Entity*, ScriptExecutionContext*);
void sub_0807E564(Entity*, ScriptExecutionContext*);
void sub_0807E584(Entity*, ScriptExecutionContext*);
void sub_0807E5A0(Entity*, ScriptExecutionContext*);
void sub_0807E5CC(Entity*, ScriptExecutionContext*);
void sub_0807E5F8(Entity*, ScriptExecutionContext*);
void sub_0807E610(Entity*, ScriptExecutionContext*);
void sub_0807E628(Entity*, ScriptExecutionContext*);
void sub_0807E634(Entity*, ScriptExecutionContext*);
void sub_0807E644(Entity*, ScriptExecutionContext*);
void sub_0807E650(Entity*, ScriptExecutionContext*);
void sub_0807E65C(Entity*, ScriptExecutionContext*);
void sub_0807E668(Entity*, ScriptExecutionContext*);
void sub_0807E674(Entity*, ScriptExecutionContext*);
void sub_0807E680(Entity*, ScriptExecutionContext*);
void sub_0807E690(Entity*, ScriptExecutionContext*);
void sub_0807E6AC(Entity*, ScriptExecutionContext*);
void sub_0807E6DC(Entity*, ScriptExecutionContext*);
void sub_0807E700(Entity*, ScriptExecutionContext*);
void sub_0807E72C(Entity*, ScriptExecutionContext*);
void sub_0807E75C(Entity*, ScriptExecutionContext*);
void sub_0807E778(Entity*, ScriptExecutionContext*);
void sub_0807E788(Entity*, ScriptExecutionContext*);
void sub_0807E79C(Entity*, ScriptExecutionContext*);
void nullsub_508(Entity*, ScriptExecutionContext*);
void sub_0807E7B0(Entity*, ScriptExecutionContext*);
void sub_0807E7C4(Entity*, ScriptExecutionContext*);
void sub_0807E7D8(Entity*, ScriptExecutionContext*);
void sub_0807E7EC(Entity*, ScriptExecutionContext*);
void sub_0807E800(Entity*, ScriptExecutionContext*);
void sub_0807E80C(Entity*, ScriptExecutionContext*);
void sub_0807E818(u32);
void sub_0807E858(Entity*, ScriptExecutionContext*);
void sub_0807E864(Entity*, ScriptExecutionContext*);
void sub_0807E878(Entity*, ScriptExecutionContext*);
void sub_0807E888(Entity*, ScriptExecutionContext*);
void sub_0807E898(Entity*, ScriptExecutionContext*);
void sub_0807E8C4(Entity*, ScriptExecutionContext*);
void sub_0807E8D4(Entity*, ScriptExecutionContext*);
void sub_0807E8E4(Entity*, ScriptExecutionContext*);
void sub_0807E908(Entity*, ScriptExecutionContext*);
void sub_0807E914(Entity*, ScriptExecutionContext*);
void sub_0807E924(Entity*, ScriptExecutionContext*);
void sub_0807E930(Entity*, ScriptExecutionContext*);
void sub_0807E944(Entity*, ScriptExecutionContext*);
void sub_0807E974(Entity*, ScriptExecutionContext*);
void sub_0807E9D4(Entity*, ScriptExecutionContext*);
void sub_0807E9DC(Entity*, ScriptExecutionContext*);
void sub_0807E9E4(Entity*, ScriptExecutionContext*);
void sub_0807E9F0(Entity*, ScriptExecutionContext*);
void sub_0807EA4C(Entity*, ScriptExecutionContext*);
void sub_0807EA88(Entity*, ScriptExecutionContext*);
void sub_0807EA94(Entity*, ScriptExecutionContext*);
void sub_0807EAB4(Entity*, ScriptExecutionContext*);
void sub_0807EAC0(Entity*, ScriptExecutionContext*);
void sub_0807EAD0(Entity*, ScriptExecutionContext*);
void sub_0807EAF0(Entity*, ScriptExecutionContext*);
void sub_0807EB18(Entity*, ScriptExecutionContext*);
void sub_0807EB28(Entity*, ScriptExecutionContext*);
void sub_0807EB38(Entity*, ScriptExecutionContext*);
void sub_0807EB44(Entity*, ScriptExecutionContext*);
void sub_0807EB4C(Entity*, ScriptExecutionContext*);
void sub_0807EB74(Entity*, ScriptExecutionContext*);
void sub_0807EB8C(Entity*, ScriptExecutionContext*);
void sub_0807EBA8(Entity*, ScriptExecutionContext*);
void sub_0807EBB0(Entity*, ScriptExecutionContext*);
void sub_0807EBC0(Entity*, ScriptExecutionContext*);
void sub_0807EBC8(Entity*, ScriptExecutionContext*);
void sub_0807EBD8(Entity*, ScriptExecutionContext*);
void sub_0807EBF4(Entity*, ScriptExecutionContext*);
void sub_0807EC08(Entity*, ScriptExecutionContext*);
void nullsub_509(Entity*, ScriptExecutionContext*);
void sub_0807EC1C(Entity*, ScriptExecutionContext*);
void sub_0807EC44(Entity*, ScriptExecutionContext*);
void sub_0807EC64(Entity*, ScriptExecutionContext*);
void sub_0807EC94(Entity*, ScriptExecutionContext*);
void sub_0807ECC4(Entity*, ScriptExecutionContext*);
void sub_0807ECF4(Entity*, ScriptExecutionContext*);
void sub_0807ED24(Entity*, ScriptExecutionContext*);
void sub_0807EDD4(Entity*, ScriptExecutionContext*);
void sub_0807EE04(Entity*, ScriptExecutionContext*);
void sub_0807EE30(Entity*, ScriptExecutionContext*);
void sub_0807EEB4(Entity*, ScriptExecutionContext*);
void sub_0807EEF4(Entity*, ScriptExecutionContext*);
void sub_0807EF3C(Entity*, ScriptExecutionContext*);
void sub_0807EF80(Entity*, ScriptExecutionContext*);
void sub_0807EF90(Entity*, ScriptExecutionContext*);
void sub_0807EFA0(Entity*, ScriptExecutionContext*);
void sub_0807EFAC(Entity*, ScriptExecutionContext*);
void sub_0807EFD4(Entity*, ScriptExecutionContext*);
void sub_0807EFE4(Entity*, ScriptExecutionContext*);
void sub_0807EFF4(Entity*, ScriptExecutionContext*);
void sub_0807F004(Entity*, ScriptExecutionContext*);
void sub_0807F010(Entity*, ScriptExecutionContext*);
void sub_0807F034(Entity*, ScriptExecutionContext*);
void sub_0807F050(Entity*, ScriptExecutionContext*);
void sub_0807F060(Entity*, ScriptExecutionContext*);
void sub_0807F078(Entity*, ScriptExecutionContext*);
void sub_0807F088(Entity*, ScriptExecutionContext*);
void sub_0807F098(Entity*, ScriptExecutionContext*);
void sub_0807F0A4(Entity*, ScriptExecutionContext*);
void sub_0807F0B4(Entity*, ScriptExecutionContext*);
void sub_0807F0C8(Entity*, ScriptExecutionContext*);

extern void CreateSpeechBubbleExclamationMark(Entity*, u32, u32);
extern void CreateSpeechBubbleQuestionMark(Entity*, u32, u32);
extern void sub_0801C4A0(u32);
// size: 139
void (*const scriptOperations[])() = {
    nullsub_507,  // 0
    sub_0807E004, // 1
    sub_0807E014, // 2
    sub_0807E024, // 3
    sub_0807E050, // 4
    sub_0807E064, // 5
    sub_0807E078, // 6
    sub_0807E0A0, // 7
    sub_0807E0B8, // 8
    sub_0807E0CC, // 9
    sub_0807E0E0, // 10
    sub_0807E10C, // 11
    sub_0807E124, // 12
    sub_0807E148, // 13
    sub_0807E158, // 14
    sub_0807E188, // 15
    sub_0807E1D8, // 16
    sub_0807E4AC, // defined out of order 17
    sub_0807E200, // 18
    sub_0807E220, // 19
    sub_0807E240, // 20
    sub_0807E260, // 21
    sub_0807E280, // 22
    sub_0807E2A8, // 23
    sub_0807E2E4, // 24
    sub_0807E30C, // 25
    sub_0807E390, // 26
    sub_0807E3BC, // 27
    sub_0807E3E8, // 28
    sub_0807E40C, // 29
    sub_0807E42C, // 30
    sub_0807E48C, // 31
    sub_0807E4CC, // 32
    sub_0807E4EC, // 33
    sub_0807E514, // 34
    sub_0807E538, // 35
    sub_0807E564, // 36
    sub_0807E584, // 37
    sub_0807E5A0, // 38
    sub_0807E5CC, // 39
    sub_0807E5F8, // 40
    sub_0807E610, // 41
    sub_0807E628, // 42
    sub_0807E634, // 43
    sub_0807E644, // 44
    sub_0807E650, // 45
    sub_0807E65C, // 46
    sub_0807E668, // 47
    sub_0807E674, // 48
    sub_0807E680, // 49
    sub_0807E690, // 50
    sub_0807E6AC, // 51
    sub_0807E6DC, // 52
    sub_0807E700, // 53
    sub_0807E72C, // 54
    sub_0807E75C, // 55
    sub_0807E778, // 56
    sub_0807E788, // 57
    sub_0807E79C, // 58
    nullsub_508,  // 59
    sub_0807E7B0, // 60
    sub_0807E7C4, // 61
    sub_0807E7D8, // 62
    sub_0807E7EC, // 63
    sub_0807E800, // 64
    sub_0807E80C, // 65
    sub_0807E858, // 66
    sub_0807E864, // 67
    sub_0807E878, // 68
    sub_0807E888, // 69
    sub_0807E898, // 70
    sub_0807E8C4, // 71
    sub_0807E8D4, // 72
    sub_0807E8E4, // 73
    sub_0807E8E4, // 74// duplicate
    sub_0807E8E4, // 75// duplicate
    sub_0807E8E4, // 76// duplicate
    sub_0807E908, // 77
    sub_0807E914, // 78
    sub_0807E924, // 79
    sub_0807E930, // 80
    sub_0807E944, // 81
    sub_0807E974, // 82
    sub_0807E9D4, // 83
    sub_0807E9DC, // 84
    sub_0807E9E4, // 85
    sub_0807E9F0, // 86
    sub_0807EA4C, // 87
    sub_0807EA88, // 88
    sub_0807EA94, // 89
    sub_0807EAB4, // 90
    sub_0807EAC0, // 91
    sub_0807EAD0, // 92
    sub_0807EAF0, // 93
    sub_0807EB18, // 94
    sub_0807EB28, // 95
    sub_0807EB38, // 96
    sub_0807EB44, // 97
    sub_0807EB4C, // 98
    sub_0807EB74, // 99
    sub_0807EB8C, // 100
    sub_0807EBA8, // 101
    sub_0807EBB0, // 102
    sub_0807EBC0, // 103
    sub_0807EBC8, // 104
    sub_0807EBD8, // 105
    sub_0807EBF4, // 106
    sub_0807EC08, // 107
    nullsub_509,  // 108
    sub_0807EC1C, // 109
    sub_0807EC64, // 110
    sub_0807EC94, // 111
    sub_0807ECC4, // 112
    sub_0807ECF4, // 113
    sub_0807ED24, // 114
    sub_0807EDD4, // 115
    sub_0807EE04, // 116
    sub_0807EE30, // 117
    sub_0807EEB4, // 118
    sub_0807EEF4, // 119
    sub_0807EF3C, // 120
    sub_0807EF80, // 121
    sub_0807EF90, // 122
    sub_0807EFA0, // 123
    sub_0807EFAC, // 124
    sub_0807EFD4, // 125
    sub_0807EFE4, // 126
    sub_0807EFF4, // 127
    sub_0807F004, // 128
    sub_0807F010, // 129
    sub_0807F034, // 130
    sub_0807F050, // 131
    sub_0807F060, // 132
    sub_0807F078, // 133
    sub_0807F088, // 134
    sub_0807F098, // 135
    sub_0807F0A4, // 136
    sub_0807F0B4, // 137
    sub_0807F0C8  // 138
};

extern const u16 gUnk_08016984;
extern u8 gUnk_0811E514[];
extern u8 gUnk_0811E510[];
extern ScriptExecutionContext gPlayerScriptExecutionContext;
extern ScriptExecutionContext gScriptExecutionContextArray[0x20];

void sub_0807DA70(void) {
    MemClear32(&gUnk_02033280, sizeof(gUnk_02033280));
    MemClear32(&gScriptExecutionContextArray, sizeof(gScriptExecutionContextArray));
    MemClear32(&gPlayerScriptExecutionContext, sizeof(gPlayerScriptExecutionContext));
    gUnk_02033280.unk_08 = 8;
}

ScriptExecutionContext* CreateScriptExecutionContext(void) {
    ScriptExecutionContext* context;

    context = gScriptExecutionContextArray;
    do {
        if (context->unk_00.raw == 0) {
            return context;
        }
        context++;
    } while (context < gScriptExecutionContextArray + ARRAY_COUNT(gScriptExecutionContextArray));
    return NULL;
}

void DestroyScriptExecutionContext(ScriptExecutionContext* context) {
    MemClear32(context, sizeof(ScriptExecutionContext));
}

ScriptExecutionContext* StartCutscene(Entity* entity, u16* scriptCode) {
    ScriptExecutionContext* context;

    context = CreateScriptExecutionContext();
    if (context) {
        sub_0807DAF0(entity, context, scriptCode);
    }
    return context;
}

// start script on entity
void sub_0807DAF0(Entity* entity, ScriptExecutionContext* context, u16* scriptCode) {
    entity->flags = entity->flags | 2;
    *(ScriptExecutionContext**)&entity->cutsceneBeh = context;
    sub_0807DB88(context, scriptCode);
}

void UnloadCutsceneData(Entity* entity) {
    if ((entity->flags & 2)) {
        entity->flags = entity->flags & 0xfd;
        DestroyScriptExecutionContext(*(ScriptExecutionContext**)&entity->cutsceneBeh);
        *(ScriptExecutionContext**)&entity->cutsceneBeh = NULL;
    }
}

void StartPlayerScript(u16* unk1) {
    Entity* player;

    MemClear32(&gPlayerScriptExecutionContext, sizeof(gPlayerScriptExecutionContext));
    gPlayerScriptExecutionContext.unk_00.raw = unk1;
    player = &gPlayerEntity;
    *(ScriptExecutionContext**)&player->cutsceneBeh = &gPlayerScriptExecutionContext;
    gPlayerState.playerAction = 0x1c;
    gPlayerState.field_0x3a = 0;
    gPlayerState.field_0x39 = 0;
    gPlayerState.field_0x38 = 0;
}

ScriptExecutionContext* sub_0807DB68(Entity* entity, u16* unk1) {
    ScriptExecutionContext* context;

    context = CreateScriptExecutionContext();
    if (context) {
        entity->flags |= 2;
        *(ScriptExecutionContext**)&entity->field_0x3c = context;
        context->unk_00.raw = unk1;
    }
    return context;
}

// reset ScriptExecutionContext and set new commands?
void sub_0807DB88(ScriptExecutionContext* context, u16* scriptCode) {
    MemClear32(context, sizeof(ScriptExecutionContext));
    context->unk_00.raw = scriptCode;
}

void sub_0807DB98(Entity* entity, ScriptExecutionContext* context) {
    u32 switchVar;

    while (context->unk_08) {
        switchVar = (~context->unk_08 + 1) & context->unk_08;
        context->unk_08 ^= switchVar;
        switch (switchVar) {
            case 1:
                entity->field_0x80.HWORD = 0;
                break;
            case 2:
                entity->field_0x80.HWORD = 4;
                break;
            case 4:
                break;
            case 8:
                entity->field_0x20 = 0x18000;
                break;
            case 0x10:
                CreateSpeechBubbleExclamationMark(entity, 8, -0x18);
                break;
            case 0x20:
                CreateSpeechBubbleQuestionMark(entity, 8, -0x18);
                break;
            case 0x40:
                DestroyScriptExecutionContext(context);
                DeleteThisEntity();
            case 0x80:
                entity->spriteSettings.b.draw = 1;
                break;
            case 0x100:
                entity->spriteSettings.b.draw = 0;
                break;
            case 0x200:
                entity->spriteOffsetY = 0;
                entity->spriteOffsetX = 0;
                entity->field_0x82.HWORD = 0;
                break;
            case 0x400:
                entity->field_0x82.HWORD |= 2;
                break;
            case 0x800:
                entity->field_0x82.HWORD &= 0xfffd;
                break;
            case 0x1000:
                entity->field_0x82.HWORD &= 0xfffe;
                break;
            case 0x2000:
                entity->field_0x82.HWORD |= 1;
                break;
            case 0x4000:
                entity->field_0x82.HWORD |= 8;
                break;
            case 0x8000:
                entity->field_0x82.HWORD ^= 4;
                break;
            case 0x10000:
                entity->field_0x82.HWORD ^= 0x10;
                break;
            case 0x20000:
                entity->spriteSettings.b.flipX ^= 1;
                break;
            case 0x40000:
                entity->field_0x82.HWORD |= 0x20;
                break;
            case 0x80000:
                entity->field_0x82.HWORD &= 0xffdf;
                break;
            default:
                break;
        }
    }
}

void sub_0807DD50(Entity* entity) {
    sub_0807DD64(entity);
    sub_0807DD94(entity, 0);
}

void sub_0807DD64(Entity* entity) {
    entity->field_0xf = entity->animationState;
    entity->animIndex = 0xff;
    entity->field_0x80.HWORD = 0;
    entity->field_0x82.HWORD = 0;
}

// Special script start for windTribespeople?
void sub_0807DD80(Entity* entity, u16* scriptCode) {
    sub_0807DB88(*(ScriptExecutionContext**)&entity->cutsceneBeh, scriptCode);
    sub_0807DD64(entity);
}

void sub_0807DD94(Entity* entity, void (*function)(Entity*, ScriptExecutionContext*)) {
    sub_0807DDAC(entity, function);
    sub_0807DDE4(entity);
    sub_0807DE80(entity);
}

// executeScript commandset, then call the function (or sub_0807DB98 if NULL), then delete if no next entity
void sub_0807DDAC(Entity* entity, void (*function)(Entity*, ScriptExecutionContext*)) {
    ScriptExecutionContext** context;

    context = (ScriptExecutionContext**)&entity->cutsceneBeh;
    if (*context) {
        ExecuteScriptCommandSet(entity, *context);
        if (function) {
            function(entity, *context);
        } else {
            sub_0807DB98(entity, *context);
        }
        if (!entity->next) {
            DeleteThisEntity();
        }
    }
}

void sub_0807DDE4(Entity* entity) {
    u32 temp;
    u32 switchVar;
    u32 loopVar;

    loopVar = entity->field_0x82.HWORD;
    while (loopVar) {
        switchVar = (~loopVar + 1) & loopVar;
        loopVar = loopVar ^ switchVar;
        switch (switchVar) {
            case 2:
                if (entity->kind == 7) {
                    sub_0806ED78(entity);
                } else {
                    sub_0800445C(entity);
                }
                break;
            case 8:
                if ((gScreenTransition.frameCount & 3) == 0) {
                    temp = (entity->field_0xf + 2U) & 7;
                    entity->animationState = temp;
                    entity->field_0xf = temp;
                }
                break;
            case 0x10:
                if ((gScreenTransition.frameCount & 1) == 0) {
                    entity->spriteOffsetX = gUnk_0811E510[Random() & 3];
                }
                break;
            case 0x20:
                sub_08003FC4(entity, 0x2000);
                break;
        }
    }
}

void sub_0807DE80(Entity* entity) {
    u32 local1;
    u16 local2;

    u32 temp;

    local2 = entity->field_0x80.HWORD;
    if (local2 < 8) {
        if (entity->field_0x82.HWORD & 1) {
            u32 t1, t2;
            t1 = local2 & 0xfc;
            t2 = entity->field_0xf >> 1;
            local2 = t1 + t2;
        } else {
            u32 t1, t2;
            t1 = local2 & 0xfc;
            t2 = entity->animationState >> 1;
            local2 = t1 + t2;
            entity->field_0xf = entity->animationState;
        }
    }
    if (local2 != entity->animIndex) {
        InitAnimationForceUpdate(entity, local2);
    }
    temp = entity->field_0x82.HWORD & 4;
    local1 = 1;
    if (temp) {
        local1 = 2;
    }
    sub_080042BA(entity, local1);
}

void sub_0807DEDC(Entity* entity, ScriptExecutionContext* context, u32 arg2, u32 arg3) {
    int temp;
    s32 t0, t1;

    context->unk_19 = 8;
    context->unk_08 |= 2;
    context->compareResult = 0;
    context->unk_1C.HALF.HI = arg2;
    context->unk_20.HALF.HI = arg3;
    t0 = context->unk_1C.HALF.HI - entity->x.HALF.HI;
    t1 = context->unk_20.HALF.HI - entity->y.HALF.HI;
    temp = sub_080045DA(t0, t1);
    entity->direction = temp;
    entity->animationState = (entity->animationState & 0x80) | gUnk_0811E514[(u32)(temp << 0x18) >> 0x1c];
}

void sub_0807DF28(void) {
    sub_0807DF38();
    sub_08079184();
    sub_08077B20();
}

void sub_0807DF38(void) {
    gUnk_0200AF00.filler0[1] = 0xff;
    gUnk_02034490[0] = 0xff;
}

void sub_0807DF50(void) {
    gUnk_02034490[0] = 0;
    gUnk_0200AF00.filler0[1] = 0;
    sub_0801C4A0(0);
    sub_080791D0();
    sub_08079184();
}

void ExecuteScriptCommandSet(Entity* unk1, ScriptExecutionContext* unk2) {
    if (!unk2->unk_00.raw)
        return;
    if (unk2->unk_10) {
        unk2->unk_10--;
    } else {
        struct_02033280* tmp2 = &gUnk_02033280;
        // unk_07 bit 1 is being reset in each iteration
        // but bit 2 is also tested, so it can be set to continue execution until you reset it

        tmp2->continueScriptExecutionFlags = 0;
        do {
            u32 cmd = GetNextScriptCommandHalfword(unk2->unk_00.raw);
            u16* tmp;
            if (cmd == 0xFFFF)
                return;
            // after cutting of 10 bits, this is the amount to advance the unk_00 pointer of ScriptExecutionContext unk2
            tmp2->unk_06 = cmd >> 0xA;
            // lower 10 bits are the operationId (index to scriptOperations pointer array)
            tmp2->operationId = cmd & 0x3FF;
            tmp = unk2->unk_00.raw;
            tmp2->continueScriptExecutionFlags &= ~1;
            scriptOperations[tmp2->operationId](unk1, unk2);
            unk2->unk_00.raw += tmp2->unk_06;
            if (tmp != unk2->unk_00.raw) { // unk_00 was changed by tmp->unk_06 or the executed function -> set a flag
                                           // to execute the next instruction or something?
                unk2->unk_18 = 0;
            }
        } while (tmp2->continueScriptExecutionFlags & 3);
    }
}

void nullsub_507(Entity* unk1, ScriptExecutionContext* unk2) {
}

// Start executing scripts
void sub_0807E004(Entity* unk1, ScriptExecutionContext* unk2) {
    gUnk_02033280.continueScriptExecutionFlags |= 2;
}

// Stop executing scripts
void sub_0807E014(Entity* unk1, ScriptExecutionContext* unk2) {
    gUnk_02033280.continueScriptExecutionFlags &= ~2;
}

void sub_0807E024(Entity* unk1, ScriptExecutionContext* unk2) {
    s16 tmp;
    // get metadata -> tmp
    unk2->unk_00.raw++;
    tmp = GetNextScriptCommandHalfword(unk2->unk_00.raw);
    unk2->unk_00.raw += (tmp / 2);
    gUnk_02033280.unk_06 = 0;
}

// if
void sub_0807E050(Entity* unk1, ScriptExecutionContext* unk2) {
    if (unk2->compareResult) {
        sub_0807E024(unk1, unk2);
    }
}

// if not
void sub_0807E064(Entity* unk1, ScriptExecutionContext* unk2) {
    if (!unk2->compareResult) {
        sub_0807E024(unk1, unk2);
    }
}

void sub_0807E078(Entity* unk1, ScriptExecutionContext* unk2) {
    if (gUnk_02033280.unk_06 > unk2->unk_04) {
        unk2->unk_00.raw += unk2->unk_04;
        sub_0807E024(unk1, unk2);
    }
}

void sub_0807E0A0(Entity* unk1, ScriptExecutionContext* unk2) {
    unk2->unk_00.raw = (u16*)GetNextScriptCommandWordAfterCommandMetadata(unk2->unk_00.raw);
    gUnk_02033280.unk_06 = 0;
}

// if
void sub_0807E0B8(Entity* unk1, ScriptExecutionContext* unk2) {
    if (unk2->compareResult) {
        sub_0807E0A0(unk1, unk2);
    }
}

// if not
void sub_0807E0CC(Entity* unk1, ScriptExecutionContext* unk2) {
    if (!unk2->compareResult) {
        sub_0807E0A0(unk1, unk2);
    }
}

void sub_0807E0E0(Entity* unk1, ScriptExecutionContext* unk2) {
    if (gUnk_02033280.unk_06 > (unk2->unk_04 << 1) + 1) {
        unk2->unk_00.raw += unk2->unk_04 << 1;
        sub_0807E0A0(unk1, unk2);
    }
}

// Execute function via pointer
void sub_0807E10C(Entity* unk1, ScriptExecutionContext* unk2) {
    ((void (*)(Entity*, ScriptExecutionContext*))GetNextScriptCommandWordAfterCommandMetadata(unk2->unk_00.raw))(unk1,
                                                                                                                 unk2);
}

// Execute function via pointer but set context->unk_04 to some meta/cmd before?
void sub_0807E124(Entity* unk1, ScriptExecutionContext* unk2) {
    void (*tmp)(Entity*, ScriptExecutionContext*) =
        (void (*)(Entity*, ScriptExecutionContext*))GetNextScriptCommandWordAfterCommandMetadata(unk2->unk_00.raw);
    unk2->unk_04 = GetNextScriptCommandWord(unk2->unk_00.raw + 3);
    tmp(unk1, unk2);
}

void sub_0807E148(Entity* unk1, ScriptExecutionContext* unk2) {
    LoadRoomEntityList(GetNextScriptCommandWordAfterCommandMetadata(unk2->unk_00.raw));
}

// compare ???
void sub_0807E158(Entity* unk1, ScriptExecutionContext* unk2) {
    u32 tmp = GetNextScriptCommandWordAfterCommandMetadata(unk2->unk_00.raw);
    u32 tmp2 = 0;
    u32 tmp3 = gUnk_02033280.unk_00;
    if ((tmp3 & tmp) == tmp)
        tmp2 = 1;
    unk2->compareResult = tmp2;
    gUnk_02033280.unk_00 = tmp3 & ~tmp;
    gUnk_02033280.continueScriptExecutionFlags |= 1;
}

// different compare functions (dungeon map, dungeon compass, dungeon big key, dungeon small keys, inventory value)
void sub_0807E188(Entity* unk1, ScriptExecutionContext* unk2) {
    u32 tmp;
    u32 tmp2 = GetNextScriptCommandHalfwordAfterCommandMetadata(unk2->unk_00.raw);
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
    unk2->compareResult = tmp;
    gUnk_02033280.continueScriptExecutionFlags |= 1;
}

// compare GetInventoryValue(meta) == 2
void sub_0807E1D8(Entity* unk1, ScriptExecutionContext* unk2) {
    unk2->compareResult = GetInventoryValue(unk2->unk_00.raw[1]) == 2;
    gUnk_02033280.continueScriptExecutionFlags |= 1;
}

// compare CheckLocalFlag
void sub_0807E200(Entity* unk1, ScriptExecutionContext* unk2) {
    unk2->compareResult = CheckLocalFlag(unk2->unk_00.raw[1]);
    gUnk_02033280.continueScriptExecutionFlags |= 1;
}

// compare CheckLocalFlagByOffset(metadata1, metadata2)
void sub_0807E220(Entity* unk1, ScriptExecutionContext* unk2) {
    unk2->compareResult = CheckLocalFlagByOffset(unk2->unk_00.raw[1], unk2->unk_00.raw[2]);
    gUnk_02033280.continueScriptExecutionFlags |= 1;
}

// compare CheckGlobalFlag
void sub_0807E240(Entity* unk1, ScriptExecutionContext* unk2) {
    unk2->compareResult = CheckGlobalFlag(GetNextScriptCommandHalfwordAfterCommandMetadata(unk2->unk_00.raw));
    gUnk_02033280.continueScriptExecutionFlags |= 1;
}

// compare CheckRoomFlag
void sub_0807E260(Entity* unk1, ScriptExecutionContext* unk2) {
    unk2->compareResult = CheckRoomFlag(unk2->unk_00.raw[1]);
    gUnk_02033280.continueScriptExecutionFlags |= 1;
}

// compare checkPlayerInRegion  (square?)
void sub_0807E280(Entity* unk1, ScriptExecutionContext* unk2) {
    u32 x, y, width, height;
    width = unk2->unk_00.raw[3];
    height = width >> 8;
    width &= 0xFF;
    x = unk2->unk_00.raw[1];
    y = unk2->unk_00.raw[2];
    unk2->compareResult = CheckPlayerInRegion(x, y, width, height);
    gUnk_02033280.continueScriptExecutionFlags |= 1;
}

// compare CheckPlayerInRegion (room?)
void sub_0807E2A8(Entity* unk1, ScriptExecutionContext* unk2) {
    u32 x, y, width, height;
    width = unk2->unk_00.raw[1] & 0xFF;
    height = unk2->unk_00.raw[1] >> 8;
    x = unk1->x.HALF.HI - gRoomControls.roomOriginX;
    y = unk1->y.HALF.HI - gRoomControls.roomOriginY;
    unk2->compareResult = CheckPlayerInRegion(x, y, width, height);
    gUnk_02033280.continueScriptExecutionFlags |= 1;
}

// compare and reset Entity->interactType
void sub_0807E2E4(Entity* unk1, ScriptExecutionContext* unk2) {
    if (unk1->interactType) {
        unk1->interactType = 0;
        unk2->compareResult = 1;
    } else {
        unk2->compareResult = 0;
    }
    gUnk_02033280.continueScriptExecutionFlags |= 1;
}

// compare and reset interactType while setting animationState ??
void sub_0807E30C(Entity* unk1, ScriptExecutionContext* unk2) {
    if ((unk2->unk_1A & 0xF) == 0 && (gPlayerState.flags.all & 0x80) == 0 &&
        sub_080041A0(unk1, &gPlayerEntity, 0x28, 0x28)) {
        unk1->animationState = sub_0806F5B0(GetFacingDirection(unk1, &gPlayerEntity));
    }
    unk2->unk_1A++;
    if (unk1->interactType) {
        unk1->interactType = 0;
        unk2->compareResult = 1;
        unk1->animationState = sub_0806F5B0(GetFacingDirection(unk1, &gPlayerEntity));
    } else {
        unk2->compareResult = 0;
    }
    gUnk_02033280.continueScriptExecutionFlags |= 1;
}

// compare enough rupees
void sub_0807E390(Entity* unk1, ScriptExecutionContext* unk2) {
    unk2->compareResult = (unk2->unk_00.raw[1] <= gSave.stats.rupees);
    gUnk_02033280.continueScriptExecutionFlags |= 1;
}

// compare enough ???
void sub_0807E3BC(Entity* unk1, ScriptExecutionContext* unk2) {
    unk2->compareResult = (unk2->unk_00.raw[1] <= gSave.stats.field_0x1a);
    gUnk_02033280.continueScriptExecutionFlags |= 1;
}

// compare ???
void sub_0807E3E8(Entity* unk1, ScriptExecutionContext* unk2) {
    unk2->compareResult = !gUnk_02000040.unk_01;
    gUnk_02033280.continueScriptExecutionFlags |= 1;
}

// compare CheckKinstoneFused
void sub_0807E40C(Entity* unk1, ScriptExecutionContext* unk2) {
    unk2->compareResult = CheckKinstoneFused(unk2->unk_00.raw[1]);
    gUnk_02033280.continueScriptExecutionFlags |= 1;
}

// compare enough rupees and remove rupees ??
void sub_0807E42C(Entity* unk1, ScriptExecutionContext* unk2) {
    u32 tmp, tmp2;
    s32 tmp3;
    tmp = unk2->unk_00.raw[1];
    tmp2 = unk2->unk_00.raw[2];
    if (!tmp) {
        tmp = gRoomVars.itemForSaleIndex;
        tmp2 = gRoomVars.field_0x7;
    }
    tmp3 = sub_08053FE0(tmp);
    unk2->compareResult = (tmp3 <= gSave.stats.rupees);
    if (unk2->compareResult) {
        ModRupees(-tmp3);
        sub_080A7C18(tmp, tmp2, 0);
        gRoomVars.itemForSaleIndex = 0;
        gRoomVars.field_0x7 = 0;
    }
    gUnk_02033280.continueScriptExecutionFlags |= 1;
}

// compare ??
void sub_0807E48C(Entity* unk1, ScriptExecutionContext* unk2) {
    unk2->compareResult = sub_080544DC(unk2->unk_00.raw[1]);
    gUnk_02033280.continueScriptExecutionFlags |= 1;
}

// compare itemForSaleIndex??
void sub_0807E4AC(Entity* unk1, ScriptExecutionContext* unk2) {
    unk2->compareResult = !!gRoomVars.itemForSaleIndex;
    gUnk_02033280.continueScriptExecutionFlags |= 1;
}

// compare ??
void sub_0807E4CC(Entity* unk1, ScriptExecutionContext* unk2) {
    unk2->compareResult = !!(unk2->unk_04 & unk2->unk_00.raw[1]);
    gUnk_02033280.continueScriptExecutionFlags |= 1;
}

// compare meta & unk_04 ??
void sub_0807E4EC(Entity* unk1, ScriptExecutionContext* unk2) {
    u32 tmp = unk2->unk_00.raw[1];
    unk2->compareResult = tmp == (tmp & unk2->unk_04);
    gUnk_02033280.continueScriptExecutionFlags |= 1;
}

// compare meta == unk_04 ??
void sub_0807E514(Entity* unk1, ScriptExecutionContext* unk2) {
    u32 tmp = unk2->unk_00.raw[1];
    unk2->compareResult = tmp == unk2->unk_04;
    gUnk_02033280.continueScriptExecutionFlags |= 1;
}

// compare player state flags ???
void sub_0807E538(Entity* unk1, ScriptExecutionContext* unk2) {
    unk2->compareResult = !!(GetNextScriptCommandWordAfterCommandMetadata(unk2->unk_00.raw) & gPlayerState.flags.all);
    gUnk_02033280.continueScriptExecutionFlags |= 1;
}

// compare player state flags ???
void sub_0807E564(Entity* unk1, ScriptExecutionContext* unk2) {
    unk2->compareResult = (gPlayerState.flags.all >> 7) & 1;
    gUnk_02033280.continueScriptExecutionFlags |= 1;
}

// compare entity height != 0
void sub_0807E584(Entity* unk1, ScriptExecutionContext* unk2) {
    unk2->compareResult = unk1->height.WORD != 0;
    gUnk_02033280.continueScriptExecutionFlags |= 1;
}

// compare meta == player.action
void sub_0807E5A0(Entity* unk1, ScriptExecutionContext* unk2) {
    unk2->compareResult = unk2->unk_00.raw[1] == gPlayerEntity.action;
    gUnk_02033280.continueScriptExecutionFlags |= 1;
}

// compare meta == player.animationState
void sub_0807E5CC(Entity* unk1, ScriptExecutionContext* unk2) {
    unk2->compareResult = unk2->unk_00.raw[1] == gPlayerEntity.animationState;
    gUnk_02033280.continueScriptExecutionFlags |= 1;
}

void sub_0807E5F8(Entity* unk1, ScriptExecutionContext* unk2) {
    gUnk_02033280.unk_00 |= GetNextScriptCommandWordAfterCommandMetadata(unk2->unk_00.raw);
}

void sub_0807E610(Entity* unk1, ScriptExecutionContext* unk2) {
    gUnk_02033280.unk_00 &= ~GetNextScriptCommandWordAfterCommandMetadata(unk2->unk_00.raw);
}

void sub_0807E628(Entity* unk1, ScriptExecutionContext* unk2) {
    SetLocalFlag(unk2->unk_00.raw[1]);
}

void sub_0807E634(Entity* unk1, ScriptExecutionContext* unk2) {
    SetLocalFlagByOffset(unk2->unk_00.raw[1], unk2->unk_00.raw[2]);
}

void sub_0807E644(Entity* unk1, ScriptExecutionContext* unk2) {
    ClearLocalFlag(unk2->unk_00.raw[1]);
}

void sub_0807E650(Entity* unk1, ScriptExecutionContext* unk2) {
    SetGlobalFlag(unk2->unk_00.raw[1]);
}

void sub_0807E65C(Entity* unk1, ScriptExecutionContext* unk2) {
    ClearGlobalFlag(unk2->unk_00.raw[1]);
}

void sub_0807E668(Entity* unk1, ScriptExecutionContext* unk2) {
    SetRoomFlag(unk2->unk_00.raw[1]);
}

void sub_0807E674(Entity* unk1, ScriptExecutionContext* unk2) {
    ClearRoomFlag(unk2->unk_00.raw[1]);
}

// set unk2->unk_10 to meta
void sub_0807E680(Entity* unk1, ScriptExecutionContext* unk2) {
    unk2->unk_10 = GetNextScriptCommandHalfwordAfterCommandMetadata(unk2->unk_00.raw);
}

void sub_0807E690(Entity* unk1, ScriptExecutionContext* unk2) {
    u32 tmp = GetNextScriptCommandWordAfterCommandMetadata(unk2->unk_00.raw);
    if ((gUnk_02033280.unk_00 & tmp) != tmp) {
        gUnk_02033280.unk_06 = 0;
    }
}

void sub_0807E6AC(Entity* unk1, ScriptExecutionContext* unk2) {
    u32 tmp = GetNextScriptCommandWordAfterCommandMetadata(unk2->unk_00.raw);
    if ((gUnk_02033280.unk_00 & tmp) != tmp) {
        gUnk_02033280.unk_06 = 0;
    } else {
        gUnk_02033280.unk_00 &= ~tmp;
        gUnk_02033280.continueScriptExecutionFlags |= 1;
    }
}

void sub_0807E6DC(Entity* unk1, ScriptExecutionContext* unk2) {
    if (gPlayerEntity.action == 8) {
        gUnk_02033280.unk_06 = 0;
    } else {
        unk2->unk_10 = 0x2D;
    }
}

void sub_0807E700(Entity* unk1, ScriptExecutionContext* unk2) {
    if (gPlayerEntity.action != 0x17) {
        gUnk_02033280.continueScriptExecutionFlags |= 1;
    } else {
        gUnk_02033280.unk_06 = 0;
    }
}

void sub_0807E72C(Entity* unk1, ScriptExecutionContext* unk2) {
    if (gRoomControls.unk6 & 4) {
        gUnk_02033280.unk_06 = 0;
    } else {
        gUnk_02033280.continueScriptExecutionFlags |= 1;
    }
}

void sub_0807E75C(Entity* unk1, ScriptExecutionContext* unk2) {
    if (gFadeControl.active) {
        gUnk_02033280.unk_06 = 0;
    }
}

void sub_0807E778(Entity* unk1, ScriptExecutionContext* unk2) {
    gUnk_02033280.unk_08 = unk2->unk_00.raw[1];
}

void sub_0807E788(Entity* unk1, ScriptExecutionContext* unk2) {
    gFadeControl.field_0x4 = GetNextScriptCommandWordAfterCommandMetadata(unk2->unk_00.raw);
}

void sub_0807E79C(Entity* unk1, ScriptExecutionContext* unk2) {
    sub_080500F4(gUnk_02033280.unk_08);
}

void nullsub_508(Entity* unk1, ScriptExecutionContext* unk2) {
}

void sub_0807E7B0(Entity* unk1, ScriptExecutionContext* unk2) {
    DoFade(4, gUnk_02033280.unk_08);
}

void sub_0807E7C4(Entity* unk1, ScriptExecutionContext* unk2) {
    DoFade(5, gUnk_02033280.unk_08);
}

void sub_0807E7D8(Entity* unk1, ScriptExecutionContext* unk2) {
    DoFade(6, gUnk_02033280.unk_08);
}

void sub_0807E7EC(Entity* unk1, ScriptExecutionContext* unk2) {
    DoFade(7, gUnk_02033280.unk_08);
}

void sub_0807E800(Entity* unk1, ScriptExecutionContext* unk2) {
    sub_0807E818(0x10);
}

void sub_0807E80C(Entity* unk1, ScriptExecutionContext* unk2) {
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

void sub_0807E858(Entity* unk1, ScriptExecutionContext* unk2) {
    sub_08050038(unk2->unk_00.raw[1]);
}

void sub_0807E864(Entity* unk1, ScriptExecutionContext* unk2) {
    gPlayerState.field_0x8b = 3;
    sub_08078B48();
}

void sub_0807E878(Entity* unk1, ScriptExecutionContext* unk2) {
    gPlayerState.field_0x8b = 1;
}

void sub_0807E888(Entity* unk1, ScriptExecutionContext* unk2) {
    gPlayerState.field_0x8b = 3;
}

void sub_0807E898(Entity* unk1, ScriptExecutionContext* unk2) {
    u32 tmp = GetNextScriptCommandWordAfterCommandMetadata(unk2->unk_00.raw);
    gPlayerState.playerAction = tmp;
    gPlayerState.field_0x38 = tmp >> 8;
    gPlayerState.field_0x39 = tmp >> 0x10;
    gPlayerState.field_0x3a = tmp >> 0x18;
}

void sub_0807E8C4(Entity* unk1, ScriptExecutionContext* unk2) {
    StartPlayerScript((u16*)GetNextScriptCommandWordAfterCommandMetadata(unk2->unk_00.raw));
}

void sub_0807E8D4(Entity* unk1, ScriptExecutionContext* unk2) {
    gPlayerState.field_0x8 = unk2->unk_00.raw[1];
}

void sub_0807E8E4(Entity* unk1, ScriptExecutionContext* unk2) {
    u32 tmp = (gUnk_08016984 & 0x3FF);
    u32 tmp2;
    gPlayerEntity.animationState = tmp2 = (unk2->unk_00.raw[0] - tmp) << 1;
}

void sub_0807E908(Entity* unk1, ScriptExecutionContext* unk2) {
    unk1->action = unk2->unk_00.raw[1];
    unk1->previousActionFlag = 0;
}

void sub_0807E914(Entity* unk1, ScriptExecutionContext* unk2) {
    unk2->unk_04 = GetNextScriptCommandWordAfterCommandMetadata(unk2->unk_00.raw);
}

void sub_0807E924(Entity* unk1, ScriptExecutionContext* unk2) {
    unk2->unk_04 = unk1->frames.all;
    unk1->frames.all = 0;
}

void sub_0807E930(Entity* unk1, ScriptExecutionContext* unk2) {
    unk1->field_0x80.HWORD = unk2->unk_00.raw[1];
    InitAnimationForceUpdate(unk1, unk2->unk_00.raw[1]);
}

void sub_0807E944(Entity* unk1, ScriptExecutionContext* unk2) {
    if (unk1->interactType) {
        unk1->interactType = 0;
        gUnk_02033280.continueScriptExecutionFlags |= 1;
    } else {
        gUnk_02033280.unk_06 = 0;
    }
}

void sub_0807E974(Entity* unk1, ScriptExecutionContext* unk2) {
    switch (unk2->unk_18) {
        default:
            if (!--unk2->unk_19)
                return;
            break;
        case 0:
            if (!unk1->interactType)
                break;
            unk1->interactType = 0;
            unk2->unk_18++;
            TextboxNoOverlapFollow(unk2->unk_00.raw[1]);
            break;
        case 1:
            if (gTextBox.doTextBox & 0x7F)
                break;
            unk2->unk_18 = 2;
            unk2->unk_19 = 0xF;
            break;
    }
    gUnk_02033280.unk_06 = 0;
}

void sub_0807E9D4(Entity* unk1, ScriptExecutionContext* unk2) {
    sub_08078778(unk1);
}

void sub_0807E9DC(Entity* unk1, ScriptExecutionContext* unk2) {
    sub_080788E0(unk1);
}

void sub_0807E9E4(Entity* unk1, ScriptExecutionContext* unk2) {
    sub_08078784(unk1, unk2->unk_00.raw[1]);
}

// compare and do stuff?
void sub_0807E9F0(Entity* unk1, ScriptExecutionContext* unk2) {
    u32 tmp;
    sub_0801E00C();
    tmp = 1;
    switch (gUnk_02022740[0]) {
        case 2:
            gPlayerState.field_0x8b = 3;
            gUnk_02034490[0] = tmp;
            unk2->compareResult = tmp;
            break;
        case 1:
            unk2->compareResult = 0;
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

void sub_0807EA4C(Entity* unk1, ScriptExecutionContext* unk2) {
    if (unk1->interactType == 2) {
        sub_0801DFB4(unk1, 0, 0, 0);
        unk1->interactType = 0;
        gUnk_02033280.continueScriptExecutionFlags |= 1;
    } else {
        gUnk_02033280.unk_06 = 0;
    }
}

void sub_0807EA88(Entity* unk1, ScriptExecutionContext* unk2) {
    sub_08078790(unk1, unk2->unk_00.raw[1]);
}

void sub_0807EA94(Entity* unk1, ScriptExecutionContext* unk2) {
    if (gTextBox.doTextBox & 0x7F) {
        gUnk_02033280.unk_06 = 0;
    }
}

void sub_0807EAB4(Entity* unk1, ScriptExecutionContext* unk2) {
    TextboxNoOverlapFollow(unk2->unk_00.raw[1]);
}

void sub_0807EAC0(Entity* unk1, ScriptExecutionContext* unk2) {
    TextboxNoOverlap(unk2->unk_00.raw[1], unk1);
}

void sub_0807EAD0(Entity* unk1, ScriptExecutionContext* unk2) {
    TextboxNoOverlapFollow(unk2->unk_00.raw[1]);
    gTextBox.textWindowPosX = 1;
    gTextBox.textWindowPosY = unk2->unk_00.raw[2];
}

void sub_0807EAF0(Entity* unk1, ScriptExecutionContext* unk2) {
    if (gUnk_02033280.unk_06 > unk2->unk_04) {
        u16* tmp = unk2->unk_00.raw + unk2->unk_04;
        TextboxNoOverlapFollow(tmp[1]);
    } else {
        TextboxNoOverlapFollow(0);
    }
}

void sub_0807EB18(Entity* unk1, ScriptExecutionContext* unk2) {
    TextboxNoOverlap(unk2->unk_04, unk1);
}

void sub_0807EB28(Entity* unk1, ScriptExecutionContext* unk2) {
    sub_08078AA8(unk2->unk_00.raw[1], 0);
}

void sub_0807EB38(Entity* unk1, ScriptExecutionContext* unk2) {
    unk2->unk_04 = gUnk_02000040.unk_01;
}

void sub_0807EB44(Entity* unk1, ScriptExecutionContext* unk2) {
    unk1->animationState = unk2->unk_00.raw[1];
}

void sub_0807EB4C(Entity* unk1, ScriptExecutionContext* unk2) {
    unk1->animationState = sub_0806F5B0(sub_080045B4(unk1, unk2->unk_00.raw[1] + gRoomControls.roomOriginX,
                                                     unk2->unk_00.raw[2] + gRoomControls.roomOriginY));
}

void sub_0807EB74(Entity* unk1, ScriptExecutionContext* unk2) {
    unk1->animationState = sub_0806F5B0(GetFacingDirection(unk1, &gPlayerEntity));
}

void sub_0807EB8C(Entity* unk1, ScriptExecutionContext* unk2) {
    gPlayerEntity.animationState = sub_0806F5B0(GetFacingDirection(&gPlayerEntity, unk1)) & ~1;
}

void sub_0807EBA8(Entity* unk1, ScriptExecutionContext* unk2) {
    unk1->direction = unk2->unk_00.raw[1];
}

void sub_0807EBB0(Entity* unk1, ScriptExecutionContext* unk2) {
    unk1->direction = unk2->unk_00.raw[1];
    unk1->animationState = unk1->direction / 4;
}

// set nonPlanarMovement
void sub_0807EBC0(Entity* unk1, ScriptExecutionContext* unk2) {
    unk1->nonPlanarMovement = unk2->unk_00.raw[1];
}

void sub_0807EBC8(Entity* unk1, ScriptExecutionContext* unk2) {
    unk1->field_0x20 = GetNextScriptCommandWordAfterCommandMetadata(unk2->unk_00.raw);
}

void sub_0807EBD8(Entity* unk1, ScriptExecutionContext* unk2) {
    unk1->x.HALF.HI = gRoomControls.roomOriginX + unk2->unk_00.raw[1];
    unk1->y.HALF.HI = gRoomControls.roomOriginY + unk2->unk_00.raw[2];
}

void sub_0807EBF4(Entity* unk1, ScriptExecutionContext* unk2) {
    unk1->x.HALF.HI += unk2->unk_00.raw[1];
    unk1->y.HALF.HI += unk2->unk_00.raw[2];
}

void sub_0807EC08(Entity* unk1, ScriptExecutionContext* unk2) {
    CopyPosition(&gPlayerEntity, unk1);
}

void nullsub_509(Entity* unk1, ScriptExecutionContext* unk2) {
}

void sub_0807EC1C(Entity* unk1, ScriptExecutionContext* unk2) {
    if (!unk2->unk_18) {
        unk2->unk_18 = 1;
        unk2->unk_12 = unk2->unk_00.raw[1];
        unk2->unk_08 |= 2;
    }
    sub_0807EC44(unk1, unk2);
}

void sub_0807EC44(Entity* unk1, ScriptExecutionContext* unk2) {
    sub_0806F69C(unk1);
    if (--unk2->unk_12) {
        gUnk_02033280.unk_06 = 0;
    }
}

void sub_0807EC64(Entity* unk1, ScriptExecutionContext* unk2) {
    if (!unk2->unk_18) {
        unk2->unk_18 = 1;
        unk2->unk_12 = unk2->unk_00.raw[1];
        unk1->animationState = 0;
        unk1->direction = 0;
        unk2->unk_08 |= 2;
    }
    sub_0807EC44(unk1, unk2);
}

void sub_0807EC94(Entity* unk1, ScriptExecutionContext* unk2) {
    if (!unk2->unk_18) {
        unk2->unk_18 = 1;
        unk2->unk_12 = unk2->unk_00.raw[1];
        unk1->animationState = 2;
        unk1->direction = 8;
        unk2->unk_08 |= 2;
    }
    sub_0807EC44(unk1, unk2);
}

void sub_0807ECC4(Entity* unk1, ScriptExecutionContext* unk2) {
    if (!unk2->unk_18) {
        unk2->unk_18 = 1;
        unk2->unk_12 = unk2->unk_00.raw[1];
        unk1->animationState = 4;
        unk1->direction = 0x10;
        unk2->unk_08 |= 2;
    }
    sub_0807EC44(unk1, unk2);
}

void sub_0807ECF4(Entity* unk1, ScriptExecutionContext* unk2) {
    if (!unk2->unk_18) {
        unk2->unk_18 = 1;
        unk2->unk_12 = unk2->unk_00.raw[1];
        unk1->animationState = 6;
        unk1->direction = 0x18;
        unk2->unk_08 |= 2;
    }
    sub_0807EC44(unk1, unk2);
}

void sub_0807ED24(Entity* unk1, ScriptExecutionContext* unk2) {
    if (!unk2->unk_18) {
        s32 tmp, tmp2, tmp3;
        unk2->unk_18 = 1;
        unk2->unk_12 = unk2->unk_00.raw[3];
        tmp = unk2->unk_00.raw[1];
        tmp2 = unk1->x.HALF.HI - gRoomControls.roomOriginX;
        unk2->unk_1C.WORD = ((tmp - tmp2) << 0x10) / unk2->unk_12;
        tmp = unk2->unk_00.raw[2];
        tmp3 = unk1->y.HALF.HI - gRoomControls.roomOriginY;
        unk2->unk_20.WORD = ((tmp - tmp3) << 0x10) / unk2->unk_12;
        unk1->animationState = sub_0806F5B0(sub_080045B4(unk1, unk2->unk_00.raw[1] + gRoomControls.roomOriginX,
                                                         unk2->unk_00.raw[2] + gRoomControls.roomOriginY));
        unk2->unk_08 |= 2;
    } else {
        if (!--unk2->unk_12) {
            unk1->x.HALF.HI = unk2->unk_00.raw[1] + gRoomControls.roomOriginX;
            unk1->y.HALF.HI = unk2->unk_00.raw[2] + gRoomControls.roomOriginY;
            return;
        }
        unk1->x.WORD += unk2->unk_1C.WORD;
        unk1->y.WORD += unk2->unk_20.WORD;
    }
    gUnk_02033280.unk_06 = 0;
}

// something else and an if not
void sub_0807EDD4(Entity* unk1, ScriptExecutionContext* unk2) {
    if (!unk2->unk_18) {
        unk2->unk_18 = 1;
        sub_0807EE04(unk1, unk2);
    }
    sub_0807EE30(unk1, unk2);
    if (!unk2->compareResult) {
        gUnk_02033280.unk_06 = 0;
    }
}

void sub_0807EE04(Entity* unk1, ScriptExecutionContext* unk2) {
    sub_0807DEDC(unk1, unk2, unk2->unk_00.raw[1] + gRoomControls.roomOriginX,
                 unk2->unk_00.raw[2] + gRoomControls.roomOriginY);
    gUnk_02033280.continueScriptExecutionFlags |= 1;
}

// something else and a compare
void sub_0807EE30(Entity* unk1, ScriptExecutionContext* unk2) {
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
        unk2->compareResult = 1;
    } else {
        unk2->compareResult = 0;
    }
}

// another if not and ???
void sub_0807EEB4(Entity* unk1, ScriptExecutionContext* unk2) {
    if (!unk2->unk_18) { // TODO unk_18 another compare flag?
        unk2->unk_18 = 1;
        sub_0807DEDC(unk1, unk2, gPlayerEntity.x.HALF.HI, gPlayerEntity.y.HALF.HI);
    }
    sub_0807EE30(unk1, unk2);
    if (!unk2->compareResult) {
        gUnk_02033280.unk_06 = 0; // TODO research unk_06
    }
}

// another if not ???
void sub_0807EEF4(Entity* unk1, ScriptExecutionContext* unk2) {
    if (!unk2->unk_18) {
        unk2->unk_18 = 1;
        sub_0807DEDC(unk1, unk2, unk1->x.HALF.HI + ((s16)unk2->unk_00.raw[1]),
                     unk1->y.HALF.HI + ((s16)unk2->unk_00.raw[2]));
    }
    sub_0807EE30(unk1, unk2);
    if (!unk2->compareResult) {
        gUnk_02033280.unk_06 = 0;
    }
}

void sub_0807EF3C(Entity* unk1, ScriptExecutionContext* unk2) {
    if (!unk2->unk_18) {
        unk2->unk_18 = 1;
        unk1->field_0x20 = ((s16)unk2->unk_00.raw[1]) << 8;
        unk2->unk_1C.HALF.LO = unk2->unk_00.raw[2] << 8;
        sub_08003FC4(unk1, (u16)unk2->unk_1C.HALF.LO);
    } else {
        if (!sub_08003FC4(unk1, (u16)unk2->unk_1C.HALF.LO))
            return;
    }
    gUnk_02033280.unk_06 = 0;
}

void sub_0807EF80(Entity* unk1, ScriptExecutionContext* unk2) {
    unk2->unk_08 |= 1 << unk2->unk_00.raw[1];
}

void sub_0807EF90(Entity* unk1, ScriptExecutionContext* unk2) {
    unk2->unk_08 |= 1 << unk2->unk_00.raw[1];
}

void sub_0807EFA0(Entity* unk1, ScriptExecutionContext* unk2) {
    SoundReq(unk2->unk_00.raw[1]);
}

void sub_0807EFAC(Entity* unk1, ScriptExecutionContext* unk2) {
    if (unk2->unk_00.raw[1] >= 100) {
        SoundReq(gArea.musicIndex);
    } else {
        SoundReq(unk2->unk_00.raw[1]);
    }
}

void sub_0807EFD4(Entity* unk1, ScriptExecutionContext* unk2) {
    SoundReq(GetNextScriptCommandWordAfterCommandMetadata(unk2->unk_00.raw));
}

void sub_0807EFE4(Entity* unk1, ScriptExecutionContext* unk2) {
    SoundReq(0x80100000);
}

void sub_0807EFF4(Entity* unk1, ScriptExecutionContext* unk2) {
    ModRupees((s16)unk2->unk_00.raw[1]);
}

void sub_0807F004(Entity* unk1, ScriptExecutionContext* unk2) {
    ModHealth(unk2->unk_00.commands[0].metadata);
}

void sub_0807F010(Entity* unk1, ScriptExecutionContext* unk2) {
    gSave.stats.maxHealth = min(gSave.stats.maxHealth + 8, 0xA0);
    gSave.stats.health = gSave.stats.maxHealth;
}

void sub_0807F034(Entity* unk1, ScriptExecutionContext* unk2) {
    u32 tmp = 0;
    if (unk2->unk_00.raw[1] == 0x3F) {
        tmp = unk2->unk_04;
    }
    sub_080A7C18(unk2->unk_00.raw[1], tmp, 0);
}

void sub_0807F050(Entity* unk1, ScriptExecutionContext* unk2) {
    sub_080A7C18(0x5C, unk2->unk_00.raw[1], 0);
}

// get inventory value and compare ??
void sub_0807F060(Entity* unk1, ScriptExecutionContext* unk2) {
    unk2->unk_04 = GetInventoryValue(unk2->unk_00.raw[1]);
    unk2->compareResult = unk2->unk_04 != 0;
}

void sub_0807F078(Entity* unk1, ScriptExecutionContext* unk2) {
    sub_0807CAA0(unk2->unk_00.raw[1], unk2->unk_00.raw[2]);
}

void sub_0807F088(Entity* unk1, ScriptExecutionContext* unk2) {
    sub_080A7C18(unk2->unk_00.raw[1], 0, 3);
}

void sub_0807F098(Entity* unk1, ScriptExecutionContext* unk2) {
    gRoomControls.cameraTarget = unk1;
}

void sub_0807F0A4(Entity* unk1, ScriptExecutionContext* unk2) {
    gRoomControls.cameraTarget = &gPlayerEntity;
}

void sub_0807F0B4(Entity* unk1, ScriptExecutionContext* unk2) {
    gRoomControls.unk5 = unk2->unk_00.raw[1] & 7;
}

void sub_0807F0C8(Entity* unk1, ScriptExecutionContext* unk2) {
    sub_08080964(unk2->unk_00.raw[1], unk2->unk_00.raw[2]);
}
