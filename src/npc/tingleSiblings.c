#include "global.h"
#include "entity.h"
#include "npc.h"
#include "functions.h"
#include "item.h"
#include "kinstone.h"

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
    this->subtimer = 1;
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
            if ((CheckKinstoneFused(KINSTONE_59) != 0) && (GetInventoryValue(ITEM_MAGIC_BOOMERANG) == 0)) {
                this->field_0x68.HALF.LO = 0;
            }
            break;
        case 3:
            if ((CheckKinstoneFused(KINSTONE_5A) != 0) && (GetInventoryValue(ITEM_MAGIC_BOOMERANG) == 0)) {
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
        if ((fxEnt != NULL) && (bVar1 == 2)) {
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
                if (bVar2) {
                    uVar5 = 1;
                } else {
                    uVar5 = 0;
                }
            }
        }
        iVar4 = 0xffffffff;
    } else {
        if (CheckGlobalFlag(KAKERA_COMPLETE) == 0) {
            iVar4 = 100 - gSave.unk117;
            if (iVar4 < 1) {
                uVar5 = 8;
                iVar4 = 0;
                SetGlobalFlag(KAKERA_COMPLETE);
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
        gMessage.rupees = (u16)iVar4;
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
        this->action++;
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
    { TEXT_INDEX(TEXT_TINGLE, 0x1), TEXT_INDEX(TEXT_TINGLE, 0x2), TEXT_INDEX(TEXT_TINGLE, 0x3),
      TEXT_INDEX(TEXT_TINGLE, 0x4), TEXT_INDEX(TEXT_TINGLE, 0x1b), TEXT_INDEX(TEXT_TINGLE, 0x1c),
      TEXT_INDEX(TEXT_TINGLE, 0x1d), TEXT_INDEX(TEXT_TINGLE, 0x1e), TEXT_INDEX(TEXT_TINGLE, 0x1f) },
    { TEXT_INDEX(TEXT_TINGLE, 0x5), TEXT_INDEX(TEXT_TINGLE, 0x6), TEXT_INDEX(TEXT_TINGLE, 0x7),
      TEXT_INDEX(TEXT_TINGLE, 0x7), TEXT_INDEX(TEXT_TINGLE, 0x20), TEXT_INDEX(TEXT_TINGLE, 0x21),
      TEXT_INDEX(TEXT_TINGLE, 0x22), TEXT_INDEX(TEXT_TINGLE, 0x23), TEXT_INDEX(TEXT_TINGLE, 0x24) },
    { TEXT_INDEX(TEXT_TINGLE, 0x8), TEXT_INDEX(TEXT_TINGLE, 0x9), TEXT_INDEX(TEXT_TINGLE, 0x9),
      TEXT_INDEX(TEXT_TINGLE, 0x9), TEXT_INDEX(TEXT_TINGLE, 0x25), TEXT_INDEX(TEXT_TINGLE, 0x26),
      TEXT_INDEX(TEXT_TINGLE, 0x27), TEXT_INDEX(TEXT_TINGLE, 0x28), TEXT_INDEX(TEXT_TINGLE, 0x29) },
    { TEXT_INDEX(TEXT_TINGLE, 0xa), TEXT_INDEX(TEXT_TINGLE, 0xb), TEXT_INDEX(TEXT_TINGLE, 0xc),
      TEXT_INDEX(TEXT_TINGLE, 0xd), TEXT_INDEX(TEXT_TINGLE, 0x2a), TEXT_INDEX(TEXT_TINGLE, 0x2b),
      TEXT_INDEX(TEXT_TINGLE, 0x2c), TEXT_INDEX(TEXT_TINGLE, 0x2d), TEXT_INDEX(TEXT_TINGLE, 0x2e) },
};

const u8 gUnk_0810FC50[] = { 0, 0, 0, 0 };
