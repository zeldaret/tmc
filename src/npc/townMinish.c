#include "global.h"
#include "entity.h"
#include "npc.h"
#include "functions.h"
#include "textbox.h"
#include "flags.h"
#include "save.h"
#include "script.h"

extern u32 sub_080002C0();
extern void sub_0806ACC4(Entity*);
extern void sub_0806AEA8();
extern void sub_0806AEE4(Entity*);
extern void sub_0806AFE8(Entity*, ScriptExecutionContext*);
extern s32 sub_0806EDD8(Entity*, u32, u32);
extern void sub_08078850(Entity*, u32, u32, u32*);

extern u8 gUnk_081125F4[12];
extern SpriteLoadData gUnk_08112674[];
extern u32 gUnk_081126D4[4];
extern u8 gUnk_081126E4[4];
extern void (*gUnk_081126E8[])();
extern Dialog gUnk_081126F0[0x10];
extern void (*gUnk_08112BF0[])(Entity*, ScriptExecutionContext*);
extern u16 gUnk_08112C40[5];
extern u16 gUnk_08112C4A[3];
extern u16 gUnk_08112C50[6];
extern u16 gUnk_08112C5C[2];
extern u16 gUnk_08112C60[4];

void TownMinish(Entity* this) {
    if ((this->flags & 2) == 0) {
        gUnk_081126E8[this->action](this);
        sub_0806ED78(this);
    } else {
        sub_0806ACC4(this);
    }
}

void sub_0806ABFC(Entity* this) {
    SpriteLoadData* SpriteLoadData = &gUnk_08112674[this->type * 4];
    if (!LoadExtraSpriteData(this, SpriteLoadData)) {
        return;
    }

    InitializeAnimation(this, 2);
    this->action = 1;
    this->field_0x6a.HALF.LO = this->actionDelay;

    this->animationState = this->field_0x6a.HALF.LO << 1;
    this->field_0x68.HALF.HI = this->animationState * 4;

    this->actionDelay = 0;
}

void sub_0806AC3C(Entity* this) {
    if (this->animIndex <= 3) {
        s32 unk;
        Entity* link = &gPlayerEntity;
        if (sub_080041A0(this, link, 0x18, 0x18)) {
            unk = GetFacingDirection(this, link) & 0x1e;
        } else {
            unk = this->animationState * 4;
        }

        if (unk != this->field_0x68.HALF.HI) {
            s32 temp;

            if (((unk - this->field_0x68.HALF.HI) & 0x1f) <= 0xf) {
                this->field_0x68.HALF.HI--;
            } else {
                this->field_0x68.HALF.HI++;
            }

            this->field_0x68.HALF.HI &= 0x1f;
        }

        if (!(this->field_0x68.HALF.HI & 7)) {
            this->animationState = sub_0806F5B0(this->field_0x68.HALF.HI);
            InitializeAnimation(this, (this->animationState / 2) ^ 2);
        }
    }

    UpdateAnimationSingleFrame(this);
}

void sub_0806ACC4(Entity* this) {
    u8 delay;
    switch (this->action) {
        case 0:
            if (LoadExtraSpriteData(this, &gUnk_08112674[this->type * 4]) == 0)
                return;

            this->action = 1;
            delay = this->actionDelay;
            this->field_0x6a.HALF.LO = delay;
            this->animationState = delay * 2;
            this->actionDelay = 0;

            this->field_0x68.HALF.LO = sub_0801E99C(this);
            sub_0807DD50(this);
            InitializeAnimation(this, (this->animationState / 2) + 8);
            break;
        case 1:
            if (this->interactType == 2) {
                this->action = 3;
                this->interactType = 0;
                sub_0806F118(this);
            } else {
                ExecuteScriptForEntity(this, NULL);
                sub_0806AEA8(this);
                if (this->type2 == 10 && this->interactType) {
                    this->action = 2;
                    this->interactType = 0;
                    InitializeAnimation(this, sub_0806F5A4(GetFacingDirection(this, &gPlayerEntity)) + 8);
                    sub_0806AFE8(this, *(ScriptExecutionContext**)&this->cutsceneBeh);
                }
                if (this->type == 1) {
                    u8 idx = gPlayerEntity.animationState >> 1;
                    sub_08078850(this, 1, gUnk_081126E4[idx], &gUnk_081126D4[idx]);
                }
            }
            break;
        case 2:
            if (gTextBox.doTextBox & 0x7f)
                break;

            this->action = 1;
            InitializeAnimation(this, this->animationState / 2 + 4);
            break;
        case 3:
            if (UpdateFuseInteraction(this))
                this->action = 1;
            break;
    }

    if (this->frameDuration != 0xff) {
        GetNextFrame(this);
    }
}

void sub_0806ADFC(Entity* this) {
    sub_08078784(this, this->field_0x68.HALF.LO);
}

void TownMinish_Head(Entity* this) {
    u32 frames;

    if ((this->flags & 2) == 0) {
        frames = this->field_0x68.HALF.HI / 2;
        if ((this->frameSpriteSettings & 1)) {
            SetExtraSpriteFrame(this, 0, frames + 0x1c);
        } else {
            SetExtraSpriteFrame(this, 0, 0xff);
        }
        SetExtraSpriteFrame(this, 1, this->frameIndex);
        SetSpriteSubEntryOffsetData1(this, 1, 0);
        sub_0807000C(this);
    } else {
        frames = this->frames.all;
        if (frames != 0xff) {
            frames &= ~0x80;
        }
        if ((this->frameSpriteSettings & 1) == 0) {
            frames = 0xff;
        }
        SetExtraSpriteFrame(this, 0, frames);
        SetExtraSpriteFrame(this, 1, this->frameIndex);
        SetSpriteSubEntryOffsetData1(this, 1, 0);
        sub_0807000C(this);
    }
}

