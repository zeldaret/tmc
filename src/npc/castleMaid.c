/**
 * @file castleMaid.c
 * @ingroup NPCs
 *
 * @brief Castle Maid NPC
 */
#include "entity.h"
#include "flags.h"
#include "functions.h"
#include "manager.h"
#include "message.h"
#include "npc.h"
#include "save.h"
#include "script.h"

typedef struct {
    Entity base;
    void (*dialogFunc)();
    u16 field_0x6c;
    u16 field_0x6e;
} CastleMaidEntity;

void sub_08064570(CastleMaidEntity* this);

void Maid(Entity* this) {
    if ((this->flags & ENT_SCRIPTED) != 0) {
        sub_08064570((CastleMaidEntity*)this);
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

void sub_08064570(CastleMaidEntity* this) {
    static const SpriteLoadData gUnk_0810F874[] = {
        { 0x46, 0x2f, 0x4 }, { 0x2046, 0x2f, 0x4 }, { 0, 0, 0 }, { 0, 0x2f, 0x4 }, { 0x4000, 0x2f, 0x4 }, { 0, 0, 0 },
    };
    u32 tmp;
    u32 tmp2;
    u32 tmp3;
    const SpriteLoadData* data;

    switch (super->action) {
        case 0:
            tmp = super->id;
            tmp ^= 0x16;
            if (tmp) {
                tmp3 = 1;
            } else {
                tmp3 = 0;
            }
            data = &gUnk_0810F874[tmp3 * 3];
            if (!LoadExtraSpriteData(super, data)) {
                return;
            }
            super->action++;
            super->timer = 0;
            tmp2 = sub_0805ACC0(super);
            if (tmp2 == 0) {
                this->field_0x6c = super->x.HALF.HI;
                this->field_0x6e = super->y.HALF.HI;
            } else {
                this->field_0x6c = tmp2 >> 0x10;
                this->field_0x6e = tmp2;
            }
            this->dialogFunc = NULL;
            InitScriptForNPC(super);
        case 1:
            ExecuteScriptAndHandleAnimation(super, NULL);
            if (super->interactType != INTERACTION_NONE) {
                super->action++;
                super->interactType = INTERACTION_NONE;
                InitializeAnimation(super,
                                    GetAnimationStateForDirection4(GetFacingDirection(super, &gPlayerEntity.base)));
                if (this->dialogFunc != NULL) {
                    this->dialogFunc();
                }
            }
            break;
        case 2:
            if ((gMessage.state & MESSAGE_ACTIVE) != 0) {
                return;
            }
            super->action = 1;
            break;
    }
}

void CastleMaid_SetDialogFunc(CastleMaidEntity* this, ScriptExecutionContext* context) {
    this->dialogFunc = (void*)context->intVariable;
}

void sub_0806464C(Entity* this) {
    static const u16 messageIndices[] = {
        TEXT_INDEX(TEXT_PROLOGUE, 0X5f),
        TEXT_INDEX(TEXT_PROLOGUE, 0X60),
        TEXT_INDEX(TEXT_PROLOGUE, 0X61),
        0,
    };
    s32 tmp;
    if (CheckGlobalFlag(TABIDACHI) != 0) {
        tmp = 2;
    } else if (CheckLocalFlag(CASTLE_04_MAID_TALK) == 0) {
        tmp = 0;
        SetLocalFlag(CASTLE_04_MAID_TALK);
    } else {
        tmp = 1;
    }
    MessageNoOverlap(messageIndices[tmp], this);
}

void sub_08064688(Entity* this) {
    static const Dialog gUnk_0810F894[] = {
        { 7, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_TOWN, 0x26), TEXT_INDEX(TEXT_TOWN, 0x25) } },
        { 7, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_TOWN, 0x26), TEXT_INDEX(TEXT_TOWN, 0x25) } },
        { 7, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_TOWN, 0x26), TEXT_INDEX(TEXT_TOWN, 0x25) } },
        { 7, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_TOWN, 0x26), TEXT_INDEX(TEXT_TOWN, 0x25) } },
        { 7, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_TOWN2, 0x21), TEXT_INDEX(TEXT_TOWN2, 0x20) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN3, 0x1f) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN4, 0x20) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN5, 0x20) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN5, 0x20) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN5, 0x20) } },
    };
    ShowNPCDialogue(this, &gUnk_0810F894[gSave.global_progress]);
}

void sub_080646A4(CastleMaidEntity* this, ScriptExecutionContext* context) {
    u8 dir;
    s32 x, y;
    s32 diff;
    if (context->unk_18 == 0) {
        context->unk_18++;
        context->unk_12 = (Random() & 0x3f) + 0x20;
        dir = Random() & 0x18;

        switch (super->direction) {
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
        super->direction = dir;
        super->animationState = GetAnimationStateForDirection8(dir);
        super->speed = 0x80;
    }

    context->postScriptActions |= 0x2;
    ProcessMovement0(super);
    x = super->x.HALF.HI;
    diff = x - (s16)this->field_0x6c;
    if (diff > 0x10) {
        super->x.HALF.HI = this->field_0x6c + 0x10;
        context->unk_12 = 1;
    }

    if (diff < -0x10) {
        super->x.HALF.HI = this->field_0x6c - 0x10;
        context->unk_12 = 1;
    }

    y = super->y.HALF.HI;
    diff = y - (s16)this->field_0x6e;
    if (diff > 0x10) {
        super->y.HALF.HI = this->field_0x6e + 0x10;
        context->unk_12 = 1;
    }

    if (diff < -0x10) {
        super->y.HALF.HI = this->field_0x6e - 0x10;
        context->unk_12 = 1;
    }

    if (--context->unk_12) {
        gActiveScriptInfo.commandSize = 0;
    }
}
