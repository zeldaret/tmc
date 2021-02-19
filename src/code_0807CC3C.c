#include "global.h"
#include "structures.h"
#include "functions.h"
#include "script.h"
#include "entity.h"
#include "save.h"

typedef struct Thing {
    u16 unk_1;
    u16 unk_2;
    u32 unk_3;
} Thing;

extern u8 gUnk_0811E514[];
extern u8 gUnk_0811E510[];
extern struct_0807D1C4 gUnk_0811E4BC[];
extern const char gUnk_0811E4B4[8];
extern ScriptExecutionContext gPlayerScriptExecutionContext;
extern ScriptExecutionContext gScriptExecutionContextArray[0x20];

extern void CreateSpeechBubbleExclamationMark(Entity*, u32, u32);
extern void CreateSpeechBubbleQuestionMark(Entity*, u32, u32);
extern void DeleteThisEntity(void);
extern u32 sub_080B180C(u32, const char*);
extern void sub_0801C4A0(u32);
extern s32 __divsi3(s32, s32);
extern void _call_via_r6(Entity*, ScriptExecutionContext*);
extern u16 sub_080B18DC(u16, const char*);

void sub_0807DB88(ScriptExecutionContext* context, u32 unk1);
void sub_0807DAF0(Entity* entity, ScriptExecutionContext* context, u32 unk1);
u32 sub_0807D1D8(u32 unk_1, const char* unk_2, u32 unk_3);
u32 sub_0807D128(const Thing* unk_1);
u16 sub_0807D1A4(u16* unk_1, u32 unk_2);
u32 sub_0807D0A0(u16* unk_1, u16* unk_2, u32 unk_3);
u32 sub_0807D0EC(u32 unk_1, const char* unk_2);
void sub_0807DF38(void);
void sub_0807DE80(Entity* entity);
void sub_0807DB98(Entity*, ScriptExecutionContext*);

u32 sub_0807CF88(u32 arg0, u8* arg1) {
    Thing thing;

    u32 retval;
    struct_0807D1C4* ptr;
    u32 e0, e1;
    u16 l1prep;

    ptr = sub_0807D1C4(arg0);

    thing.unk_3 = 'MCZ3';
    l1prep = sub_0807D1A4((u16*)&thing.unk_3, 4);
    l1prep += sub_0807D1A4((u16*)arg1, ptr->field_0x0);
    thing.unk_1 = l1prep;
    thing.unk_2 = -(u32)l1prep;
    e0 = sub_0807D20C(ptr->field_0x6, (const char*)arg1, ptr->field_0x0);
    if (e0) {
        e0 = sub_0807D184(ptr->field_0x2, (const char*)&thing.unk_1);
    }
    e1 = sub_0807D20C(ptr->field_0x8, (const char*)arg1, ptr->field_0x0);
    if (e1) {
        e1 = sub_0807D184(ptr->field_0x4, (const char*)&thing.unk_1);
    }

    retval = 0;
    if (e0 || e1) {
        retval = 1;
    }
    return retval;
}

NONMATCH("asm/non_matching/code_0807CC3C/sub_0807D008.inc", u32 sub_0807D008(u32 param_1, SaveFile* saveFile)) {
    u32 set_0;
    char auStack32[8];

    struct_0807D1C4* unk_s;
    u32 t1;
    u32 t2;
    u32 ret;
    u32 temp;

    unk_s = sub_0807D1C4(param_1);
    t1 = sub_0807D0EC(unk_s->field_0x2, auStack32);
    if (t1 == 2) {
        if ((sub_0807D1D8(unk_s->field_0x6, (char*)saveFile, unk_s->field_0x0) == 0) ||
            (sub_0807D0A0((u16*)auStack32, (u16*)saveFile, (u32)unk_s->field_0x0) == 0)) {
            t1 = 0;
        } else {
            return 1;
        }
    }
    t2 = sub_0807D0EC(unk_s->field_0x4, auStack32);
    if (t2 == 2) {
        if ((sub_0807D1D8(unk_s->field_0x8, (char*)saveFile, unk_s->field_0x0) != 0) &&
            (sub_0807D0A0((u16*)auStack32, (u16*)saveFile, (u32)unk_s->field_0x0) != 0)) {
            return 1;
        }
        t2 = 0;
    }
    set_0 = 0;
    CpuSet(&set_0, saveFile, unk_s->field_0x0 >> 2 | CPU_SET_SRC_FIXED | CPU_SET_32BIT);
    temp = t1 | t2;
    ret = 0;
    if (temp == 0) {
        ret = -1;
    }
    return ret;
}
END_NONMATCH

NONMATCH("asm/non_matching/code_0807CC3C/sub_0807D0A0.inc", u32 sub_0807D0A0(u16* unk_1, u16* unk_2, u32 unk_3)) {
    u32 r0;

    u32* u32_1 = (u32*)unk_1;

    u16 u0;
    u32 u1;

    u0 = sub_0807D1A4(unk_1 + 2, 4);
    u0 = u0 + sub_0807D1A4(unk_2, unk_3);

    u1 = unk_1[0];
    if (u1 != u0) {
        r0 = 0;
    } else {
        if (unk_1[1] == (-(u1 << 0x10) >> 0x10)) {
            if (*(u32_1 + 1) != 'MCZ3') {
                r0 = 0;
            } else {
                r0 = 1;
            }
        } else {
            r0 = 0;
        }
    }
    return r0;
}
END_NONMATCH

