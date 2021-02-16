#include "global.h"
#include "structures.h"
#include "functions.h"
#include "script.h"
#include "entity.h"

extern u8 gUnk_0811E514[];
extern u8 gUnk_0811E510[];
// the type is just a guess based on size and teh fact that these are around a lot in this file
extern ScriptExecutionContext gUnk_02022750;

extern void CreateSpeechBubbleExclamationMark(Entity*, u32, u32);
extern void CreateSpeechBubbleQuestionMark(Entity*, u32, u32);
extern void sub_0807DAC4(ScriptExecutionContext*);
extern void DeleteThisEntity(void);
extern void sub_0801C4A0(u32);
extern void sub_0807DB98(Entity*, ScriptExecutionContext*);
extern void _call_via_r6(Entity*, ScriptExecutionContext*);

void sub_0807DB88(ScriptExecutionContext* context, u32 unk1);
extern u32* sub_0807DAA0();

void sub_0807DAF0(Entity* entity, ScriptExecutionContext* context, u32 unk1) {
    entity->flags = entity->flags | 2;
    *(ScriptExecutionContext**)&entity->cutsceneBeh = context;
    sub_0807DB88(context, unk1);
}

void UnloadCutsceneData(Entity* entity) {
    if ((entity->flags & 2)) {
        entity->flags = entity->flags & 0xfd;
        sub_0807DAC4(*(ScriptExecutionContext**)&entity->cutsceneBeh);
        *(ScriptExecutionContext**)&entity->cutsceneBeh = NULL;
    }
}

void StartPlayerScript(u32 unk1) {
    Entity* player;

    _DmaZero(&gUnk_02022750, 0x24);
    gUnk_02022750.unk_00 = (u16*)unk1;
    player = &gPlayerEntity;
    *(ScriptExecutionContext**)&player->cutsceneBeh = &gUnk_02022750;
    gPlayerState.playerAction = 0x1c;
    gPlayerState.field_0x3a = 0;
    gPlayerState.field_0x39 = 0;
    gPlayerState.field_0x38 = 0;
}

u32* sub_0807DB68(Entity* entity, u32 unk1) {
    u32* puVar1;

    puVar1 = sub_0807DAA0();
    if (puVar1) {
        entity->flags |= 2;
        *(u32**)&entity->field_0x3c = puVar1;
        *puVar1 = unk1;
    }
    return puVar1;
}

void sub_0807DB88(ScriptExecutionContext* context, u32 unk1) {
    _DmaZero(context, 0x24);
    context->unk_00 = (u16*)unk1;
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
                sub_0807DAC4(context);
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

void sub_0807DF38(void);
void sub_0807DE80(Entity* entity);

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

void sub_0807DD80(Entity* entity, u32 unk1) {
    sub_0807DB88(*(ScriptExecutionContext**)&entity->cutsceneBeh, unk1);
    sub_0807DD64(entity);
}

void sub_0807DD94(Entity* entity, u32 param_2) {
    sub_0807DDAC(entity, param_2);
    sub_0807DDE4(entity);
    sub_0807DE80(entity);
}

/**
 *
 * @param entity
 * @param address this is the fuction called via r6
 */
void sub_0807DDAC(Entity* entity, u32 address) {
    ScriptExecutionContext** piVar1;

    piVar1 = (ScriptExecutionContext**)&entity->cutsceneBeh;
    if (*piVar1) {
        ExecuteScriptCommandSet(entity, *piVar1);
        if (address) {
            _call_via_r6(entity, *piVar1);
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
                if (entity->entityType.type == 7) {
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