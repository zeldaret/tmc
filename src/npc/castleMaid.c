#include "entity.h"
#include "script.h"
#include "save.h"
#include "functions.h"
#include "flags.h"
#include "textbox.h"

extern Dialog gUnk_0810F894[];

void sub_08064570(Entity* this);

extern u16 gUnk_0810F88C[];

extern SpriteLoadData gUnk_0810F874[];
extern u32 _call_via_r0(u32*);

void Maid(Entity* this) {
    if ((this->flags & 2) != 0) {
        sub_08064570(this);
    } else {
        DeleteThisEntity();
    }
}

void Maid_Head(Entity* this) {
    u32 uVar2;
    u32 uVar3;

    uVar2 = this->frames.all & 0x7f;
    uVar3 = this->frameIndex;
    if (this->id == 0x16) {
        if ((this->frames.all & 0x7f) != 0) {
            uVar2 += 10;
        }
    } else {
        if ((this->frames.all & 0x7f) != 0) {
            uVar2 += 0x1a;
        }
        uVar3 += 0x10;
    }
    SetExtraSpriteFrame(this, 0, uVar2 - 1);
    SetExtraSpriteFrame(this, 1, uVar3);
    SetSpriteSubEntryOffsetData1(this, 1, 0);
    sub_0807000C(this);
}

NONMATCH("asm/non_matching/castleMaid/sub_08064570.inc", void sub_08064570(Entity* this)) {
    u8 bVar1;
    u32 tmp;

    switch (this->action) {
        case 0:
            // (&gUnk_0810F874[((s32)-(this->id ^ 0x16) >> 0x1f) * -0xc]))
            // TODO fix this array access
            tmp = -(this->id ^ 0x16);
            if (LoadExtraSpriteData(this, &gUnk_0810F874[(BOOLCAST(tmp)) * 2 + tmp]) == 0) {
                return;
            }
            this->action += 1;
            this->actionDelay = 0;
            tmp = sub_0805ACC0(this);
            if (tmp == 0) {
                this->field_0x6c.HWORD = this->x.HALF.HI;
                this->field_0x6e.HWORD = this->y.HALF.HI;
            } else {
                this->field_0x6c.HWORD = tmp >> 0x10;
                this->field_0x6e.HWORD = tmp;
            }
            *(u32*)&this->field_0x68 = 0;
            sub_0807DD50(this);
        case 1:
            sub_0807DD94(this, NULL);
            if (this->interactType != 0) {
                this->action += 1;
                this->interactType = 0;
                InitializeAnimation(this, sub_0806F5A4(GetFacingDirection(this, &gPlayerEntity)));
                if (*(void**)&this->field_0x68 != NULL) {
                    _call_via_r0(*(void**)&this->field_0x68);
                }
            }
            break;
        case 2:
            if ((gTextBox.doTextBox & 0x7f) != 0) {
                return;
            }
            this->action = 1;
            break;
    }
}
END_NONMATCH

void sub_08064644(Entity* this, ScriptExecutionContext* context) {
    *(u32*)&this->field_0x68 = context->intVariable;
}

void sub_0806464C(Entity* this) {
    s32 tmp;
    if (CheckGlobalFlag(0x15) != 0) {
        tmp = 2;
#if defined(JP) || defined(EU)
    } else if (CheckLocalFlag(0x9f) == 0) {
#else
    } else if (CheckLocalFlag(0xa0) == 0) {
#endif
        tmp = 0;
#if defined(JP) || defined(EU)
        SetLocalFlag(0x9f);
#else
        SetLocalFlag(0xa0);
#endif
    } else {
        tmp = 1;
    }
    TextboxNoOverlap(gUnk_0810F88C[tmp], this);
}

void sub_08064688(Entity* this) {
    ShowNPCDialogue(this, &gUnk_0810F894[gSave.unk8]);
}

ASM_FUNC("asm/non_matching/castleMaid/sub_080646A4.inc",
         void sub_080646A4(Entity* this, ScriptExecutionContext* context))
