#include "global.h"
#include "entity.h"
#include "flags.h"

extern void sub_0809EE34(Entity*);
extern void sub_0809EFB0(Entity*);
extern void sub_0809EE08(Entity*);
extern void sub_0809F08C(void);
extern void sub_0809EE44(Entity*);
extern void sub_0809EE24(Entity*);

extern void (*const gUnk_081243D4[])(Entity*);

void Fan(Entity* this) {
    gUnk_081243D4[this->action](this);
}

void sub_0809ED30(Entity* this) {
    this->direction = (this->type ^ 2) << 3;
    sub_0809EE34(this);
    sub_0809EFB0(this);
    InitializeAnimation(this, this->type);
}

void sub_0809ED54(Entity* this) {
    u16 uVar1;
    u32 iVar2;

    if (((this->cutsceneBeh.HWORD == 0) || CheckFlags(this->cutsceneBeh.HWORD)) &&
        ((this->type2 != 1 || (--this->field_0x74.HWORD == 0)))) {
        sub_0809EE08(this);
    }
}

void sub_0809ED88(Entity* this) {
    sub_0809F08C();
    sub_0809EE44(this);
    if (this->field_0x86.HWORD != 0) {
        if (this->cutsceneBeh.HWORD == this->field_0x86.HWORD) {
            if (CheckFlags(this->cutsceneBeh.HWORD)) {
                return;
            }
        } else if (!CheckFlags(this->cutsceneBeh.HWORD)) {
            return;
        }
        sub_0809EE24(this);
    } else if ((this->type2 == 1) && (--this->field_0x74.HWORD == 0)) {
        sub_0809EE24(this);
    }
}

void sub_0809EDE4(Entity* this) {
    sub_0809F08C();
    sub_0809EE44(this);
    if (this->frames.b.f3) {
        sub_0809EE34(this);
    }
}

void sub_0809EE08(Entity* this) {
    this->action = 2;
    this->field_0x74.HWORD = *((u8*)&this->field_0x7c + 3) << 2;
    InitializeAnimation(this, this->type);
}

void sub_0809EE24(Entity* this) {
    this->action = 3;
    InitializeAnimation(this, this->type + 4);
}

void sub_0809EE34(Entity* this) {
    this->action = 1;
    this->field_0x74.HWORD = this->actionDelay << 2;
}
