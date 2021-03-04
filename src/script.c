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
void ScriptCommandNop(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E004(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E014(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E024(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E050(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E064(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E078(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E0A0(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E0B8(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E0CC(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E0E0(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E10C(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E124(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E148(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E158(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E188(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E1D8(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E200(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E220(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E240(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E260(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E280(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E2A8(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E2E4(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E30C(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E390(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E3BC(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E3E8(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E40C(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E42C(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E48C(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E4AC(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E4CC(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E4EC(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E514(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E538(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E564(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E584(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E5A0(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E5CC(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E5F8(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E610(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E628(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E634(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E644(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E650(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E65C(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E668(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E674(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E680(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E690(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E6AC(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E6DC(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E700(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E72C(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E75C(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E778(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E788(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E79C(Entity* entity, ScriptExecutionContext* context);
void ScriptCommandNop2(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E7B0(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E7C4(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E7D8(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E7EC(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E800(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E80C(Entity* entity, ScriptExecutionContext* context);
void sub_0807E818(u32);
void ScriptCommand_0807E858(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E864(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E878(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E888(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E898(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E8C4(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E8D4(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E8E4(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E908(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E914(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E924(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E930(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E944(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E974(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E9D4(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E9DC(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E9E4(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E9F0(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807EA4C(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807EA88(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807EA94(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807EAB4(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807EAC0(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807EAD0(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807EAF0(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807EB18(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807EB28(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807EB38(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807EB44(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807EB4C(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807EB74(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807EB8C(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807EBA8(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807EBB0(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807EBC0(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807EBC8(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807EBD8(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807EBF4(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807EC08(Entity* entity, ScriptExecutionContext* context);
void ScriptCommandNop3(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807EC1C(Entity* entity, ScriptExecutionContext* context);
void sub_0807EC44(Entity*, ScriptExecutionContext*);
void ScriptCommand_0807EC64(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807EC94(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807ECC4(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807ECF4(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807ED24(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807EDD4(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807EE04(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807EE30(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807EEB4(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807EEF4(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807EF3C(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807EF80(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807EF90(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807EFA0(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807EFAC(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807EFD4(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807EFE4(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807EFF4(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807F004(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807F010(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807F034(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807F050(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807F060(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807F078(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807F088(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807F098(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807F0A4(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807F0B4(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807F0C8(Entity* entity, ScriptExecutionContext* context);

extern void CreateSpeechBubbleExclamationMark(Entity*, u32, u32);
extern void CreateSpeechBubbleQuestionMark(Entity*, u32, u32);
extern void sub_0801C4A0(u32);

typedef void (*ScriptCommand)(Entity*, ScriptExecutionContext*);

const ScriptCommand gScriptCommands[] = {
    ScriptCommandNop,       ScriptCommand_0807E004, ScriptCommand_0807E014, ScriptCommand_0807E024,
    ScriptCommand_0807E050, ScriptCommand_0807E064, ScriptCommand_0807E078, ScriptCommand_0807E0A0,
    ScriptCommand_0807E0B8, ScriptCommand_0807E0CC, ScriptCommand_0807E0E0, ScriptCommand_0807E10C,
    ScriptCommand_0807E124, ScriptCommand_0807E148, ScriptCommand_0807E158, ScriptCommand_0807E188,
    ScriptCommand_0807E1D8, ScriptCommand_0807E4AC, ScriptCommand_0807E200, ScriptCommand_0807E220,
    ScriptCommand_0807E240, ScriptCommand_0807E260, ScriptCommand_0807E280, ScriptCommand_0807E2A8,
    ScriptCommand_0807E2E4, ScriptCommand_0807E30C, ScriptCommand_0807E390, ScriptCommand_0807E3BC,
    ScriptCommand_0807E3E8, ScriptCommand_0807E40C, ScriptCommand_0807E42C, ScriptCommand_0807E48C,
    ScriptCommand_0807E4CC, ScriptCommand_0807E4EC, ScriptCommand_0807E514, ScriptCommand_0807E538,
    ScriptCommand_0807E564, ScriptCommand_0807E584, ScriptCommand_0807E5A0, ScriptCommand_0807E5CC,
    ScriptCommand_0807E5F8, ScriptCommand_0807E610, ScriptCommand_0807E628, ScriptCommand_0807E634,
    ScriptCommand_0807E644, ScriptCommand_0807E650, ScriptCommand_0807E65C, ScriptCommand_0807E668,
    ScriptCommand_0807E674, ScriptCommand_0807E680, ScriptCommand_0807E690, ScriptCommand_0807E6AC,
    ScriptCommand_0807E6DC, ScriptCommand_0807E700, ScriptCommand_0807E72C, ScriptCommand_0807E75C,
    ScriptCommand_0807E778, ScriptCommand_0807E788, ScriptCommand_0807E79C, ScriptCommandNop2,
    ScriptCommand_0807E7B0, ScriptCommand_0807E7C4, ScriptCommand_0807E7D8, ScriptCommand_0807E7EC,
    ScriptCommand_0807E800, ScriptCommand_0807E80C, ScriptCommand_0807E858, ScriptCommand_0807E864,
    ScriptCommand_0807E878, ScriptCommand_0807E888, ScriptCommand_0807E898, ScriptCommand_0807E8C4,
    ScriptCommand_0807E8D4, ScriptCommand_0807E8E4, ScriptCommand_0807E8E4, ScriptCommand_0807E8E4,
    ScriptCommand_0807E8E4, ScriptCommand_0807E908, ScriptCommand_0807E914, ScriptCommand_0807E924,
    ScriptCommand_0807E930, ScriptCommand_0807E944, ScriptCommand_0807E974, ScriptCommand_0807E9D4,
    ScriptCommand_0807E9DC, ScriptCommand_0807E9E4, ScriptCommand_0807E9F0, ScriptCommand_0807EA4C,
    ScriptCommand_0807EA88, ScriptCommand_0807EA94, ScriptCommand_0807EAB4, ScriptCommand_0807EAC0,
    ScriptCommand_0807EAD0, ScriptCommand_0807EAF0, ScriptCommand_0807EB18, ScriptCommand_0807EB28,
    ScriptCommand_0807EB38, ScriptCommand_0807EB44, ScriptCommand_0807EB4C, ScriptCommand_0807EB74,
    ScriptCommand_0807EB8C, ScriptCommand_0807EBA8, ScriptCommand_0807EBB0, ScriptCommand_0807EBC0,
    ScriptCommand_0807EBC8, ScriptCommand_0807EBD8, ScriptCommand_0807EBF4, ScriptCommand_0807EC08,
    ScriptCommandNop3,      ScriptCommand_0807EC1C, ScriptCommand_0807EC64, ScriptCommand_0807EC94,
    ScriptCommand_0807ECC4, ScriptCommand_0807ECF4, ScriptCommand_0807ED24, ScriptCommand_0807EDD4,
    ScriptCommand_0807EE04, ScriptCommand_0807EE30, ScriptCommand_0807EEB4, ScriptCommand_0807EEF4,
    ScriptCommand_0807EF3C, ScriptCommand_0807EF80, ScriptCommand_0807EF90, ScriptCommand_0807EFA0,
    ScriptCommand_0807EFAC, ScriptCommand_0807EFD4, ScriptCommand_0807EFE4, ScriptCommand_0807EFF4,
    ScriptCommand_0807F004, ScriptCommand_0807F010, ScriptCommand_0807F034, ScriptCommand_0807F050,
    ScriptCommand_0807F060, ScriptCommand_0807F078, ScriptCommand_0807F088, ScriptCommand_0807F098,
    ScriptCommand_0807F0A4, ScriptCommand_0807F0B4, ScriptCommand_0807F0C8
};

extern const u16 gUnk_08016984;
extern u8 gUnk_0811E514[];
extern u8 gUnk_0811E510[];
extern ScriptExecutionContext gPlayerScriptExecutionContext;
extern ScriptExecutionContext gScriptExecutionContextArray[0x20];

void sub_0807DA70(void) {
    MemClear32(&gActiveScriptInfo, sizeof(gActiveScriptInfo));
    MemClear32(&gScriptExecutionContextArray, sizeof(gScriptExecutionContextArray));
    MemClear32(&gPlayerScriptExecutionContext, sizeof(gPlayerScriptExecutionContext));
    gActiveScriptInfo.unk_08 = 8;
}

ScriptExecutionContext* CreateScriptExecutionContext(void) {
    ScriptExecutionContext* context;

    context = gScriptExecutionContextArray;
    do {
        if (context->scriptInstructionPointer == 0) {
            return context;
        }
        context++;
    } while (context < gScriptExecutionContextArray + ARRAY_COUNT(gScriptExecutionContextArray));
    return NULL;
}

void DestroyScriptExecutionContext(ScriptExecutionContext* context) {
    MemClear32(context, sizeof(ScriptExecutionContext));
}

ScriptExecutionContext* StartCutscene(Entity* entity, u16* unk_2) {
    ScriptExecutionContext* context;

    context = CreateScriptExecutionContext();
    if (context) {
        sub_0807DAF0(entity, context, unk_2);
    }
    return context;
}

void sub_0807DAF0(Entity* entity, ScriptExecutionContext* context, u16* unk1) {
    entity->flags = entity->flags | 2;
    *(ScriptExecutionContext**)&entity->cutsceneBeh = context;
    sub_0807DB88(context, unk1);
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
    gPlayerScriptExecutionContext.scriptInstructionPointer = unk1;
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
        context->scriptInstructionPointer = unk1;
    }
    return context;
}

void sub_0807DB88(ScriptExecutionContext* context, u16* unk1) {
    MemClear32(context, sizeof(ScriptExecutionContext));
    context->scriptInstructionPointer = unk1;
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

void sub_0807DD80(Entity* entity, u16* unk1) {
    sub_0807DB88(*(ScriptExecutionContext**)&entity->cutsceneBeh, unk1);
    sub_0807DD64(entity);
}

void sub_0807DD94(Entity* entity, void (*function)(Entity*, ScriptExecutionContext*)) {
    sub_0807DDAC(entity, function);
    sub_0807DDE4(entity);
    sub_0807DE80(entity);
}

void sub_0807DDAC(Entity* entity, void (*function)(Entity*, ScriptExecutionContext*)) {
    ScriptExecutionContext** piVar1;

    piVar1 = (ScriptExecutionContext**)&entity->cutsceneBeh;
    if (*piVar1) {
        ExecuteScriptCommandSet(entity, *piVar1);
        if (function) {
            function(entity, *piVar1);
        } else {
            sub_0807DB98(entity, *piVar1);
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
    context->unk_14 = 0;
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
    if (!unk2->scriptInstructionPointer)
        return;
    if (unk2->wait) {
        unk2->wait--;
    } else {
        struct_02033280* tmp2 = &gActiveScriptInfo;
        tmp2->flags = 0;
        do {
            u32 cmd = GetNextScriptCommandHalfword(unk2->scriptInstructionPointer);
            u16* tmp;
            if (cmd == 0xFFFF)
                return;
            tmp2->commandSize = cmd >> 0xA;
            tmp2->commandIndex = cmd & 0x3FF;
            tmp = unk2->scriptInstructionPointer;
            tmp2->flags &= ~1;
            gScriptCommands[tmp2->commandIndex](unk1, unk2);
            unk2->scriptInstructionPointer += tmp2->commandSize;
            if (tmp != unk2->scriptInstructionPointer) {
                unk2->unk_18 = 0;
            }
        } while (tmp2->flags & 3);
    }
}

void ScriptCommandNop(Entity* entity, ScriptExecutionContext* context) {
}

void ScriptCommand_0807E004(Entity* entity, ScriptExecutionContext* context) {
    gActiveScriptInfo.flags |= 2;
}

void ScriptCommand_0807E014(Entity* entity, ScriptExecutionContext* context) {
    gActiveScriptInfo.flags &= ~2;
}

void ScriptCommand_0807E024(Entity* entity, ScriptExecutionContext* context) {
    s16 tmp;
    context->scriptInstructionPointer++;
    tmp = GetNextScriptCommandHalfword(context->scriptInstructionPointer);
    context->scriptInstructionPointer += (tmp / 2);
    gActiveScriptInfo.commandSize = 0;
}

void ScriptCommand_0807E050(Entity* entity, ScriptExecutionContext* context) {
    if (context->unk_14) {
        ScriptCommand_0807E024(entity, context);
    }
}

void ScriptCommand_0807E064(Entity* entity, ScriptExecutionContext* context) {
    if (!context->unk_14) {
        ScriptCommand_0807E024(entity, context);
    }
}

void ScriptCommand_0807E078(Entity* entity, ScriptExecutionContext* context) {
    if (gActiveScriptInfo.commandSize > context->unk_04) {
        context->scriptInstructionPointer += context->unk_04;
        ScriptCommand_0807E024(entity, context);
    }
}

void ScriptCommand_0807E0A0(Entity* entity, ScriptExecutionContext* context) {
    context->scriptInstructionPointer =
        (u16*)GetNextScriptCommandWordAfterCommandMetadata(context->scriptInstructionPointer);
    gActiveScriptInfo.commandSize = 0;
}

void ScriptCommand_0807E0B8(Entity* entity, ScriptExecutionContext* context) {
    if (context->unk_14) {
        ScriptCommand_0807E0A0(entity, context);
    }
}

void ScriptCommand_0807E0CC(Entity* entity, ScriptExecutionContext* context) {
    if (!context->unk_14) {
        ScriptCommand_0807E0A0(entity, context);
    }
}

void ScriptCommand_0807E0E0(Entity* entity, ScriptExecutionContext* context) {
    if (gActiveScriptInfo.commandSize > (context->unk_04 << 1) + 1) {
        context->scriptInstructionPointer += context->unk_04 << 1;
        ScriptCommand_0807E0A0(entity, context);
    }
}

void ScriptCommand_0807E10C(Entity* entity, ScriptExecutionContext* context) {
    ((void (*)(Entity*, ScriptExecutionContext*))GetNextScriptCommandWordAfterCommandMetadata(
        context->scriptInstructionPointer))(entity, context);
}

void ScriptCommand_0807E124(Entity* entity, ScriptExecutionContext* context) {
    void (*tmp)(Entity*, ScriptExecutionContext*) =
        (void (*)(Entity*, ScriptExecutionContext*))GetNextScriptCommandWordAfterCommandMetadata(
            context->scriptInstructionPointer);
    context->unk_04 = GetNextScriptCommandWord(context->scriptInstructionPointer + 3);
    tmp(entity, context);
}

void ScriptCommand_0807E148(Entity* entity, ScriptExecutionContext* context) {
    LoadRoomEntityList(GetNextScriptCommandWordAfterCommandMetadata(context->scriptInstructionPointer));
}

void ScriptCommand_0807E158(Entity* entity, ScriptExecutionContext* context) {
    u32 tmp = GetNextScriptCommandWordAfterCommandMetadata(context->scriptInstructionPointer);
    u32 tmp2 = 0;
    u32 tmp3 = gActiveScriptInfo.unk_00;
    if ((tmp3 & tmp) == tmp)
        tmp2 = 1;
    context->unk_14 = tmp2;
    gActiveScriptInfo.unk_00 = tmp3 & ~tmp;
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_0807E188(Entity* entity, ScriptExecutionContext* context) {
    u32 tmp;
    u32 tmp2 = GetNextScriptCommandHalfwordAfterCommandMetadata(context->scriptInstructionPointer);
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
    context->unk_14 = tmp;
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_0807E1D8(Entity* entity, ScriptExecutionContext* context) {
    context->unk_14 = GetInventoryValue(context->scriptInstructionPointer[1]) == 2;
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_0807E200(Entity* entity, ScriptExecutionContext* context) {
    context->unk_14 = CheckLocalFlag(context->scriptInstructionPointer[1]);
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_0807E220(Entity* entity, ScriptExecutionContext* context) {
    context->unk_14 =
        CheckLocalFlagByOffset(context->scriptInstructionPointer[1], context->scriptInstructionPointer[2]);
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_0807E240(Entity* entity, ScriptExecutionContext* context) {
    context->unk_14 =
        CheckGlobalFlag(GetNextScriptCommandHalfwordAfterCommandMetadata(context->scriptInstructionPointer));
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_0807E260(Entity* entity, ScriptExecutionContext* context) {
    context->unk_14 = CheckRoomFlag(context->scriptInstructionPointer[1]);
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_0807E280(Entity* entity, ScriptExecutionContext* context) {
    u32 x, y, width, height;
    width = context->scriptInstructionPointer[3];
    height = width >> 8;
    width &= 0xFF;
    x = context->scriptInstructionPointer[1];
    y = context->scriptInstructionPointer[2];
    context->unk_14 = CheckPlayerInRegion(x, y, width, height);
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_0807E2A8(Entity* entity, ScriptExecutionContext* context) {
    u32 x, y, width, height;
    width = context->scriptInstructionPointer[1] & 0xFF;
    height = context->scriptInstructionPointer[1] >> 8;
    x = entity->x.HALF.HI - gRoomControls.roomOriginX;
    y = entity->y.HALF.HI - gRoomControls.roomOriginY;
    context->unk_14 = CheckPlayerInRegion(x, y, width, height);
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_0807E2E4(Entity* entity, ScriptExecutionContext* context) {
    if (entity->interactType) {
        entity->interactType = 0;
        context->unk_14 = 1;
    } else {
        context->unk_14 = 0;
    }
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_0807E30C(Entity* entity, ScriptExecutionContext* context) {
    if ((context->unk_1A & 0xF) == 0 && (gPlayerState.flags.all & 0x80) == 0 &&
        sub_080041A0(entity, &gPlayerEntity, 0x28, 0x28)) {
        entity->animationState = sub_0806F5B0(GetFacingDirection(entity, &gPlayerEntity));
    }
    context->unk_1A++;
    if (entity->interactType) {
        entity->interactType = 0;
        context->unk_14 = 1;
        entity->animationState = sub_0806F5B0(GetFacingDirection(entity, &gPlayerEntity));
    } else {
        context->unk_14 = 0;
    }
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_0807E390(Entity* entity, ScriptExecutionContext* context) {
    context->unk_14 = (context->scriptInstructionPointer[1] <= gSave.stats.rupees);
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_0807E3BC(Entity* entity, ScriptExecutionContext* context) {
    context->unk_14 = (context->scriptInstructionPointer[1] <= gSave.stats.field_0x1a);
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_0807E3E8(Entity* entity, ScriptExecutionContext* context) {
    context->unk_14 = !gUnk_02000040.unk_01;
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_0807E40C(Entity* entity, ScriptExecutionContext* context) {
    context->unk_14 = CheckKinstoneFused(context->scriptInstructionPointer[1]);
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_0807E42C(Entity* entity, ScriptExecutionContext* context) {
    u32 tmp, tmp2;
    s32 tmp3;
    tmp = context->scriptInstructionPointer[1];
    tmp2 = context->scriptInstructionPointer[2];
    if (!tmp) {
        tmp = gRoomVars.itemForSaleIndex;
        tmp2 = gRoomVars.field_0x7;
    }
    tmp3 = sub_08053FE0(tmp);
    context->unk_14 = (tmp3 <= gSave.stats.rupees);
    if (context->unk_14) {
        ModRupees(-tmp3);
        sub_080A7C18(tmp, tmp2, 0);
        gRoomVars.itemForSaleIndex = 0;
        gRoomVars.field_0x7 = 0;
    }
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_0807E48C(Entity* entity, ScriptExecutionContext* context) {
    context->unk_14 = sub_080544DC(context->scriptInstructionPointer[1]);
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_0807E4AC(Entity* entity, ScriptExecutionContext* context) {
    context->unk_14 = !!gRoomVars.itemForSaleIndex;
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_0807E4CC(Entity* entity, ScriptExecutionContext* context) {
    context->unk_14 = !!(context->unk_04 & context->scriptInstructionPointer[1]);
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_0807E4EC(Entity* entity, ScriptExecutionContext* context) {
    u32 tmp = context->scriptInstructionPointer[1];
    context->unk_14 = tmp == (tmp & context->unk_04);
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_0807E514(Entity* entity, ScriptExecutionContext* context) {
    u32 tmp = context->scriptInstructionPointer[1];
    context->unk_14 = tmp == context->unk_04;
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_0807E538(Entity* entity, ScriptExecutionContext* context) {
    context->unk_14 =
        !!(GetNextScriptCommandWordAfterCommandMetadata(context->scriptInstructionPointer) & gPlayerState.flags.all);
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_0807E564(Entity* entity, ScriptExecutionContext* context) {
    context->unk_14 = (gPlayerState.flags.all >> 7) & 1;
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_0807E584(Entity* entity, ScriptExecutionContext* context) {
    context->unk_14 = entity->height.WORD != 0;
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_0807E5A0(Entity* entity, ScriptExecutionContext* context) {
    context->unk_14 = context->scriptInstructionPointer[1] == gPlayerEntity.action;
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_0807E5CC(Entity* entity, ScriptExecutionContext* context) {
    context->unk_14 = context->scriptInstructionPointer[1] == gPlayerEntity.animationState;
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_0807E5F8(Entity* entity, ScriptExecutionContext* context) {
    gActiveScriptInfo.unk_00 |= GetNextScriptCommandWordAfterCommandMetadata(context->scriptInstructionPointer);
}

void ScriptCommand_0807E610(Entity* entity, ScriptExecutionContext* context) {
    gActiveScriptInfo.unk_00 &= ~GetNextScriptCommandWordAfterCommandMetadata(context->scriptInstructionPointer);
}

void ScriptCommand_0807E628(Entity* entity, ScriptExecutionContext* context) {
    SetLocalFlag(context->scriptInstructionPointer[1]);
}

void ScriptCommand_0807E634(Entity* entity, ScriptExecutionContext* context) {
    SetLocalFlagByOffset(context->scriptInstructionPointer[1], context->scriptInstructionPointer[2]);
}

void ScriptCommand_0807E644(Entity* entity, ScriptExecutionContext* context) {
    ClearLocalFlag(context->scriptInstructionPointer[1]);
}

void ScriptCommand_0807E650(Entity* entity, ScriptExecutionContext* context) {
    SetGlobalFlag(context->scriptInstructionPointer[1]);
}

void ScriptCommand_0807E65C(Entity* entity, ScriptExecutionContext* context) {
    ClearGlobalFlag(context->scriptInstructionPointer[1]);
}

void ScriptCommand_0807E668(Entity* entity, ScriptExecutionContext* context) {
    SetRoomFlag(context->scriptInstructionPointer[1]);
}

void ScriptCommand_0807E674(Entity* entity, ScriptExecutionContext* context) {
    ClearRoomFlag(context->scriptInstructionPointer[1]);
}

void ScriptCommand_0807E680(Entity* entity, ScriptExecutionContext* context) {
    context->wait = GetNextScriptCommandHalfwordAfterCommandMetadata(context->scriptInstructionPointer);
}

void ScriptCommand_0807E690(Entity* entity, ScriptExecutionContext* context) {
    u32 tmp = GetNextScriptCommandWordAfterCommandMetadata(context->scriptInstructionPointer);
    if ((gActiveScriptInfo.unk_00 & tmp) != tmp) {
        gActiveScriptInfo.commandSize = 0;
    }
}

void ScriptCommand_0807E6AC(Entity* entity, ScriptExecutionContext* context) {
    u32 tmp = GetNextScriptCommandWordAfterCommandMetadata(context->scriptInstructionPointer);
    if ((gActiveScriptInfo.unk_00 & tmp) != tmp) {
        gActiveScriptInfo.commandSize = 0;
    } else {
        gActiveScriptInfo.unk_00 &= ~tmp;
        gActiveScriptInfo.flags |= 1;
    }
}

void ScriptCommand_0807E6DC(Entity* entity, ScriptExecutionContext* context) {
    if (gPlayerEntity.action == 8) {
        gActiveScriptInfo.commandSize = 0;
    } else {
        context->wait = 0x2D;
    }
}

void ScriptCommand_0807E700(Entity* entity, ScriptExecutionContext* context) {
    if (gPlayerEntity.action != 0x17) {
        gActiveScriptInfo.flags |= 1;
    } else {
        gActiveScriptInfo.commandSize = 0;
    }
}

void ScriptCommand_0807E72C(Entity* entity, ScriptExecutionContext* context) {
    if (gRoomControls.unk6 & 4) {
        gActiveScriptInfo.commandSize = 0;
    } else {
        gActiveScriptInfo.flags |= 1;
    }
}

void ScriptCommand_0807E75C(Entity* entity, ScriptExecutionContext* context) {
    if (gFadeControl.active) {
        gActiveScriptInfo.commandSize = 0;
    }
}

void ScriptCommand_0807E778(Entity* entity, ScriptExecutionContext* context) {
    gActiveScriptInfo.unk_08 = context->scriptInstructionPointer[1];
}

void ScriptCommand_0807E788(Entity* entity, ScriptExecutionContext* context) {
    gFadeControl.field_0x4 = GetNextScriptCommandWordAfterCommandMetadata(context->scriptInstructionPointer);
}

void ScriptCommand_0807E79C(Entity* entity, ScriptExecutionContext* context) {
    sub_080500F4(gActiveScriptInfo.unk_08);
}

void ScriptCommandNop2(Entity* entity, ScriptExecutionContext* context) {
}

void ScriptCommand_0807E7B0(Entity* entity, ScriptExecutionContext* context) {
    DoFade(4, gActiveScriptInfo.unk_08);
}

void ScriptCommand_0807E7C4(Entity* entity, ScriptExecutionContext* context) {
    DoFade(5, gActiveScriptInfo.unk_08);
}

void ScriptCommand_0807E7D8(Entity* entity, ScriptExecutionContext* context) {
    DoFade(6, gActiveScriptInfo.unk_08);
}

void ScriptCommand_0807E7EC(Entity* entity, ScriptExecutionContext* context) {
    DoFade(7, gActiveScriptInfo.unk_08);
}

void ScriptCommand_0807E800(Entity* entity, ScriptExecutionContext* context) {
    sub_0807E818(0x10);
}

void ScriptCommand_0807E80C(Entity* entity, ScriptExecutionContext* context) {
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
    sub_08050110(tmp2, tmp3, unk1, gActiveScriptInfo.unk_08);
}

void ScriptCommand_0807E858(Entity* entity, ScriptExecutionContext* context) {
    sub_08050038(context->scriptInstructionPointer[1]);
}

void ScriptCommand_0807E864(Entity* entity, ScriptExecutionContext* context) {
    gPlayerState.field_0x8b = 3;
    sub_08078B48();
}

void ScriptCommand_0807E878(Entity* entity, ScriptExecutionContext* context) {
    gPlayerState.field_0x8b = 1;
}

void ScriptCommand_0807E888(Entity* entity, ScriptExecutionContext* context) {
    gPlayerState.field_0x8b = 3;
}

void ScriptCommand_0807E898(Entity* entity, ScriptExecutionContext* context) {
    u32 tmp = GetNextScriptCommandWordAfterCommandMetadata(context->scriptInstructionPointer);
    gPlayerState.playerAction = tmp;
    gPlayerState.field_0x38 = tmp >> 8;
    gPlayerState.field_0x39 = tmp >> 0x10;
    gPlayerState.field_0x3a = tmp >> 0x18;
}

void ScriptCommand_0807E8C4(Entity* entity, ScriptExecutionContext* context) {
    StartPlayerScript((u16*)GetNextScriptCommandWordAfterCommandMetadata(context->scriptInstructionPointer));
}

void ScriptCommand_0807E8D4(Entity* entity, ScriptExecutionContext* context) {
    gPlayerState.field_0x8 = context->scriptInstructionPointer[1];
}

void ScriptCommand_0807E8E4(Entity* entity, ScriptExecutionContext* context) {
    u32 tmp = (gUnk_08016984 & 0x3FF);
    u32 tmp2;
    gPlayerEntity.animationState = tmp2 = (context->scriptInstructionPointer[0] - tmp) << 1;
}

void ScriptCommand_0807E908(Entity* entity, ScriptExecutionContext* context) {
    entity->action = context->scriptInstructionPointer[1];
    entity->previousActionFlag = 0;
}

void ScriptCommand_0807E914(Entity* entity, ScriptExecutionContext* context) {
    context->unk_04 = GetNextScriptCommandWordAfterCommandMetadata(context->scriptInstructionPointer);
}

void ScriptCommand_0807E924(Entity* entity, ScriptExecutionContext* context) {
    context->unk_04 = entity->frames.all;
    entity->frames.all = 0;
}

void ScriptCommand_0807E930(Entity* entity, ScriptExecutionContext* context) {
    entity->field_0x80.HWORD = context->scriptInstructionPointer[1];
    InitAnimationForceUpdate(entity, context->scriptInstructionPointer[1]);
}

void ScriptCommand_0807E944(Entity* entity, ScriptExecutionContext* context) {
    if (entity->interactType) {
        entity->interactType = 0;
        gActiveScriptInfo.flags |= 1;
    } else {
        gActiveScriptInfo.commandSize = 0;
    }
}

void ScriptCommand_0807E974(Entity* entity, ScriptExecutionContext* context) {
    switch (context->unk_18) {
        default:
            if (!--context->unk_19)
                return;
            break;
        case 0:
            if (!entity->interactType)
                break;
            entity->interactType = 0;
            context->unk_18++;
            TextboxNoOverlapFollow(context->scriptInstructionPointer[1]);
            break;
        case 1:
            if (gTextBox.doTextBox & 0x7F)
                break;
            context->unk_18 = 2;
            context->unk_19 = 0xF;
            break;
    }
    gActiveScriptInfo.commandSize = 0;
}

void ScriptCommand_0807E9D4(Entity* entity, ScriptExecutionContext* context) {
    sub_08078778(entity);
}

void ScriptCommand_0807E9DC(Entity* entity, ScriptExecutionContext* context) {
    sub_080788E0(entity);
}

void ScriptCommand_0807E9E4(Entity* entity, ScriptExecutionContext* context) {
    sub_08078784(entity, context->scriptInstructionPointer[1]);
}

void ScriptCommand_0807E9F0(Entity* entity, ScriptExecutionContext* context) {
    u32 tmp;
    sub_0801E00C();
    tmp = 1;
    switch (gUnk_02022740[0]) {
        case 2:
            gPlayerState.field_0x8b = 3;
            gUnk_02034490[0] = tmp;
            context->unk_14 = tmp;
            break;
        case 1:
            context->unk_14 = 0;
            break;
        default:
            goto lbl;
    }
    if (tmp) {
        sub_0807919C();
        gPlayerState.field_0x8b = 1;
    } else {
    lbl:
        gActiveScriptInfo.commandSize = 0;
    }
}

void ScriptCommand_0807EA4C(Entity* entity, ScriptExecutionContext* context) {
    if (entity->interactType == 2) {
        sub_0801DFB4(entity, 0, 0, 0);
        entity->interactType = 0;
        gActiveScriptInfo.flags |= 1;
    } else {
        gActiveScriptInfo.commandSize = 0;
    }
}

void ScriptCommand_0807EA88(Entity* entity, ScriptExecutionContext* context) {
    sub_08078790(entity, context->scriptInstructionPointer[1]);
}

void ScriptCommand_0807EA94(Entity* entity, ScriptExecutionContext* context) {
    if (gTextBox.doTextBox & 0x7F) {
        gActiveScriptInfo.commandSize = 0;
    }
}

void ScriptCommand_0807EAB4(Entity* entity, ScriptExecutionContext* context) {
    TextboxNoOverlapFollow(context->scriptInstructionPointer[1]);
}

void ScriptCommand_0807EAC0(Entity* entity, ScriptExecutionContext* context) {
    TextboxNoOverlap(context->scriptInstructionPointer[1], entity);
}

void ScriptCommand_0807EAD0(Entity* entity, ScriptExecutionContext* context) {
    TextboxNoOverlapFollow(context->scriptInstructionPointer[1]);
    gTextBox.textWindowPosX = 1;
    gTextBox.textWindowPosY = context->scriptInstructionPointer[2];
}

void ScriptCommand_0807EAF0(Entity* entity, ScriptExecutionContext* context) {
    if (gActiveScriptInfo.commandSize > context->unk_04) {
        u16* tmp = context->scriptInstructionPointer + context->unk_04;
        TextboxNoOverlapFollow(tmp[1]);
    } else {
        TextboxNoOverlapFollow(0);
    }
}

void ScriptCommand_0807EB18(Entity* entity, ScriptExecutionContext* context) {
    TextboxNoOverlap(context->unk_04, entity);
}

void ScriptCommand_0807EB28(Entity* entity, ScriptExecutionContext* context) {
    sub_08078AA8(context->scriptInstructionPointer[1], 0);
}

void ScriptCommand_0807EB38(Entity* entity, ScriptExecutionContext* context) {
    context->unk_04 = gUnk_02000040.unk_01;
}

void ScriptCommand_0807EB44(Entity* entity, ScriptExecutionContext* context) {
    entity->animationState = context->scriptInstructionPointer[1];
}

void ScriptCommand_0807EB4C(Entity* entity, ScriptExecutionContext* context) {
    entity->animationState =
        sub_0806F5B0(sub_080045B4(entity, context->scriptInstructionPointer[1] + gRoomControls.roomOriginX,
                                  context->scriptInstructionPointer[2] + gRoomControls.roomOriginY));
}

void ScriptCommand_0807EB74(Entity* entity, ScriptExecutionContext* context) {
    entity->animationState = sub_0806F5B0(GetFacingDirection(entity, &gPlayerEntity));
}

void ScriptCommand_0807EB8C(Entity* entity, ScriptExecutionContext* context) {
    gPlayerEntity.animationState = sub_0806F5B0(GetFacingDirection(&gPlayerEntity, entity)) & ~1;
}

void ScriptCommand_0807EBA8(Entity* entity, ScriptExecutionContext* context) {
    entity->direction = context->scriptInstructionPointer[1];
}

void ScriptCommand_0807EBB0(Entity* entity, ScriptExecutionContext* context) {
    entity->direction = context->scriptInstructionPointer[1];
    entity->animationState = entity->direction / 4;
}

void ScriptCommand_0807EBC0(Entity* entity, ScriptExecutionContext* context) {
    entity->nonPlanarMovement = context->scriptInstructionPointer[1];
}

void ScriptCommand_0807EBC8(Entity* entity, ScriptExecutionContext* context) {
    entity->field_0x20 = GetNextScriptCommandWordAfterCommandMetadata(context->scriptInstructionPointer);
}

void ScriptCommand_0807EBD8(Entity* entity, ScriptExecutionContext* context) {
    entity->x.HALF.HI = gRoomControls.roomOriginX + context->scriptInstructionPointer[1];
    entity->y.HALF.HI = gRoomControls.roomOriginY + context->scriptInstructionPointer[2];
}

void ScriptCommand_0807EBF4(Entity* entity, ScriptExecutionContext* context) {
    entity->x.HALF.HI += context->scriptInstructionPointer[1];
    entity->y.HALF.HI += context->scriptInstructionPointer[2];
}

void ScriptCommand_0807EC08(Entity* entity, ScriptExecutionContext* context) {
    CopyPosition(&gPlayerEntity, entity);
}

void ScriptCommandNop3(Entity* entity, ScriptExecutionContext* context) {
}

void ScriptCommand_0807EC1C(Entity* entity, ScriptExecutionContext* context) {
    if (!context->unk_18) {
        context->unk_18 = 1;
        context->unk_12 = context->scriptInstructionPointer[1];
        context->unk_08 |= 2;
    }
    sub_0807EC44(entity, context);
}

void sub_0807EC44(Entity* unk1, ScriptExecutionContext* unk2) {
    sub_0806F69C(unk1);
    if (--unk2->unk_12) {
        gActiveScriptInfo.commandSize = 0;
    }
}

void ScriptCommand_0807EC64(Entity* entity, ScriptExecutionContext* context) {
    if (!context->unk_18) {
        context->unk_18 = 1;
        context->unk_12 = context->scriptInstructionPointer[1];
        entity->animationState = 0;
        entity->direction = 0;
        context->unk_08 |= 2;
    }
    sub_0807EC44(entity, context);
}

void ScriptCommand_0807EC94(Entity* entity, ScriptExecutionContext* context) {
    if (!context->unk_18) {
        context->unk_18 = 1;
        context->unk_12 = context->scriptInstructionPointer[1];
        entity->animationState = 2;
        entity->direction = 8;
        context->unk_08 |= 2;
    }
    sub_0807EC44(entity, context);
}

void ScriptCommand_0807ECC4(Entity* entity, ScriptExecutionContext* context) {
    if (!context->unk_18) {
        context->unk_18 = 1;
        context->unk_12 = context->scriptInstructionPointer[1];
        entity->animationState = 4;
        entity->direction = 0x10;
        context->unk_08 |= 2;
    }
    sub_0807EC44(entity, context);
}

void ScriptCommand_0807ECF4(Entity* entity, ScriptExecutionContext* context) {
    if (!context->unk_18) {
        context->unk_18 = 1;
        context->unk_12 = context->scriptInstructionPointer[1];
        entity->animationState = 6;
        entity->direction = 0x18;
        context->unk_08 |= 2;
    }
    sub_0807EC44(entity, context);
}

void ScriptCommand_0807ED24(Entity* entity, ScriptExecutionContext* context) {
    if (!context->unk_18) {
        s32 tmp, tmp2, tmp3;
        context->unk_18 = 1;
        context->unk_12 = context->scriptInstructionPointer[3];
        tmp = context->scriptInstructionPointer[1];
        tmp2 = entity->x.HALF.HI - gRoomControls.roomOriginX;
        context->unk_1C.WORD = ((tmp - tmp2) << 0x10) / context->unk_12;
        tmp = context->scriptInstructionPointer[2];
        tmp3 = entity->y.HALF.HI - gRoomControls.roomOriginY;
        context->unk_20.WORD = ((tmp - tmp3) << 0x10) / context->unk_12;
        entity->animationState =
            sub_0806F5B0(sub_080045B4(entity, context->scriptInstructionPointer[1] + gRoomControls.roomOriginX,
                                      context->scriptInstructionPointer[2] + gRoomControls.roomOriginY));
        context->unk_08 |= 2;
    } else {
        if (!--context->unk_12) {
            entity->x.HALF.HI = context->scriptInstructionPointer[1] + gRoomControls.roomOriginX;
            entity->y.HALF.HI = context->scriptInstructionPointer[2] + gRoomControls.roomOriginY;
            return;
        }
        entity->x.WORD += context->unk_1C.WORD;
        entity->y.WORD += context->unk_20.WORD;
    }
    gActiveScriptInfo.commandSize = 0;
}

void ScriptCommand_0807EDD4(Entity* entity, ScriptExecutionContext* context) {
    if (!context->unk_18) {
        context->unk_18 = 1;
        ScriptCommand_0807EE04(entity, context);
    }
    ScriptCommand_0807EE30(entity, context);
    if (!context->unk_14) {
        gActiveScriptInfo.commandSize = 0;
    }
}

void ScriptCommand_0807EE04(Entity* entity, ScriptExecutionContext* context) {
    sub_0807DEDC(entity, context, context->scriptInstructionPointer[1] + gRoomControls.roomOriginX,
                 context->scriptInstructionPointer[2] + gRoomControls.roomOriginY);
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_0807EE30(Entity* entity, ScriptExecutionContext* context) {
    s32 tmp, tmp2;
    if (!--context->unk_19) {
        context->unk_19 = 8;
        entity->direction =
            sub_080045DA(context->unk_1C.HALF.HI - entity->x.HALF.HI, context->unk_20.HALF.HI - entity->y.HALF.HI);
    }
    tmp = entity->x.HALF.HI - context->unk_1C.HALF.HI;
    tmp2 = entity->y.HALF.HI - context->unk_20.HALF.HI;
    sub_0806F62C(entity, entity->nonPlanarMovement, entity->direction);
    tmp *= entity->x.HALF.HI - context->unk_1C.HALF.HI;
    tmp2 *= entity->y.HALF.HI - context->unk_20.HALF.HI;
    if (tmp <= 0 && tmp2 <= 0) {
        entity->x.HALF.HI = context->unk_1C.HALF.HI;
        entity->y.HALF.HI = context->unk_20.HALF.HI;
        context->unk_14 = 1;
    } else {
        context->unk_14 = 0;
    }
}

void ScriptCommand_0807EEB4(Entity* entity, ScriptExecutionContext* context) {
    if (!context->unk_18) {
        context->unk_18 = 1;
        sub_0807DEDC(entity, context, gPlayerEntity.x.HALF.HI, gPlayerEntity.y.HALF.HI);
    }
    ScriptCommand_0807EE30(entity, context);
    if (!context->unk_14) {
        gActiveScriptInfo.commandSize = 0;
    }
}

void ScriptCommand_0807EEF4(Entity* entity, ScriptExecutionContext* context) {
    if (!context->unk_18) {
        context->unk_18 = 1;
        sub_0807DEDC(entity, context, entity->x.HALF.HI + ((s16)context->scriptInstructionPointer[1]),
                     entity->y.HALF.HI + ((s16)context->scriptInstructionPointer[2]));
    }
    ScriptCommand_0807EE30(entity, context);
    if (!context->unk_14) {
        gActiveScriptInfo.commandSize = 0;
    }
}

void ScriptCommand_0807EF3C(Entity* entity, ScriptExecutionContext* context) {
    if (!context->unk_18) {
        context->unk_18 = 1;
        entity->field_0x20 = ((s16)context->scriptInstructionPointer[1]) << 8;
        context->unk_1C.HALF.LO = context->scriptInstructionPointer[2] << 8;
        sub_08003FC4(entity, (u16)context->unk_1C.HALF.LO);
    } else {
        if (!sub_08003FC4(entity, (u16)context->unk_1C.HALF.LO))
            return;
    }
    gActiveScriptInfo.commandSize = 0;
}

void ScriptCommand_0807EF80(Entity* entity, ScriptExecutionContext* context) {
    context->unk_08 |= 1 << context->scriptInstructionPointer[1];
}

void ScriptCommand_0807EF90(Entity* entity, ScriptExecutionContext* context) {
    context->unk_08 |= 1 << context->scriptInstructionPointer[1];
}

void ScriptCommand_0807EFA0(Entity* entity, ScriptExecutionContext* context) {
    SoundReq(context->scriptInstructionPointer[1]);
}

void ScriptCommand_0807EFAC(Entity* entity, ScriptExecutionContext* context) {
    if (context->scriptInstructionPointer[1] >= 100) {
        SoundReq(gArea.musicIndex);
    } else {
        SoundReq(context->scriptInstructionPointer[1]);
    }
}

void ScriptCommand_0807EFD4(Entity* entity, ScriptExecutionContext* context) {
    SoundReq(GetNextScriptCommandWordAfterCommandMetadata(context->scriptInstructionPointer));
}

void ScriptCommand_0807EFE4(Entity* entity, ScriptExecutionContext* context) {
    SoundReq(0x80100000);
}

void ScriptCommand_0807EFF4(Entity* entity, ScriptExecutionContext* context) {
    ModRupees((s16)context->scriptInstructionPointer[1]);
}

void ScriptCommand_0807F004(Entity* entity, ScriptExecutionContext* context) {
    ModHealth(context->scriptInstructionPointer[1]);
}

void ScriptCommand_0807F010(Entity* entity, ScriptExecutionContext* context) {
    gSave.stats.maxHealth = min(gSave.stats.maxHealth + 8, 0xA0);
    gSave.stats.health = gSave.stats.maxHealth;
}

void ScriptCommand_0807F034(Entity* entity, ScriptExecutionContext* context) {
    u32 tmp = 0;
    if (context->scriptInstructionPointer[1] == 0x3F) {
        tmp = context->unk_04;
    }
    sub_080A7C18(context->scriptInstructionPointer[1], tmp, 0);
}

void ScriptCommand_0807F050(Entity* entity, ScriptExecutionContext* context) {
    sub_080A7C18(0x5C, context->scriptInstructionPointer[1], 0);
}

void ScriptCommand_0807F060(Entity* entity, ScriptExecutionContext* context) {
    context->unk_04 = GetInventoryValue(context->scriptInstructionPointer[1]);
    context->unk_14 = context->unk_04 != 0;
}

void ScriptCommand_0807F078(Entity* entity, ScriptExecutionContext* context) {
    sub_0807CAA0(context->scriptInstructionPointer[1], context->scriptInstructionPointer[2]);
}

void ScriptCommand_0807F088(Entity* entity, ScriptExecutionContext* context) {
    sub_080A7C18(context->scriptInstructionPointer[1], 0, 3);
}

void ScriptCommand_0807F098(Entity* entity, ScriptExecutionContext* context) {
    gRoomControls.cameraTarget = entity;
}

void ScriptCommand_0807F0A4(Entity* entity, ScriptExecutionContext* context) {
    gRoomControls.cameraTarget = &gPlayerEntity;
}

void ScriptCommand_0807F0B4(Entity* entity, ScriptExecutionContext* context) {
    gRoomControls.unk5 = context->scriptInstructionPointer[1] & 7;
}

void ScriptCommand_0807F0C8(Entity* entity, ScriptExecutionContext* context) {
    sub_08080964(context->scriptInstructionPointer[1], context->scriptInstructionPointer[2]);
}
