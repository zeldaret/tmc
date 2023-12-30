/**
 * @file ezloHintManager.c
 * @ingroup Managers
 *
 * @brief Shows Ezlo hints
 */
#include "manager/ezloHintManager.h"
#include "area.h"
#include "asm.h"
#include "entity.h"
#include "flags.h"
#include "functions.h"

static void EzloHintManager_Init(EzloHintManager*);
static void EzloHintManager_Action1(EzloHintManager*);
static void EzloHintManager_Action2(EzloHintManager*);
static void EzloHintManager_Action3(EzloHintManager*);
static void EzloHintManager_Action4(EzloHintManager*);
static u32 PlayerStateValid(EzloHintManager*);
static void sub_080585DC(EzloHintManager*);

void EzloHintManager_Main(EzloHintManager* this) {
    static void (*const EzloHintManager_Actions[])(EzloHintManager*) = {
        EzloHintManager_Init,    EzloHintManager_Action1, EzloHintManager_Action2,
        EzloHintManager_Action3, EzloHintManager_Action4,
    };
    EzloHintManager_Actions[super->action](this);
}

static void EzloHintManager_Init(EzloHintManager* this) {
    if (CheckFlags(this->flag1) != 0) {
        DeleteThisEntity();
    }
    this->rx = this->rx_raw << 3;
    this->ry = this->ry_raw << 3;
    this->x = this->rx + (this->x_raw << 4);
    this->y = this->ry + (this->y_raw << 4);
    SetEntityPriority((Entity*)this, PRIO_PLAYER_EVENT);
    if (this->flag2 == 0) {
        super->action = 2;
    } else {
        super->action = 1;
    }
}

static void EzloHintManager_Action1(EzloHintManager* this) {
    if (CheckFlags(this->flag2)) {
        super->action = 2;
        EzloHintManager_Action2(this);
    }
}

static void EzloHintManager_Action2(EzloHintManager* this) {
    if (gPlayerState.flags & PL_NO_CAP)
        return;
    if (!CheckPlayerInRegion(this->x, this->y, this->rx, this->ry))
        return;
    switch (super->type) {
        case 1:
            return;
        case 2:
            sub_080585DC(this);
            if ((gPlayerState.flags & PL_MINISH) == 0)
                return;
            // fallthrough
        case 0:
        default:
            sub_080585DC(this);
            if (!PlayerStateValid(this))
                return;
            SetPlayerControl(3);
            PausePlayer();
            SetPlayerEventPriority();
            super->action = 3;
            super->subAction = 0;
            super->timer = 30;
            return;
        case 3:
            super->action = 4;
            super->subAction = 0;
            SetNextAreaHint(this->msg_idx);
            return;
    }
}

static u32 PlayerStateValid(EzloHintManager* this) {
    switch (gPlayerState.framestate) {
        case PL_STATE_THROW:
        case PL_STATE_SWIM:
        case PL_STATE_PARACHUTE:
        case PL_STATE_FALL:
        case PL_STATE_JUMP:
        case PL_STATE_C:
        case PL_STATE_D:
        case PL_STATE_USEPORTAL:
        case PL_STATE_F:
        case PL_STATE_TRAPPED:
        case PL_STATE_11:
        case PL_STATE_DIE:
        case PL_STATE_TALKEZLO:
        case PL_STATE_CAPE:
        case PL_STATE_ITEMGET:
        case PL_STATE_DROWN:
        case PL_STATE_HOLE:
        case PL_STATE_CLIMB:
        case PL_STATE_SINKING:
        case PL_STATE_STAIRS:
            return 0;
        case PL_STATE_6:
        case PL_STATE_ROLL:
        case PL_STATE_PUSH:
        case PL_STATE_PULL:
        default:
            return 1;
    }
}

static void EzloHintManager_Action3(EzloHintManager* this) {
    switch (super->subAction) {
        case 1:
            if (gPlayerState.flags &
                (PL_BUSY | PL_DROWNING | PL_USE_PORTAL | PL_FALLING | PL_IN_MINECART | PL_CAPTURED))
                return;
            if (gPlayerEntity.base.z.HALF.HI != 0)
                return;
            gPlayerState.jump_status = 0;
            CreateEzloHint(this->msg_idx, this->msg_height);
            super->subAction++;
            super->timer = 30;
            return;
        case 0:
        case 2:
            if (--super->timer == 0) {
                super->subAction++;
            }
            return;
        case 3:
            /* wait for player to finish talking */
            if (gPlayerEntity.base.action == PLAYER_NORMAL || gPlayerEntity.base.action == PLAYER_MINISH) {
                gPlayerState.controlMode = CONTROL_1;
                ResetPlayerEventPriority();
                SetFlag(this->flag1);
                DeleteThisEntity();
            }
            return;
        default:
            return;
    }
}

static void EzloHintManager_Action4(EzloHintManager* this) {
    if (gArea.unk28.textBaseIndex != 0xFF) {
        DeleteThisEntity();
    }
    if (CheckFlags(this->flag1)) {
        sub_0801855C();
        DeleteThisEntity();
    }
}

static void sub_080585DC(EzloHintManager* this) {
    if (CheckFlags(this->flag1)) {
        DeleteThisEntity();
    }
}
