#include "global.h"
#include "manager.h"
#include "flags.h"
#include "entity.h"
#include "room.h"
#include "area.h"
#include "functions.h"

extern void (*(gUnk_08108208[]))(Manager*);

void sub_080585F0(Manager* this) {
	    gUnk_08108208[this->unk_0a](this);
}

extern void (*(gUnk_08108210[]))(Manager*);

void sub_08058608(Manager* this) {
	    gUnk_08108210[this->action](this);
}

void sub_080586EC(Manager*);

void sub_08058620(ManagerB* this) {
    if (!CheckFlags(this->unk_3e)) {
        this->manager.action = 1;
        if (!this->unk_3c) {
            sub_080586EC(&this->manager);
        }
        sub_0805E3A0(this, 3);
    } else {
        DeleteThisEntity();
    }
}
extern void sub_080186C0(u32);

void sub_08058650(ManagerB* this) {
    int tmp;
    if (CheckFlags(this->unk_3c)) {
        sub_080586EC(&this->manager);
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

void sub_080586A8(ManagerB* this) {
    if (this->manager.unk_0e) return;
    SetFlag(this->unk_3e);
    if (this->unk_3c) {
        if (!this->unk_35) {
            gArea.musicIndex = this->unk_20;
            PlaySFX(gArea.musicIndex);
            sub_0801855C();
        }
    }
    DeleteThisEntity(); 
}

ManagerBHelper* sub_08058760(Manager*);
void sub_08058798(ManagerBHelper*, Entity*, u32);

extern EntityData* GetCurrentRoomProperty(u8);
extern Entity* LoadRoomEntity(EntityData*);

void sub_080586EC(Manager* this) {
    ManagerBHelper* tmp;
    EntityData* prop;
    Entity* ent;
    u32 counter;
    this->action = 2;
    this->unk_0e = 0;
    counter = 0;
    tmp = sub_08058760(this);
    if (!tmp) DeleteThisEntity();
    prop = (EntityData*) GetCurrentRoomProperty(this->unk_0b);
    if (prop) {
        while (*((u8*)prop) != 0xFF) {
            ent = LoadRoomEntity(prop++);
            if (ent && (ent->entityType.type == 3)) {
                ent->field_0x6c.HALF.HI |= 0x40;
                sub_08058798(tmp, ent, counter++);
            }
            if (counter >= 7) {
                counter = 0;
                tmp = sub_08058760(this);
                if (!tmp) return;
            }
        } 
    }
}

ManagerBHelper* sub_08058760(Manager* this) {
    ManagerBHelper* extra;
    extra = (ManagerBHelper*) GetEmptyManager();
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

void sub_08058798(ManagerBHelper* this, Entity* value, u32 index) {
    this->enemies[index]=value;
    this->manager.unk_0e++;
}

void sub_080587AC(ManagerBHelper* this) {
    u8 i, tmp;
    Entity* current;
    if (this->manager.action == 0) {
        this->manager.action = 1;
        sub_0805E3A0(this,3);
    }
    tmp = 0;
    for (i = 0; i < 8; i++) {
        if ((current = this->enemies[i])) {
            if (!current->next) {
                this->enemies[i] = 0;
            } else {
                tmp = 1;
            }
        }
    }
    if (!tmp) {
        if (((ManagerB*) this->manager.parent)->manager.unk_0e) {
            ((ManagerB*) this->manager.parent)->manager.unk_0e--;
        }
	DeleteThisEntity();
    }
}


extern Manager gUnk_03003DB0;

void sub_08058800(Entity* this, Entity* unk1) {
    ManagerBHelper* current;    
    Manager* end = &gUnk_03003DB0;
    u32 i;
    for (current = (ManagerBHelper*) end->next; (Manager*)current != end; current=(ManagerBHelper*)current->manager.next) {
        if (current->manager.type != 0x9 || current->manager.subtype != 0xB) continue;
            for (i = 0; i < 8; i++) {
                if (this == current->enemies[i]) {
                    current->enemies[i] = unk1;
                    return;
                }
            }
    }
}