void sub_0806AEA8(Entity* this) {
    int old = this->field_0x82.HWORD;
    this->field_0x82.HWORD &= ~0x20;
    if (old & 0x20) {
        sub_08003FC4(this, 0x4000);
    }
    HandleEntity0x82Actions(this);
    this->field_0x82.HWORD = old;
}

void sub_0806AED8(Entity* this) {
    this->actionDelay = 0;
    sub_0806AEE4(this);
}

void sub_0806AEE4(Entity* this) {
    int index;
    u8* idx3;
    u8 tmp1, tmp2;

    if (this->actionDelay) {
        this->actionDelay--;
    } else {
        this->actionDelay = 2;
        index = sub_0806EDD8(this, 0x20, 0x20);
        if (index < 0) {
            int state = this->field_0x6a.HALF.LO;
            this->animationState = state * 2;
            index = state * 8;
        }

        idx3 = gUnk_081125F4 + (this->animationState / 2) * 0x20 + (index >> 1) * 2;
        tmp1 = idx3[0];
        tmp2 = idx3[1];

        if (tmp2 & 0x80) {
            this->animationState = sub_0806F5B0(index);
        }
        tmp2 &= 0x7f;
        this->frames.all = tmp1;
        this->frameIndex = tmp2;
        this->frameSpriteSettings = 1;
        this->animIndex = 0;
        this->frameDuration = 0xff;
    }
}

void sub_0806AF60(Entity* this, ScriptExecutionContext* context) {
    InitializeAnimation(this, context->intVariable + (this->animationState / 2));
}

void sub_0806AF70(Entity* this, ScriptExecutionContext* context) {
    this->field_0x20 = 0x24000;
}

void sub_0806AF78(Entity* this, ScriptExecutionContext* context) {
    sub_08003FC4(this, 0x1800);
    if (0 <= this->height.WORD && this->field_0x20 < 1) {
        this->height.WORD = 0;
        sub_0806AF70(this, context);
    }
}

void sub_0806AFA0(Entity* this) {
    if (sub_0806ED78(this)) {
        sub_0806F62C(this, -this->speed, this->direction);
    }
}

void sub_0806AFBC(Entity* this) {
    int idx = gSave.unk8 - 2;
    if (idx < 0)
        idx = 0;

    ShowNPCDialogue(this, gUnk_081126F0 + this->type2 * 8 + idx);
}

void sub_0806AFE8(Entity* this, ScriptExecutionContext* context) {
    context->condition = 0;
    gUnk_08112BF0[this->type2](this, context);
}

void sub_0806B004(Entity* this, ScriptExecutionContext* context) {
    int idx = 0;

    if (CheckGlobalFlag(0x29)) {
        if (CheckLocalFlag(0x73)) {
            if (GetInventoryValue(0x46) == 0) {
                idx = 3;
                if (CheckLocalFlag(0x78) == 0) {
                    idx = 2;
                    context->condition = 1;
                    SetLocalFlag(0x78);
                }
            } else {
                idx = 4;
            }
        } else {
            idx = 1;
            SetLocalFlag(0x6a);
        }
    }
    TextboxNoOverlap(gUnk_08112C40[idx], this);
}

void sub_0806B064(Entity* this) {
    int idx = 0;

    if (CheckGlobalFlag(0x29)) {
        idx = 1;
        if (CheckLocalFlag(0x73)) {
            idx = 2;
        }
    }
    TextboxNoOverlap(gUnk_08112C4A[idx], this);
}

void sub_0806B098(Entity* this) {
    u32 f;
    int idx = 2;

    if (GetInventoryValue(0x46) == 0) {
        idx = 1;
        if (CheckGlobalFlag(0x29)) {
            f = CheckGlobalFlag(0x2a);
            idx = BOOLCAST(f);
        }
    }
    TextboxNoOverlap(gUnk_08112C50[(this->type2 - 7) * 3 + idx], this);
}

void sub_0806B0E0(Entity* this) {
    int idx = 0;

    if (sub_080002C0(0x38, 0xb8, 1) == 0x57 && sub_080002C0(0x48, 0xb8, 1) == 0x57 &&
        sub_080002C0(0x38, 200, 1) == 0x57 && sub_080002C0(0x48, 200, 1) == 0x57) {
        idx = 1;
    }

    TextboxNoOverlap(gUnk_08112C5C[idx], this);
}

void sub_0806B134(Entity* this) {
    int idx;

    if (GetInventoryValue(0x45)) {
        idx = 2;
        if (CheckLocalFlag(0x7b) == 0) {
            idx = 1;
            SetLocalFlag(0x7b);
        }
    } else {
        idx = 0;
        SetGlobalFlag(0x4a);
    }
    if (5 < gSave.unk8) {
        idx = 3;
    }
    TextboxNoOverlap(gUnk_08112C60[idx], this);
}

void TownMinish_Fusion(Entity* this) {
    if (this->action == 0) {
        if (LoadExtraSpriteData(this, &gUnk_08112674[this->type * 4])) {
            this->action++;
            this->spriteSettings.b.draw = 1;
            InitializeAnimation(this, 6);
        }
    } else {
        GetNextFrame(this);
    }
}
