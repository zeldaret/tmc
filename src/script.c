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
void ScriptCommand_BeginBlock(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_EndBlock(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_Jump(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_JumpIf(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_JumpIfNot(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_JumpSwitch(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_JumpAbsolute(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_JumpAbsoluteIf(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_JumpAbsoluteIfNot(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_JumpAbsoluteSwitch(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_Call(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_CallWithArg(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_LoadRoomEntityList(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_TestBit(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_CheckInventory1(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_CheckInventory2(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_CheckLocalFlag(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_CheckLocalFlagByOffset(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_CheckGlobalFlag(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_CheckRoomFlag(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_CheckPlayerInRegion(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_CheckPlayerInRegion2(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_CheckEntityInteractType(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E30C(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_HasRupees(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E3BC(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E3E8(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_CheckKinstoneFused(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_BuyItem(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E48C(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_HasRoomItemForSale(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E4CC(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E4EC(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E514(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_CheckPlayerFlags(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E564(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_EntityHasHeight(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_ComparePlayerAction(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_ComparePlayerAnimationState(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E5F8(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E610(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_SetLocalFlag(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_SetLocalFlagByOffset(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_ClearLocalFlag(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_SetGlobalFlag(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_ClearGlobalFlag(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_SetRoomFlag(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_ClearRoomFlag(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_Wait(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_WaitForSomething(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_WaitForSomething2(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_WaitPlayerAction8(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_WaitForPlayerAction0x17(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_WaitFor_1(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_WaitFor_2(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E778(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E788(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E79C(Entity* entity, ScriptExecutionContext* context);
void ScriptCommandNop2(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_DoFade4(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_DoFade5(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_DoFade6(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_DoFade7(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E800(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E80C(Entity* entity, ScriptExecutionContext* context);
void sub_0807E818(u32);
void ScriptCommand_0807E858(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E864(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E878(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E888(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_SetPlayerAction(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_StartPlayerScript(Entity* entity, ScriptExecutionContext* context);
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
void ScriptCommand_TextboxNoOverlapFollow(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_TextboxNoOverlap(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_TextboxNoOverlapFollowPos(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807EAF0(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_TextboxNoOverlapVar(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807EB28(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807EB38(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807EB44(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807EB4C(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807EB74(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807EB8C(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_SetEntityDirection(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_SetEntityDirectionWithAnimationState(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_SetEntityNonPlanarMovement(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_SetEntity0x20(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_SetEntityPositionRelative(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_SetEntityPosition(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_MoveEntityToPlayer(Entity* entity, ScriptExecutionContext* context);
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
void ScriptCommand_SoundReq(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_SoundReq2(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_SoundReq3(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_SoundReq0x80100000(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_ModRupees(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_ModHealth(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_IncreaseMaxHealth(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807F034(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807F050(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_GetInventoryValue(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807F078(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807F088(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_CameraTargetEntity(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_CameraTargetPlayer(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807F0B4(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807F0C8(Entity* entity, ScriptExecutionContext* context);

extern void CreateSpeechBubbleExclamationMark(Entity*, u32, u32);
extern void CreateSpeechBubbleQuestionMark(Entity*, u32, u32);
extern void sub_0801C4A0(u32);

typedef void (*ScriptCommand)(Entity*, ScriptExecutionContext*);

const ScriptCommand gScriptCommands[] = { ScriptCommandNop,
                                          ScriptCommand_BeginBlock,
                                          ScriptCommand_EndBlock,
                                          ScriptCommand_Jump,
                                          ScriptCommand_JumpIf,
                                          ScriptCommand_JumpIfNot,
                                          ScriptCommand_JumpSwitch,
                                          ScriptCommand_JumpAbsolute,
                                          ScriptCommand_JumpAbsoluteIf,
                                          ScriptCommand_JumpAbsoluteIfNot,
                                          ScriptCommand_JumpAbsoluteSwitch,
                                          ScriptCommand_Call,
                                          ScriptCommand_CallWithArg,
                                          ScriptCommand_LoadRoomEntityList,
                                          ScriptCommand_TestBit,
                                          ScriptCommand_CheckInventory1,
                                          ScriptCommand_CheckInventory2,
                                          ScriptCommand_HasRoomItemForSale,
                                          ScriptCommand_CheckLocalFlag,
                                          ScriptCommand_CheckLocalFlagByOffset,
                                          ScriptCommand_CheckGlobalFlag,
                                          ScriptCommand_CheckRoomFlag,
                                          ScriptCommand_CheckPlayerInRegion,
                                          ScriptCommand_CheckPlayerInRegion2,
                                          ScriptCommand_CheckEntityInteractType,
                                          ScriptCommand_0807E30C,
                                          ScriptCommand_HasRupees,
                                          ScriptCommand_0807E3BC,
                                          ScriptCommand_0807E3E8,
                                          ScriptCommand_CheckKinstoneFused,
                                          ScriptCommand_BuyItem,
                                          ScriptCommand_0807E48C,
                                          ScriptCommand_0807E4CC,
                                          ScriptCommand_0807E4EC,
                                          ScriptCommand_0807E514,
                                          ScriptCommand_CheckPlayerFlags,
                                          ScriptCommand_0807E564,
                                          ScriptCommand_EntityHasHeight,
                                          ScriptCommand_ComparePlayerAction,
                                          ScriptCommand_ComparePlayerAnimationState,
                                          ScriptCommand_0807E5F8,
                                          ScriptCommand_0807E610,
                                          ScriptCommand_SetLocalFlag,
                                          ScriptCommand_SetLocalFlagByOffset,
                                          ScriptCommand_ClearLocalFlag,
                                          ScriptCommand_SetGlobalFlag,
                                          ScriptCommand_ClearGlobalFlag,
                                          ScriptCommand_SetRoomFlag,
                                          ScriptCommand_ClearRoomFlag,
                                          ScriptCommand_Wait,
                                          ScriptCommand_WaitForSomething,
                                          ScriptCommand_WaitForSomething2,
                                          ScriptCommand_WaitPlayerAction8,
                                          ScriptCommand_WaitForPlayerAction0x17,
                                          ScriptCommand_WaitFor_1,
                                          ScriptCommand_WaitFor_2,
                                          ScriptCommand_0807E778,
                                          ScriptCommand_0807E788,
                                          ScriptCommand_0807E79C,
                                          ScriptCommandNop2,
                                          ScriptCommand_DoFade4,
                                          ScriptCommand_DoFade5,
                                          ScriptCommand_DoFade6,
                                          ScriptCommand_DoFade7,
                                          ScriptCommand_0807E800,
                                          ScriptCommand_0807E80C,
                                          ScriptCommand_0807E858,
                                          ScriptCommand_0807E864,
                                          ScriptCommand_0807E878,
                                          ScriptCommand_0807E888,
                                          ScriptCommand_SetPlayerAction,
                                          ScriptCommand_StartPlayerScript,
                                          ScriptCommand_0807E8D4,
                                          ScriptCommand_0807E8E4,
                                          ScriptCommand_0807E8E4,
                                          ScriptCommand_0807E8E4,
                                          ScriptCommand_0807E8E4,
                                          ScriptCommand_0807E908,
                                          ScriptCommand_0807E914,
                                          ScriptCommand_0807E924,
                                          ScriptCommand_0807E930,
                                          ScriptCommand_0807E944,
                                          ScriptCommand_0807E974,
                                          ScriptCommand_0807E9D4,
                                          ScriptCommand_0807E9DC,
                                          ScriptCommand_0807E9E4,
                                          ScriptCommand_0807E9F0,
                                          ScriptCommand_0807EA4C,
                                          ScriptCommand_0807EA88,
                                          ScriptCommand_0807EA94,
                                          ScriptCommand_TextboxNoOverlapFollow,
                                          ScriptCommand_TextboxNoOverlap,
                                          ScriptCommand_TextboxNoOverlapFollowPos,
                                          ScriptCommand_0807EAF0,
                                          ScriptCommand_TextboxNoOverlapVar,
                                          ScriptCommand_0807EB28,
                                          ScriptCommand_0807EB38,
                                          ScriptCommand_0807EB44,
                                          ScriptCommand_0807EB4C,
                                          ScriptCommand_0807EB74,
                                          ScriptCommand_0807EB8C,
                                          ScriptCommand_SetEntityDirection,
                                          ScriptCommand_SetEntityDirectionWithAnimationState,
                                          ScriptCommand_SetEntityNonPlanarMovement,
                                          ScriptCommand_SetEntity0x20,
                                          ScriptCommand_SetEntityPositionRelative,
                                          ScriptCommand_SetEntityPosition,
                                          ScriptCommand_MoveEntityToPlayer,
                                          ScriptCommandNop3,
                                          ScriptCommand_0807EC1C,
                                          ScriptCommand_0807EC64,
                                          ScriptCommand_0807EC94,
                                          ScriptCommand_0807ECC4,
                                          ScriptCommand_0807ECF4,
                                          ScriptCommand_0807ED24,
                                          ScriptCommand_0807EDD4,
                                          ScriptCommand_0807EE04,
                                          ScriptCommand_0807EE30,
                                          ScriptCommand_0807EEB4,
                                          ScriptCommand_0807EEF4,
                                          ScriptCommand_0807EF3C,
                                          ScriptCommand_0807EF80,
                                          ScriptCommand_0807EF90,
                                          ScriptCommand_SoundReq,
                                          ScriptCommand_SoundReq2,
                                          ScriptCommand_SoundReq3,
                                          ScriptCommand_SoundReq0x80100000,
                                          ScriptCommand_ModRupees,
                                          ScriptCommand_ModHealth,
                                          ScriptCommand_IncreaseMaxHealth,
                                          ScriptCommand_0807F034,
                                          ScriptCommand_0807F050,
                                          ScriptCommand_GetInventoryValue,
                                          ScriptCommand_0807F078,
                                          ScriptCommand_0807F088,
                                          ScriptCommand_CameraTargetEntity,
                                          ScriptCommand_CameraTargetPlayer,
                                          ScriptCommand_0807F0B4,
                                          ScriptCommand_0807F0C8 };

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
    context->condition = 0;
    context->unk_1C.HALF.HI = arg2;
    context->unk_20.HALF.HI = arg3;
    t0 = context->unk_1C.HALF.HI - entity->x.HALF.HI;
    t1 = context->unk_20.HALF.HI - entity->y.HALF.HI;
    temp = sub_080045DA(t0, t1);
    entity->direction = temp;
    entity->animationState = (entity->animationState & 0x80) | gUnk_0811E514[(u32)(temp << 0x18) >> 0x1c];
}

void sub_0807DF28() {
    sub_0807DF38();
    sub_08079184();
    sub_08077B20();
}

void sub_0807DF38() {
    gUnk_0200AF00.filler0[1] = 0xff;
    gUnk_02034490[0] = 0xff;
}

void sub_0807DF50() {
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

// not entirely sure this name is acurate
void ScriptCommand_BeginBlock(Entity* entity, ScriptExecutionContext* context) {
    gActiveScriptInfo.flags |= 2;
}

// not entirely sure this name is acurate
void ScriptCommand_EndBlock(Entity* entity, ScriptExecutionContext* context) {
    gActiveScriptInfo.flags &= ~2;
}

void ScriptCommand_Jump(Entity* entity, ScriptExecutionContext* context) {
    s16 tmp;
    context->scriptInstructionPointer++;
    tmp = GetNextScriptCommandHalfword(context->scriptInstructionPointer);
    context->scriptInstructionPointer += (tmp / 2);
    gActiveScriptInfo.commandSize = 0;
}

void ScriptCommand_JumpIf(Entity* entity, ScriptExecutionContext* context) {
    if (context->condition) {
        ScriptCommand_Jump(entity, context);
    }
}

void ScriptCommand_JumpIfNot(Entity* entity, ScriptExecutionContext* context) {
    if (!context->condition) {
        ScriptCommand_Jump(entity, context);
    }
}

void ScriptCommand_JumpSwitch(Entity* entity, ScriptExecutionContext* context) {
    if (gActiveScriptInfo.commandSize > context->unk_04) {
        context->scriptInstructionPointer += context->unk_04;
        ScriptCommand_Jump(entity, context);
    }
}

void ScriptCommand_JumpAbsolute(Entity* entity, ScriptExecutionContext* context) {
    context->scriptInstructionPointer =
        (u16*)GetNextScriptCommandWordAfterCommandMetadata(context->scriptInstructionPointer);
    gActiveScriptInfo.commandSize = 0;
}

void ScriptCommand_JumpAbsoluteIf(Entity* entity, ScriptExecutionContext* context) {
    if (context->condition) {
        ScriptCommand_JumpAbsolute(entity, context);
    }
}

void ScriptCommand_JumpAbsoluteIfNot(Entity* entity, ScriptExecutionContext* context) {
    if (!context->condition) {
        ScriptCommand_JumpAbsolute(entity, context);
    }
}

void ScriptCommand_JumpAbsoluteSwitch(Entity* entity, ScriptExecutionContext* context) {
    if (gActiveScriptInfo.commandSize > (context->unk_04 << 1) + 1) {
        context->scriptInstructionPointer += context->unk_04 << 1;
        ScriptCommand_JumpAbsolute(entity, context);
    }
}

void ScriptCommand_Call(Entity* entity, ScriptExecutionContext* context) {
    ((ScriptCommand)GetNextScriptCommandWordAfterCommandMetadata(context->scriptInstructionPointer))(entity, context);
}

// the called function can read an argument from context->unk_04
void ScriptCommand_CallWithArg(Entity* entity, ScriptExecutionContext* context) {
    ScriptCommand tmp = (ScriptCommand)GetNextScriptCommandWordAfterCommandMetadata(context->scriptInstructionPointer);
    context->unk_04 = GetNextScriptCommandWord(context->scriptInstructionPointer + 3);
    tmp(entity, context);
}

void ScriptCommand_LoadRoomEntityList(Entity* entity, ScriptExecutionContext* context) {
    LoadRoomEntityList(GetNextScriptCommandWordAfterCommandMetadata(context->scriptInstructionPointer));
}

void ScriptCommand_TestBit(Entity* entity, ScriptExecutionContext* context) {
    u32 tmp = GetNextScriptCommandWordAfterCommandMetadata(context->scriptInstructionPointer);
    u32 tmp2 = 0;
    u32 tmp3 = gActiveScriptInfo.unk_00;
    if ((tmp3 & tmp) == tmp)
        tmp2 = 1;
    context->condition = tmp2;
    gActiveScriptInfo.unk_00 = tmp3 & ~tmp;
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_CheckInventory1(Entity* entity, ScriptExecutionContext* context) {
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
    context->condition = tmp;
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_CheckInventory2(Entity* entity, ScriptExecutionContext* context) {
    context->condition = GetInventoryValue(context->scriptInstructionPointer[1]) == 2;
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_CheckLocalFlag(Entity* entity, ScriptExecutionContext* context) {
    context->condition = CheckLocalFlag(context->scriptInstructionPointer[1]);
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_CheckLocalFlagByOffset(Entity* entity, ScriptExecutionContext* context) {
    context->condition =
        CheckLocalFlagByOffset(context->scriptInstructionPointer[1], context->scriptInstructionPointer[2]);
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_CheckGlobalFlag(Entity* entity, ScriptExecutionContext* context) {
    context->condition =
        CheckGlobalFlag(GetNextScriptCommandHalfwordAfterCommandMetadata(context->scriptInstructionPointer));
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_CheckRoomFlag(Entity* entity, ScriptExecutionContext* context) {
    context->condition = CheckRoomFlag(context->scriptInstructionPointer[1]);
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_CheckPlayerInRegion(Entity* entity, ScriptExecutionContext* context) {
    u32 x, y, width, height;
    width = context->scriptInstructionPointer[3];
    height = width >> 8;
    width &= 0xFF;
    x = context->scriptInstructionPointer[1];
    y = context->scriptInstructionPointer[2];
    context->condition = CheckPlayerInRegion(x, y, width, height);
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_CheckPlayerInRegion2(Entity* entity, ScriptExecutionContext* context) {
    u32 x, y, width, height;
    width = context->scriptInstructionPointer[1] & 0xFF;
    height = context->scriptInstructionPointer[1] >> 8;
    x = entity->x.HALF.HI - gRoomControls.roomOriginX;
    y = entity->y.HALF.HI - gRoomControls.roomOriginY;
    context->condition = CheckPlayerInRegion(x, y, width, height);
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_CheckEntityInteractType(Entity* entity, ScriptExecutionContext* context) {
    if (entity->interactType) {
        entity->interactType = 0;
        context->condition = 1;
    } else {
        context->condition = 0;
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
        context->condition = 1;
        entity->animationState = sub_0806F5B0(GetFacingDirection(entity, &gPlayerEntity));
    } else {
        context->condition = 0;
    }
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_HasRupees(Entity* entity, ScriptExecutionContext* context) {
    context->condition = (context->scriptInstructionPointer[1] <= gSave.stats.rupees);
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_0807E3BC(Entity* entity, ScriptExecutionContext* context) {
    context->condition = (context->scriptInstructionPointer[1] <= gSave.stats.field_0x1a);
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_0807E3E8(Entity* entity, ScriptExecutionContext* context) {
    context->condition = !gUnk_02000040.unk_01;
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_CheckKinstoneFused(Entity* entity, ScriptExecutionContext* context) {
    context->condition = CheckKinstoneFused(context->scriptInstructionPointer[1]);
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_BuyItem(Entity* entity, ScriptExecutionContext* context) {
    u32 tmp, tmp2;
    s32 tmp3;
    tmp = context->scriptInstructionPointer[1];
    tmp2 = context->scriptInstructionPointer[2];
    if (!tmp) {
        tmp = gRoomVars.itemForSaleIndex;
        tmp2 = gRoomVars.field_0x7;
    }
    tmp3 = sub_08053FE0(tmp);
    context->condition = (tmp3 <= gSave.stats.rupees);
    if (context->condition) {
        ModRupees(-tmp3);
        sub_080A7C18(tmp, tmp2, 0);
        gRoomVars.itemForSaleIndex = 0;
        gRoomVars.field_0x7 = 0;
    }
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_0807E48C(Entity* entity, ScriptExecutionContext* context) {
    context->condition = sub_080544DC(context->scriptInstructionPointer[1]);
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_HasRoomItemForSale(Entity* entity, ScriptExecutionContext* context) {
    context->condition = !!gRoomVars.itemForSaleIndex;
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_0807E4CC(Entity* entity, ScriptExecutionContext* context) {
    context->condition = !!(context->unk_04 & context->scriptInstructionPointer[1]);
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_0807E4EC(Entity* entity, ScriptExecutionContext* context) {
    u32 tmp = context->scriptInstructionPointer[1];
    context->condition = tmp == (tmp & context->unk_04);
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_0807E514(Entity* entity, ScriptExecutionContext* context) {
    u32 tmp = context->scriptInstructionPointer[1];
    context->condition = tmp == context->unk_04;
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_CheckPlayerFlags(Entity* entity, ScriptExecutionContext* context) {
    context->condition =
        !!(GetNextScriptCommandWordAfterCommandMetadata(context->scriptInstructionPointer) & gPlayerState.flags.all);
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_0807E564(Entity* entity, ScriptExecutionContext* context) {
    context->condition = (gPlayerState.flags.all >> 7) & 1;
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_EntityHasHeight(Entity* entity, ScriptExecutionContext* context) {
    context->condition = entity->height.WORD != 0;
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_ComparePlayerAction(Entity* entity, ScriptExecutionContext* context) {
    context->condition = context->scriptInstructionPointer[1] == gPlayerEntity.action;
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_ComparePlayerAnimationState(Entity* entity, ScriptExecutionContext* context) {
    context->condition = context->scriptInstructionPointer[1] == gPlayerEntity.animationState;
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_0807E5F8(Entity* entity, ScriptExecutionContext* context) {
    gActiveScriptInfo.unk_00 |= GetNextScriptCommandWordAfterCommandMetadata(context->scriptInstructionPointer);
}

void ScriptCommand_0807E610(Entity* entity, ScriptExecutionContext* context) {
    gActiveScriptInfo.unk_00 &= ~GetNextScriptCommandWordAfterCommandMetadata(context->scriptInstructionPointer);
}

void ScriptCommand_SetLocalFlag(Entity* entity, ScriptExecutionContext* context) {
    SetLocalFlag(context->scriptInstructionPointer[1]);
}

void ScriptCommand_SetLocalFlagByOffset(Entity* entity, ScriptExecutionContext* context) {
    SetLocalFlagByOffset(context->scriptInstructionPointer[1], context->scriptInstructionPointer[2]);
}

void ScriptCommand_ClearLocalFlag(Entity* entity, ScriptExecutionContext* context) {
    ClearLocalFlag(context->scriptInstructionPointer[1]);
}

void ScriptCommand_SetGlobalFlag(Entity* entity, ScriptExecutionContext* context) {
    SetGlobalFlag(context->scriptInstructionPointer[1]);
}

void ScriptCommand_ClearGlobalFlag(Entity* entity, ScriptExecutionContext* context) {
    ClearGlobalFlag(context->scriptInstructionPointer[1]);
}

void ScriptCommand_SetRoomFlag(Entity* entity, ScriptExecutionContext* context) {
    SetRoomFlag(context->scriptInstructionPointer[1]);
}

void ScriptCommand_ClearRoomFlag(Entity* entity, ScriptExecutionContext* context) {
    ClearRoomFlag(context->scriptInstructionPointer[1]);
}

void ScriptCommand_Wait(Entity* entity, ScriptExecutionContext* context) {
    context->wait = GetNextScriptCommandHalfwordAfterCommandMetadata(context->scriptInstructionPointer);
}

void ScriptCommand_WaitForSomething(Entity* entity, ScriptExecutionContext* context) {
    u32 tmp = GetNextScriptCommandWordAfterCommandMetadata(context->scriptInstructionPointer);
    if ((gActiveScriptInfo.unk_00 & tmp) != tmp) {
        gActiveScriptInfo.commandSize = 0;
    }
}

void ScriptCommand_WaitForSomething2(Entity* entity, ScriptExecutionContext* context) {
    u32 tmp = GetNextScriptCommandWordAfterCommandMetadata(context->scriptInstructionPointer);
    if ((gActiveScriptInfo.unk_00 & tmp) != tmp) {
        gActiveScriptInfo.commandSize = 0;
    } else {
        gActiveScriptInfo.unk_00 &= ~tmp;
        gActiveScriptInfo.flags |= 1;
    }
}

void ScriptCommand_WaitPlayerAction8(Entity* entity, ScriptExecutionContext* context) {
    if (gPlayerEntity.action == 8) {
        gActiveScriptInfo.commandSize = 0;
    } else {
        context->wait = 0x2D;
    }
}

void ScriptCommand_WaitForPlayerAction0x17(Entity* entity, ScriptExecutionContext* context) {
    if (gPlayerEntity.action != 0x17) {
        gActiveScriptInfo.flags |= 1;
    } else {
        gActiveScriptInfo.commandSize = 0;
    }
}

void ScriptCommand_WaitFor_1(Entity* entity, ScriptExecutionContext* context) {
    if (gRoomControls.unk6 & 4) {
        gActiveScriptInfo.commandSize = 0;
    } else {
        gActiveScriptInfo.flags |= 1;
    }
}

void ScriptCommand_WaitFor_2(Entity* entity, ScriptExecutionContext* context) {
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

void ScriptCommand_DoFade4(Entity* entity, ScriptExecutionContext* context) {
    DoFade(4, gActiveScriptInfo.unk_08);
}

void ScriptCommand_DoFade5(Entity* entity, ScriptExecutionContext* context) {
    DoFade(5, gActiveScriptInfo.unk_08);
}

void ScriptCommand_DoFade6(Entity* entity, ScriptExecutionContext* context) {
    DoFade(6, gActiveScriptInfo.unk_08);
}

void ScriptCommand_DoFade7(Entity* entity, ScriptExecutionContext* context) {
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

void ScriptCommand_SetPlayerAction(Entity* entity, ScriptExecutionContext* context) {
    u32 tmp = GetNextScriptCommandWordAfterCommandMetadata(context->scriptInstructionPointer);
    gPlayerState.playerAction = tmp;
    gPlayerState.field_0x38 = tmp >> 8;
    gPlayerState.field_0x39 = tmp >> 0x10;
    gPlayerState.field_0x3a = tmp >> 0x18;
}

void ScriptCommand_StartPlayerScript(Entity* entity, ScriptExecutionContext* context) {
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
            context->condition = tmp;
            break;
        case 1:
            context->condition = 0;
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

void ScriptCommand_TextboxNoOverlapFollow(Entity* entity, ScriptExecutionContext* context) {
    TextboxNoOverlapFollow(context->scriptInstructionPointer[1]);
}

void ScriptCommand_TextboxNoOverlap(Entity* entity, ScriptExecutionContext* context) {
    TextboxNoOverlap(context->scriptInstructionPointer[1], entity);
}

void ScriptCommand_TextboxNoOverlapFollowPos(Entity* entity, ScriptExecutionContext* context) {
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

void ScriptCommand_TextboxNoOverlapVar(Entity* entity, ScriptExecutionContext* context) {
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

void ScriptCommand_SetEntityDirection(Entity* entity, ScriptExecutionContext* context) {
    entity->direction = context->scriptInstructionPointer[1];
}

void ScriptCommand_SetEntityDirectionWithAnimationState(Entity* entity, ScriptExecutionContext* context) {
    entity->direction = context->scriptInstructionPointer[1];
    entity->animationState = entity->direction / 4;
}

void ScriptCommand_SetEntityNonPlanarMovement(Entity* entity, ScriptExecutionContext* context) {
    entity->nonPlanarMovement = context->scriptInstructionPointer[1];
}

void ScriptCommand_SetEntity0x20(Entity* entity, ScriptExecutionContext* context) {
    entity->field_0x20 = GetNextScriptCommandWordAfterCommandMetadata(context->scriptInstructionPointer);
}

void ScriptCommand_SetEntityPositionRelative(Entity* entity, ScriptExecutionContext* context) {
    entity->x.HALF.HI = gRoomControls.roomOriginX + context->scriptInstructionPointer[1];
    entity->y.HALF.HI = gRoomControls.roomOriginY + context->scriptInstructionPointer[2];
}

void ScriptCommand_SetEntityPosition(Entity* entity, ScriptExecutionContext* context) {
    entity->x.HALF.HI += context->scriptInstructionPointer[1];
    entity->y.HALF.HI += context->scriptInstructionPointer[2];
}

void ScriptCommand_MoveEntityToPlayer(Entity* entity, ScriptExecutionContext* context) {
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
    if (!context->condition) {
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
        context->condition = 1;
    } else {
        context->condition = 0;
    }
}

void ScriptCommand_0807EEB4(Entity* entity, ScriptExecutionContext* context) {
    if (!context->unk_18) {
        context->unk_18 = 1;
        sub_0807DEDC(entity, context, gPlayerEntity.x.HALF.HI, gPlayerEntity.y.HALF.HI);
    }
    ScriptCommand_0807EE30(entity, context);
    if (!context->condition) {
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
    if (!context->condition) {
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

void ScriptCommand_SoundReq(Entity* entity, ScriptExecutionContext* context) {
    SoundReq(context->scriptInstructionPointer[1]);
}

void ScriptCommand_SoundReq2(Entity* entity, ScriptExecutionContext* context) {
    if (context->scriptInstructionPointer[1] >= 100) {
        SoundReq(gArea.musicIndex);
    } else {
        SoundReq(context->scriptInstructionPointer[1]);
    }
}

void ScriptCommand_SoundReq3(Entity* entity, ScriptExecutionContext* context) {
    SoundReq(GetNextScriptCommandWordAfterCommandMetadata(context->scriptInstructionPointer));
}

void ScriptCommand_SoundReq0x80100000(Entity* entity, ScriptExecutionContext* context) {
    SoundReq(0x80100000);
}

void ScriptCommand_ModRupees(Entity* entity, ScriptExecutionContext* context) {
    ModRupees((s16)context->scriptInstructionPointer[1]);
}

void ScriptCommand_ModHealth(Entity* entity, ScriptExecutionContext* context) {
    ModHealth(context->scriptInstructionPointer[1]);
}

void ScriptCommand_IncreaseMaxHealth(Entity* entity, ScriptExecutionContext* context) {
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

void ScriptCommand_GetInventoryValue(Entity* entity, ScriptExecutionContext* context) {
    context->unk_04 = GetInventoryValue(context->scriptInstructionPointer[1]);
    context->condition = context->unk_04 != 0;
}

void ScriptCommand_0807F078(Entity* entity, ScriptExecutionContext* context) {
    sub_0807CAA0(context->scriptInstructionPointer[1], context->scriptInstructionPointer[2]);
}

void ScriptCommand_0807F088(Entity* entity, ScriptExecutionContext* context) {
    sub_080A7C18(context->scriptInstructionPointer[1], 0, 3);
}

void ScriptCommand_CameraTargetEntity(Entity* entity, ScriptExecutionContext* context) {
    gRoomControls.cameraTarget = entity;
}

void ScriptCommand_CameraTargetPlayer(Entity* entity, ScriptExecutionContext* context) {
    gRoomControls.cameraTarget = &gPlayerEntity;
}

void ScriptCommand_0807F0B4(Entity* entity, ScriptExecutionContext* context) {
    gRoomControls.unk5 = context->scriptInstructionPointer[1] & 7;
}

void ScriptCommand_0807F0C8(Entity* entity, ScriptExecutionContext* context) {
    sub_08080964(context->scriptInstructionPointer[1], context->scriptInstructionPointer[2]);
}
