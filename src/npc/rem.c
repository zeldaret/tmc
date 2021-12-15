#include "global.h"
#include "entity.h"
#include "script.h"
#include "audio.h"
#include "functions.h"
#include "random.h"
#include "flags.h"
#include "textbox.h"

extern void sub_0806A8C8(Entity*);

extern void (*gUnk_08112260[])(Entity*);
extern void (*gUnk_08112278[])(Entity*);

extern void script_08012F0C;

extern void sub_08078850(Entity*, u32, u32, u32*);
extern u32 gUnk_0811229C;

extern void sub_0807F950(Entity* this, ScriptExecutionContext* context);

extern u8 gUnk_081122A0[];

void sub_0806A9B0(Entity*, ScriptExecutionContext*);

void sub_0806A914(Entity* this);

void Rem(Entity* this) {
    gUnk_08112260[this->type](this);
}

void sub_0806a370(Entity* this) {
    u8* pbVar1;

    gUnk_08112278[this->action](this);
    ExecuteScriptForEntity(this, NULL);
    HandleEntity0x82Actions(this);
    UpdateAnimationSingleFrame(this);
    sub_0806ED78(this);
    if (this->animIndex == 0xf) {
        pbVar1 = &this->frame;
        if (*pbVar1 == 1) {
            *pbVar1 = 0;
            SoundReq(SFX_218);
        }
        if (*pbVar1 == 2) {
            *pbVar1 = 0;
            SoundReq(SFX_219);
        }
    }
}

void sub_0806A3D8(Entity* this) {
    ScriptExecutionContext* uVar1;

    this->action = 1;
    this->actionDelay = 0xb4;
    SetDefaultPriority(this, 2);
    sub_0806A8C8(this);
    uVar1 = StartCutscene(this, &script_08012F0C);
    *(ScriptExecutionContext**)&this->cutsceneBeh = uVar1;
    sub_0807DD94(this, NULL);
}

void sub_0806A410(Entity* this) {
    switch (this->subAction) {
        case 0:
            if (--this->actionDelay == 0) {
                this->subAction = this->subAction + 1;
                InitializeAnimation(this, 8);
            }
            break;
        case 1:
            if (((this->frame & 0x80) != 0)) {
                sub_0806A9B0(this, *(ScriptExecutionContext**)&this->cutsceneBeh);
            }
            break;
    }
}

void sub_0806A458(Entity* this) {
    switch (this->subAction) {
        case 0:
            if (--this->actionDelay == 0) {
                this->subAction += 1;
            }
            break;
        case 1:
            if ((this->frame & 0x80) != 0) {
                this->subAction = 2;
                InitializeAnimation(this, 10);
                ClearLocalFlag(0x62);
            }
            break;
        case 2:
            if (((this->frame & 0x80) != 0)) {
                this->action = 1;
                this->subAction = 0;
                this->actionDelay = 0x3c;
                InitializeAnimation(this, 2);
            }
            break;
    }
}

void sub_0806A4CC(Entity* this) {
    switch (this->subAction) {
        case 0:
            if ((this->frame & 0x80) != 0) {
                if ((u8)(this->animIndex - 8) < 2) {
                    this->subAction = 1;
                    this->field_0x6a.HWORD = 1;
                    InitializeAnimation(this, 10);
                } else {
                    this->subAction = 2;
                    this->field_0x6a.HWORD = 0;
                    InitializeAnimation(this, GetAnimationState(this));
                }
                break;
                case 1:
                    if ((this->frame & 0x80) != 0) {
                        this->subAction = 2;
                        InitializeAnimation(this, GetAnimationState(this));
                    }
                    break;
                default:
                    this->actionDelay = 0xb4;
                    break;
            }
    }
}

void sub_0806A550(Entity* this) {
    if (this->subAction == 0) {
        this->subAction = 1;
        InitializeAnimation(this, 0xc);
    } else {
        if (this->frame == 1) {
            this->frame = 0;
            sub_08080964(8, 2);
            gActiveScriptInfo.unk_00 |= 0x100;
            SoundReq(SFX_11B);
        }
        if ((this->frame & 0x80) != 0) {
            this->action = 5;
            this->subAction = 0;
            InitializeAnimation(this, 0xd);
            sub_0806A914(this);
        }
    }
}

void nullsub_503(void) {
}

void sub_0806A5C0(Entity* this) {
    GetNextFrame(this);
    if ((this->frame & 0x80) != 0) {
        InitializeAnimation(this, (Random() & 3) + 4);
    }
}

void sub_0806A5E8(Entity* this) {
    if (this->action == 0) {
        this->action = 1;
        InitializeAnimation(this, 0x10);
        this->actionDelay = (Random() & 0x3f) + 0x3c;
    }
    this->actionDelay -= 1;
    if (this->actionDelay == 0) {
        this->actionDelay = (Random() & 0x3f) + 0x78;
        SoundReq(SFX_REM_SLEEP);
    }
    GetNextFrame(this);
}

