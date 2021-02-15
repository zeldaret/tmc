#include "global.h"
#include "structures.h"
#include "functions.h"
#include "script.h"
#include "entity.h"

extern u8 gUnk_0811E514[];

void sub_0807DF38(void);
extern void sub_0801C4A0(u32);

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