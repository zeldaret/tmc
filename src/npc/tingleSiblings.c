#include "global.h"
#include "entity.h"
#include "npc.h"
#include "functions.h"
#include "item.h"

extern void sub_08064DE4(Entity*);
extern void sub_08064D78(Entity*);
extern void sub_08064EE8(Entity*);

void (*const TingleSiblings_Actions[])(Entity*);
const u8 gUnk_0810FC50[];
const u16 TingleSiblings_MessageIndices[][9];

void TingleSiblings(Entity* this) {
    if ((this->flags & ENT_SCRIPTED) != 0) {
        sub_08064DE4(this);
    } else {
        sub_08064D78(this);
    }
}

void sub_08064D78(Entity* this) {
    TingleSiblings_Actions[this->action](this);
}

void sub_08064D90(Entity* this) {
    InitAnimationForceUpdate(this, 2);
    this->field_0xf = 1;
}

void sub_08064DA0(Entity* this) {
    sub_08064EE8(this);
    if (this->interactType != 0) {
        this->action = 2;
        InitAnimationForceUpdate(this, 6);
        MessageFromTarget(0);
    }
}

void sub_08064DCC(Entity* this) {
    sub_08064EE8(this);
    InitAnimationForceUpdate(this, 2);
    this->action = 1;
}

void sub_08064DE4(Entity* this) {
    u32 bVar1;

    switch (this->action) {
        case 0:
            this->action = 1;
            this->spriteSettings.draw = 1;
            this->animationState = 4;
            sub_0807DD50(this);
            break;
        case 1:
            if (this->interactType == 2) {
                this->action = 2;
                this->interactType = 0;
                InitAnimationForceUpdate(this, sub_0806F5A4(GetFacingDirection(this, &gPlayerEntity)));
                sub_0806F118(this);
            } else {
                sub_0807DD94(this, 0);
            }
            break;
        case 2:
            if (UpdateFuseInteraction(this)) {
                this->action = 1;
                sub_0801E99C(this);
            }
            break;
    }

    bVar1 = this->frame & 0xf;
    this->frame ^= bVar1;
    if (bVar1) {
        Entity* fx = CreateFx(this, bVar1 == 3 ? FX_CONFETTI_LARGE : FX_CONFETTI, 0);
        if (fx && bVar1 == 2) {
            fx->spriteSettings.flipX = 1;
        }
    }
}

void sub_08064EA4(Entity* this) {
    this->field_0x68.HALF.LO = sub_0801E99C(this);
    switch (this->type) {
        case 0:
            if ((CheckKinstoneFused(0x59) != 0) && (GetInventoryValue(ITEM_MAGIC_BOOMERANG) == 0)) {
                this->field_0x68.HALF.LO = 0;
            }
            break;
        case 3:
            if ((CheckKinstoneFused(0x5a) != 0) && (GetInventoryValue(ITEM_MAGIC_BOOMERANG) == 0)) {
                this->field_0x68.HALF.LO = 0;
            }
            break;
        default:
            break;
    }
    sub_08078784(this, this->field_0x68.HALF.LO);
}

void sub_08064EE8(Entity* this) {
    u32 bVar1;
    Entity* fxEnt;
    u32 confettiFx;

    UpdateAnimationSingleFrame(this);
    bVar1 = this->frame & 0xf;
    this->frame ^= bVar1;
    if (bVar1) {
        if (bVar1 != 3) {
            confettiFx = FX_CONFETTI;
        } else {
            confettiFx = FX_CONFETTI_LARGE;
        }

        fxEnt = CreateFx(this, confettiFx, 0);
        if (fxEnt && bVar1 == 2) {
            fxEnt->spriteSettings.flipX = 1;
        }
    }
}

void sub_08064F28(Entity* this, ScriptExecutionContext* context) {
    u32 roomFlag;
    u32 bVar2;
    int iVar3;
    int iVar4;
    u32 uVar5;

    context->condition = 0;
    roomFlag = gUnk_0810FC50[this->type];
    if (CheckRoomFlag(roomFlag) == 0) {
        bVar2 = gSave.unk141[sub_08002632(this)];
        if (bVar2 >= 2) {
            uVar5 = 3;
        } else {
            iVar3 = GetInventoryValue(ITEM_MAGIC_BOOMERANG);
            uVar5 = 2;
            if (iVar3 == 0) {
                uVar5 = (-bVar2 | bVar2) >> 0x1f;
            }
        }
        iVar4 = 0xffffffff;
    } else {
        if (CheckGlobalFlag(0x3a) == 0) {
            iVar4 = 100 - gSave.unk117;
            if (iVar4 < 1) {
                uVar5 = 8;
                iVar4 = 0;
                SetGlobalFlag(0x3a);
                context->condition = 1;
            } else {
                uVar5 = 7;
                if (9 < iVar4) {
                    uVar5 = 6;
                }
                if (0x27 < iVar4) {
                    uVar5 = 5;
                }
                if (0x45 < iVar4) {
                    uVar5 = 4;
                }
            }
        } else {
            uVar5 = 8;
            iVar4 = 0;
        }
    }
    MessageNoOverlap(TingleSiblings_MessageIndices[this->type][uVar5], this);
    if (iVar4 > 0) {
        gMessage.field_0x10 = (u16)iVar4;
    }

    if (CheckRoomFlag(roomFlag) == 0) {
        SetRoomFlag(roomFlag);
    } else {
        ClearRoomFlag(roomFlag);
    }
}

void TingleSiblings_Fusion(Entity* this) {
    u32 tmp;
    if (this->action == 0) {
        this->action += 1;
        this->spriteSettings.draw = 1;
        tmp = 6;
        if (this->type == 0) {
            tmp = 10;
        }
        InitAnimationForceUpdate(this, tmp);
    } else {
        sub_08064EE8(this);
    }
}

void (*const TingleSiblings_Actions[])(Entity*) = {
    sub_08064D90,
    sub_08064DA0,
    sub_08064DCC,
};

const u16 TingleSiblings_MessageIndices[][9] = {
    { 0x3f01, 0x3f02, 0x3f03, 0x3f04, 0x3f1b, 0x3f1c, 0x3f1d, 0x3f1e, 0x3f1f },
    { 0x3f05, 0x3f06, 0x3f07, 0x3f07, 0x3f20, 0x3f21, 0x3f22, 0x3f23, 0x3f24 },
    { 0x3f08, 0x3f09, 0x3f09, 0x3f09, 0x3f25, 0x3f26, 0x3f27, 0x3f28, 0x3f29 },
    { 0x3f0a, 0x3f0b, 0x3f0c, 0x3f0d, 0x3f2a, 0x3f2b, 0x3f2c, 0x3f2d, 0x3f2e },
};

const u8 gUnk_0810FC50[] = { 0, 0, 0, 0 };