void sub_0806A630(Entity* this) {
    if (this->action == 0) {
        this->action = 1;
        InitializeAnimation(this, 0x12);
    }
    if ((gActiveScriptInfo.unk_00 & 0x100) != 0) {
        GetNextFrame(this);
    }
    if (this->frame == 1) {
        this->frame = 0;
        SoundReq(SFX_SECRET);
    }
}

ASM_FUNC("asm/non_matching/rem/sub_0806A674.inc", void sub_0806A674(Entity* this))

void sub_0806A830(Entity* this) {
    Entity* npc;

    if (this->action == 0) {
        this->action = 1;
        InitializeAnimation(this, 0x14);
        SetDefaultPriority(this, 2);
    }
    if ((gActiveScriptInfo.unk_00 & 0x200) != 0) {
        DeleteThisEntity();
    }
    GetNextFrame(this);
    if (this->frame == 1) {
        this->frame = 0;
        npc = CreateNPC(0x37, 5, 0);
        if (npc != NULL) {
            PositionEntityOnTop(this, npc);
        }
    }
}

void sub_0806A890(Entity* this) {
    if (this->action == 0) {
        this->action = 1;
        InitializeAnimation(this, 0x15);
        SetDefaultPriority(this, 2);
    }
    GetNextFrame(this);
    if ((this->frame & 0x80) != 0) {
        DeleteThisEntity();
    }
}

void sub_0806A8C8(Entity* this) {
    Entity* entity;
    if ((CheckLocalFlag(SHOP02_KUTSU_00) == 0) && (entity = CreateNPC(0x37, 2, 0), entity != NULL)) {
        CopyPosition(this, entity);
        entity->parent = this;
    }
    entity = CreateNPC(0x37, 3, 0);
    if (entity != NULL) {
        CopyPosition(this, entity);
        entity->y.HALF.HI += 2;
        entity->parent = this;
    }
}

void sub_0806A914(Entity* this) {
    Entity* npc = CreateNPC(0x37, 1, 0);
    if (npc != NULL) {
        CopyPosition(this, npc);
        ResolveEntityOnTop(this, npc);
    }
}

void sub_0806A93C(Entity* this) {
    sub_08078778(this);
    sub_08078850(this, 0, 0, &gUnk_0811229C);
}

void sub_0806A958(Entity* this) {
    if (this->action != 5) {
        gActiveScriptInfo.commandSize = 0;
    }
}

void sub_0806A96C(Entity* this, ScriptExecutionContext* context) {
    context->condition = 0;
    if (this->interactType != 0) {
        if (this->action != 3) {
            this->action = 3;
            this->subAction = 0;
        } else {
            if (this->subAction > 1) {
                this->interactType = 0;
                context->condition = 1;
                gActiveScriptInfo.flags |= 1;
            }
        }
    }
}

void sub_0806A9B0(Entity* this, ScriptExecutionContext* context) {
    this->action = 2;
    this->subAction = 0;
    this->actionDelay = gUnk_081122A0[Random() & 7];
    this->field_0x80.HWORD = 9;
    InitializeAnimation(this, 9);
    SetLocalFlag(NPC37_REM_SLEEP);
}

void sub_0806A9E8(Entity* this) {
    Entity* npc = CreateNPC(0x37, 4, 0);
    if (npc != NULL) {
        CopyPosition(this, npc);
        ResolveEntityBelow(this, npc);
    }
}

void sub_0806AA10(Entity* this) {
    sub_0806A914(this);
}

void sub_0806AA18(Entity* this) {
    u32 index;
    if (this->field_0x6a.HWORD != 0) {
        index = 0x4408;
    } else if ((gScreenTransition.frameCount & 1U) == 0) {
        index = 0x4407;
    } else {
        index = 0x440d;
    }
    MessageNoOverlap(index, this);
}

ASM_FUNC("asm/non_matching/rem/sub_0806AA50.inc", void sub_0806AA50(Entity* this, ScriptExecutionContext* context))

void sub_0806AB74(Entity* this) {
    gRoomVars.field_0x3 = 1;
    if ((s32)(this->y.HALF.HI - (u32)gRoomControls.roomOriginY) < 0xa8) {
        this->y.HALF.HI = gRoomControls.roomOriginY + 0xa8;
    }
}

void sub_0806AB9C(Entity* this, ScriptExecutionContext* context) {
    Entity* entity = FindEntity(7, 0x37, 7, 1, 0);
    if (entity != NULL) {
        DeleteEntity(entity);
    }
    sub_0807F950(this, context);
}
