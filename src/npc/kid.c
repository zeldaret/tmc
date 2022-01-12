#include "functions.h"
#include "message.h"
#include "npc.h"

extern void (*const gUnk_0810BE0C[])(Entity*);
void sub_080621AC(Entity*);

extern SpriteLoadData* gUnk_0810BDC4[];

void sub_080622F4(Entity*);
void sub_0806265C(Entity*, ScriptExecutionContext*);

void sub_0806252C(Entity*);

typedef struct {
    u16 unk_0; /* u16 */
    u16 unk_2; /* u16 */
    u16 unk_4; /* u16 */
    u8 unk_6;
    u8 unk_7;
} KidHeap;

extern u16 gUnk_0810BDE8[][2];

extern Dialog gUnk_0810BE10[];

extern u8 gUnk_0810C0A0[];

void Kid(Entity* this) {
    if ((this->flags & 2) != 0) {
        sub_080621AC(this);
    } else {
        gUnk_0810BE0C[this->action](this);
    }
}

void sub_080620F4(Entity* this) {
    if (LoadExtraSpriteData(this, gUnk_0810BDC4[this->type]) != 0) {
        this->animationState = 4;
        this->field_0x68.HALF.LO = 0;
        this->action = 1;
        InitAnimationForceUpdate(this, 2);
        sub_08078778(this);
    }
}

void sub_08062130(Entity* this) {
    if (this->interactType != 0) {
        this->action = 2;
        InitAnimationForceUpdate(this, GetAnimationState(this));
    }
    if (this->field_0xf++ >= 0x79) {
        this->field_0xf = 0;
        this->actionDelay = (this->actionDelay + 1) & 7;
        if (this->type == 6) {
            this->actionDelay = this->actionDelay + 0x10;
        }
        InitAnimationForceUpdate(this, this->actionDelay);
    } else {
        UpdateAnimationSingleFrame(this);
    }
    sub_0806ED78(this);
}

void sub_08062194(Entity* this) {
    MessageFromTarget(0);
    this->action = 1;
    this->interactType = 0;
}

void sub_080621AC(Entity* this) {
    u32 tmp;

    switch (this->action) {
        case 0:
            if (LoadExtraSpriteData(this, gUnk_0810BDC4[this->type]) != 0) {
                this->action = 1;
                this->animationState = this->actionDelay;
                this->actionDelay = 0;
                this->field_0x68.HALF.LO = 0;
                this->field_0x68.HALF.HI = 0;
                this->field_0x6a.HALF.HI = 0xff;
                tmp = sub_0805ACC0(this);
                if (tmp == 0) {
                    this->field_0x6c.HWORD = this->x.HALF.HI;
                    this->field_0x6e.HWORD = this->y.HALF.HI;
                } else {
                    this->field_0x6c.HWORD = tmp >> 0x10;
                    this->field_0x6e.HWORD = tmp;
                }
                sub_0807DD50(this);
            }
            break;
        case 1:
            if (this->interactType == 2) {
                this->action = 3;
                this->interactType = 0;
                sub_0806F118(this);
            } else {
                if ((s8)this->field_0x68.HALF.LO != 0) {
                    if (this->interactType != 0) {
                        this->action = 2;
                        this->interactType = 0;
                    } else {
                        sub_080622F4(this);
                        return;
                    }
                } else {
                    sub_0807DD94(this, NULL);
                    if (this->interactType != 0) {
                        this->action = 2;
                        this->interactType = 0;
                    } else {
                        return;
                    }
                }
                sub_0806265C(this, *(ScriptExecutionContext**)&this->cutsceneBeh);
                tmp = this->animIndex;
            }
            this->field_0x6a.HALF.HI = this->animIndex;
            if (this->animIndex < 8) {
                InitializeAnimation(this, (this->animIndex & 0xfffffffc) +
                                              sub_0806F5A4(GetFacingDirection(this, &gPlayerEntity)));
            }
            break;
        case 2:
            GetNextFrame(this);
            if ((gMessage.doTextBox & 0x7f) == 0) {
                this->action = 1;
            }
            break;
        case 3:
            if (UpdateFuseInteraction(this) != 0) {
                this->action = 1;
            }
            break;
        default:
            break;
    }
}

ASM_FUNC("asm/non_matching/kid/sub_080622F4.inc", void sub_080622F4(Entity* this))

void sub_08062500(Entity* this) {
    this->myHeap = zMalloc(0xa0);
    if (this->myHeap != NULL) {
        this->field_0x68.HALF.LO = 1;
        sub_080788E0(this);
        this->hitbox = NULL;
        sub_0806252C(this);
    }
}

