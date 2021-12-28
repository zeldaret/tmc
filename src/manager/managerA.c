#include "global.h"
#include "asm.h"
#include "entity.h"
#include "player.h"
#include "manager.h"
#include "flags.h"
#include "area.h"
#include "functions.h"

static void sub_08058398(ManagerA*);
static void sub_080583EC(ManagerA*);
static void sub_08058408(ManagerA*);
static void sub_08058514(ManagerA*);
static void sub_080585B0(ManagerA*);

static u32 PlayerStateValid(ManagerA*);
static void sub_080585DC(ManagerA*);

/**
 * Ezlo hint manager
 */
void ManagerA_Main(ManagerA* this) {
    static void (*const sActions[])(ManagerA*) = { sub_08058398, sub_080583EC, sub_08058408, sub_08058514,
                                                   sub_080585B0 };

    sActions[this->manager.action](this);
}

static void sub_08058398(ManagerA* this) {
    if (CheckFlags(this->flag1) != 0) {
        DeleteThisEntity();
    }
    this->rx = this->rx_raw << 3;
    this->ry = this->ry_raw << 3;
    this->x = this->rx + (this->x_raw << 4);
    this->y = this->ry + (this->y_raw << 4);
    SetDefaultPriority((Entity*)&this->manager, PRIO_PLAYER_EVENT);
    if (this->flag2 == 0) {
        this->manager.action = 2;
    } else {
        this->manager.action = 1;
    }
}

static void sub_080583EC(ManagerA* this) {
    if (CheckFlags(this->flag2)) {
        this->manager.action = 2;
        sub_08058408(this);
    }
}

static void sub_08058408(ManagerA* this) {
    if (gPlayerState.flags & PL_NO_CAP)
        return;
    if (!CheckPlayerInRegion(this->x, this->y, this->rx, this->ry))
        return;
    switch (this->manager.unk_0a) {
        case 1:
            return;
        case 2:
            sub_080585DC(this);
            if ((gPlayerState.flags & PL_MINISH) == 0)
                return;
        case 0:
        default:
            sub_080585DC(this);
            if (!PlayerStateValid(this))
                return;
            SetPlayerControl(3);
            sub_08078B48();
            SetPlayerEventPriority();
            this->manager.action = 3;
            this->manager.unk_0d = 0;
            this->manager.unk_0e = 30;
            return;
        case 3:
            this->manager.action = 4;
            this->manager.unk_0d = 0;
            sub_080186C0(this->msg_idx);
            return;
    }
}

static u32 PlayerStateValid(ManagerA* this) {
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
        case PL_STATE_1B:
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

static void sub_08058514(ManagerA* this) {
    switch (this->manager.unk_0d) {
        case 1:
            if (gPlayerState.flags & (PL_BUSY | PL_DROWNING | PL_USE_PORTAL | PL_FALLING | 0x1010))
                return;
            if (gPlayerEntity.z.HALF.HI != 0)
                return;
            gPlayerState.jumpStatus = 0;
            CreateEzloHint(this->msg_idx, this->msg_height);
            this->manager.unk_0d++;
            this->manager.unk_0e = 30;
            return;
        case 0:
        case 2:
            if (--this->manager.unk_0e == 0) {
                this->manager.unk_0d++;
            }
            return;
        case 3:
            /* wait for player to finish talking */
            if (gPlayerEntity.action == PLAYER_NORMAL || gPlayerEntity.action == PLAYER_MINISH) {
                gPlayerState.controlMode = 1;
                ResetPlayerEventPriority();
                SetFlag(this->flag1);
                DeleteThisEntity();
            }
            return;
        default:
            return;
    }
}

static void sub_080585B0(ManagerA* this) {
    if (gArea.inventoryGfxIdx != 0xFF) {
        DeleteThisEntity();
    }
    if (CheckFlags(this->flag1)) {
        sub_0801855C();
        DeleteThisEntity();
    }
}
static void sub_080585DC(ManagerA* this) {
    if (CheckFlags(this->flag1)) {
        DeleteThisEntity();
    }
}