u32 sub_0807D0EC(u32 unk_1, const char* unk_2) {
    u32 ret;

    if (!sub_0807D1D8(unk_1, unk_2, 8)) {
        ret = 0;
    } else {
        ret = sub_0807D128((Thing*)unk_2);
    }
    if (!ret && sub_0807D1D8(unk_1 + 8, unk_2, 8)) {
        ret = sub_0807D128((Thing*)unk_2);
    }
    return ret;
}

u32 sub_0807D128(const Thing* thing) {
    u32 ret;
    switch (thing->unk_3) {
        case 'MCZ3':
            if (thing->unk_1 + thing->unk_2 == 0x10000) {
                ret = 2;
            } else {
                ret = 0;
            }
            break;
        case 'FleD':
        case 'TINI':
            ret = 0;
            if ((thing->unk_1 & thing->unk_2) == 0xffff) {
                ret = 1;
            }
            break;
        default:
            ret = 0;
            break;
    }
    return ret;
}

u32 sub_0807D184(u32 param_1, const char* param_2) {
    u32 uVar1;

    uVar1 = sub_0807D20C(param_1, param_2, 8);
    if (uVar1 == 0) {
        uVar1 = sub_0807D20C(param_1 + 8, param_2, 8);
    }
    return uVar1;
}

u16 sub_0807D1A4(u16* unk_1, u32 unk_2) {
    u32 uVar1;

    uVar1 = 0;
    while (unk_2 != 0) {
        uVar1 = uVar1 + (*unk_1 ^ unk_2);
        unk_1 = unk_1 + 1;
        unk_2 = unk_2 - 2;
    }
    return uVar1;
}

struct_0807D1C4* sub_0807D1C4(u32 unk_1) {
    return &gUnk_0811E4BC[unk_1];
}

// these three are basically the same and wrong by basically one instruction in the wrong place
NONMATCH("asm/non_matching/code_0807CC3C/sub_0807D1D8.inc", u32 sub_0807D1D8(u32 unk_1, const char* unk_2, u32 unk_3)) {
}
END_NONMATCH

NONMATCH("asm/non_matching/code_0807CC3C/sub_0807D20C.inc", u32 sub_0807D20C(u32 unk_1, const char* unk_2, u32 unk_3)) {
    unk_3 >>= 3;
    unk_1 >>= 3;
    while (unk_3-- > 0) {
        if (sub_080B18DC(unk_1, unk_2)) {
            sub_080B18DC(unk_1, gUnk_0811E4B4);
            return 0;
        }
        unk_1++;
        unk_2 += 8;
    }
    return 1;
}
END_NONMATCH

NONMATCH("asm/non_matching/code_0807CC3C/sub_0807D24C.inc", u32 sub_0807D24C(u32 unk_1, const char* unk_2, u32 unk_3)) {
    unk_3 >>= 3;
    unk_1 >>= 3;
    while (unk_3-- > 0) {
        if (sub_080B180C(unk_1, unk_2))
            return 0;
        unk_1++;
        unk_2 += 8;
    }
    return 1;
}
END_NONMATCH

// these three functions use gRoomControls, maybe once that is understood better, these can be decompiled easier
NONMATCH("asm/non_matching/code_0807CC3C/sub_0807D280.inc", void sub_0807D280(u32 unk_1, u32 unk_2)) {
}
END_NONMATCH

NONMATCH("asm/non_matching/code_0807CC3C/sub_0807D46C.inc", void sub_0807D46C(u32 unk_1, u32 unk_2)) {
}
END_NONMATCH

NONMATCH("asm/non_matching/code_0807CC3C/sub_0807D6D8.inc", void sub_0807D6D8(u32 unk_1, u32 unk_2)) {
}
END_NONMATCH

void sub_0807DA70(void) {
    _DmaZero(&gUnk_02033280, 0xc);
    _DmaZero(&gScriptExecutionContextArray, sizeof(gScriptExecutionContextArray));
    _DmaZero(&gPlayerScriptExecutionContext, sizeof(gPlayerScriptExecutionContext));
    gUnk_02033280.unk_08 = 8;
}

ScriptExecutionContext* CreateScriptExecutionContext(void) {
    ScriptExecutionContext* puVar1;

    puVar1 = gScriptExecutionContextArray;
    do {
        if (puVar1->unk_00 == 0) {
            return puVar1;
        }
        puVar1++;
    } while (puVar1 < gScriptExecutionContextArray + ARRAY_COUNT(gScriptExecutionContextArray));
    return NULL;
}

void DestroyScriptExecutionContext(ScriptExecutionContext* context) {
    _DmaZero(context, sizeof(ScriptExecutionContext));
}

u32* StartCutscene(Entity* entity, u8* param_2) {
    ScriptExecutionContext* puVar1;

    puVar1 = CreateScriptExecutionContext();
    if (puVar1) {
        sub_0807DAF0(entity, puVar1, (u32)param_2);
    }
    return (u32*)puVar1;
}

void sub_0807DAF0(Entity* entity, ScriptExecutionContext* context, u32 unk1) {
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

void StartPlayerScript(u32 unk1) {
    Entity* player;

    _DmaZero(&gPlayerScriptExecutionContext, sizeof(gPlayerScriptExecutionContext));
    gPlayerScriptExecutionContext.unk_00 = (u16*)unk1;
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
        context->unk_00 = unk1;
    }
    return context;
}

void sub_0807DB88(ScriptExecutionContext* context, u32 unk1) {
    _DmaZero(context, sizeof(ScriptExecutionContext));
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

void sub_0807DD80(Entity* entity, u32 unk1) {
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