NONMATCH("asm/non_matching/kid/sub_0806252C.inc", void sub_0806252C(Entity* this)) {
    s16 sVar1;
    s16 sVar2;
    u16 uVar3;
    u8 uVar4;
    s16 r0;
    s16 sVar5;
    s16 sVar6;
    u8 bVar7;
    KidHeap* heapObj;
    s32 loopVar;
    s32 iVar10;
    s32 iVar11;

    uVar4 = gPlayerState.framestate;
    uVar3 = gPlayerEntity.z.HALF.HI;
    sVar2 = gPlayerEntity.y.HALF.HI;
    sVar1 = gPlayerEntity.x.HALF.HI;
    r0 = gPlayerEntity.y.HALF.HI - this->y.HALF.HI;
    sVar5 = FixedDiv(gPlayerEntity.x.HALF.HI - this->x.HALF.HI, 0x14);
    sVar6 = FixedDiv(r0, 0x14);
    heapObj = (KidHeap*)this->myHeap;
    iVar10 = 0;
    iVar11 = 0;
    loopVar = 0x13;
    while (loopVar > -1) {
        heapObj->unk_0 = sVar1 - (s16)((u32)iVar11 >> 8);
        heapObj->unk_2 = sVar2 - (s16)((u32)iVar10 >> 8);
        heapObj->unk_4 = uVar3;
        heapObj->unk_6 = uVar4;
        bVar7 = this->animationState & 0x3f;
        heapObj->unk_7 = (heapObj->unk_7 & 0xc0) | bVar7;
        heapObj->unk_7 = bVar7 | this->collisionLayer << 6;
        heapObj = heapObj + 1;
        iVar10 = iVar10 + sVar6;
        iVar11 = iVar11 + sVar5;
        loopVar = loopVar - 1;
    };
}
END_NONMATCH

void sub_08062634(Entity* this) {
    u32 a = this->type2;
    u32 b = (Random() & 1);
    MessageNoOverlap(gUnk_0810BDE8[a][b], this);
}

void sub_0806265C(Entity* this, ScriptExecutionContext* context) {
    if (gSave.global_progress == 0) {
        MessageNoOverlap(0, this);
    } else {
        Dialog* pDialog = &gUnk_0810BE10[this->type * 9];
        pDialog += gSave.global_progress;
        ShowNPCDialogue(this, pDialog);
    }
}

void sub_08062698(Entity* this) {
    this->speed = (Random() & 0x3f) + 0xc0;
}

void sub_080626AC(Entity* this) {
    this->actionDelay = (Random() & 0x1f) + 0x40;
}

void sub_080626C0(Entity* this, ScriptExecutionContext* context) {
    context->condition = 0;
    if ((this->actionDelay != 0) && (--this->actionDelay == 0)) {
        context->condition = 1;
    }
}

NONMATCH("asm/non_matching/kid/sub_080626E0.inc", void sub_080626E0(Entity* this, ScriptExecutionContext* context)) {
    // TODO second parameter might be anything as this function does not seem to be called?
    s16 sVar1;
    u8 bVar2;
    u8 cVar3;
    s32 uVar4;

    if (context->unk_18 == 0) {
        context->unk_18 += 1;
        context->unk_19 = 10;
        context->postScriptActions |= 2;
        sVar1 = *(s16*)&context->intVariable;
        context->x.HALF.HI = *((u16*)&context->intVariable + 2) + gRoomControls.origin_x;
        context->y.HALF.HI = gRoomControls.origin_y + sVar1;
    }
    bVar2 = context->unk_19 - 1;
    context->unk_19 = bVar2;
    if (bVar2 == 0) {
        context->unk_19 = 10;
        uVar4 = sub_080045DA(context->x.HALF.HI - this->x.HALF.HI, context->y.HALF.HI - this->y.HALF.HI);
        this->direction = (u8)uVar4;
        uVar4 = Random();
        cVar3 = uVar4 % 0xb;
        this->direction = (this->direction + cVar3) - 5;
    }
    sub_0806F62C(this, (s32)this->speed, (u32)this->direction);
    if ((u32)(s32)this->speed <
        (u32)((this->x.HALF.HI - context->x.HALF.HI) * 0x100 + ((s32)((u32)(u16)this->speed << 0x10) >> 0x11))) {
        gActiveScriptInfo.commandSize = 0;
    } else {
        this->x.HALF.HI = context->x.HALF.HI;
    }
}
END_NONMATCH

void sub_08062788(Entity* this, ScriptExecutionContext* context) {
    SetTile(0x4072, 0x60b, 1);
    SetTile(0x4072, 0x60c, 1);
    SetTile(0x4072, 0x60d, 1);
    SetTile(0x4072, 0x64b, 1);
    SetTile(0x4072, 0x64c, 1);
    SetTile(0x4072, 0x64d, 1);
}

void sub_080627E8(Entity* this, ScriptExecutionContext* context) {
    sub_0807BA8C(0x60b, 1);
    sub_0807BA8C(0x60c, 1);
    sub_0807BA8C(0x60d, 1);
    sub_0807BA8C(0x64b, 1);
    sub_0807BA8C(0x64c, 1);
    sub_0807BA8C(0x64d, 1);
}

