#include "entity.h"
#include "script.h"
#include "functions.h"
#include "textbox.h"
#include "flags.h"

extern SpriteLoadData gUnk_08111358;

extern void (*const gUnk_08111368[])(Entity*);
void sub_08067EF0(Entity*);

extern SpriteLoadData gUnk_08111358;

extern u16 gUnk_0811130E[];

void MountainMinish(Entity* this) {
    if ((this->flags & 2) == 0) {
        gUnk_08111368[this->action](this);
        sub_0806ED78(this);
    } else {
        sub_08067EF0(this);
    }
}

void sub_08067E60(Entity* this) {
    if (LoadExtraSpriteData(this, &gUnk_08111358) != 0) {
        this->action = 1;
        sub_08078778(this);
        InitializeAnimation(this, 2);
    }
}

void sub_08067E88(Entity* this) {
    s32 tmp;

    tmp = sub_0806ED9C(this, 0x28, 0x28);
    if (tmp < 0) {
        tmp = 2;
    } else {
        if (this->field_0xf == 0) {
            this->field_0xf = 0x10;
        } else {
            this->field_0xf = this->field_0xf - 1;
            tmp = this->animIndex;
        }
    }
    if (sub_0806F078(this, tmp) == 0) {
        GetNextFrame(this);
    }
    if (this->interactType != 0) {
        this->interactType = 0;
        this->action = 2;
        MessageFromTarget(this->actionDelay + 0x1200);
    }
}

void sub_08067EE8(Entity* this) {
    this->action = 1;
}

ASM_FUNC("asm/non_matching/mountainMinish/sub_08067EF0.inc", void sub_08067EF0(Entity* this))

void sub_08068104(Entity* this) {
    this->field_0x68.HALF.LO = sub_0801E99C(this);
    sub_08078784(this, this->field_0x68.HALF.LO);
}

ASM_FUNC("asm/non_matching/mountainMinish/sub_0806811C.inc", void sub_0806811C(Entity* this))

NONMATCH("asm/non_matching/mountainMinish/sub_08068190.inc", void sub_08068190(Entity* this)) {
    u32 uVar1;
    u32 uVar2;
    u32 uVar3;

    uVar3 = this->type2;
    if (uVar3 > 8) {
        uVar3 = 8;
    }
    uVar1 = CheckLocalFlag(0x7e);
    uVar2 = BOOLCAST(uVar1);
    if (GetInventoryValue(0x41) != 0) {
        uVar2 = 2;
    }
    if (GetInventoryValue(2) != 0) {
        uVar2 = 3;
    }

    // TODO unable to devide the array access variables by two without breaking everything
    MessageNoOverlap(gUnk_0811130E[uVar2 * 2 + uVar3 * 8], this);
}
END_NONMATCH

void sub_080681D8(Entity* this, ScriptExecutionContext* context) {
    this->type = context->intVariable;
}

ASM_FUNC("asm/non_matching/mountainMinish/MountainMinish_Head.inc", void MountainMinish_Head(Entity* this))

void MountainMinish_Fusion(Entity* this) {
    if (this->action == 0) {
        if (LoadExtraSpriteData(this, &gUnk_08111358) != 0) {
            this->action += 1;
            this->spriteSettings.b.draw = 1;
            InitializeAnimation(this, 6);
        }
    } else {
        GetNextFrame(this);
    }
}
