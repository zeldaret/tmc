#include "entity.h"
#include "functions.h"
#include "script.h"
#include "flags.h"
#include "random.h"
#include "textbox.h"

extern Hitbox gUnk_0810C428;

extern u8 gUnk_0810C430[4];
extern u8 gUnk_0810C435[];
extern u8 gUnk_0810C43D[];
extern u32 sub_080028F4(const u8*);

void Pita(Entity* this) {
    if (this->action == 0) {
        this->action += 1;
        sub_0805E3A0(this, 2);
        ResolveEntityOnTop(this, this);
        this->hitbox = &gUnk_0810C428;
        sub_0807DD64(this);
    }
    sub_0807DD94(this, NULL);
    if ((this->frames.all & 1) != 0) {
        InitAnimationForceUpdate(this, (u32)(this->animationState >> 1));
        this->field_0x80.HWORD = this->animIndex;
    }
}

void sub_08062EB8(void) {
    sub_0807CAA0(0x68, 0);
    sub_0807CAA0(0x69, 0);
    sub_0807CAA0(0x6a, 0);
    sub_0807CAA0(0x6b, 0);
}

bool32 sub_08062EDC(Entity* this, ScriptExecutionContext* context) {
    u32 tmp;
    u32 tmp2;

    if (GetInventoryValue(0x68) != 0) {
        tmp = 0;
    }
    if (GetInventoryValue(0x69) != 0) {
        tmp = 1;
    }
    if (GetInventoryValue(0x6a) != 0) {
        tmp = 2;
    }
    if (GetInventoryValue(0x6b) != 0) {
        tmp = 3;
    }
    if (CheckLocalFlag(0x5b) == 0) {
        SetLocalFlag(0x5b);
        tmp = 4;
    }
    if ((Random() & 0xff) > gUnk_0810C430[tmp]) {
        context->condition = FALSE;
        return FALSE;
    } else {
        tmp = sub_080028F4(gUnk_0810C435);
        tmp2 = gUnk_0810C43D[tmp];
        sub_080A7C18(0x5c, tmp2, 1);
        MessageNoOverlap(0x3c05, this);
        context->condition = TRUE;
        return TRUE;
    }
}
