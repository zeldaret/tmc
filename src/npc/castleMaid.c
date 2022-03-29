#include "entity.h"
#include "script.h"
#include "save.h"
#include "flags.h"
#include "message.h"
#include "npc.h"
#include "manager.h"
#include "functions.h"

extern Dialog gUnk_0810F894[];

void sub_08064570(Entity* this);

extern u16 gUnk_0810F88C[];

extern SpriteLoadData gUnk_0810F874[];
extern u32 _call_via_r0(u32*);

void Maid(Entity* this) {
    if ((this->flags & ENT_SCRIPTED) != 0) {
        sub_08064570(this);
    } else {
        DeleteThisEntity();
    }
}

void Maid_Head(Entity* this) {
    u32 uVar2;
    u32 uVar3;

    uVar2 = this->frame & 0x7f;
    uVar3 = this->frameIndex;
    if (this->id == 0x16) {
        if ((this->frame & 0x7f) != 0) {
            uVar2 += 10;
        }
    } else {
        if ((this->frame & 0x7f) != 0) {
            uVar2 += 0x1a;
        }
        uVar3 += 0x10;
    }
    SetExtraSpriteFrame(this, 0, uVar2 - 1);
    SetExtraSpriteFrame(this, 1, uVar3);
    SetSpriteSubEntryOffsetData1(this, 1, 0);
    sub_0807000C(this);
}

void sub_08064570(Entity* this) {
    u32 tmp;
    u32 tmp2;
    u32 tmp3;
    SpriteLoadData* data;

    switch (this->action) {
        case 0:
            tmp = this->id;
            tmp ^= 0x16;
            if (tmp) {
                tmp3 = 1;
            } else {
                tmp3 = 0;
            }
            data = &gUnk_0810F874[tmp3 * 3];
            if (LoadExtraSpriteData(this, data) == 0) {
                return;
            }
            this->action += 1;
            this->timer = 0;
            tmp2 = sub_0805ACC0(this);
            if (tmp2 == 0) {
                this->field_0x6c.HWORD = this->x.HALF.HI;
                this->field_0x6e.HWORD = this->y.HALF.HI;
            } else {
                this->field_0x6c.HWORD = tmp2 >> 0x10;
                this->field_0x6e.HWORD = tmp2;
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
            if ((gMessage.doTextBox & 0x7f) != 0) {
                return;
            }
            this->action = 1;
            break;
    }
}

void sub_08064644(Entity* this, ScriptExecutionContext* context) {
    *(u32*)&this->field_0x68 = context->intVariable;
}

void sub_0806464C(Entity* this) {
    s32 tmp;
    if (CheckGlobalFlag(TABIDACHI) != 0) {
        tmp = 2;
    } else if (CheckLocalFlag(CASTLE_04_MAID_TALK) == 0) {
        tmp = 0;
        SetLocalFlag(CASTLE_04_MAID_TALK);
    } else {
        tmp = 1;
    }
    MessageNoOverlap(gUnk_0810F88C[tmp], this);
}

void sub_08064688(Entity* this) {
    ShowNPCDialogue(this, &gUnk_0810F894[gSave.global_progress]);
}

void sub_080646A4(Entity* this, ScriptExecutionContext* context) {
    u8 dir;
    s32 x, y;
    s32 diff;
    if (context->unk_18 == 0) {
        context->unk_18++;
        context->unk_12 = (Random() & 0x3f) + 0x20;
        dir = Random() & 0x18;

        switch (this->direction) {
            case 0:
                if (dir == 0x10) {
                    dir = 0x8;
                }
                break;
            case 0x8:
                if (dir == 0x18) {
                    dir = 0x10;
                }
                break;
            case 0x10:
                if (dir == 0) {
                    dir = 0x18;
                }
                break;
            case 0x18:
                if (dir == 0x8) {
                    dir = 0;
                }
                break;
        }
        this->direction = dir;
        this->animationState = sub_0806F5B0(dir);
        this->speed = 0x80;
    }

    context->postScriptActions |= 0x2;
    ProcessMovement0(this);
    x = this->x.HALF.HI;
    diff = x - (s16)this->field_0x6c.HWORD;
    if (diff > 0x10) {
        this->x.HALF.HI = this->field_0x6c.HWORD + 0x10;
        context->unk_12 = 1;
    }

    if (diff < -0x10) {
        this->x.HALF.HI = this->field_0x6c.HWORD - 0x10;
        context->unk_12 = 1;
    }

    y = this->y.HALF.HI;
    diff = y - (s16)this->field_0x6e.HWORD;
    if (diff > 0x10) {
        this->y.HALF.HI = this->field_0x6e.HWORD + 0x10;
        context->unk_12 = 1;
    }

    if (diff < -0x10) {
        this->y.HALF.HI = this->field_0x6e.HWORD - 0x10;
        context->unk_12 = 1;
    }

    if (--context->unk_12) {
        gActiveScriptInfo.commandSize = 0;
    }
}
