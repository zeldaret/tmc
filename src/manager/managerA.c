#include "global.h"
#include "entity.h"

extern void (*gUnk_081081F4[])(Entity*);

void sub_08058380(Entity* this) {
    gUnk_081081F4[this->action](this);
}


extern u32 CheckFlags(u32);
extern void DeleteThisEntity();
extern void sub_0805E3A0(Manager*, u32);

void sub_08058398(Manager* this) {
    
    if (CheckFlags(this->unk_3c) != 0) {
        DeleteThisEntity();
    }
    this->unk_24 = this->unk_3a<<3;
    this->unk_26 = this->unk_3b<<3;
    this->unk_20 = this->unk_24 + (this->unk_38<<4);
    this->unk_22 = this->unk_26 + (this->unk_39<<4);
    sub_0805E3A0(this, 0x06);
    if (this->unk_3e == 0) {
        this->unk_0c = 2;
    } else {
        this->unk_0c = 1;
    }
}

extern void sub_08058408(Manager* this);

void sub_080583EC(Manager* this) {
    if (CheckFlags(this->unk_3e) != 0) {
        this->unk_0c = 2;
        sub_08058408(this);
    }
}
