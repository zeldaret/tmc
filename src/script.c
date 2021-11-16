#include "global.h"
#include "audio.h"
#include "flags.h"
#include "entity.h"
#include "area.h"
#include "script.h"
#include "structures.h"
#include "textbox.h"
#include "utils.h"
#include "save.h"
#include "random.h"
#include "audio.h"
#include "functions.h"
#include "main.h"
#include "effects.h"

void InitScriptForEntity(Entity*, ScriptExecutionContext*, u16*);
void InitScriptExecutionContext(ScriptExecutionContext* context, u16* script);
void sub_0807DE80(Entity*);
void sub_0807DF38(void);
void ScriptCommandNop(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_BeginBlock(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_EndBlock(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_Jump(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_JumpIf(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_JumpIfNot(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_JumpTable(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_JumpAbsolute(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_JumpAbsoluteIf(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_JumpAbsoluteIfNot(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_JumpAbsoluteTable(Entity* entity, ScriptExecutionContext* context);
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
void ScriptCommand_SetFadeMask(Entity* entity, ScriptExecutionContext* context);
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
void ScriptCommand_SetIntVariable(Entity* entity, ScriptExecutionContext* context);
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
void ScriptCommand_MessageFromTarget(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_MessageNoOverlap(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_MessageFromTargetPos(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_MessageFromTargetTable(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_MessageNoOverlapVar(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807EB28(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807EB38(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807EB44(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807EB4C(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807EB74(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807EB8C(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_SetEntityDirection(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_SetEntityDirectionWithAnimationState(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_SetEntitySpeed(Entity* entity, ScriptExecutionContext* context);
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
void ScriptCommand_DoPostScriptAction(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_DoPostScriptAction2(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_PlaySound(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_PlayBgm(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_SoundReq(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_StopBgm(Entity* entity, ScriptExecutionContext* context);
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
extern void RecoverUI(u32);

typedef void (*ScriptCommand)(Entity*, ScriptExecutionContext*);

const ScriptCommand gScriptCommands[] = { ScriptCommandNop,
                                          ScriptCommand_BeginBlock,
                                          ScriptCommand_EndBlock,
                                          ScriptCommand_Jump,
                                          ScriptCommand_JumpIf,
                                          ScriptCommand_JumpIfNot,
                                          ScriptCommand_JumpTable,
                                          ScriptCommand_JumpAbsolute,
                                          ScriptCommand_JumpAbsoluteIf,
                                          ScriptCommand_JumpAbsoluteIfNot,
                                          ScriptCommand_JumpAbsoluteTable,
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
                                          ScriptCommand_SetFadeMask,
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
                                          ScriptCommand_SetIntVariable,
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
                                          ScriptCommand_MessageFromTarget,
                                          ScriptCommand_MessageNoOverlap,
                                          ScriptCommand_MessageFromTargetPos,
                                          ScriptCommand_MessageFromTargetTable,
                                          ScriptCommand_MessageNoOverlapVar,
                                          ScriptCommand_0807EB28,
                                          ScriptCommand_0807EB38,
                                          ScriptCommand_0807EB44,
                                          ScriptCommand_0807EB4C,
                                          ScriptCommand_0807EB74,
                                          ScriptCommand_0807EB8C,
                                          ScriptCommand_SetEntityDirection,
                                          ScriptCommand_SetEntityDirectionWithAnimationState,
                                          ScriptCommand_SetEntitySpeed,
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
                                          ScriptCommand_DoPostScriptAction,
                                          ScriptCommand_DoPostScriptAction2,
                                          ScriptCommand_PlaySound,
                                          ScriptCommand_PlayBgm,
                                          ScriptCommand_SoundReq,
                                          ScriptCommand_StopBgm,
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

extern u16* gUnk_08001A7C[];
extern u8 gUnk_08114F30[];
extern u8 gUnk_08114F34[];
extern const u16 gUnk_08016984;
extern u8 gUnk_0811E514[];
extern u8 gUnk_0811E510[];
extern ScriptExecutionContext gPlayerScriptExecutionContext;
extern ScriptExecutionContext gScriptExecutionContextArray[0x20];

void InitScriptData(void) {
    MemClear(&gActiveScriptInfo, sizeof(gActiveScriptInfo));
    MemClear(&gScriptExecutionContextArray, sizeof(gScriptExecutionContextArray));
    MemClear(&gPlayerScriptExecutionContext, sizeof(gPlayerScriptExecutionContext));
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
    MemClear(context, sizeof(ScriptExecutionContext));
}

ScriptExecutionContext* StartCutscene(Entity* entity, u16* script) {
    ScriptExecutionContext* context;

    context = CreateScriptExecutionContext();
    if (context) {
        InitScriptForEntity(entity, context, script);
    }
    return context;
}

void InitScriptForEntity(Entity* entity, ScriptExecutionContext* context, u16* script) {
    entity->flags |= ENT_SCRIPTED;
    *(ScriptExecutionContext**)&entity->cutsceneBeh = context;
    InitScriptExecutionContext(context, script);
}

void UnloadCutsceneData(Entity* entity) {
    if (entity->flags & ENT_SCRIPTED) {
        entity->flags &= ~ENT_SCRIPTED;
        DestroyScriptExecutionContext(*(ScriptExecutionContext**)&entity->cutsceneBeh);
        *(ScriptExecutionContext**)&entity->cutsceneBeh = NULL;
    }
}

void StartPlayerScript(u16* script) {
    Entity* player;

    MemClear(&gPlayerScriptExecutionContext, sizeof(gPlayerScriptExecutionContext));
    gPlayerScriptExecutionContext.scriptInstructionPointer = script;
    player = &gPlayerEntity;
    *(ScriptExecutionContext**)&player->cutsceneBeh = &gPlayerScriptExecutionContext;
    gPlayerState.playerAction = 0x1c;
    gPlayerState.field_0x3a = 0;
    gPlayerState.field_0x39 = 0;
    gPlayerState.field_0x38 = 0;
}

ScriptExecutionContext* StartCutscene2(Entity* entity, u16* script) {
    ScriptExecutionContext* context;

    context = CreateScriptExecutionContext();
    if (context) {
        entity->flags |= 2;
        *(ScriptExecutionContext**)&entity->field_0x3c = context;
        context->scriptInstructionPointer = script;
    }
    return context;
}

void InitScriptExecutionContext(ScriptExecutionContext* context, u16* script) {
    MemClear(context, sizeof(ScriptExecutionContext));
    context->scriptInstructionPointer = script;
}

void HandlePostScriptActions(Entity* entity, ScriptExecutionContext* context) {
    u32 bit;
    // iterate over bits of context->postScriptActions, LSB first
    while (context->postScriptActions) {
        bit = (~context->postScriptActions + 1) & context->postScriptActions;
        context->postScriptActions ^= bit;
        switch (bit) {
            case 1 << 0x00:
                entity->field_0x80.HWORD = 0;
                break;
            case 1 << 0x01:
                entity->field_0x80.HWORD = 4;
                break;
            case 1 << 0x02:
                break;
            case 1 << 0x03:
                entity->zVelocity = 0x18000;
                break;
            case 1 << 0x04:
                CreateSpeechBubbleExclamationMark(entity, 8, -0x18);
                break;
            case 1 << 0x05:
                CreateSpeechBubbleQuestionMark(entity, 8, -0x18);
                break;
            case 1 << 0x06:
                DestroyScriptExecutionContext(context);
                DeleteThisEntity();
            case 1 << 0x07:
                entity->spriteSettings.draw = 1;
                break;
            case 1 << 0x08:
                entity->spriteSettings.draw = 0;
                break;
            case 1 << 0x09:
                entity->spriteOffsetY = 0;
                entity->spriteOffsetX = 0;
                entity->field_0x82.HWORD = 0;
                break;
            case 1 << 0x0a:
                entity->field_0x82.HWORD |= 2;
                break;
            case 1 << 0x0b:
                entity->field_0x82.HWORD &= 0xfffd;
                break;
            case 1 << 0x0c:
                entity->field_0x82.HWORD &= 0xfffe;
                break;
            case 1 << 0x0d:
                entity->field_0x82.HWORD |= 1;
                break;
            case 1 << 0x0e:
                entity->field_0x82.HWORD |= 8;
                break;
            case 1 << 0x0f:
                entity->field_0x82.HWORD ^= 4;
                break;
            case 1 << 0x10:
                entity->field_0x82.HWORD ^= 0x10;
                break;
            case 1 << 0x11:
                entity->spriteSettings.flipX ^= 1;
                break;
            case 1 << 0x12:
                entity->field_0x82.HWORD |= 0x20;
                break;
            case 1 << 0x13:
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

void sub_0807DD80(Entity* entity, u16* script) {
    InitScriptExecutionContext(*(ScriptExecutionContext**)&entity->cutsceneBeh, script);
    sub_0807DD64(entity);
}

void sub_0807DD94(Entity* entity, void (*function)(Entity*, ScriptExecutionContext*)) {
    ExecuteScriptForEntity(entity, function);
    HandleEntity0x82Actions(entity);
    sub_0807DE80(entity);
}

void ExecuteScriptForEntity(Entity* entity, void (*postScriptCallback)(Entity*, ScriptExecutionContext*)) {
    ScriptExecutionContext** piVar1;

    piVar1 = (ScriptExecutionContext**)&entity->cutsceneBeh;
    if (*piVar1) {
        ExecuteScript(entity, *piVar1);
        if (postScriptCallback) {
            postScriptCallback(entity, *piVar1);
        } else {
            HandlePostScriptActions(entity, *piVar1);
        }
        if (!entity->next) {
            DeleteThisEntity();
        }
    }
}

void HandleEntity0x82Actions(Entity* entity) {
    u32 temp;
    u32 bit;
    u32 loopVar;

    loopVar = entity->field_0x82.HWORD;
    while (loopVar) {
        bit = (~loopVar + 1) & loopVar;
        loopVar = loopVar ^ bit;
        switch (bit) {
            case 1 << 1:
                if (entity->kind == 7) {
                    sub_0806ED78(entity);
                } else {
                    sub_0800445C(entity);
                }
                break;
            case 1 << 3:
                if ((gScreenTransition.frameCount & 3) == 0) {
                    temp = (entity->field_0xf + 2U) & 7;
                    entity->animationState = temp;
                    entity->field_0xf = temp;
                }
                break;
            case 1 << 4:
                if ((gScreenTransition.frameCount & 1) == 0) {
                    entity->spriteOffsetX = gUnk_0811E510[Random() & 3];
                }
                break;
            case 1 << 5:
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

void sub_0807DEDC(Entity* entity, ScriptExecutionContext* context, u32 x, u32 y) {
    int direction;
    s32 xOffset, yOffset;

    context->unk_19 = 8;
    context->postScriptActions |= 2;
    context->condition = 0;
    context->x.HALF.HI = x;
    context->y.HALF.HI = y;
    xOffset = context->x.HALF.HI - entity->x.HALF.HI;
    yOffset = context->y.HALF.HI - entity->y.HALF.HI;
    direction = sub_080045DA(xOffset, yOffset);
    entity->direction = direction;
    entity->animationState = (entity->animationState & 0x80) | gUnk_0811E514[(u32)(direction << 0x18) >> 0x1c];
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
    RecoverUI(0);
    sub_080791D0();
    sub_08079184();
}

void ExecuteScript(Entity* entity, ScriptExecutionContext* context) {
    if (!context->scriptInstructionPointer)
        return;
    if (context->wait) {
        context->wait--;
    } else {
        struct_02033280* activeScriptInfo = &gActiveScriptInfo;
        activeScriptInfo->flags = 0;
        do {
            u32 cmd = GetNextScriptCommandHalfword(context->scriptInstructionPointer);
            u16* lastInstruction;
            if (cmd == 0xFFFF)
                return;
            activeScriptInfo->commandSize = cmd >> 0xA;
            activeScriptInfo->commandIndex = cmd & 0x3FF;
            lastInstruction = context->scriptInstructionPointer;
            activeScriptInfo->flags &= ~1;
            gScriptCommands[activeScriptInfo->commandIndex](entity, context);
            context->scriptInstructionPointer += activeScriptInfo->commandSize;
            if (lastInstruction != context->scriptInstructionPointer) {
                context->unk_18 = 0;
            }
        } while (activeScriptInfo->flags & 3);
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

void ScriptCommand_JumpTable(Entity* entity, ScriptExecutionContext* context) {
    if (gActiveScriptInfo.commandSize > context->intVariable) {
        context->scriptInstructionPointer += context->intVariable;
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

void ScriptCommand_JumpAbsoluteTable(Entity* entity, ScriptExecutionContext* context) {
    if (gActiveScriptInfo.commandSize > (context->intVariable << 1) + 1) {
        context->scriptInstructionPointer += context->intVariable << 1;
        ScriptCommand_JumpAbsolute(entity, context);
    }
}

void ScriptCommand_Call(Entity* entity, ScriptExecutionContext* context) {
    ((ScriptCommand)GetNextScriptCommandWordAfterCommandMetadata(context->scriptInstructionPointer))(entity, context);
}

// the called function can read an argument from context->intVariable
void ScriptCommand_CallWithArg(Entity* entity, ScriptExecutionContext* context) {
    ScriptCommand tmp = (ScriptCommand)GetNextScriptCommandWordAfterCommandMetadata(context->scriptInstructionPointer);
    context->intVariable = GetNextScriptCommandWord(context->scriptInstructionPointer + 3);
    tmp(entity, context);
}

void ScriptCommand_LoadRoomEntityList(Entity* entity, ScriptExecutionContext* context) {
    LoadRoomEntityList((EntityData*)GetNextScriptCommandWordAfterCommandMetadata(context->scriptInstructionPointer));
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
    if ((context->unk_1A & 0xF) == 0 && (gPlayerState.flags & PL_IS_MINISH) == 0 &&
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
    u32 item, tmp2;
    s32 price;
    item = context->scriptInstructionPointer[1];
    tmp2 = context->scriptInstructionPointer[2];
    if (!item) {
        item = gRoomVars.itemForSaleIndex;
        tmp2 = gRoomVars.field_0x7;
    }
    price = GetItemPrice(item);
    context->condition = (price <= gSave.stats.rupees);
    if (context->condition) {
        ModRupees(-price);
        sub_080A7C18(item, tmp2, 0);
        gRoomVars.itemForSaleIndex = 0;
        gRoomVars.field_0x7 = 0;
    }
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_0807E48C(Entity* entity, ScriptExecutionContext* context) {
    context->condition = GetBottleContaining(context->scriptInstructionPointer[1]);
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_HasRoomItemForSale(Entity* entity, ScriptExecutionContext* context) {
    context->condition = !!gRoomVars.itemForSaleIndex;
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_0807E4CC(Entity* entity, ScriptExecutionContext* context) {
    context->condition = !!(context->intVariable & context->scriptInstructionPointer[1]);
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_0807E4EC(Entity* entity, ScriptExecutionContext* context) {
    u32 tmp = context->scriptInstructionPointer[1];
    context->condition = tmp == (tmp & context->intVariable);
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_0807E514(Entity* entity, ScriptExecutionContext* context) {
    u32 tmp = context->scriptInstructionPointer[1];
    context->condition = tmp == context->intVariable;
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_CheckPlayerFlags(Entity* entity, ScriptExecutionContext* context) {
    context->condition =
        !!(GetNextScriptCommandWordAfterCommandMetadata(context->scriptInstructionPointer) & gPlayerState.flags);
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_0807E564(Entity* entity, ScriptExecutionContext* context) {
    context->condition = (gPlayerState.flags >> 7) & 1;
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_EntityHasHeight(Entity* entity, ScriptExecutionContext* context) {
    context->condition = entity->z.WORD != 0;
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

void ScriptCommand_SetFadeMask(Entity* entity, ScriptExecutionContext* context) {
    gFadeControl.mask = GetNextScriptCommandWordAfterCommandMetadata(context->scriptInstructionPointer);
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
    Entity* cameraTarget = gRoomControls.cameraTarget;
    u32 x, y;
    if (cameraTarget) {
        x = cameraTarget->x.HALF.HI - gRoomControls.roomScrollX;
        y = cameraTarget->y.HALF.HI - gRoomControls.roomScrollY;
    } else {
        x = 0x78;
        y = 0x50;
    }
    sub_08050110(x, y, unk1, gActiveScriptInfo.unk_08);
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
    entity->subAction = 0;
}

void ScriptCommand_SetIntVariable(Entity* entity, ScriptExecutionContext* context) {
    context->intVariable = GetNextScriptCommandWordAfterCommandMetadata(context->scriptInstructionPointer);
}

void ScriptCommand_0807E924(Entity* entity, ScriptExecutionContext* context) {
    context->intVariable = entity->frame;
    entity->frame = 0;
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
            MessageFromTarget(context->scriptInstructionPointer[1]);
            break;
        case 1:
            if (gMessage.doTextBox & 0x7F)
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
    if (gMessage.doTextBox & 0x7F) {
        gActiveScriptInfo.commandSize = 0;
    }
}

void ScriptCommand_MessageFromTarget(Entity* entity, ScriptExecutionContext* context) {
    MessageFromTarget(context->scriptInstructionPointer[1]);
}

void ScriptCommand_MessageNoOverlap(Entity* entity, ScriptExecutionContext* context) {
    MessageNoOverlap(context->scriptInstructionPointer[1], entity);
}

void ScriptCommand_MessageFromTargetPos(Entity* entity, ScriptExecutionContext* context) {
    MessageFromTarget(context->scriptInstructionPointer[1]);
    gMessage.textWindowPosX = 1;
    gMessage.textWindowPosY = context->scriptInstructionPointer[2];
}

void ScriptCommand_MessageFromTargetTable(Entity* entity, ScriptExecutionContext* context) {
    if (gActiveScriptInfo.commandSize > context->intVariable) {
        u16* tmp = context->scriptInstructionPointer + context->intVariable;
        MessageFromTarget(tmp[1]);
    } else {
        MessageFromTarget(0);
    }
}

void ScriptCommand_MessageNoOverlapVar(Entity* entity, ScriptExecutionContext* context) {
    MessageNoOverlap(context->intVariable, entity);
}

void ScriptCommand_0807EB28(Entity* entity, ScriptExecutionContext* context) {
    sub_08078AA8(context->scriptInstructionPointer[1], 0);
}

void ScriptCommand_0807EB38(Entity* entity, ScriptExecutionContext* context) {
    context->intVariable = gUnk_02000040.unk_01;
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

void ScriptCommand_SetEntitySpeed(Entity* entity, ScriptExecutionContext* context) {
    entity->speed = context->scriptInstructionPointer[1];
}

void ScriptCommand_SetEntity0x20(Entity* entity, ScriptExecutionContext* context) {
    entity->zVelocity = GetNextScriptCommandWordAfterCommandMetadata(context->scriptInstructionPointer);
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
        context->postScriptActions |= 2;
    }
    sub_0807EC44(entity, context);
}

void sub_0807EC44(Entity* entity, ScriptExecutionContext* context) {
    sub_0806F69C(entity);
    if (--context->unk_12) {
        gActiveScriptInfo.commandSize = 0;
    }
}

void ScriptCommand_0807EC64(Entity* entity, ScriptExecutionContext* context) {
    if (!context->unk_18) {
        context->unk_18 = 1;
        context->unk_12 = context->scriptInstructionPointer[1];
        entity->animationState = 0;
        entity->direction = 0;
        context->postScriptActions |= 2;
    }
    sub_0807EC44(entity, context);
}

void ScriptCommand_0807EC94(Entity* entity, ScriptExecutionContext* context) {
    if (!context->unk_18) {
        context->unk_18 = 1;
        context->unk_12 = context->scriptInstructionPointer[1];
        entity->animationState = 2;
        entity->direction = 8;
        context->postScriptActions |= 2;
    }
    sub_0807EC44(entity, context);
}

void ScriptCommand_0807ECC4(Entity* entity, ScriptExecutionContext* context) {
    if (!context->unk_18) {
        context->unk_18 = 1;
        context->unk_12 = context->scriptInstructionPointer[1];
        entity->animationState = 4;
        entity->direction = 0x10;
        context->postScriptActions |= 2;
    }
    sub_0807EC44(entity, context);
}

void ScriptCommand_0807ECF4(Entity* entity, ScriptExecutionContext* context) {
    if (!context->unk_18) {
        context->unk_18 = 1;
        context->unk_12 = context->scriptInstructionPointer[1];
        entity->animationState = 6;
        entity->direction = 0x18;
        context->postScriptActions |= 2;
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
        context->x.WORD = ((tmp - tmp2) << 0x10) / context->unk_12;
        tmp = context->scriptInstructionPointer[2];
        tmp3 = entity->y.HALF.HI - gRoomControls.roomOriginY;
        context->y.WORD = ((tmp - tmp3) << 0x10) / context->unk_12;
        entity->animationState =
            sub_0806F5B0(sub_080045B4(entity, context->scriptInstructionPointer[1] + gRoomControls.roomOriginX,
                                      context->scriptInstructionPointer[2] + gRoomControls.roomOriginY));
        context->postScriptActions |= 2;
    } else {
        if (!--context->unk_12) {
            entity->x.HALF.HI = context->scriptInstructionPointer[1] + gRoomControls.roomOriginX;
            entity->y.HALF.HI = context->scriptInstructionPointer[2] + gRoomControls.roomOriginY;
            return;
        }
        entity->x.WORD += context->x.WORD;
        entity->y.WORD += context->y.WORD;
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
            sub_080045DA(context->x.HALF.HI - entity->x.HALF.HI, context->y.HALF.HI - entity->y.HALF.HI);
    }
    tmp = entity->x.HALF.HI - context->x.HALF.HI;
    tmp2 = entity->y.HALF.HI - context->y.HALF.HI;
    sub_0806F62C(entity, entity->speed, entity->direction);
    tmp *= entity->x.HALF.HI - context->x.HALF.HI;
    tmp2 *= entity->y.HALF.HI - context->y.HALF.HI;
    if (tmp <= 0 && tmp2 <= 0) {
        entity->x.HALF.HI = context->x.HALF.HI;
        entity->y.HALF.HI = context->y.HALF.HI;
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
        entity->zVelocity = ((s16)context->scriptInstructionPointer[1]) << 8;
        context->x.HALF.LO = context->scriptInstructionPointer[2] << 8;
        sub_08003FC4(entity, (u16)context->x.HALF.LO);
    } else {
        if (!sub_08003FC4(entity, (u16)context->x.HALF.LO))
            return;
    }
    gActiveScriptInfo.commandSize = 0;
}

void ScriptCommand_DoPostScriptAction(Entity* entity, ScriptExecutionContext* context) {
    context->postScriptActions |= 1 << context->scriptInstructionPointer[1];
}

void ScriptCommand_DoPostScriptAction2(Entity* entity, ScriptExecutionContext* context) {
    context->postScriptActions |= 1 << context->scriptInstructionPointer[1];
}

void ScriptCommand_PlaySound(Entity* entity, ScriptExecutionContext* context) {
    SoundReq(context->scriptInstructionPointer[1]);
}

void ScriptCommand_PlayBgm(Entity* entity, ScriptExecutionContext* context) {
    if (context->scriptInstructionPointer[1] >= 100) {
        SoundReq(gArea.musicIndex);
    } else {
        SoundReq(context->scriptInstructionPointer[1]);
    }
}

void ScriptCommand_SoundReq(Entity* entity, ScriptExecutionContext* context) {
    SoundReq(GetNextScriptCommandWordAfterCommandMetadata(context->scriptInstructionPointer));
}

void ScriptCommand_StopBgm(Entity* entity, ScriptExecutionContext* context) {
    SoundReq(SONG_STOP_BGM);
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
        tmp = context->intVariable;
    }
    sub_080A7C18(context->scriptInstructionPointer[1], tmp, 0);
}

void ScriptCommand_0807F050(Entity* entity, ScriptExecutionContext* context) {
    sub_080A7C18(0x5C, context->scriptInstructionPointer[1], 0);
}

void ScriptCommand_GetInventoryValue(Entity* entity, ScriptExecutionContext* context) {
    context->intVariable = GetInventoryValue(context->scriptInstructionPointer[1]);
    context->condition = context->intVariable != 0;
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

extern u8 gUnk_0811E750[];
extern u8 gUnk_0811E758[];
extern u8 gUnk_0811E760[];

void sub_0807F0D8(Entity* entity, ScriptExecutionContext* context) {
    context->condition = (-(u32)gInput.newKeys | ((u32)gInput.newKeys)) >> 0x1f;
}

void sub_0807F0EC(Entity* entity, ScriptExecutionContext* context) {
    context->intVariable = (s32)Random() % (s32)context->intVariable;
}

void sub_0807F100(Entity* entity, ScriptExecutionContext* context) {
    u32 rand;

    rand = Random();
    entity->animationState = rand & 6;
    context->unk_1A = gUnk_0811E750[(rand >> 8) & 7];
}

void sub_0807F128(Entity* entity, ScriptExecutionContext* context) {
    u32 rand;

    rand = Random();
    entity->animationState = gUnk_0811E758[rand & 7];
    context->unk_1A = gUnk_0811E760[(rand >> 8) & 7];
}

void sub_0807F158(Entity* entity, ScriptExecutionContext* context) {
    entity->collisionLayer = 1;
    UpdateSpriteForCollisionLayer(entity);
}

void sub_0807F168(Entity* entity, ScriptExecutionContext* context) {
    gPlayerEntity.collisionLayer = 1;
    UpdateSpriteForCollisionLayer(&gPlayerEntity);
}

void sub_0807F180(Entity* entity, ScriptExecutionContext* context) {
    entity->collisionLayer = 2;
    UpdateSpriteForCollisionLayer(entity);
}

void sub_0807F190(Entity* entity, ScriptExecutionContext* context) {
    DoFade(4, 256);
}

void sub_0807F1A0(Entity* entity, ScriptExecutionContext* context) {
    sub_0807DEDC(entity, context, gPlayerEntity.x.HALF.HI, gPlayerEntity.y.HALF.HI);
    gActiveScriptInfo.flags |= 1;
}

void sub_0807F1C4(Entity* entity, ScriptExecutionContext* context) {
    if ((gPlayerState.flags & 8) != 0) {
        gPlayerState.field_0x8 = 0x459;
    } else {
        gPlayerState.field_0x8 = 0x1bc;
    }
}

void sub_0807F1E8(Entity* entity, ScriptExecutionContext* context) {
    if ((gPlayerState.flags & 8) != 0) {
        gPlayerState.field_0x8 = 0x45a;
    } else {
        gPlayerState.field_0x8 = 0x2bd;
    }
}

void sub_0807F210(Entity* entity, ScriptExecutionContext* context) {
    if ((gPlayerState.flags & 8) != 0) {
        gPlayerState.field_0x8 = 0x41c;
    } else {
        gPlayerState.field_0x8 = 0x80c;
    }
}

void sub_0807F238(Entity* entity, ScriptExecutionContext* context) {
    gPlayerState.field_0x8 = context->intVariable;
}

void sub_0807F244(Entity* entity, ScriptExecutionContext* context) {
    u32 slot;
    u32 item;

    item = context->intVariable & 0xFFFF;
    slot = context->intVariable >> 0x10;
    item &= 0xFFFF;
    switch (item) {
        case 1:
        case 2:
        case 3:
        case 4:
        case 6:
            // Pick greatest sword unlocked
            item = 1;
            if (GetInventoryValue(2))
                item = 2;
            if (GetInventoryValue(3))
                item = 3;
            if (GetInventoryValue(4))
                item = 4;
            if (GetInventoryValue(6))
                item = 6;
            break;
    }
    ForceEquipItem(item, slot);
}

void sub_0807F29C(Entity* entity, ScriptExecutionContext* context) {
    sub_0805ED14((void*)context->intVariable);
}

void sub_0807F2A8(Entity* entity, ScriptExecutionContext* context) {
    if (gPlayerState.field_0x9c == 0) {
        gActiveScriptInfo.flags |= 1;
    } else {
        gActiveScriptInfo.commandSize = 0;
    }
}

void sub_0807F2D4(Entity* entity, ScriptExecutionContext* context) {
    if ((entity->frame & 0x80) != 0) {
        gActiveScriptInfo.flags |= 1;
    } else {
        gActiveScriptInfo.commandSize = 0;
    }
}

void sub_0807F304(Entity* entity, ScriptExecutionContext* context) {
    if ((gPlayerEntity.frame & 0x80) != 0) {
        gActiveScriptInfo.flags |= 1;
    } else {
        gActiveScriptInfo.commandSize = 0;
    }
}

void sub_0807F338(Entity* entity, ScriptExecutionContext* context) {
    entity->hitbox = NULL;
    entity->field_0x17 &= ~1;
}

void sub_0807F348(Entity* entity, ScriptExecutionContext* context) {
    sub_0805E3A0(entity, 2);
}

void sub_0807F354(Entity* entity, ScriptExecutionContext* context) {
    sub_0805E3A0(entity, 6);
}

void sub_0807F360(Entity* entity, ScriptExecutionContext* context) {
    sub_0805E3A0(entity, 3);
}

void sub_0807F36C(Entity* entity, ScriptExecutionContext* context) {
    Entity* fx;
    fx = CreateFx(entity, FX_REFLECT4, 0);
    if (fx != NULL) {
        fx->spritePriority.b0 = 1;
        PositionRelative(entity, fx, 0, -524288);
        if (Random() & 1)
            fx->spriteSettings.flipX = 1;
        if (Random() & 1)
            fx->spriteSettings.flipY = 1;
    }
}

void sub_0807F3C8(Entity* entity, ScriptExecutionContext* context) {
    sub_0807F36C(entity, context);
    SoundReq(SFX_BUTTON_DEPRESS);
}

void sub_0807F3D8(Entity* entity, ScriptExecutionContext* context) {
    InitAnimationForceUpdate(entity, context->intVariable + (entity->animationState >> 1));
    entity->field_0x80.HWORD = entity->animIndex;
}

void sub_0807F3F8(Entity* entity, ScriptExecutionContext* context) {
    CreateSpeechBubbleExclamationMark(&gPlayerEntity, 8, -24);
}

void sub_0807F40C(Entity* entity, ScriptExecutionContext* context) {
    CreateSpeechBubbleQuestionMark(&gPlayerEntity, 8, -24);
}

void sub_0807F420(Entity* entity, ScriptExecutionContext* context) {
    MenuFadeIn(context->intVariable & 0xff, (u8)(context->intVariable >> 8));
}

void sub_0807F434(Entity* entity, ScriptExecutionContext* context) {
    switch (entity->interactType) {
        case 1:
            entity->interactType = 0;
            context->intVariable = 1;
            break;
        case 2:
            entity->interactType = 0;
            context->intVariable = 2;
            break;
        default:
            context->intVariable = 0;
            break;
    }
    gActiveScriptInfo.flags |= 1;
}

void sub_0807F464(Entity* entity, ScriptExecutionContext* context) {
    s32 s32Var;

    if (!context->unk_18) {
        context->unk_18++;
        context->postScriptActions |= 2;
        s32Var = context->intVariable;
        context->x.HALF.HI = gRoomControls.roomOriginX + s32Var;
        context->y.HALF.HI = entity->y.HALF.HI;
        if (s32Var > entity->x.HALF.HI - gRoomControls.roomOriginX) {
            entity->direction = 64;
            entity->animationState = (entity->animationState & 0x80) | 2;
        } else {
            entity->direction = -64;
            entity->animationState = (entity->animationState & 0x80) | 6;
        }
    }
    sub_0806F62C(entity, entity->speed, entity->direction);
    if (((context->x.HALF.HI - entity->x.HALF.HI) ^ ((entity->direction & 0x80) << 24)) < 0)
        entity->x.HALF.HI = context->x.HALF.HI;
    else
        gActiveScriptInfo.commandSize = 0;
}

void sub_0807F4F8(Entity* entity, ScriptExecutionContext* context) {
    s32 s32Var;

    if (!context->unk_18) {
        context->unk_18++;
        context->postScriptActions |= 2;
        s32Var = context->intVariable;
        context->x.HALF.HI = entity->x.HALF.HI;
        context->y.HALF.HI = gRoomControls.roomOriginY + s32Var;
        if (s32Var > entity->y.HALF.HI - gRoomControls.roomOriginY) {
            entity->direction = 128;
            entity->animationState = (entity->animationState & 0x80) | 4;
        } else {
            entity->direction = 0;
            entity->animationState = (entity->animationState & 0x80);
        }
    }
    sub_0806F62C(entity, entity->speed, entity->direction);
    if (((context->y.HALF.HI - entity->y.HALF.HI) ^ ((entity->direction & 0x80) << 24)) >= 0)
        entity->y.HALF.HI = context->y.HALF.HI;
    else
        gActiveScriptInfo.commandSize = 0;
}

void sub_0807F584(Entity* entity, ScriptExecutionContext* context) {
    context->intVariable = gPlayerEntity.animationState >> 1;
}

void sub_0807F594(Entity* entity, ScriptExecutionContext* context) {
    if (gPlayerState.field_0xa8)
        gActiveScriptInfo.commandSize = 0;
}

void sub_0807F5B0(Entity* entity, ScriptExecutionContext* context) {
    gPlayerState.field_0x27[0] = context->intVariable;
}

void sub_0807F5C0(Entity* entity, ScriptExecutionContext* context) {
    s32 left;
    s32 bottom;

    if (gRoomControls.cameraTarget != NULL) {
        left = gRoomControls.cameraTarget->x.HALF.HI - DISPLAY_WIDTH / 2;
        bottom = gRoomControls.cameraTarget->y.HALF.HI - DISPLAY_HEIGHT / 2;

        if (left < gRoomControls.roomOriginX)
            left = gRoomControls.roomOriginX;
        if (left > gRoomControls.roomOriginX + gRoomControls.width - DISPLAY_WIDTH)
            left = gRoomControls.roomOriginX + gRoomControls.width - DISPLAY_WIDTH;
        if (bottom < gRoomControls.roomOriginY)
            bottom = gRoomControls.roomOriginY;
        if (bottom > gRoomControls.roomOriginY + gRoomControls.height - DISPLAY_HEIGHT)
            bottom = gRoomControls.roomOriginY + gRoomControls.height - DISPLAY_HEIGHT;

        if (left == gRoomControls.roomScrollX && bottom == gRoomControls.roomScrollY)
            gActiveScriptInfo.flags |= 1u;
        else
            gActiveScriptInfo.commandSize = 0;
    }
}

void sub_0807F634(Entity* entity, ScriptExecutionContext* context) {
    u16* p = (u16*)context->intVariable;
    sub_0801DFB4(entity, p[0], p[1], p[2]);
    gPlayerState.field_0x8b = 3;
}

void sub_0807F650(Entity* entity, ScriptExecutionContext* context) {
    u32 p = sub_08002632(entity);
    sub_0801DFB4(entity, gUnk_08001A7C[p][0], gUnk_08001A7C[p][1], gUnk_08001A7C[p][2]);
    gPlayerState.field_0x8b = 3;
}

void sub_0807F680(Entity* entity, ScriptExecutionContext* context) {
    context->condition = gPlayerEntity.x.HALF.HI - gRoomControls.roomOriginX > (s32)(context->intVariable & 0xffff);
    gActiveScriptInfo.flags |= 1;
}

void sub_0807F6B4(Entity* entity, ScriptExecutionContext* context) {
    context->condition = gPlayerEntity.y.HALF.HI - gRoomControls.roomOriginY > (s32)(context->intVariable & 0xffff);
    gActiveScriptInfo.flags |= 1;
}

void sub_0807F6E8(Entity* entity, ScriptExecutionContext* context) {
    gPlayerState.flags |= context->intVariable;
}

void sub_0807F6F8(Entity* entity, ScriptExecutionContext* context) {
    gPlayerState.flags &= ~context->intVariable;
}

void sub_0807F708(Entity* entity, ScriptExecutionContext* context) {
    ShowNPCDialogue(entity, (Dialog*)context->intVariable);
}

void sub_0807F714(Entity* entity, ScriptExecutionContext* context) {
    entity->spriteRendering.b3 = gUnk_08114F30[entity->spriteRendering.b3];
    ResolveEntityOnTop(entity, entity);
}

void sub_0807F738(Entity* entity, ScriptExecutionContext* context) {
    entity->spriteRendering.b3 = gUnk_08114F34[entity->spriteRendering.b3];
    sub_0806FAD8(entity, entity);
}

void sub_0807F75C(Entity* entity, ScriptExecutionContext* context) {
    s32 s32Var = context->intVariable;
    gPlayerEntity.x.HALF.HI = (s32Var >> 16) + gRoomControls.roomOriginX;
    gPlayerEntity.y.HALF.HI = (s32Var & 0xffff) + gRoomControls.roomOriginY;
}

void sub_0807F77C(Entity* entity, ScriptExecutionContext* context) {
    if (context->condition)
        context->intVariable = 1;
    else
        context->intVariable = 0;
}

void sub_0807F78C(Entity* entity, ScriptExecutionContext* context) {
    u32 item = context->intVariable;
    u32 msg;
    u32 price;

    if (context->intVariable == 0)
        item = gRoomVars.itemForSaleIndex;

    msg = GetSaleItemConfirmMessageID(item);
    price = GetItemPrice(item);
    MessageNoOverlap(msg, entity);
    gMessage.field_0x10 = (u16)price;
}

void sub_0807F7C4(Entity* entity, ScriptExecutionContext* context) {
    u32 item = context->intVariable;
    u32 msg;
    u32 price;

    if (context->intVariable == 0)
        item = gRoomVars.itemForSaleIndex;

    context->condition = GetItemPrice(item) <= gSave.stats.rupees;
    gActiveScriptInfo.flags |= 1;
}

void sub_0807F800(Entity* entity, ScriptExecutionContext* context) {
    u32 item = context->intVariable;
    u32 msg;
    u32 price;

    if (context->intVariable == 0)
        item = gRoomVars.itemForSaleIndex;

    price = GetItemPrice(item);
    ModRupees(-price);
    sub_080A7C18(item, 0, 0);
    gRoomVars.itemForSaleIndex = 0;
    gActiveScriptInfo.flags |= 1;
}

void sub_0807F83C(Entity* entity, ScriptExecutionContext* context) {
    sub_08079184();
}

void sub_0807F844(Entity* entity, ScriptExecutionContext* context) {
    gRoomControls.cameraTarget = entity;
    sub_080809D4();
}

void sub_0807F854(Entity* entity, ScriptExecutionContext* context) {
    u32 value;
    u32 idx;

    idx = (context->intVariable >> 0x10) & 3;
    value = context->intVariable & 0xffff;
    switch (idx) {
        case 0:
        case 1:
            gMessage.field_0x10 = value;
            break;
        case 2:
            gMessage.field_0x14 = value;
            break;
        case 3:
            gMessage.field_0x18 = value;
            break;
        case 4:
            gMessage.field_0x1c = value;
            break;
    }
}

void sub_0807F8BC(Entity* entity, ScriptExecutionContext* context) {
    if (sub_080040A8(entity))
        context->condition = 1;
    else
        context->condition = 0;
}

void sub_0807F8D0(Entity* entity, ScriptExecutionContext* context) {
    sub_08003FC4(entity, context->intVariable);
    gActiveScriptInfo.flags |= 1;
}

void sub_0807F8E8(Entity* entity, ScriptExecutionContext* context) {
    Entity* c = CreateObjectWithParent(entity, 0xA6, 0, 0);
    if (c != NULL) {
        c->parent = entity;
        c->field_0x86.HWORD = (context->intVariable & 0x3ff) | 0x8000;
    }
}

void sub_0807F918(Entity* entity, ScriptExecutionContext* context) {
    PutItemOnSlot(context->intVariable);
}

void sub_0807F924(Entity* entity, ScriptExecutionContext* context) {
    sub_0807879C(entity);
}

void sub_0807F92C(Entity* entity, ScriptExecutionContext* context) {
    sub_080787C0(entity);
}

void sub_0807F934(Entity* entity, ScriptExecutionContext* context) {
    sub_080787B4(entity);
}

void sub_0807F93C(Entity* entity, ScriptExecutionContext* context) {
    CreateSpeechBubbleSleep(entity, (context->intVariable >> 8) & 0xff, context->intVariable & 0xff);
}

void sub_0807F950(Entity* entity, ScriptExecutionContext* context) {
    Entity* c = FindEntity(6, 0x56, 6, 0, 2);
    if (c != NULL)
        DeleteEntity(c);
}

void sub_0807F970(Entity* entity, ScriptExecutionContext* context) {
    context->condition = context->intVariable == gTextRender.curToken.textIndex;
}

void sub_0807F98C(Entity* entity, ScriptExecutionContext* context) {
    entity->z.WORD = context->intVariable;
}

void sub_0807F994(Entity* entity, ScriptExecutionContext* context) {
    entity->spriteOffsetX = (s32)context->intVariable >> 0x10;
    entity->spriteOffsetY = context->intVariable & 0xffff;
}

void sub_0807F9A4(Entity* entity, ScriptExecutionContext* context) {
    switch (gPlayerState.field_0xa8) {
        case 5:
        case 7:
        case 8:
        case 10:
        case 11:
        case 12:
        case 13:
        case 14:
        case 15:
        case 16:
        case 17:
        case 18:
        case 19:
        case 20:
        case 21:
        case 22:
        case 23:
        case 24:
        case 27:
        case 28:
            gActiveScriptInfo.commandSize = 0;
            break;
        default:
            gActiveScriptInfo.flags |= 1u;
            break;
    }
}

void sub_0807FA40(Entity* entity, ScriptExecutionContext* context) {
    switch (gPlayerState.field_0xa8) {
        case 5:
        case 7:
        case 8:
        case 10:
        case 11:
        case 12:
        case 13:
        case 14:
        case 15:
        case 16:
        case 17:
        case 18:
        case 20:
        case 21:
        case 22:
        case 23:
        case 24:
        case 27:
        case 28:
            gActiveScriptInfo.commandSize = 0;
            break;
        default:
            gActiveScriptInfo.flags |= 1u;
            break;
    }
}

void sub_0807FADC(Entity* entity, ScriptExecutionContext* context) {
    switch (context->unk_18) {
        case 0:
            context->unk_18++;
            sub_0808C650(entity, context->intVariable);
            break;
        case 1:
            if (sub_0808C67C())
                context->unk_18++;
            break;
        case 2:
            sub_0808C688();
            return;
    }
    gActiveScriptInfo.commandSize = 0;
}

void sub_0807FB28(Entity* entity, ScriptExecutionContext* context) {
    if (!context->unk_18)
        sub_0801D7BC(0x7fff, 1);

    context->unk_18++;
    if (context->unk_18 >= context->intVariable)
        sub_0801D7BC(0, 0);
    else
        gActiveScriptInfo.commandSize = 0;
}

void sub_0807FB64(Entity* entity, ScriptExecutionContext* context) {
    gPlayerEntity.iframes = context->intVariable;
}

void sub_0807FB74(Entity* entity, ScriptExecutionContext* context) {
    gPlayerState.swimState = 0;
    gPlayerEntity.field_0x3c &= ~4;
}

void sub_0807FB94(Entity* entity, ScriptExecutionContext* context) {
    InitScreen(SCREEN_CREDITS);
}

void sub_0807FBA0(Entity* entity, ScriptExecutionContext* context) {
    entity->x.HALF.HI = gRoomControls.roomScrollX + 120;
    entity->y.HALF.HI = gRoomControls.roomScrollY + 80;
}

void sub_0807FBB4(Entity* entity, ScriptExecutionContext* context) {
    gPlayerState.field_0x1a[0] |= 0x80;
}

void sub_0807FBC4(Entity* entity, ScriptExecutionContext* context) {
    sub_0805E4A0(entity);
}

void sub_0807FBCC(Entity* entity, ScriptExecutionContext* context) {
    sub_0805E4CC(entity);
}

void sub_0807FBD4(Entity* entity, ScriptExecutionContext* context) {
    sub_0806F62C(entity, entity->speed, entity->direction);
    if (sub_080040A8(entity))
        gActiveScriptInfo.commandSize = 0;
}

#ifndef EU
void sub_0807FBFC(Entity* entity, ScriptExecutionContext* context) {
    gSave.stats.charm = 0;
    gSave.stats.charmTimer = 0;
    gSave.stats.unkB = 0;
    gSave.stats.unkTimer = 0;
    gSave.stats.effect = 0;
    gSave.stats.effectTimer = 0;
}

#if defined(USA) || defined(DEMO_USA) || defined(DEMO_JP)
void sub_0807FC24(Entity* entity, ScriptExecutionContext* context) {
#if defined(DEMO_JP)
    u32 idx = gRoomControls.roomID == 1 ? 0xcf : 0xd0;
#else
    u32 idx = gRoomControls.roomID == 1 ? 0xcf : 0xd1;
#endif
    SetLocalFlag(idx);
}
#endif
#endif
