#include "global.h"
#include "manager.h"
#include "flags.h"
#include "entity.h"
#include "room.h"
#include "area.h"
#include "functions.h"

/*
 * Manager B is used to create fights:
 * It possibly waits for an inhibitor flag to be set, then spawns a bunch of entities (based on room data).
 * Once all enemies created this way are dead, it sets a flag.
 * (There is also a part about changing the music and setting it back when the fight is done, which is song 0x33 (a
 * fight theme) by default but can be overridden through room data)
 */

void (*const ManagerB_ActionFuncs[])(Manager*);

void sub_080585F0(Manager* this) {
    // make a distincion if this is a controller (unk_0a = 0) or a helper (unk_0a = 1)
    ManagerB_ActionFuncs[this->unk_0a](this);
}

enum ManagerB_State { Init, WaitForFlag, WaitForDone };

void (*const ManagerB_StateFuncs[])(ManagerB*);

void ManagerB_Main(ManagerB* this) {
    // make a distinction based on the state of this controller
    ManagerB_StateFuncs[this->manager.action](this);
}

void ManagerB_LoadFight(Manager*);

void ManagerB_Init(ManagerB* this) {
    // check if the fight was already completed previously (checks the flag that gets set after the fight is done)
    if (!CheckFlags(this->unk_3e)) {
        this->manager.action = WaitForFlag;
        // if there is no flag that needs to be set before the fight is started, start it immediately
        if (!this->unk_3c) {
            ManagerB_LoadFight(&this->manager);
        }
        sub_0805E3A0(this, 3);
    } else {
        DeleteThisEntity();
    }
}
extern void sub_080186C0(u32);

void ManagerB_WaitForFlag(ManagerB* this) {
    int tmp;
    if (CheckFlags(this->unk_3c)) {
        ManagerB_LoadFight(&this->manager);
        if (!this->unk_35) {
            tmp = gRoomVars.field_0x9 ? gRoomVars.field_0x9 : 0x33;
            this->unk_20 = gArea.musicIndex;
            gArea.musicIndex = tmp;
            PlaySFX(tmp);
        }
        sub_080186C0(0xB0F);
    }
}

extern void sub_0801855C(void);

void ManagerB_WaitForDone(ManagerB* this) {
    // check if all helpers are done
    if (this->manager.unk_0e)
        return;
    // set the completion flag for the fight
    SetFlag(this->unk_3e);
    // restore music (if it was set, which apparently is only possible if there's a flag the fight waited for)
    if (this->unk_3c) {
        if (!this->unk_35) {
            gArea.musicIndex = this->unk_20;
            PlaySFX(gArea.musicIndex);
            sub_0801855C();
        }
    }
    DeleteThisEntity();
}

ManagerBHelper* CreateHelper(Manager*);
void ManagerBHelper_Monitor(ManagerBHelper*, Entity*, u32);

extern EntityData* GetCurrentRoomProperty(u8);
extern Entity* LoadRoomEntity(EntityData*);

void ManagerB_LoadFight(Manager* this) {
    ManagerBHelper* monitor;
    EntityData* prop;
    Entity* ent;
    u32 counter;
    this->action = 2;
    this->unk_0e = 0;
    counter = 0;
    // Create a helper to keep track of the created entities.
    monitor = CreateHelper(this);
    if (!monitor)
        DeleteThisEntity();
    prop = (EntityData*)GetCurrentRoomProperty(this->unk_0b);
    if (prop) {
        while (*((u8*)prop) != 0xFF) {
            ent = LoadRoomEntity(prop++);
            if (ent && (ent->entityType.type == 3)) {
                ent->field_0x6c.HALF.HI |= 0x40;
                ManagerBHelper_Monitor(monitor, ent, counter++);
            }
            if (counter >= 7) {
                counter = 0;
                monitor = CreateHelper(this);
                if (!monitor)
                    return;
            }
        }
    }
}

/*
 * Create a helper and increment the counter for the number of helpers (unk_0e).
 * The helper will decrease said counter when it deletes itself (when none of the enemies it monitors remain).
 */
ManagerBHelper* CreateHelper(Manager* this) {
    ManagerBHelper* extra;
    extra = (ManagerBHelper*)GetEmptyManager();
    if (extra) {
        extra->manager.type = 9;
        extra->manager.subtype = 0xB;
        extra->manager.unk_0a = 1;
        extra->manager.parent = this;
        this->unk_0e++;
        _DmaZero(&extra->enemies, 0x20);
        AppendEntityToList(extra, 8);
    }
    return extra;
}

void ManagerBHelper_Monitor(ManagerBHelper* this, Entity* ent, u32 index) {
    this->enemies[index] = ent;
    this->manager.unk_0e++;
}

// case unk_0a is 1: The manager is a helper

void ManagerBHelper_Main(Manager* this) {
    u8 i, anyRemaining;
    Entity* current;
    if (this->action == 0) {
        this->action = 1;
        sub_0805E3A0(this, 3);
    }
    // go through and check all monitored enemies.
    anyRemaining = 0;
    for (i = 0; i < 8; i++) {
        if ((current = ((ManagerBHelper*)this)->enemies[i])) {
            if (!current->next) {
                ((ManagerBHelper*)this)->enemies[i] = 0;
            } else {
                anyRemaining = 1;
            }
        }
    }
    if (!anyRemaining) {
        // inform the parent that we're done
        if (((ManagerB*)this->parent)->manager.unk_0e) {
            ((ManagerB*)this->parent)->manager.unk_0e--;
        }
        DeleteThisEntity();
    }
}

extern Manager gUnk_03003DB0;

/*
 * Replace an entity that is currently being monitored with a new one
 */
void ReplaceMonitoredEntity(Entity* old, Entity* new) {
    ManagerBHelper* current;
    Manager* end = &gUnk_03003DB0;
    u32 i;
    for (current = (ManagerBHelper*)end->next; (Manager*)current != end;
         current = (ManagerBHelper*)current->manager.next) {
        if (current->manager.type != 0x9 || current->manager.subtype != 0xB)
            continue;
        for (i = 0; i < 8; i++) {
            if (old == current->enemies[i]) {
                current->enemies[i] = new;
                return;
            }
        }
    }
}

void (*const ManagerB_ActionFuncs[])(Manager*) = { (void (*)(Manager*))ManagerB_Main,
                                                   (void (*)(Manager*))ManagerBHelper_Main };
void (*const ManagerB_StateFuncs[])(ManagerB*) = { ManagerB_Init, ManagerB_WaitForFlag, ManagerB_WaitForDone };
