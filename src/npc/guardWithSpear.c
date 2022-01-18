#include "entity.h"
#include "script.h"
#include "player.h"

ASM_FUNC("asm/non_matching/guardWithSpear/sub_0806407C.inc",
         void sub_0806407C(Entity* this, ScriptExecutionContext* context))

void sub_08064180(void) {
    Entity* entity = FindEntityByID(7, 0x15, 7);
    if (entity != NULL) {
        DeleteEntity(entity);
    }
}

ASM_FUNC("asm/non_matching/guardWithSpear/sub_08064198.inc", void sub_08064198(Entity* this))

ASM_FUNC("asm/non_matching/guardWithSpear/sub_080642B8.inc", void sub_080642B8(Entity* this))

ASM_FUNC("asm/non_matching/guardWithSpear/sub_080643D8.inc", void sub_080643D8(Entity* this))

ASM_FUNC("asm/non_matching/guardWithSpear/sub_08064428.inc", void sub_08064428(Entity* this))

void sub_08064470(Entity* this, ScriptExecutionContext* context) {
    if (gPlayerState.field_0xab == 1) {
        context->condition = 1;
    } else {
        context->condition = 0;
    }
}

void sub_08064488(void) {
    if (gPlayerState.framestate != PL_STATE_SWORD) {
        gPlayerState.field_0xab = 0;
    }
}

void sub_080644A4(void) {
    gPlayerState.field_0xab = 0;
}

void sub_080644B4(Entity* this, ScriptExecutionContext* context) {
    context->condition = this->animationState == context->intVariable;
}

ASM_FUNC("asm/non_matching/guardWithSpear/sub_080644C8.inc", void sub_080644C8(Entity* this))
