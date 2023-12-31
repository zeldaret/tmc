#include "area.h"
#include "functions.h"
#include "game.h"
#include "item.h"
#include "kinstone.h"
#include "main.h"
#include "npc.h"
#include "object.h"
#include "screen.h"
#include "script.h"
#include "ui.h"

void InitScriptExecutionContext(ScriptExecutionContext* context, Script* script);
void sub_0807DE80(Entity*);
void DisablePauseMenu(void);
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
void ScriptCommand_CheckSyncFlagAndClear(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_CheckInventory1(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_CheckInventory2(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_CheckLocalFlag(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_CheckLocalFlagByBank(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_CheckGlobalFlag(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_CheckRoomFlag(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_CheckPlayerInRegion(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_CheckPlayerInRegion2(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_CheckEntityInteractType(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_FacePlayerAndCheckDist(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_HasRupees(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_HasShells(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_CheckTextboxResult(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_CheckKinstoneFused(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_BuyItem(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_CheckBottleContaining(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_HasRoomItemForSale(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_VariableBitSet(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_VariableOnlyBitSet(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_VariableEqual(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_CheckPlayerFlags(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_CheckPlayerMinish(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_EntityHasHeight(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_ComparePlayerAction(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_ComparePlayerAnimationState(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_SetSyncFlag(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_ClearSyncFlag(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_SetLocalFlag(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_SetLocalFlagByBank(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_ClearLocalFlag(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_SetGlobalFlag(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_ClearGlobalFlag(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_SetRoomFlag(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_ClearRoomFlag(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_Wait(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_WaitForSyncFlag(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_WaitForSyncFlagAndClear(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_WaitPlayerGetItem(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_WaitForPlayerEnterRoom(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_WaitFor_1(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_WaitForFadeFinish(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_SetFadeTime(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_SetFadeMask(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_FadeInvert(Entity* entity, ScriptExecutionContext* context);
void ScriptCommandNop2(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_SetFade4(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_SetFade5(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_SetFade6(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_SetFade7(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_SetFadeIris(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_SetFadeIrisInOut(Entity* entity, ScriptExecutionContext* context);
void SetFadeIrisForCameraTarget(u32);
void ScriptCommand_0807E858(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_SetPlayerIdle(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_EnablePlayerControl(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_DisablePlayerControl(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_SetPlayerAction(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_StartPlayerScript(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_SetPlayerAnimation(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E8E4(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_SetAction(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_SetIntVariable(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_SetVariableToFrame(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_SetAnimation(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_TriggerInteract(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807E974(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_AddInteractableWhenBigObject(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_RemoveInteractableObject(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_AddInteractableWhenBigFuser(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_UpdateFusion(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807EA4C(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_AddInteractableFuser(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_WaitUntilTextboxCloses(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_MessageFromTarget(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_MessageNoOverlap(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_MessageFromTargetPos(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_MessageFromTargetTable(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_MessageNoOverlapVar(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_EzloMessage(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807EB38(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_SetAnimationState(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807EB4C(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_FacePlayer(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_FaceAwayFromPlayer(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_SetEntityDirection(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_SetEntityDirectionWithAnimationState(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_SetEntitySpeed(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_SetEntityVelocity(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_SetEntityPositionRelative(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_OffsetEntityPosition(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_MoveEntityToPlayer(Entity* entity, ScriptExecutionContext* context);
void ScriptCommandNop3(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_WalkForward(Entity* entity, ScriptExecutionContext* context);
void sub_0807EC44(Entity*, ScriptExecutionContext*);
void ScriptCommand_WalkNorth(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_WalkEast(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_WalkSouth(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_WalkWest(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807ED24(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_MoveTo(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_LookAt(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_MoveTowardsTarget(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_MoveToPlayer(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_MoveToOffset(Entity* entity, ScriptExecutionContext* context);
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
void ScriptCommand_GivePlayerItem(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_GiveKinstone(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_GetInventoryValue(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_SetInventoryValue(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_InitItemGetSequence(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_CameraTargetEntity(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_CameraTargetPlayer(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_SetScrollSpeed(Entity* entity, ScriptExecutionContext* context);
void ScriptCommand_0807F0C8(Entity* entity, ScriptExecutionContext* context);

typedef void (*ScriptCommand)(Entity*, ScriptExecutionContext*);

extern u16* gUnk_08001A7C[];
extern u8 gUnk_08114F30[];
extern u8 gUnk_08114F34[];
extern const u16 gUnk_08016984;
extern ScriptExecutionContext gPlayerScriptExecutionContext;
extern ScriptExecutionContext gScriptExecutionContextArray[0x20];

void InitScriptData(void) {
    MemClear(&gActiveScriptInfo, sizeof(gActiveScriptInfo));
    MemClear(&gScriptExecutionContextArray, sizeof(gScriptExecutionContextArray));
    MemClear(&gPlayerScriptExecutionContext, sizeof(gPlayerScriptExecutionContext));
    gActiveScriptInfo.fadeSpeed = 8;
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

ScriptExecutionContext* StartCutscene(Entity* entity, Script* script) {
    ScriptExecutionContext* context;

    context = CreateScriptExecutionContext();
    if (context) {
        InitScriptForEntity(entity, context, script);
    }
    return context;
}

void InitScriptForEntity(Entity* entity, ScriptExecutionContext* context, Script* script) {
    entity->flags |= ENT_SCRIPTED;
    *(ScriptExecutionContext**)&((GenericEntity*)entity)->cutsceneBeh = context;
    InitScriptExecutionContext(context, script);
}

void UnloadCutsceneData(Entity* entity) {
    if (entity->flags & ENT_SCRIPTED) {
        entity->flags &= ~ENT_SCRIPTED;
        DestroyScriptExecutionContext(*(ScriptExecutionContext**)&((GenericEntity*)entity)->cutsceneBeh);
        *(ScriptExecutionContext**)&((GenericEntity*)entity)->cutsceneBeh = NULL;
    }
}

void StartPlayerScript(Script* script) {
    Entity* player;

    MemClear(&gPlayerScriptExecutionContext, sizeof(gPlayerScriptExecutionContext));
    gPlayerScriptExecutionContext.scriptInstructionPointer = script;
    player = &gPlayerEntity.base;
    *(ScriptExecutionContext**)&((GenericEntity*)player)->cutsceneBeh = &gPlayerScriptExecutionContext;
    gPlayerState.queued_action = PLAYER_SLEEP;
    gPlayerState.field_0x3a = 0;
    gPlayerState.field_0x39 = 0;
    gPlayerState.field_0x38 = 0;
}

UNUSED ScriptExecutionContext* StartCutscene2(Entity* entity, Script* script) {
    ScriptExecutionContext* context;

    context = CreateScriptExecutionContext();
    if (context) {
        entity->flags |= ENT_SCRIPTED;
        *(ScriptExecutionContext**)&entity->collisionFlags = context;
        context->scriptInstructionPointer = script;
    }
    return context;
}

void InitScriptExecutionContext(ScriptExecutionContext* context, Script* script) {
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
                ((GenericEntity*)entity)->field_0x80.HWORD = 0;
                break;
            case 1 << 0x01:
                ((GenericEntity*)entity)->field_0x80.HWORD = 4;
                break;
            case 1 << 0x02:
                break;
            case 1 << 0x03:
                entity->zVelocity = Q_16_16(1.5);
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
                ((GenericEntity*)entity)->field_0x82.HWORD = 0;
                break;
            case 1 << 0x0a:
                ((GenericEntity*)entity)->field_0x82.HWORD |= 2;
                break;
            case 1 << 0x0b:
                ((GenericEntity*)entity)->field_0x82.HWORD &= ~2;
                break;
            case 1 << 0x0c:
                ((GenericEntity*)entity)->field_0x82.HWORD &= ~1;
                break;
            case 1 << 0x0d:
                ((GenericEntity*)entity)->field_0x82.HWORD |= 1;
                break;
            case 1 << 0x0e:
                ((GenericEntity*)entity)->field_0x82.HWORD |= 8;
                break;
            case 1 << 0x0f:
                ((GenericEntity*)entity)->field_0x82.HWORD ^= 4;
                break;
            case 1 << 0x10:
                ((GenericEntity*)entity)->field_0x82.HWORD ^= 0x10;
                break;
            case 1 << 0x11:
                entity->spriteSettings.flipX ^= 1;
                break;
            case 1 << 0x12:
                ((GenericEntity*)entity)->field_0x82.HWORD |= 0x20;
                break;
            case 1 << 0x13:
                ((GenericEntity*)entity)->field_0x82.HWORD &= ~0x20;
                break;
            default:
                break;
        }
    }
}

// Init some script related variables, execute the script and do something regarding the animation.
void InitScriptForNPC(Entity* entity) {
    sub_0807DD64(entity);
    ExecuteScriptAndHandleAnimation(entity, NULL);
}

void sub_0807DD64(Entity* entity) {
    entity->subtimer = entity->animationState;
    entity->animIndex = 0xff;
    ((GenericEntity*)entity)->field_0x80.HWORD = 0;
    ((GenericEntity*)entity)->field_0x82.HWORD = 0;
}

void sub_0807DD80(Entity* entity, Script* script) {
    InitScriptExecutionContext(*(ScriptExecutionContext**)&((GenericEntity*)entity)->cutsceneBeh, script);
    sub_0807DD64(entity);
}

void ExecuteScriptAndHandleAnimation(Entity* entity, void (*postScriptCallback)(Entity*, ScriptExecutionContext*)) {
    ExecuteScriptForEntity(entity, postScriptCallback);
    HandleEntity0x82Actions(entity);
    sub_0807DE80(entity);
}

void ExecuteScriptForEntity(Entity* entity, void (*postScriptCallback)(Entity*, ScriptExecutionContext*)) {
    ScriptExecutionContext** piVar1;

    piVar1 = (ScriptExecutionContext**)&((GenericEntity*)entity)->cutsceneBeh;
    if (*piVar1) {
        ExecuteScript(entity, *piVar1);
        if (postScriptCallback) {
            postScriptCallback(entity, *piVar1);
        } else {
            HandlePostScriptActions(entity, *piVar1);
        }
        if (entity->next == NULL) {
            DeleteThisEntity();
        }
    }
}

void HandleEntity0x82Actions(Entity* entity) {
    u32 temp;
    u32 bit;
    u32 loopVar;

    loopVar = ((GenericEntity*)entity)->field_0x82.HWORD;
    while (loopVar) {
        bit = (~loopVar + 1) & loopVar;
        loopVar = loopVar ^ bit;
        switch (bit) {
            case 1 << 1:
                if (entity->kind == NPC) {
                    sub_0806ED78(entity);
                } else {
                    sub_0800445C(entity);
                }
                break;
            case 1 << 3:
                if (gRoomTransition.frameCount % 4 == 0) {
                    temp = (entity->subtimer + 2) & 7;
                    entity->animationState = temp;
                    entity->subtimer = temp;
                }
                break;
            case 1 << 4:
                if (gRoomTransition.frameCount % 2 == 0) {
                    static const s8 sOffsets[] = { -1, -2, 0, 1 };
                    entity->spriteOffsetX = sOffsets[Random() % 4];
                }
                break;
            case 1 << 5:
                GravityUpdate(entity, Q_8_8(32.0));
                break;
        }
    }
}

// Handles animation for NPCs? Uses u16 0x80 and 0x82 of the entity.
void sub_0807DE80(Entity* entity) {
    u32 local1;
    u16 local2;

    u32 temp;

    local2 = ((GenericEntity*)entity)->field_0x80.HWORD;
    if (local2 < 8) {
        if (((GenericEntity*)entity)->field_0x82.HWORD & 1) {
            u32 t1, t2;
            t1 = local2 & 0xfc;
            t2 = entity->subtimer >> 1;
            local2 = t1 + t2;
        } else {
            u32 t1, t2;
            t1 = local2 & 0xfc;
            t2 = entity->animationState >> 1;
            local2 = t1 + t2;
            entity->subtimer = entity->animationState;
        }
    }
    if (local2 != entity->animIndex) {
        InitAnimationForceUpdate(entity, local2);
    }
    temp = ((GenericEntity*)entity)->field_0x82.HWORD & 4;
    local1 = 1;
    if (temp) {
        local1 = 2;
    }
    sub_080042BA(entity, local1);
}

void LookAt(Entity* entity, ScriptExecutionContext* context, u32 x, u32 y) {
    static const u8 sDirectionTable[] = { 0, 0, 2, 2, 2, 2, 4, 4, 4, 4, 6, 6, 6, 6, 0, 0 };
    int direction;
    s32 xOffset, yOffset;

    context->unk_19 = 8;
    context->postScriptActions |= 2;
    context->condition = 0;
    context->x.HALF.HI = x;
    context->y.HALF.HI = y;
    xOffset = context->x.HALF.HI - entity->x.HALF.HI;
    yOffset = context->y.HALF.HI - entity->y.HALF.HI;
    direction = CalculateDirectionFromOffsets(xOffset, yOffset);
    entity->direction = direction;
    entity->animationState = (entity->animationState & 0x80) | sDirectionTable[(u8)direction >> 4];
}

void DisablePauseMenuAndPutAwayItems(void) {
    DisablePauseMenu();
    PlayerDropHeldObject();
    PutAwayItems();
}

void DisablePauseMenu(void) {
    gHUD.hideFlags = HUD_HIDE_ALL;
    gPauseMenuOptions.disabled = 0xff;
}

void EnablePauseMenu(void) {
    gPauseMenuOptions.disabled = 0;
    gHUD.hideFlags = HUD_HIDE_NONE;
    RecoverUI(0, 0);
    ResetPlayerAnimationAndAction();
    PlayerDropHeldObject();
}

void ExecuteScript(Entity* entity, ScriptExecutionContext* context) {
    static const ScriptCommand gScriptCommands[] = {
        ScriptCommandNop,
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
        ScriptCommand_CheckSyncFlagAndClear,
        ScriptCommand_CheckInventory1,
        ScriptCommand_CheckInventory2,
        ScriptCommand_HasRoomItemForSale,
        ScriptCommand_CheckLocalFlag,
        ScriptCommand_CheckLocalFlagByBank,
        ScriptCommand_CheckGlobalFlag,
        ScriptCommand_CheckRoomFlag,
        ScriptCommand_CheckPlayerInRegion,
        ScriptCommand_CheckPlayerInRegion2,
        ScriptCommand_CheckEntityInteractType,
        ScriptCommand_FacePlayerAndCheckDist,
        ScriptCommand_HasRupees,
        ScriptCommand_HasShells,
        ScriptCommand_CheckTextboxResult,
        ScriptCommand_CheckKinstoneFused,
        ScriptCommand_BuyItem,
        ScriptCommand_CheckBottleContaining,
        ScriptCommand_VariableBitSet,
        ScriptCommand_VariableOnlyBitSet,
        ScriptCommand_VariableEqual,
        ScriptCommand_CheckPlayerFlags,
        ScriptCommand_CheckPlayerMinish,
        ScriptCommand_EntityHasHeight,
        ScriptCommand_ComparePlayerAction,
        ScriptCommand_ComparePlayerAnimationState,
        ScriptCommand_SetSyncFlag,
        ScriptCommand_ClearSyncFlag,
        ScriptCommand_SetLocalFlag,
        ScriptCommand_SetLocalFlagByBank,
        ScriptCommand_ClearLocalFlag,
        ScriptCommand_SetGlobalFlag,
        ScriptCommand_ClearGlobalFlag,
        ScriptCommand_SetRoomFlag,
        ScriptCommand_ClearRoomFlag,
        ScriptCommand_Wait,
        ScriptCommand_WaitForSyncFlag,
        ScriptCommand_WaitForSyncFlagAndClear,
        ScriptCommand_WaitPlayerGetItem,
        ScriptCommand_WaitForPlayerEnterRoom,
        ScriptCommand_WaitFor_1,
        ScriptCommand_WaitForFadeFinish,
        ScriptCommand_SetFadeTime,
        ScriptCommand_SetFadeMask,
        ScriptCommand_FadeInvert,
        ScriptCommandNop2,
        ScriptCommand_SetFade4,
        ScriptCommand_SetFade5,
        ScriptCommand_SetFade6,
        ScriptCommand_SetFade7,
        ScriptCommand_SetFadeIris,
        ScriptCommand_SetFadeIrisInOut,
        ScriptCommand_0807E858,
        ScriptCommand_SetPlayerIdle,
        ScriptCommand_EnablePlayerControl,
        ScriptCommand_DisablePlayerControl,
        ScriptCommand_SetPlayerAction,
        ScriptCommand_StartPlayerScript,
        ScriptCommand_SetPlayerAnimation,
        ScriptCommand_0807E8E4,
        ScriptCommand_0807E8E4,
        ScriptCommand_0807E8E4,
        ScriptCommand_0807E8E4,
        ScriptCommand_SetAction,
        ScriptCommand_SetIntVariable,
        ScriptCommand_SetVariableToFrame,
        ScriptCommand_SetAnimation,
        ScriptCommand_TriggerInteract,
        ScriptCommand_0807E974,
        ScriptCommand_AddInteractableWhenBigObject,
        ScriptCommand_RemoveInteractableObject,
        ScriptCommand_AddInteractableWhenBigFuser,
        ScriptCommand_UpdateFusion,
        ScriptCommand_0807EA4C,
        ScriptCommand_AddInteractableFuser,
        ScriptCommand_WaitUntilTextboxCloses,
        ScriptCommand_MessageFromTarget,
        ScriptCommand_MessageNoOverlap,
        ScriptCommand_MessageFromTargetPos,
        ScriptCommand_MessageFromTargetTable,
        ScriptCommand_MessageNoOverlapVar,
        ScriptCommand_EzloMessage,
        ScriptCommand_0807EB38,
        ScriptCommand_SetAnimationState,
        ScriptCommand_0807EB4C,
        ScriptCommand_FacePlayer,
        ScriptCommand_FaceAwayFromPlayer,
        ScriptCommand_SetEntityDirection,
        ScriptCommand_SetEntityDirectionWithAnimationState,
        ScriptCommand_SetEntitySpeed,
        ScriptCommand_SetEntityVelocity,
        ScriptCommand_SetEntityPositionRelative,
        ScriptCommand_OffsetEntityPosition,
        ScriptCommand_MoveEntityToPlayer,
        ScriptCommandNop3,
        ScriptCommand_WalkForward,
        ScriptCommand_WalkNorth,
        ScriptCommand_WalkEast,
        ScriptCommand_WalkSouth,
        ScriptCommand_WalkWest,
        ScriptCommand_0807ED24,
        ScriptCommand_MoveTo,
        ScriptCommand_LookAt,
        ScriptCommand_MoveTowardsTarget,
        ScriptCommand_MoveToPlayer,
        ScriptCommand_MoveToOffset,
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
        ScriptCommand_GivePlayerItem,
        ScriptCommand_GiveKinstone,
        ScriptCommand_GetInventoryValue,
        ScriptCommand_SetInventoryValue,
        ScriptCommand_InitItemGetSequence,
        ScriptCommand_CameraTargetEntity,
        ScriptCommand_CameraTargetPlayer,
        ScriptCommand_SetScrollSpeed,
        ScriptCommand_0807F0C8,
    };

    if (!context->scriptInstructionPointer)
        return;
    if (context->wait) {
        context->wait--;
    } else {
        ActiveScriptInfo* activeScriptInfo = &gActiveScriptInfo;
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

void ScriptCommand_CheckSyncFlagAndClear(Entity* entity, ScriptExecutionContext* context) {
    u32 flag = GetNextScriptCommandWordAfterCommandMetadata(context->scriptInstructionPointer);
    u32 set = 0;
    u32 field = gActiveScriptInfo.syncFlags;
    if ((field & flag) == flag)
        set = 1;
    context->condition = set;
    gActiveScriptInfo.syncFlags = field & ~flag;
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_CheckInventory1(Entity* entity, ScriptExecutionContext* context) {
    u32 tmp;
    u32 tmp2 = GetNextScriptCommandHalfwordAfterCommandMetadata(context->scriptInstructionPointer);
    switch (tmp2) {
        case ITEM_SMALL_KEY:
            tmp = HasDungeonSmallKey();
            break;
        case ITEM_BIG_KEY:
            tmp = HasDungeonBigKey();
            break;
        case ITEM_COMPASS:
            tmp = HasDungeonCompass();
            break;
        case ITEM_DUNGEON_MAP:
            tmp = HasDungeonMap();
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

void ScriptCommand_CheckLocalFlagByBank(Entity* entity, ScriptExecutionContext* context) {
    context->condition =
        CheckLocalFlagByBank(context->scriptInstructionPointer[1], context->scriptInstructionPointer[2]);
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
    x = entity->x.HALF.HI - gRoomControls.origin_x;
    y = entity->y.HALF.HI - gRoomControls.origin_y;
    context->condition = CheckPlayerInRegion(x, y, width, height);
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_CheckEntityInteractType(Entity* entity, ScriptExecutionContext* context) {
    if (entity->interactType) {
        entity->interactType = INTERACTION_NONE;
        context->condition = 1;
    } else {
        context->condition = 0;
    }
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_FacePlayerAndCheckDist(Entity* entity, ScriptExecutionContext* context) {
    if ((context->unk_1A & 0xF) == 0 && (gPlayerState.flags & PL_MINISH) == 0 &&
        EntityInRectRadius(entity, &gPlayerEntity.base, 40, 40)) {
        entity->animationState = GetAnimationStateForDirection8(GetFacingDirection(entity, &gPlayerEntity.base));
    }
    context->unk_1A++;
    if (entity->interactType) {
        entity->interactType = INTERACTION_NONE;
        context->condition = 1;
        entity->animationState = GetAnimationStateForDirection8(GetFacingDirection(entity, &gPlayerEntity.base));
    } else {
        context->condition = 0;
    }
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_HasRupees(Entity* entity, ScriptExecutionContext* context) {
    context->condition = (context->scriptInstructionPointer[1] <= gSave.stats.rupees);
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_HasShells(Entity* entity, ScriptExecutionContext* context) {
    context->condition = (context->scriptInstructionPointer[1] <= gSave.stats.shells);
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_CheckTextboxResult(Entity* entity, ScriptExecutionContext* context) {
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
        item = gRoomVars.shopItemType;
        tmp2 = gRoomVars.shopItemType2;
    }
    price = GetItemPrice(item);
    context->condition = (price <= gSave.stats.rupees);
    if (context->condition) {
        ModRupees(-price);
        InitItemGetSequence(item, tmp2, 0);
        gRoomVars.shopItemType = 0;
        gRoomVars.shopItemType2 = 0;
    }
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_CheckBottleContaining(Entity* entity, ScriptExecutionContext* context) {
    context->condition = GetBottleContaining(context->scriptInstructionPointer[1]);
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_HasRoomItemForSale(Entity* entity, ScriptExecutionContext* context) {
    context->condition = !!gRoomVars.shopItemType;
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_VariableBitSet(Entity* entity, ScriptExecutionContext* context) {
    context->condition = !!(context->intVariable & context->scriptInstructionPointer[1]);
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_VariableOnlyBitSet(Entity* entity, ScriptExecutionContext* context) {
    u32 tmp = context->scriptInstructionPointer[1];
    context->condition = tmp == (tmp & context->intVariable);
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_VariableEqual(Entity* entity, ScriptExecutionContext* context) {
    u32 tmp = context->scriptInstructionPointer[1];
    context->condition = tmp == context->intVariable;
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_CheckPlayerFlags(Entity* entity, ScriptExecutionContext* context) {
    context->condition =
        !!(GetNextScriptCommandWordAfterCommandMetadata(context->scriptInstructionPointer) & gPlayerState.flags);
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_CheckPlayerMinish(Entity* entity, ScriptExecutionContext* context) {
    context->condition = (gPlayerState.flags >> 7) & 1;
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_EntityHasHeight(Entity* entity, ScriptExecutionContext* context) {
    context->condition = entity->z.WORD != 0;
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_ComparePlayerAction(Entity* entity, ScriptExecutionContext* context) {
    context->condition = context->scriptInstructionPointer[1] == gPlayerEntity.base.action;
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_ComparePlayerAnimationState(Entity* entity, ScriptExecutionContext* context) {
    context->condition = context->scriptInstructionPointer[1] == gPlayerEntity.base.animationState;
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_SetSyncFlag(Entity* entity, ScriptExecutionContext* context) {
    gActiveScriptInfo.syncFlags |= GetNextScriptCommandWordAfterCommandMetadata(context->scriptInstructionPointer);
}

void ScriptCommand_ClearSyncFlag(Entity* entity, ScriptExecutionContext* context) {
    gActiveScriptInfo.syncFlags &= ~GetNextScriptCommandWordAfterCommandMetadata(context->scriptInstructionPointer);
}

void ScriptCommand_SetLocalFlag(Entity* entity, ScriptExecutionContext* context) {
    SetLocalFlag(context->scriptInstructionPointer[1]);
}

void ScriptCommand_SetLocalFlagByBank(Entity* entity, ScriptExecutionContext* context) {
    SetLocalFlagByBank(context->scriptInstructionPointer[1], context->scriptInstructionPointer[2]);
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

void ScriptCommand_WaitForSyncFlag(Entity* entity, ScriptExecutionContext* context) {
    u32 flag = GetNextScriptCommandWordAfterCommandMetadata(context->scriptInstructionPointer);
    if ((gActiveScriptInfo.syncFlags & flag) != flag) {
        gActiveScriptInfo.commandSize = 0;
    }
}

void ScriptCommand_WaitForSyncFlagAndClear(Entity* entity, ScriptExecutionContext* context) {
    u32 flag = GetNextScriptCommandWordAfterCommandMetadata(context->scriptInstructionPointer);
    if ((gActiveScriptInfo.syncFlags & flag) != flag) {
        gActiveScriptInfo.commandSize = 0;
    } else {
        gActiveScriptInfo.syncFlags &= ~flag;
        gActiveScriptInfo.flags |= 1;
    }
}

void ScriptCommand_WaitPlayerGetItem(Entity* entity, ScriptExecutionContext* context) {
    if (gPlayerEntity.base.action == PLAYER_ITEMGET) {
        gActiveScriptInfo.commandSize = 0;
    } else {
        context->wait = 45;
    }
}

void ScriptCommand_WaitForPlayerEnterRoom(Entity* entity, ScriptExecutionContext* context) {
    if (gPlayerEntity.base.action != PLAYER_ROOMTRANSITION) {
        gActiveScriptInfo.flags |= 1;
    } else {
        gActiveScriptInfo.commandSize = 0;
    }
}

void ScriptCommand_WaitFor_1(Entity* entity, ScriptExecutionContext* context) {
    if (gRoomControls.scroll_flags & 4) {
        gActiveScriptInfo.commandSize = 0;
    } else {
        gActiveScriptInfo.flags |= 1;
    }
}

void ScriptCommand_WaitForFadeFinish(Entity* entity, ScriptExecutionContext* context) {
    if (gFadeControl.active) {
        gActiveScriptInfo.commandSize = 0;
    }
}

void ScriptCommand_SetFadeTime(Entity* entity, ScriptExecutionContext* context) {
    gActiveScriptInfo.fadeSpeed = context->scriptInstructionPointer[1];
}

void ScriptCommand_SetFadeMask(Entity* entity, ScriptExecutionContext* context) {
    gFadeControl.mask = GetNextScriptCommandWordAfterCommandMetadata(context->scriptInstructionPointer);
}

void ScriptCommand_FadeInvert(Entity* entity, ScriptExecutionContext* context) {
    SetFadeInverted(gActiveScriptInfo.fadeSpeed);
}

void ScriptCommandNop2(Entity* entity, ScriptExecutionContext* context) {
}

void ScriptCommand_SetFade4(Entity* entity, ScriptExecutionContext* context) {
    SetFade(FADE_INSTANT, gActiveScriptInfo.fadeSpeed);
}

void ScriptCommand_SetFade5(Entity* entity, ScriptExecutionContext* context) {
    SetFade(FADE_IN_OUT | FADE_INSTANT, gActiveScriptInfo.fadeSpeed);
}

void ScriptCommand_SetFade6(Entity* entity, ScriptExecutionContext* context) {
    SetFade(FADE_BLACK_WHITE | FADE_INSTANT, gActiveScriptInfo.fadeSpeed);
}

void ScriptCommand_SetFade7(Entity* entity, ScriptExecutionContext* context) {
    SetFade(FADE_IN_OUT | FADE_BLACK_WHITE | FADE_INSTANT, gActiveScriptInfo.fadeSpeed);
}

void ScriptCommand_SetFadeIris(Entity* entity, ScriptExecutionContext* context) {
    SetFadeIrisForCameraTarget(FADE_IRIS);
}

void ScriptCommand_SetFadeIrisInOut(Entity* entity, ScriptExecutionContext* context) {
    SetFadeIrisForCameraTarget(FADE_IN_OUT | FADE_IRIS);
}

void SetFadeIrisForCameraTarget(u32 type) {
    Entity* cameraTarget = gRoomControls.camera_target;
    u32 x, y;
    if (cameraTarget) {
        x = cameraTarget->x.HALF.HI - gRoomControls.scroll_x;
        y = cameraTarget->y.HALF.HI - gRoomControls.scroll_y;
    } else {
        x = DISPLAY_WIDTH / 2;
        y = DISPLAY_HEIGHT / 2;
    }
    SetFadeIris(x, y, type, gActiveScriptInfo.fadeSpeed);
}

void ScriptCommand_0807E858(Entity* entity, ScriptExecutionContext* context) {
    SetFadeProgress(context->scriptInstructionPointer[1]);
}

void ScriptCommand_SetPlayerIdle(Entity* entity, ScriptExecutionContext* context) {
    gPlayerState.controlMode = CONTROL_DISABLED;
    PausePlayer();
}

void ScriptCommand_EnablePlayerControl(Entity* entity, ScriptExecutionContext* context) {
    gPlayerState.controlMode = CONTROL_1;
}

void ScriptCommand_DisablePlayerControl(Entity* entity, ScriptExecutionContext* context) {
    gPlayerState.controlMode = CONTROL_DISABLED;
}

void ScriptCommand_SetPlayerAction(Entity* entity, ScriptExecutionContext* context) {
    u32 tmp = GetNextScriptCommandWordAfterCommandMetadata(context->scriptInstructionPointer);
    gPlayerState.queued_action = tmp;
    gPlayerState.field_0x38 = tmp >> 8;
    gPlayerState.field_0x39 = tmp >> 0x10;
    gPlayerState.field_0x3a = tmp >> 0x18;
}

void ScriptCommand_StartPlayerScript(Entity* entity, ScriptExecutionContext* context) {
    StartPlayerScript((u16*)GetNextScriptCommandWordAfterCommandMetadata(context->scriptInstructionPointer));
}

void ScriptCommand_SetPlayerAnimation(Entity* entity, ScriptExecutionContext* context) {
    gPlayerState.animation = context->scriptInstructionPointer[1];
}

void ScriptCommand_0807E8E4(Entity* entity, ScriptExecutionContext* context) {
    u32 tmp = (gUnk_08016984 & 0x3FF);
    u32 tmp2;
    gPlayerEntity.base.animationState = tmp2 = (context->scriptInstructionPointer[0] - tmp) << 1;
}

void ScriptCommand_SetAction(Entity* entity, ScriptExecutionContext* context) {
    entity->action = context->scriptInstructionPointer[1];
    entity->subAction = 0;
}

void ScriptCommand_SetIntVariable(Entity* entity, ScriptExecutionContext* context) {
    context->intVariable = GetNextScriptCommandWordAfterCommandMetadata(context->scriptInstructionPointer);
}

void ScriptCommand_SetVariableToFrame(Entity* entity, ScriptExecutionContext* context) {
    context->intVariable = entity->frame;
    entity->frame = 0;
}

void ScriptCommand_SetAnimation(Entity* entity, ScriptExecutionContext* context) {
    ((GenericEntity*)entity)->field_0x80.HWORD = context->scriptInstructionPointer[1];
    InitAnimationForceUpdate(entity, context->scriptInstructionPointer[1]);
}

void ScriptCommand_TriggerInteract(Entity* entity, ScriptExecutionContext* context) {
    if (entity->interactType) {
        entity->interactType = INTERACTION_NONE;
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
            entity->interactType = INTERACTION_NONE;
            context->unk_18++;
            MessageFromTarget(context->scriptInstructionPointer[1]);
            break;
        case 1:
            if (gMessage.state & MESSAGE_ACTIVE)
                break;
            context->unk_18 = 2;
            context->unk_19 = 0xF;
            break;
    }
    gActiveScriptInfo.commandSize = 0;
}

void ScriptCommand_AddInteractableWhenBigObject(Entity* entity, ScriptExecutionContext* context) {
    AddInteractableWhenBigObject(entity);
}

void ScriptCommand_RemoveInteractableObject(Entity* entity, ScriptExecutionContext* context) {
    RemoveInteractableObject(entity);
}

void ScriptCommand_AddInteractableWhenBigFuser(Entity* entity, ScriptExecutionContext* context) {
    AddInteractableWhenBigFuser(entity, context->scriptInstructionPointer[1]);
}

void ScriptCommand_UpdateFusion(Entity* entity, ScriptExecutionContext* context) {
    bool32 isFusionSuccessful;
    PerformFuseAction();
    isFusionSuccessful = TRUE;
    switch (gFuseInfo.fusionState) {
        default:
            isFusionSuccessful = FALSE;
            break;
        case FUSION_STATE_2:
            gPlayerState.controlMode = CONTROL_DISABLED;
            gPauseMenuOptions.disabled = isFusionSuccessful;
            context->condition = isFusionSuccessful;
            break;
        case FUSION_STATE_1:
            context->condition = 0;
            break;
    }

    if (isFusionSuccessful) {
        PlayerResetStateFromFusion();
        gPlayerState.controlMode = CONTROL_1;
    } else {
        gActiveScriptInfo.commandSize = 0;
    }
}

void ScriptCommand_0807EA4C(Entity* entity, ScriptExecutionContext* context) {
    if (entity->interactType == INTERACTION_FUSE) {
        InitializeFuseInfo(entity, 0, 0, 0);
        entity->interactType = INTERACTION_NONE;
        gActiveScriptInfo.flags |= 1;
    } else {
        gActiveScriptInfo.commandSize = 0;
    }
}

void ScriptCommand_AddInteractableFuser(Entity* entity, ScriptExecutionContext* context) {
    AddInteractableFuser(entity, context->scriptInstructionPointer[1]);
}

void ScriptCommand_WaitUntilTextboxCloses(Entity* entity, ScriptExecutionContext* context) {
    if (gMessage.state & MESSAGE_ACTIVE) {
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

void ScriptCommand_EzloMessage(Entity* entity, ScriptExecutionContext* context) {
    CreateEzloHint(context->scriptInstructionPointer[1], 0);
}

void ScriptCommand_0807EB38(Entity* entity, ScriptExecutionContext* context) {
    context->intVariable = gUnk_02000040.unk_01;
}

void ScriptCommand_SetAnimationState(Entity* entity, ScriptExecutionContext* context) {
    entity->animationState = context->scriptInstructionPointer[1];
}

void ScriptCommand_0807EB4C(Entity* entity, ScriptExecutionContext* context) {
    entity->animationState = GetAnimationStateForDirection8(
        sub_080045B4(entity, context->scriptInstructionPointer[1] + gRoomControls.origin_x,
                     context->scriptInstructionPointer[2] + gRoomControls.origin_y));
}

void ScriptCommand_FacePlayer(Entity* entity, ScriptExecutionContext* context) {
    entity->animationState = GetAnimationStateForDirection8(GetFacingDirection(entity, &gPlayerEntity.base));
}

void ScriptCommand_FaceAwayFromPlayer(Entity* entity, ScriptExecutionContext* context) {
    gPlayerEntity.base.animationState =
        GetAnimationStateForDirection8(GetFacingDirection(&gPlayerEntity.base, entity)) & ~1;
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

void ScriptCommand_SetEntityVelocity(Entity* entity, ScriptExecutionContext* context) {
    entity->zVelocity = GetNextScriptCommandWordAfterCommandMetadata(context->scriptInstructionPointer);
}

void ScriptCommand_SetEntityPositionRelative(Entity* entity, ScriptExecutionContext* context) {
    entity->x.HALF.HI = gRoomControls.origin_x + context->scriptInstructionPointer[1];
    entity->y.HALF.HI = gRoomControls.origin_y + context->scriptInstructionPointer[2];
}

void ScriptCommand_OffsetEntityPosition(Entity* entity, ScriptExecutionContext* context) {
    entity->x.HALF.HI += context->scriptInstructionPointer[1];
    entity->y.HALF.HI += context->scriptInstructionPointer[2];
}

void ScriptCommand_MoveEntityToPlayer(Entity* entity, ScriptExecutionContext* context) {
    CopyPosition(&gPlayerEntity.base, entity);
}

void ScriptCommandNop3(Entity* entity, ScriptExecutionContext* context) {
}

void ScriptCommand_WalkForward(Entity* entity, ScriptExecutionContext* context) {
    if (!context->unk_18) {
        context->unk_18 = 1;
        context->unk_12 = context->scriptInstructionPointer[1];
        context->postScriptActions |= 2;
    }
    sub_0807EC44(entity, context);
}

void sub_0807EC44(Entity* entity, ScriptExecutionContext* context) {
    LinearMoveUpdate(entity);
    if (--context->unk_12) {
        gActiveScriptInfo.commandSize = 0;
    }
}

void ScriptCommand_WalkNorth(Entity* entity, ScriptExecutionContext* context) {
    if (!context->unk_18) {
        context->unk_18 = 1;
        context->unk_12 = context->scriptInstructionPointer[1];
        entity->animationState = 0;
        entity->direction = DirectionNorth;
        context->postScriptActions |= 2;
    }
    sub_0807EC44(entity, context);
}

void ScriptCommand_WalkEast(Entity* entity, ScriptExecutionContext* context) {
    if (!context->unk_18) {
        context->unk_18 = 1;
        context->unk_12 = context->scriptInstructionPointer[1];
        entity->animationState = 2;
        entity->direction = DirectionEast;
        context->postScriptActions |= 2;
    }
    sub_0807EC44(entity, context);
}

void ScriptCommand_WalkSouth(Entity* entity, ScriptExecutionContext* context) {
    if (!context->unk_18) {
        context->unk_18 = 1;
        context->unk_12 = context->scriptInstructionPointer[1];
        entity->animationState = 4;
        entity->direction = DirectionSouth;
        context->postScriptActions |= 2;
    }
    sub_0807EC44(entity, context);
}

void ScriptCommand_WalkWest(Entity* entity, ScriptExecutionContext* context) {
    if (!context->unk_18) {
        context->unk_18 = 1;
        context->unk_12 = context->scriptInstructionPointer[1];
        entity->animationState = 6;
        entity->direction = DirectionWest;
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
        tmp2 = entity->x.HALF.HI - gRoomControls.origin_x;
        context->x.WORD = ((tmp - tmp2) << 0x10) / context->unk_12;
        tmp = context->scriptInstructionPointer[2];
        tmp3 = entity->y.HALF.HI - gRoomControls.origin_y;
        context->y.WORD = ((tmp - tmp3) << 0x10) / context->unk_12;
        entity->animationState = GetAnimationStateForDirection8(
            sub_080045B4(entity, context->scriptInstructionPointer[1] + gRoomControls.origin_x,
                         context->scriptInstructionPointer[2] + gRoomControls.origin_y));
        context->postScriptActions |= 2;
    } else {
        if (!--context->unk_12) {
            entity->x.HALF.HI = context->scriptInstructionPointer[1] + gRoomControls.origin_x;
            entity->y.HALF.HI = context->scriptInstructionPointer[2] + gRoomControls.origin_y;
            return;
        }
        entity->x.WORD += context->x.WORD;
        entity->y.WORD += context->y.WORD;
    }
    gActiveScriptInfo.commandSize = 0;
}

// player movement?
void ScriptCommand_MoveTo(Entity* entity, ScriptExecutionContext* context) {
    if (!context->unk_18) {
        context->unk_18 = 1;
        ScriptCommand_LookAt(entity, context);
    }
    ScriptCommand_MoveTowardsTarget(entity, context);
    // Repeat this command until we are at the target.
    if (!context->condition) {
        gActiveScriptInfo.commandSize = 0;
    }
}

void ScriptCommand_LookAt(Entity* entity, ScriptExecutionContext* context) {
    LookAt(entity, context, context->scriptInstructionPointer[1] + gRoomControls.origin_x,
           context->scriptInstructionPointer[2] + gRoomControls.origin_y);
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_MoveTowardsTarget(Entity* entity, ScriptExecutionContext* context) {
    s32 tmp, tmp2;
    if (!--context->unk_19) {
        context->unk_19 = 8;
        entity->direction = CalculateDirectionFromOffsets(context->x.HALF.HI - entity->x.HALF.HI,
                                                          context->y.HALF.HI - entity->y.HALF.HI);
    }
    tmp = entity->x.HALF.HI - context->x.HALF.HI;
    tmp2 = entity->y.HALF.HI - context->y.HALF.HI;
    LinearMoveAngle(entity, entity->speed, entity->direction);
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

void ScriptCommand_MoveToPlayer(Entity* entity, ScriptExecutionContext* context) {
    if (!context->unk_18) {
        context->unk_18 = 1;
        LookAt(entity, context, gPlayerEntity.base.x.HALF.HI, gPlayerEntity.base.y.HALF.HI);
    }
    ScriptCommand_MoveTowardsTarget(entity, context);
    // Repeat this command until we are at the target.
    if (!context->condition) {
        gActiveScriptInfo.commandSize = 0;
    }
}

void ScriptCommand_MoveToOffset(Entity* entity, ScriptExecutionContext* context) {
    if (!context->unk_18) {
        context->unk_18 = 1;
        LookAt(entity, context, entity->x.HALF.HI + ((s16)context->scriptInstructionPointer[1]),
               entity->y.HALF.HI + ((s16)context->scriptInstructionPointer[2]));
    }
    ScriptCommand_MoveTowardsTarget(entity, context);
    // Repeat this command until we are at the target.
    if (!context->condition) {
        gActiveScriptInfo.commandSize = 0;
    }
}

void ScriptCommand_0807EF3C(Entity* entity, ScriptExecutionContext* context) {
    if (!context->unk_18) {
        context->unk_18 = 1;
        entity->zVelocity = ((s16)context->scriptInstructionPointer[1]) << 8;
        context->x.HALF.LO = context->scriptInstructionPointer[2] << 8;
        GravityUpdate(entity, (u16)context->x.HALF.LO);
    } else {
        if (!GravityUpdate(entity, (u16)context->x.HALF.LO))
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
        SoundReq(gArea.bgm);
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

void ScriptCommand_GivePlayerItem(Entity* entity, ScriptExecutionContext* context) {
    u32 tmp = 0;
    if (context->scriptInstructionPointer[1] == ITEM_SHELLS) {
        tmp = context->intVariable;
    }
    InitItemGetSequence(context->scriptInstructionPointer[1], tmp, 0);
}

void ScriptCommand_GiveKinstone(Entity* entity, ScriptExecutionContext* context) {
    InitItemGetSequence(0x5C, context->scriptInstructionPointer[1], 0);
}

void ScriptCommand_GetInventoryValue(Entity* entity, ScriptExecutionContext* context) {
    context->intVariable = GetInventoryValue(context->scriptInstructionPointer[1]);
    context->condition = context->intVariable != 0;
}

void ScriptCommand_SetInventoryValue(Entity* entity, ScriptExecutionContext* context) {
    SetInventoryValue(context->scriptInstructionPointer[1], context->scriptInstructionPointer[2]);
}

void ScriptCommand_InitItemGetSequence(Entity* entity, ScriptExecutionContext* context) {
    InitItemGetSequence(context->scriptInstructionPointer[1], 0, 3);
}

void ScriptCommand_CameraTargetEntity(Entity* entity, ScriptExecutionContext* context) {
    gRoomControls.camera_target = entity;
}

void ScriptCommand_CameraTargetPlayer(Entity* entity, ScriptExecutionContext* context) {
    gRoomControls.camera_target = &gPlayerEntity.base;
}

void ScriptCommand_SetScrollSpeed(Entity* entity, ScriptExecutionContext* context) {
    gRoomControls.scrollSpeed = context->scriptInstructionPointer[1] & 7;
}

void ScriptCommand_0807F0C8(Entity* entity, ScriptExecutionContext* context) {
    InitScreenShake(context->scriptInstructionPointer[1], context->scriptInstructionPointer[2]);
}

extern u8 gUnk_0811E750[];
extern u8 gUnk_0811E758[];
extern u8 gUnk_0811E760[];

void CheckAnyKeyPressed(Entity* entity, ScriptExecutionContext* context) {
    context->condition = !!gInput.newKeys;
}

void GetRandomInt(Entity* entity, ScriptExecutionContext* context) {
    context->intVariable = (s32)Random() % (s32)context->intVariable;
}

void sub_0807F100(Entity* entity, ScriptExecutionContext* context) {
    static const u8 sValues[] = { 0xa, 0x14, 0x1e, 0x12, 0x1c, 0x26, 0xc, 0x18 };

    u32 rand = Random();
    entity->animationState = rand & 6;
    context->unk_1A = sValues[(rand >> 8) % 8];
}

void sub_0807F128(Entity* entity, ScriptExecutionContext* context) {
    static const u8 sAnimationStates[] = { IdleWest,  IdleEast, IdleWest,  IdleEast,
                                           IdleSouth, IdleWest, IdleSouth, IdleEast };
    static const u8 sValues[] = { 0xa, 0x14, 0x1e, 0x12, 0x1c, 0x26, 0xc, 0x18 };

    u32 rand = Random();
    entity->animationState = sAnimationStates[rand & 7];
    context->unk_1A = sValues[(rand >> 8) % 8];
}

void SetCollisionLayer1(Entity* entity, ScriptExecutionContext* context) {
    entity->collisionLayer = 1;
    UpdateSpriteForCollisionLayer(entity);
}

void SetPlayerCollisionLayer1(Entity* entity, ScriptExecutionContext* context) {
    gPlayerEntity.base.collisionLayer = 1;
    UpdateSpriteForCollisionLayer(&gPlayerEntity.base);
}

void SetCollisionLayer2(Entity* entity, ScriptExecutionContext* context) {
    entity->collisionLayer = 2;
    UpdateSpriteForCollisionLayer(entity);
}

void sub_0807F190(Entity* entity, ScriptExecutionContext* context) {
    SetFade(FADE_INSTANT, 256);
}

void sub_0807F1A0(Entity* entity, ScriptExecutionContext* context) {
    LookAt(entity, context, gPlayerEntity.base.x.HALF.HI, gPlayerEntity.base.y.HALF.HI);
    gActiveScriptInfo.flags |= 1;
}

void sub_0807F1C4(Entity* entity, ScriptExecutionContext* context) {
    if (gPlayerState.flags & PL_NO_CAP) {
        gPlayerState.animation = ANIM_DIE1_NOCAP;
    } else {
        gPlayerState.animation = ANIM_DIE1;
    }
}

void sub_0807F1E8(Entity* entity, ScriptExecutionContext* context) {
    if (gPlayerState.flags & PL_NO_CAP) {
        gPlayerState.animation = ANIM_DIE2_NOCAP;
    } else {
        gPlayerState.animation = ANIM_DIE2;
    }
}

void sub_0807F210(Entity* entity, ScriptExecutionContext* context) {
    if (gPlayerState.flags & PL_NO_CAP) {
        gPlayerState.animation = ANIM_HOP_NOCAP;
    } else {
        gPlayerState.animation = ANIM_HOP;
    }
}

void SetPlayerAnimation2(Entity* entity, ScriptExecutionContext* context) {
    gPlayerState.animation = context->intVariable;
}

void EquipItem(Entity* entity, ScriptExecutionContext* context) {
    u32 slot;
    u32 item;

    item = context->intVariable & 0xFFFF;
    slot = context->intVariable >> 0x10;
    item &= 0xFFFF;
    switch (item) {
        case ITEM_SMITH_SWORD:
        case ITEM_GREEN_SWORD:
        case ITEM_RED_SWORD:
        case ITEM_BLUE_SWORD:
        case ITEM_FOURSWORD:
            // Pick greatest sword unlocked
            item = ITEM_SMITH_SWORD;
            if (GetInventoryValue(ITEM_GREEN_SWORD))
                item = ITEM_GREEN_SWORD;
            if (GetInventoryValue(ITEM_RED_SWORD))
                item = ITEM_RED_SWORD;
            if (GetInventoryValue(ITEM_BLUE_SWORD))
                item = ITEM_BLUE_SWORD;
            if (GetInventoryValue(ITEM_FOURSWORD))
                item = ITEM_FOURSWORD;
            break;
    }
    ForceEquipItem(item, slot);
}

void SetPlayerMacro(Entity* entity, ScriptExecutionContext* context) {
    InitPlayerMacro((PlayerMacroEntry*)context->intVariable);
}

void WaitForPlayerMacro(Entity* entity, ScriptExecutionContext* context) {
    if (gPlayerState.playerInput.playerMacro == NULL) {
        gActiveScriptInfo.flags |= 1;
    } else {
        gActiveScriptInfo.commandSize = 0;
    }
}

void WaitForAnimDone(Entity* entity, ScriptExecutionContext* context) {
    if ((entity->frame & ANIM_DONE) != 0) {
        gActiveScriptInfo.flags |= 1;
    } else {
        gActiveScriptInfo.commandSize = 0;
    }
}

void WaitForPlayerAnim(Entity* entity, ScriptExecutionContext* context) {
    if ((gPlayerEntity.base.frame & ANIM_DONE) != 0) {
        gActiveScriptInfo.flags |= 1;
    } else {
        gActiveScriptInfo.commandSize = 0;
    }
}

void DeleteHitbox(Entity* entity, ScriptExecutionContext* context) {
    entity->hitbox = NULL;
    entity->followerFlag &= ~1;
}

void SetPriorityMessage(Entity* entity, ScriptExecutionContext* context) {
    SetEntityPriority(entity, PRIO_MESSAGE);
}

void SetPriorityPlayerEvent(Entity* entity, ScriptExecutionContext* context) {
    SetEntityPriority(entity, PRIO_PLAYER_EVENT);
}

void SetPriorityHighest(Entity* entity, ScriptExecutionContext* context) {
    SetEntityPriority(entity, PRIO_NO_BLOCK);
}

void sub_0807F36C(Entity* entity, ScriptExecutionContext* context) {
    Entity* fx;
    fx = CreateFx(entity, FX_REFLECT4, 0);
    if (fx != NULL) {
        fx->spritePriority.b0 = 1;
        PositionRelative(entity, fx, 0, Q_16_16(-8.0));
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
    ((GenericEntity*)entity)->field_0x80.HWORD = entity->animIndex;
}

void CreatePlayerExclamationMark(Entity* entity, ScriptExecutionContext* context) {
    CreateSpeechBubbleExclamationMark(&gPlayerEntity.base, 8, -24);
}

void CreatePlayerQuestionMark(Entity* entity, ScriptExecutionContext* context) {
    CreateSpeechBubbleQuestionMark(&gPlayerEntity.base, 8, -24);
}

void LoadMenu(Entity* entity, ScriptExecutionContext* context) {
    MenuFadeIn(context->intVariable & 0xff, (u8)(context->intVariable >> 8));
}

void CheckInteractType(Entity* entity, ScriptExecutionContext* context) {
    switch (entity->interactType) {
        case INTERACTION_TALK:
            entity->interactType = INTERACTION_NONE;
            context->intVariable = 1;
            break;
        case INTERACTION_FUSE:
            entity->interactType = INTERACTION_NONE;
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
        context->x.HALF.HI = gRoomControls.origin_x + s32Var;
        context->y.HALF.HI = entity->y.HALF.HI;
        if (s32Var > entity->x.HALF.HI - gRoomControls.origin_x) {
            entity->direction = 64;
            entity->animationState = (entity->animationState & 0x80) | 2;
        } else {
            entity->direction = -64;
            entity->animationState = (entity->animationState & 0x80) | 6;
        }
    }
    LinearMoveAngle(entity, entity->speed, entity->direction);
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
        context->y.HALF.HI = gRoomControls.origin_y + s32Var;
        if (s32Var > entity->y.HALF.HI - gRoomControls.origin_y) {
            entity->direction = 128;
            entity->animationState = (entity->animationState & 0x80) | 4;
        } else {
            entity->direction = 0;
            entity->animationState = (entity->animationState & 0x80);
        }
    }
    LinearMoveAngle(entity, entity->speed, entity->direction);
    if (((context->y.HALF.HI - entity->y.HALF.HI) ^ ((entity->direction & 0x80) << 24)) >= 0)
        entity->y.HALF.HI = context->y.HALF.HI;
    else
        gActiveScriptInfo.commandSize = 0;
}

void ReadPlayerAnimationState(Entity* entity, ScriptExecutionContext* context) {
    context->intVariable = gPlayerEntity.base.animationState >> 1;
}

void WaitForPlayerIdle(Entity* entity, ScriptExecutionContext* context) {
    if (gPlayerState.framestate)
        gActiveScriptInfo.commandSize = 0;
}

void sub_0807F5B0(Entity* entity, ScriptExecutionContext* context) {
    gPlayerState.field_0x27[0] = context->intVariable;
}

void WaitForCameraTouchRoomBorder(Entity* entity, ScriptExecutionContext* context) {
    s32 left;
    s32 bottom;

    if (gRoomControls.camera_target != NULL) {
        left = gRoomControls.camera_target->x.HALF.HI - DISPLAY_WIDTH / 2;
        bottom = gRoomControls.camera_target->y.HALF.HI - DISPLAY_HEIGHT / 2;

        if (left < gRoomControls.origin_x)
            left = gRoomControls.origin_x;
        if (left > gRoomControls.origin_x + gRoomControls.width - DISPLAY_WIDTH)
            left = gRoomControls.origin_x + gRoomControls.width - DISPLAY_WIDTH;
        if (bottom < gRoomControls.origin_y)
            bottom = gRoomControls.origin_y;
        if (bottom > gRoomControls.origin_y + gRoomControls.height - DISPLAY_HEIGHT)
            bottom = gRoomControls.origin_y + gRoomControls.height - DISPLAY_HEIGHT;

        if (left == gRoomControls.scroll_x && bottom == gRoomControls.scroll_y)
            gActiveScriptInfo.flags |= 1;
        else
            gActiveScriptInfo.commandSize = 0;
    }
}

void sub_0807F634(Entity* entity, ScriptExecutionContext* context) {
    u16* textIndices = (u16*)context->intVariable;
    InitializeFuseInfo(entity, textIndices[0], textIndices[1], textIndices[2]);
    gPlayerState.controlMode = CONTROL_DISABLED;
}

void sub_0807F650(Entity* entity, ScriptExecutionContext* context) {
    u32 fuserId = GetFuserId(entity);
    InitializeFuseInfo(entity, gUnk_08001A7C[fuserId][0], gUnk_08001A7C[fuserId][1], gUnk_08001A7C[fuserId][2]);
    gPlayerState.controlMode = CONTROL_DISABLED;
}

void sub_0807F680(Entity* entity, ScriptExecutionContext* context) {
    context->condition = gPlayerEntity.base.x.HALF.HI - gRoomControls.origin_x > (s32)(context->intVariable & 0xffff);
    gActiveScriptInfo.flags |= 1;
}

void sub_0807F6B4(Entity* entity, ScriptExecutionContext* context) {
    context->condition = gPlayerEntity.base.y.HALF.HI - gRoomControls.origin_y > (s32)(context->intVariable & 0xffff);
    gActiveScriptInfo.flags |= 1;
}

void SetPlayerFlag(Entity* entity, ScriptExecutionContext* context) {
    gPlayerState.flags |= context->intVariable;
}

void ResetPlayerFlag(Entity* entity, ScriptExecutionContext* context) {
    gPlayerState.flags &= ~context->intVariable;
}

void ScriptCommand_ShowNPCDialogue(Entity* entity, ScriptExecutionContext* context) {
    ShowNPCDialogue(entity, (Dialog*)context->intVariable);
}

void sub_0807F714(Entity* entity, ScriptExecutionContext* context) {
    entity->spriteRendering.b3 = gUnk_08114F30[entity->spriteRendering.b3];
    SortEntityAbove(entity, entity);
}

void sub_0807F738(Entity* entity, ScriptExecutionContext* context) {
    entity->spriteRendering.b3 = gUnk_08114F34[entity->spriteRendering.b3];
    SortEntityBelow(entity, entity);
}

void SetPlayerPos(Entity* entity, ScriptExecutionContext* context) {
    s32 s32Var = context->intVariable;
    gPlayerEntity.base.x.HALF.HI = (s32Var >> 16) + gRoomControls.origin_x;
    gPlayerEntity.base.y.HALF.HI = (s32Var & 0xffff) + gRoomControls.origin_y;
}

void GetConditionSet(Entity* entity, ScriptExecutionContext* context) {
    if (context->condition)
        context->intVariable = 1;
    else
        context->intVariable = 0;
}

void ScriptCommand_SaleItemConfirmMessage(Entity* entity, ScriptExecutionContext* context) {
    u32 item = context->intVariable;
    u32 msg;
    u32 price;

    if (context->intVariable == 0)
        item = gRoomVars.shopItemType;

    msg = GetSaleItemConfirmMessageID(item);
    price = GetItemPrice(item);
    MessageNoOverlap(msg, entity);
    gMessage.rupees = (u16)price;
}

void ScriptCommand_CheckShopItemPrice(Entity* entity, ScriptExecutionContext* context) {
    u32 item = context->intVariable;

    if (context->intVariable == 0)
        item = gRoomVars.shopItemType;

    context->condition = GetItemPrice(item) <= gSave.stats.rupees;
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_BuyShopItem(Entity* entity, ScriptExecutionContext* context) {
    u32 item = context->intVariable;
    u32 price;

    if (context->intVariable == 0)
        item = gRoomVars.shopItemType;

    price = GetItemPrice(item);
    ModRupees(-price);
    InitItemGetSequence(item, 0, 0);
    gRoomVars.shopItemType = 0;
    gActiveScriptInfo.flags |= 1;
}

void ScriptCommand_PlayerDropHeldObject(Entity* entity, ScriptExecutionContext* context) {
    PlayerDropHeldObject();
}

void sub_0807F844(Entity* entity, ScriptExecutionContext* context) {
    gRoomControls.camera_target = entity;
    sub_080809D4();
}

void ScriptCommand_SetMessageValue(Entity* entity, ScriptExecutionContext* context) {
    u32 value;
    u32 idx;

    idx = (context->intVariable >> 0x10) & 3;
    value = context->intVariable & 0xffff;
    switch (idx) {
        case SMV_DEFAULT:
        case SMV_RUPEES:
            gMessage.rupees = value;
            break;
        case SMV_FIELD_0X14:
            gMessage.field_0x14 = value;
            break;
        case SMV_FIELD_0X18:
            gMessage.field_0x18 = value;
            break;
        case SMV_FIELD_0X1C:
            gMessage.field_0x1c = value;
            break;
    }
}

void CheckEntityOnScreen(Entity* entity, ScriptExecutionContext* context) {
    if (CheckOnScreen(entity))
        context->condition = 1;
    else
        context->condition = 0;
}

void DoGravity(Entity* entity, ScriptExecutionContext* context) {
    GravityUpdate(entity, context->intVariable);
    gActiveScriptInfo.flags |= 1;
}

void sub_0807F8E8(Entity* entity, ScriptExecutionContext* context) {
    Entity* stoneTablet = CreateObjectWithParent(entity, SANCTUARY_STONE_TABLET, 0, 0);
    if (stoneTablet != NULL) {
        stoneTablet->parent = entity;
        ((GenericEntity*)stoneTablet)->field_0x86.HWORD = (context->intVariable & 0x3ff) | 0x8000;
    }
}

void PutItemAnySlot(Entity* entity, ScriptExecutionContext* context) {
    PutItemOnSlot(context->intVariable);
}

void MakeInteractableAsMinish(Entity* entity, ScriptExecutionContext* context) {
    AddInteractableAsMinishObject(entity);
}

void MakePedestalInteractable(Entity* entity, ScriptExecutionContext* context) {
    AddInteractablePedestal(entity);
}

void MakeCheckableObjectInteractable(Entity* entity, ScriptExecutionContext* context) {
    AddInteractableCheckableObject(entity);
}

void sub_0807F93C(Entity* entity, ScriptExecutionContext* context) {
    CreateSpeechBubbleSleep(entity, (context->intVariable >> 8) & 0xff, context->intVariable & 0xff);
}

void DeleteThoughtBubble(Entity* entity, ScriptExecutionContext* context) {
    Entity* c = FindEntity(OBJECT, THOUGHT_BUBBLE, 6, 0, 2);
    if (c != NULL)
        DeleteEntity(c);
}

void CheckMessageEqual(Entity* entity, ScriptExecutionContext* context) {
    context->condition = context->intVariable == gTextRender.curToken.textIndex;
}

void SetEntityHeight(Entity* entity, ScriptExecutionContext* context) {
    entity->z.WORD = context->intVariable;
}

void SetSpriteOffset(Entity* entity, ScriptExecutionContext* context) {
    entity->spriteOffsetX = (s32)context->intVariable >> 0x10;
    entity->spriteOffsetY = context->intVariable & 0xffff;
}

void WaitForPlayerNormal(Entity* entity, ScriptExecutionContext* context) {
    switch (gPlayerState.framestate) {
        case PL_STATE_THROW:
        case PL_STATE_SWIM:
        case PL_STATE_PARACHUTE:
        case PL_STATE_FALL:
        case PL_STATE_JUMP:
        case PL_STATE_C:
        case PL_STATE_D:
        case PL_STATE_USEPORTAL:
        case PL_STATE_F:
        case PL_STATE_TRAPPED:
        case PL_STATE_11:
        case PL_STATE_DIE:
        case PL_STATE_TALKEZLO:
        case PL_STATE_CAPE:
        case PL_STATE_ITEMGET:
        case PL_STATE_DROWN:
        case PL_STATE_HOLE:
        case PL_STATE_CLIMB:
        case PL_STATE_SINKING:
        case PL_STATE_STAIRS:
            gActiveScriptInfo.commandSize = 0;
            break;
        default:
            gActiveScriptInfo.flags |= 1;
            break;
    }
}

void WaitForPlayerNormalOrTalkEzlo(Entity* entity, ScriptExecutionContext* context) {
    switch (gPlayerState.framestate) {
        case PL_STATE_THROW:
        case PL_STATE_SWIM:
        case PL_STATE_PARACHUTE:
        case PL_STATE_FALL:
        case PL_STATE_JUMP:
        case PL_STATE_C:
        case PL_STATE_D:
        case PL_STATE_USEPORTAL:
        case PL_STATE_F:
        case PL_STATE_TRAPPED:
        case PL_STATE_11:
        case PL_STATE_DIE:
        case PL_STATE_CAPE:
        case PL_STATE_ITEMGET:
        case PL_STATE_DROWN:
        case PL_STATE_HOLE:
        case PL_STATE_CLIMB:
        case PL_STATE_SINKING:
        case PL_STATE_STAIRS:
            gActiveScriptInfo.commandSize = 0;
            break;
        default:
            gActiveScriptInfo.flags |= 1;
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
        SetFillColor(0x7fff, 1);

    context->unk_18++;
    if (context->unk_18 >= context->intVariable)
        SetFillColor(0, 0);
    else
        gActiveScriptInfo.commandSize = 0;
}

void SetPlayerIFrames(Entity* entity, ScriptExecutionContext* context) {
    gPlayerEntity.base.iframes = context->intVariable;
}

void DisablePlayerSwimState(Entity* entity, ScriptExecutionContext* context) {
    gPlayerState.swim_state = 0;
    gPlayerEntity.base.collisionFlags &= ~4;
}

void sub_0807FB94(Entity* entity, ScriptExecutionContext* context) {
    SetTask(TASK_STAFFROLL);
}

void sub_0807FBA0(Entity* entity, ScriptExecutionContext* context) {
    entity->x.HALF.HI = gRoomControls.scroll_x + 120;
    entity->y.HALF.HI = gRoomControls.scroll_y + 80;
}

void sub_0807FBB4(Entity* entity, ScriptExecutionContext* context) {
    gPlayerState.mobility |= 0x80;
}

void sub_0807FBC4(Entity* entity, ScriptExecutionContext* context) {
    RequestPriorityOverPlayer(entity);
}

void sub_0807FBCC(Entity* entity, ScriptExecutionContext* context) {
    RevokePriorityOverPlayer(entity);
}

void sub_0807FBD4(Entity* entity, ScriptExecutionContext* context) {
    LinearMoveAngle(entity, entity->speed, entity->direction);
    if (CheckOnScreen(entity))
        gActiveScriptInfo.commandSize = 0;
}

#ifndef EU
void sub_0807FBFC(Entity* entity, ScriptExecutionContext* context) {
    gSave.stats.charm = 0;
    gSave.stats.charmTimer = 0;
    gSave.stats.picolyteType = 0;
    gSave.stats.picolyteTimer = 0;
    gSave.stats.effect = 0;
    gSave.stats.effectTimer = 0;
}

#if defined(USA) || defined(DEMO_USA) || defined(DEMO_JP)
void sub_0807FC24(Entity* entity, ScriptExecutionContext* context) {
#if defined(DEMO_JP)
    u32 idx = gRoomControls.room == 1 ? 0xcf : 0xd0;
#else
    u32 idx = gRoomControls.room == 1 ? 0xcf : 0xd1;
#endif
    SetLocalFlag(idx);
}
#endif
#endif