NONMATCH("asm/non_matching/kid/Kid_Head.inc", void Kid_Head(Entity* this)) {
    s32 iVar1;
    u32 uVar2;
    u32 uVar3;
    u32 uVar4;

    iVar1 = (u32)this->type * 4;
    uVar3 = ((u8)this->frame & 0x1f) + (u32)gUnk_0810C0A0[iVar1];
    uVar4 = (this->frameIndex & 0x1f) + (u32)gUnk_0810C0A0[iVar1 + 1];
    switch (this->type) {
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
            uVar2 = (this->frameSpriteSettings & 0x30) >> 4;
            if (uVar2 != 0) {
                uVar2 = uVar2 + 0x50;
            }
            SetExtraSpriteFrame(this, 0, uVar3);
            SetExtraSpriteFrame(this, 1, uVar4);
            SetExtraSpriteFrame(this, 2, uVar2 - 1);
            SetSpriteSubEntryOffsetData1(this, 1, 0);
            SetSpriteSubEntryOffsetData2(this, 1, 2);
            sub_0807000C(this);
            break;
        case 6:
            uVar2 = this->frameSpriteSettings & 0xf;
            if ((this->frameSpriteSettings & 0xf) != 0) {
                uVar2 = uVar2 + 0x93;
            }
            SetExtraSpriteFrame(this, 0, uVar2 - 1);
            SetExtraSpriteFrame(this, 1, uVar3);
            SetExtraSpriteFrame(this, 2, uVar4);
            SetSpriteSubEntryOffsetData1(this, 2, 1);
            SetSpriteSubEntryOffsetData2(this, 1, 0);
            sub_0807000C(this);
            break;
        case 7:
        case 8:
            SetExtraSpriteFrame(this, 0, uVar3);
            SetExtraSpriteFrame(this, 1, uVar4);
            SetSpriteSubEntryOffsetData1(this, 1, 0);
            sub_0807000C(this);
            break;
        default:
            break;
    }
}
END_NONMATCH

NONMATCH("asm/non_matching/kid/sub_08062948.inc", void sub_08062948(Entity* this, ScriptExecutionContext* context)) {
    u8 bVar1;
    u16 uVar2;
    u32 uVar3;
    s32 iVar4;

    if (context->unk_18 == 0) {
        context->unk_18 += 1;
        context->unk_12 = (Random() & 0x3f) + 0x20;
        uVar3 = Random() & 0x18;
        bVar1 = this->direction;
        if (bVar1 != 8) {
            if (bVar1 >= 9) {
                if (bVar1 == 0x10) {
                    if (uVar3 == 0) {
                        uVar3 = 0x18;
                    }
                } else {
                    if ((bVar1 == 0x18) && (uVar3 == 8)) {
                        uVar3 = 0;
                    }
                }
            } else {
                if ((bVar1 == 0) && (uVar3 == 0x10)) {
                    uVar3 = 8;
                }
            }
        } else {
            if (uVar3 == 0x18) {
                uVar3 = 0x10;
            }
        }
        this->direction = (u8)uVar3;
        uVar3 = sub_0806F5B0(uVar3);
        this->animationState = (u8)uVar3;
        this->speed = 0x80;
    }
    uVar3 = (this->animationState >> 1) + 4;
    if (uVar3 != this->animIndex) {
        InitializeAnimation(this, uVar3);
        this->field_0x80.HALF.LO = (u16)this->animIndex;
    }
    ProcessMovement(this);
    iVar4 = this->x.HALF.HI - this->field_0x6c.HALF.LO;
    if (0x10 < iVar4) {
        this->x.HALF.HI = this->field_0x6c.HALF.LO + 0x10;
        context->unk_12 = 1;
    }
    if (iVar4 < -0x10) {
        this->x.HALF.HI = this->field_0x6c.HALF.LO + -0x10;
        context->unk_12 = 1;
    }
    iVar4 = this->y.HALF.HI - this->field_0x6e.HALF.LO;
    if (0x10 < iVar4) {
        this->y.HALF.HI = this->field_0x6e.HALF.LO + 0x10;
        context->unk_12 = 1;
    }
    if (iVar4 < -0x10) {
        this->y.HALF.HI = this->field_0x6e.HALF.LO + -0x10;
        context->unk_12 = 1;
    }
    uVar2 = context->unk_12 - 1;
    context->unk_12 = uVar2;
    if (uVar2 != 0) {
        gActiveScriptInfo.commandSize = 0;
    }
}
END_NONMATCH

void sub_08062A48(Entity* this, ScriptExecutionContext* context) {
    this->field_0x6a.HALF.LO = sub_0801E99C(this);
    sub_08078784(this, this->field_0x6a.HALF.LO);
}

void Kid_Fusion(Entity* this) {
    u32 tmp;
    if (this->action == 0) {
        if (LoadExtraSpriteData(this, gUnk_0810BDC4[this->type]) != 0) {
            this->action = this->action + 1;
            this->spriteSettings.draw = 1;
            this->y.HALF.HI = this->y.HALF.HI + -8;
            tmp = 6;
            if (this->type == 6) {
                tmp = 0x16;
            }
            InitializeAnimation(this, tmp);
        }
    } else {
        GetNextFrame(this);
    }
}

// TODO does this belong to child or next, unused entity?
extern void (*const gUnk_0810C268[])(Entity*);

void sub_08062AB8(Entity* this) {
    gUnk_0810C268[this->action](this);
}

void sub_08062AD0(Entity* this) {
}

void sub_08062AD4(Entity* this) {
}
