/**
 * @file fightManager.c
 * @ingroup Managers
 *
 * @brief Manages fights with multiple enemies
 *
 * It possibly waits for an inhibitor flag to be set, then spawns a bunch of entities (based on room data).
 * Once all enemies created this way are dead, it sets a flag.
 * (There is also a part about changing the music and setting it back when the fight is done, which is song 0x33 (a
 * fight theme) by default but can be overridden through room data)
 */
#include "manager/fightManager.h"
#include "area.h"
#include "common.h"
#include "flags.h"
#include "message.h"
#include "room.h"
#include "sound.h"
#include "enemy.h"

enum FightManager_State { Init, WaitForFlag, WaitForDone };

void FightManager_LoadFight(FightManager*);
FightManagerHelper* FightManager_CreateHelper(FightManager*);
void FightManagerHelper_Monitor(FightManagerHelper*, Entity*, u32);
void FightManager_Init(FightManager*);
void FightManager_WaitForFlag(FightManager*);
void FightManager_WaitForDone(FightManager*);
void FightManager_Main2(FightManager*);
void FightManagerHelper_Main(FightManagerHelper*);

void FightManager_Main(Manager* this) {
    static void (*const FightManager_ActionFuncs[])(Manager*) = {
        (void (*)(Manager*))FightManager_Main2,
        (void (*)(Manager*))FightManagerHelper_Main,
    };
    // make a distincion if this is a controller (volumeMasterTarget = 0) or a helper (volumeMasterTarget = 1)
    FightManager_ActionFuncs[this->type](this);
}

void FightManager_Main2(FightManager* this) {
    // make a distinction based on the state of this controller
    static void (*const FightManager_Actions[])(FightManager*) = {
        FightManager_Init,
        FightManager_WaitForFlag,
        FightManager_WaitForDone,
    };
    FightManager_Actions[super->action](this);
}

void FightManager_Init(FightManager* this) {
    // check if the fight was already completed previously (checks the flag that gets set after the fight is done)
    if (!CheckFlags(this->fightCompletedFlag)) {
        super->action = WaitForFlag;
        // if there is no flag that needs to be set before the fight is started, start it immediately
        if (!this->fightStartFlag) {
            FightManager_LoadFight(this);
        }
        SetEntityPriority((Entity*)this, PRIO_NO_BLOCK);
    } else {
        DeleteThisEntity();
    }
}

void FightManager_WaitForFlag(FightManager* this) {
    if (CheckFlags(this->fightStartFlag)) {
        FightManager_LoadFight(this);
        if (!this->unk_35) {
            u32 bgm = gRoomVars.fight_bgm ? gRoomVars.fight_bgm : BGM_FIGHT_THEME2;
            this->prevBgm = gArea.bgm;
            gArea.bgm = bgm;
            SoundReq(bgm);
        }
        SetNextAreaHint(TEXT_INDEX(TEXT_EZLO, 0xf));
    }
}

void FightManager_WaitForDone(FightManager* this) {
    // check if all helpers are done
    if (super->timer) {
        return;
    }
    // set the completion flag for the fight
    SetFlag(this->fightCompletedFlag);
    // restore music (if it was set, which apparently is only possible if there's a flag the fight waited for)
    if (this->fightStartFlag) {
        if (!this->unk_35) {
            gArea.bgm = this->prevBgm;
            SoundReq(gArea.bgm);
            sub_0801855C();
        }
    }
    DeleteThisEntity();
}

void FightManager_LoadFight(FightManager* this) {
    FightManagerHelper* monitor;
    EntityData* prop;
    Entity* ent;
    u32 counter;

    super->action = 2;
    super->timer = 0;
    counter = 0;
    // Create a helper to keep track of the created entities.
    monitor = FightManager_CreateHelper(this);
    if (monitor == NULL) {
        DeleteThisEntity();
    }

    prop = (EntityData*)GetCurrentRoomProperty(super->type2);
    if (prop != NULL) {
        while (prop->kind != 0xFF) {
            ent = LoadRoomEntity(prop++);
            if ((ent != NULL) && (ent->kind == ENEMY)) {
                ((Enemy*)ent)->enemyFlags |= EM_FLAG_MONITORED;
                FightManagerHelper_Monitor(monitor, ent, counter++);
            }
            if (counter >= 7) {
                counter = 0;
                monitor = FightManager_CreateHelper(this);
                if (monitor == NULL)
                    return;
            }
        }
    }
}

/**
 * Create a helper and increment the counter for the number of helpers (unk_0e).
 * The helper will decrease said counter when it deletes itself (when none of the enemies it monitors remain).
 */
FightManagerHelper* FightManager_CreateHelper(FightManager* this) {
    FightManagerHelper* extra;
    extra = (FightManagerHelper*)GetEmptyManager();
    if (extra) {
        extra->base.kind = MANAGER;
        extra->base.id = FIGHT_MANAGER;
        extra->base.type = 1;
        extra->base.parent = (Entity*)this;
        super->timer++;
        MemClear(&extra->enemies, sizeof(extra->enemies));
        AppendEntityToList((Entity*)extra, 8);
    }
    return extra;
}

void FightManagerHelper_Monitor(FightManagerHelper* this, Entity* ent, u32 index) {
    this->enemies[index] = ent;
    super->timer++;
}

// case volumeMasterTarget is 1: The manager is a helper
void FightManagerHelper_Main(FightManagerHelper* this) {
    u8 i;
    bool32 anyRemaining;
    Entity* current;

    if (super->action == 0) {
        super->action = 1;
        SetEntityPriority((Entity*)this, PRIO_NO_BLOCK);
    }
    // go through and check all monitored enemies.
    anyRemaining = FALSE;
    for (i = 0; i < 8; i++) {
        current = this->enemies[i];
        if (current != NULL) {
            if (current->next == NULL) {
                this->enemies[i] = 0;
            } else {
                anyRemaining = TRUE;
            }
        }
    }
    if (!anyRemaining) {
        // inform the parent that we're done
        FightManager* parent = (FightManager*)super->parent;
        if (parent->base.timer != 0) {
            parent->base.timer--;
        }
        DeleteThisEntity();
    }
}

/**
 * Replace an entity that is currently being monitored with a new one
 */
void ReplaceMonitoredEntity(Entity* old, Entity* new) {
    FightManagerHelper* current;
    Manager* end = (Manager*)&gEntityLists[8];
    u32 i;
    for (current = (FightManagerHelper*)end->next; (Manager*)current != end;
         current = (FightManagerHelper*)current->base.next) {
        if (current->base.kind != MANAGER || current->base.id != FIGHT_MANAGER) {
            continue;
        }
        for (i = 0; i < 8; i++) {
            if (old == current->enemies[i]) {
                current->enemies[i] = new;
                return;
            }
        }
    }
}
